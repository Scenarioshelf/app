-- このマイグレーションデータがないと Auth アクセス時にエラーが吐かれる
-- 参考 https://github.com/orgs/supabase/discussions/20722
insert into auth.schema_migrations values ('20221208132122') on conflict do nothing;

-- Profiles Table の定義
create table profiles (
  id uuid references auth.users on delete cascade primary key,
  username text unique,
  avatar_url text,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

-- Row Level Security (RLS) の定義
-- 参考 https://supabase.com/docs/guides/auth/row-level-security
alter table profiles
  enable row level security;

create policy "Public profiles are viewable by everyone." on profiles
  for select using (true);

create policy "Users can insert their own profile." on profiles
  for insert with check ((select auth.uid()) = id);

create policy "Users can update own profile." on profiles
  for update using ((select auth.uid()) = id);

-- Trigger の定義
-- 共通の更新日時を設定するトリガー
create or replace function public.update_timestamp()
returns trigger as $$
begin
  new.updated_at = current_timestamp;
  return new;
end;
$$ language plpgsql security definer;
create trigger on_profiles_updated
  before update on public.profiles
  for each row execute procedure public.update_timestamp();

-- Auth が更新されたら Profiles を更新するトリガー
create function public.insert_in_sync_with_auth()
returns trigger as $$
begin
  insert into public.profiles (id, username, avatar_url)
  values (new.id, new.raw_user_meta_data->>'username', new.raw_user_meta_data->>'avatar_url');
  return new;
end;
$$ language plpgsql security definer;
create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.insert_in_sync_with_auth();

create function public.update_in_sync_with_auth()
returns trigger as $$
begin
  update public.profiles set username = new.raw_user_meta_data->>'username', avatar_url = new.raw_user_meta_data->>'avatar_url'
  where id = new.id;
  return new;
end;
$$ language plpgsql security definer;
create trigger on_auth_user_updated
  after update on auth.users
  for each row execute procedure public.update_in_sync_with_auth();

-- Avatars Storage の定義
insert into storage.buckets (id, name, public)
  values ('user_avatars', 'user_avatars', true);

-- Policies の定義
create policy "User avatar images are publicly accessible." on storage.objects
  for select using (bucket_id = 'user_avatars');

create policy "Anyone can upload an user avatar." on storage.objects
  for insert with check (bucket_id = 'user_avatars');

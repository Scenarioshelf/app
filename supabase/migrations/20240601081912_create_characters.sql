-- Characters の定義
create table characters (
  id uuid primary key default uuid_generate_v4(),
  scenario_id uuid references scenarios on delete cascade not null,
  number integer,
  name text not null,
  is_public boolean default true,
  is_customized boolean default false,
  image_url text,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

-- Index の定義
create index characters_scenario_id_index on characters (scenario_id);

create index characters_number_index on characters (number);

create index characters_name_index on characters (name);

-- Row Level Security (RLS) の定義
alter table characters enable row level security;

-- Policies の定義
create policy "Public characters are viewable by everyone." on characters
  for select using (is_public);

create policy "My characters are viewable." on characters
  for select using ((select auth.uid()) = (select created_by from scenarios where id = scenario_id limit 1));

create policy "Users can insert their own character." on characters
  for insert with check ((select auth.uid()) = (select created_by from scenarios where id = scenario_id limit 1));

create policy "Users can update own character." on characters
  for update using ((select auth.uid()) = (select created_by from scenarios where id = scenario_id limit 1));

create policy "Users can delete own character." on characters
  for delete using ((select auth.uid()) = (select created_by from scenarios where id = scenario_id limit 1));

-- Trigger の定義
create trigger on_characters_updated
  before update on public.characters
  for each row execute procedure public.update_timestamp();

-- CharacterImages Storage の定義
insert into storage.buckets (id, name, public)
  values ('character_images', 'character_images', true);

-- Policies の定義
create policy "Character images are publicly accessible." on storage.objects
  for select using (bucket_id = 'character_images');

create policy "Anyone can upload a character image." on storage.objects
  for insert with check (bucket_id = 'character_images');

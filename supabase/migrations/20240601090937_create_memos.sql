-- Memos の定義
create table memos (
  id uuid primary key default uuid_generate_v4(),
  session_id uuid references sessions on delete cascade not null,
  title text not null,
  content text not null,
  is_public boolean default true,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

-- Index の定義
create index memos_session_id_index on memos (session_id);

create index memos_title_index on memos (title);

create index memos_updated_at_index on memos (updated_at);
create index memos_updated_at_index_desc on memos (updated_at desc);

create index memos_created_at_index on memos (created_at);
create index memos_created_at_index_desc on memos (created_at desc);

-- Row Level Security (RLS) の定義
alter table memos enable row level security;

-- Policies の定義
create policy "Public memos are viewable by everyone." on memos
  for select using (is_public);

create policy "My memos are viewable." on memos
  for select using ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

create policy "Users can insert their own memo." on memos
  for insert with check ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

create policy "Users can update own memo." on memos
  for update using ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

create policy "Users can delete own memo." on memos
  for delete using ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

-- Trigger の定義
create trigger on_memos_updated
  before update on public.memos
  for each row execute procedure public.update_timestamp();

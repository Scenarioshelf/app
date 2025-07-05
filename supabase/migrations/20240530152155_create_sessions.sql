-- Sessions の定義
create table sessions (
  id uuid primary key default uuid_generate_v4(),
  scenario_id uuid references scenarios on delete cascade not null,
  created_by uuid references profiles on delete cascade not null,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

-- Index の定義
create index sessions_scenario_id_index on sessions (scenario_id);

create index sessions_created_by_index on sessions (created_by);

create index sessions_updated_at_index on sessions (updated_at);
create index sessions_updated_at_index_desc on sessions (updated_at desc);

create index sessions_created_at_index on sessions (created_at);
create index sessions_created_at_index_desc on sessions (created_at desc);

-- Row Level Security (RLS) の定義
alter table sessions enable row level security;

-- Policies の定義
create policy "Public sessions are viewable by everyone." on sessions
  for select using (true);

create policy "Users can insert their own session." on sessions
  for insert with check ((select auth.uid()) = created_by);

create policy "Users can update own session." on sessions
  for update using ((select auth.uid()) = created_by);

create policy "Users can delete own session." on sessions
  for delete using ((select auth.uid()) = created_by);

-- Trigger の定義
create trigger on_sessions_updated
  before update on public.sessions
  for each row execute procedure public.update_timestamp();

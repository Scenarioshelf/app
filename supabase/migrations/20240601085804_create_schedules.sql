-- ScheduleType の定義
create type schedule_type as enum (
  'adjustment',
  'event',
  'available'
);

-- Schedules の定義
create table schedules (
  id uuid primary key default uuid_generate_v4(),
  session_id uuid references sessions on delete cascade not null,
  schedule_type schedule_type not null,
  beginning_time timestamp with time zone not null,
  playtime interval not null,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

-- Index の定義
create index schedules_session_id_index on schedules (session_id);

create index schedules_beginning_time_index on schedules (beginning_time);
create index schedules_beginning_time_index_desc on schedules (beginning_time desc);

-- Row Level Security (RLS) の定義
alter table schedules enable row level security;

-- Policies の定義
create policy "Public schedules are viewable by everyone." on schedules
  for select using (true);

create policy "Users can insert their own schedule." on schedules
  for insert with check ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

create policy "Users can update own schedule." on schedules
  for update using ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

create policy "Users can delete own schedule." on schedules
  for delete using ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

-- Trigger の定義
create trigger on_schedules_updated
  before update on public.schedules
  for each row execute procedure public.update_timestamp();

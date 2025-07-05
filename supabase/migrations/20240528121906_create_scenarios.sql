-- TRPGSystem の定義
create type trpg_system as enum (
  'mm',
  'coc6',
  'coc7',
  'ek',
  'sw20',
  'sw25',
  'shinobi',
  'dx3rd',
  'dd',
  'sp',
  'other'
);

-- Scenarios の定義
create table scenarios (
  id uuid primary key default uuid_generate_v4(),
  trpg_system trpg_system not null,
  title text not null,
  kana text,
  key_visual_url text,
  store_url text,
  author text,
  created_by uuid references profiles on delete cascade not null,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

-- Index の定義
create index scenarios_trpg_system_index on scenarios (trpg_system);

create index scenarios_title_index on scenarios (title);

create index scenarios_kana_index on scenarios (kana);

create index scenarios_created_by_index on scenarios (created_by);

create index scenarios_created_at_index on scenarios (created_at);
create index scenarios_created_at_index_desc on scenarios (created_at desc);

-- Row Level Security (RLS) の定義
alter table scenarios enable row level security;

-- Policies の定義
create policy "Public scenarios are viewable by everyone." on scenarios
  for select using (true);

create policy "Users can insert their own scenario." on scenarios
  for insert with check ((select auth.uid()) = created_by);

create policy "Users can update own scenario." on scenarios
  for update using ((select auth.uid()) = created_by);

create policy "Users can delete own scenario." on scenarios
  for delete using ((select auth.uid()) = created_by);

-- Trigger の定義
create trigger on_scenarios_updated
  before update on public.scenarios
  for each row execute procedure public.update_timestamp();

-- KeyVisuals Storage の定義
insert into storage.buckets (id, name, public)
  values ('scenario_key_visuals', 'scenario_key_visuals', true);

-- Policies の定義
create policy "Scenario key visual images are publicly accessible." on storage.objects
  for select using (bucket_id = 'scenario_key_visuals');

create policy "Anyone can upload a scenario key visual." on storage.objects
  for insert with check (bucket_id = 'scenario_key_visuals');

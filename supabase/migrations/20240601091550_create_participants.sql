-- ParticipantRole の定義
create type participant_role as enum (
  'gm',
  'sgm',
  'player',
  'spectator'
);

-- Participants の定義
create table participants (
  id uuid primary key default uuid_generate_v4(),
  session_id uuid references sessions on delete cascade not null,
  participant_role participant_role not null,
  name text not null ,
  character_id uuid references characters on delete set null,
  user_id uuid references profiles on delete set null,
  x_id text,
  discord_id text,
  updated_at timestamp with time zone default current_timestamp,
  created_at timestamp with time zone default current_timestamp
);

-- Index の定義
create index participants_session_id_index on participants (session_id);

create index participants_name_index on participants (name);

create index participants_character_id_index on participants (character_id);

create index participants_user_id_index on participants (user_id);

create index participants_x_id_index on participants (x_id);

create index participants_discord_id_index on participants (discord_id);

-- Row Level Security (RLS) の定義
alter table participants enable row level security;

-- Policies の定義
create policy "Public participants are viewable by everyone." on participants
  for select using (true);

create policy "Users can insert their own participant." on participants
  for insert with check ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

create policy "Users can update own participant." on participants
  for update using ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

create policy "Users can delete own participant." on participants
  for delete using ((select auth.uid()) = (select created_by from sessions where id = session_id limit 1));

-- Trigger の定義
create trigger on_participants_updated
  before update on public.participants
  for each row execute procedure public.update_timestamp();

-- キャラクターは依存先のシナリオのキャラのみ選べるトリガー
create or replace function public.check_selected_scenarios_character()
returns trigger as $$
begin
  if new.character_id is not null then
    if not exists (select id from characters where id = new.character_id and scenario_id = (select scenario_id from sessions where id = new.session_id limit 1)) then
      raise exception 'The character_id must be the character of the selected scenario.';
    end if;
  end if;
  return new;
end;
$$ language plpgsql security definer;
create trigger on_participants_check_selected_scenarios_character
  before update on public.participants
  for each row execute procedure public.check_selected_scenarios_character();


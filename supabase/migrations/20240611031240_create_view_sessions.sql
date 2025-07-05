-- シナリオタイトルによるセッションのビュー
create view sessions_by_scenario_title as
select sessions.*
from sessions
join scenarios on sessions.scenario_id = scenarios.id
order by COALESCE(scenarios.kana, scenarios.title) asc;

-- シナリオのTRPGシステムによるセッションのビュー
create view sessions_by_scenario_system as
select sessions.*
from sessions
join scenarios on sessions.scenario_id = scenarios.id
order by scenarios.trpg_system asc;

-- シナリオの作者によるセッションのビュー
create view sessions_by_scenario_author as
select sessions.*
from sessions
join scenarios on sessions.scenario_id = scenarios.id
order by scenarios.author asc;

-- セッションの実施日によるセッションのビュー
create view sessions_by_schedule_date as
with oldest_event_schedule as (
    select session_id, min(beginning_time) as oldest_event_time
    from schedules
    where schedule_type = 'event'
    group by session_id
)
select sessions.*
from sessions
left join oldest_event_schedule on sessions.id = oldest_event_schedule.session_id
order by COALESCE(oldest_event_schedule.oldest_event_time, 'infinity'::timestamp) asc;

-- セッションの作成日時によるセッションのビュー
create view sessions_by_created_at as
select *
from sessions
order by created_at asc;

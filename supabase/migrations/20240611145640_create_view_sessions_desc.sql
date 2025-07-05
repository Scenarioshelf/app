-- シナリオタイトルによるセッションのビュー(desc)
create view sessions_by_scenario_title_desc as
select sessions.*
from sessions
join scenarios on sessions.scenario_id = scenarios.id
order by COALESCE(scenarios.kana, scenarios.title) desc;

-- シナリオのTRPGシステムによるセッションのビュー(desc)
create view sessions_by_scenario_system_desc as
select sessions.*
from sessions
join scenarios on sessions.scenario_id = scenarios.id
order by scenarios.trpg_system desc;

-- シナリオの作者によるセッションのビュー(desc)
create view sessions_by_scenario_author_desc as
select sessions.*
from sessions
join scenarios on sessions.scenario_id = scenarios.id
order by scenarios.author desc;

-- セッションの実施日によるセッションのビュー(desc)
create view sessions_by_schedule_date_desc as
with oldest_event_schedule as (
    select session_id, min(beginning_time) as oldest_event_time
    from schedules
    where schedule_type = 'event'
    group by session_id
)
select sessions.*
from sessions
left join oldest_event_schedule on sessions.id = oldest_event_schedule.session_id
order by COALESCE(oldest_event_schedule.oldest_event_time, '-infinity'::timestamp) desc;

-- セッションの作成日時によるセッションのビュー(desc)
create view sessions_by_created_at_desc as
select *
from sessions
order by created_at desc;

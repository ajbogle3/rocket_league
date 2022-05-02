with events as (
    select * from {{ ref('int_event_history') }}
)

select * from events
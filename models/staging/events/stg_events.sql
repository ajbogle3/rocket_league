with events as (

    select distinct
        event_id,
        event_slug,
        event as event_seed,
        event_split,
        event_region,
        event_tier,
        event_start_date,
        event_end_date,
        prize_money::integer as prize_money
    from {{ source('rocket_league', 'main') }}
    order by event_id
)

select * from events

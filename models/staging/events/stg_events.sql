with events as (

    select
        match_id,
        match_round,
        game_id,
        game_number::int as game_number,
        game_duration::int as game_duration,
        event as event_seed,
        event_split,
        event_tier,
        event_region,
        event_start_date::date as event_start_date,
        event_end_date::date as event_end_date,
        event_phase,
        prize_money::int as prize_money,
        overtime as match_OT,
        map_name,
        match_format
    from {{ source('rocket_league', 'main') }}
)

select * from events
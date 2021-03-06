with events_details as (

    select
        event_id,
        match_id,
        game_id,
        game_duration::int as game_duration,
        game_number::int as game_number,
        event_phase,
        overtime as game_OT,
        map_id
    from {{ source('rocket_league', 'main') }}
)

select * from events_details
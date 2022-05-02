with events_details as (

    select
        event_id,
        match_id,
        game_id,
        event_phase,
        overtime as game_OT,
        map_id
    from {{ source('rocket_league', 'main') }}
)

select * from events_details
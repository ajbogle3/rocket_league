with events as (
    select * from {{ ref('dim_events') }}
),

event_details as (
    select * from {{ ref('stg_event_details') }}
),

final as (
    select
        events.event_id,
        event_details.match_id,
        event_details.game_id,
        event_details.event_phase,
        event_details.game_OT,
        event_details.map_id

    from events
    left join event_details using (event_id)
)

select * from final
where game_id is not null
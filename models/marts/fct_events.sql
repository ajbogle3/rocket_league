with events as (
    select * from {{ ref('int_event_history') }}
),

matches as (
    select * from {{ ref('int_team_match_history') }}
),

final as (
    select
        events.event_id,
        matches.match_id,
        matches.team_id,
        events.game_id,
        events.game_duration,
        events.event_phase,
        events.game_OT,
        events.map_id
    from events
    left join matches using (match_id)
)

select * from final
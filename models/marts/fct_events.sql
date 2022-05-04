with events as (
    select * from {{ ref('int_event_history') }}
),

matches as (
    select * from {{ ref('int_match_stats') }}
),

final as (
    select
        events.event_id,
        matches.match_id,
        matches.team_id,
        matches.player_id,
        events.game_id,
        events.game_duration,
        events.game_number,
        events.event_phase,
        events.game_OT,
        events.map_id
    from events
    left join matches using (match_id)
)

select * from final
with matches as (
    select * from {{ ref('int_match_stats') }}
),

events as (
    select * from {{ ref('int_event_history') }}
),

final as (
    select
        events.event_id,
        events.match_id,
        matches.team_id,
        matches.player_id,
        matches.match_shots,
        matches.match_goals,
        matches.match_saves,
        matches.match_assists,
        matches.match_score,
        matches.advanced_rating,
        matches.match_demos_inflicted,
        matches.match_demos_taken,
        matches.match_winner
    from matches
    left join events using (match_id)
)

select * from final
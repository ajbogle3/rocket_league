with matches as (
    select * from {{ ref('int_team_match_history') }}
),

events as (
    select * from {{ ref('int_event_history') }}
),

final as (
    select
        events.event_id,
        events.match_id,
        matches.team_id,
        matches.games_won,
        matches.match_winner
    from matches
    left join events using (match_id)
)

select * from final
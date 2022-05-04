with match_history as (
    select * from {{ ref('stg_team_matches') }}
),

matches as (
    select * from {{ ref('dim_matches') }}
),

final as (
    select
        matches.match_id,
        match_history.team_id,
        match_history.team_region,
        match_history.player_id,
        match_history.match_winner
    from matches
    left join match_history using (match_id)
)

select * from final
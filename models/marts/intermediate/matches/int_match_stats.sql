with match_history as (
    select * from {{ ref('stg_match_stats') }}
),

matches as (
    select * from {{ ref('dim_matches') }}
),

final as (
    select
        matches.match_id,
        match_history.player_id,
        match_history.team_id,
        match_history.shots as match_shots,
        match_history.goals as match_goals,
        match_history.saves as match_saves,
        match_history.assists as match_assists,
        match_history.player_score as match_score,
        match_history.advanced_rating as advanced_rating,
        match_history.demo_inflicted as match_demos_inflicted,
        match_history.demo_taken as match_demos_taken,
        match_history.match_winner
    from matches
    left join match_history using (match_id)
)

select * from final
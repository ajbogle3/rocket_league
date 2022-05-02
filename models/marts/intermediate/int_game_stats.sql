with players as (
    select * from {{ ref('dim_players') }}
),

game_stats as (
    select * from {{ ref('stg_player_games') }}
),

final as (
    
    select
        game_stats.game_id as game_id,
        players.player_id as player_id,
        game_stats.team_id as team_id,
        game_stats.shots as game_shots,
        game_stats.goals as game_goals,
        game_stats.saves as game_saves,
        game_stats.assists as game_assists,
        game_stats.player_score as game_score,
        game_stats.demo_inflicted as game_demos_inflicted,
        game_stats.demo_taken as game_demos_taken,
        car_id,
        winner
        
    from players
    left join game_stats using (player_id)
)

select * from final
with games as (
    select * from {{ref('int_game_stats')}}
),

events as (
    select * from {{ ref('int_event_history') }}

),

final as (
    select
        events.event_id,
        events.game_id,
        games.player_id,
        games.team_id,
        games.game_shots,
        games.game_goals,
        games.game_saves,
        games.game_assists,
        games.game_score,
        games.game_demos_inflicted,
        games.game_demos_taken,
        car_id,
        winner
    from games
    left join events using (game_id)
)

select * from final
with positioning as (
    select * from {{ ref('stg_match_stats') }}
),

players as (
    select * from {{ref('dim_players')}}
),

final as (
    select
        players.player_id,
        positioning.team_id,
        positioning.match_id,
        positioning.positioning_avg_distance_to_ball,
        positioning.positioning_avg_distance_to_ball_possession,
        positioning.positioning_avg_distance_to_ball_no_possession,
        positioning.positioning_avg_distance_to_mates,
        positioning.positioning_time_defensive_third,
        positioning.positioning_time_neutral_third,
        positioning.positioning_time_offensive_third,
        positioning.positioning_time_defensive_half,
        positioning.positioning_time_offensive_half,
        positioning.positioning_time_behind_ball,
        positioning.positioning_time_in_front_ball,
        positioning.positioning_time_most_back,
        positioning.positioning_time_most_forward,
        positioning.positioning_goals_against_while_last_defender,
        positioning.positioning_time_closest_to_ball,
        positioning.positioning_time_farthest_from_ball,
        positioning.positioning_percent_defensive_third,
        positioning.positioning_percent_offensive_third,
        positioning.positioning_percent_neutral_third,
        positioning.positioning_percent_defensive_half,
        positioning.positioning_percent_offensive_half,
        positioning.positioning_percent_behind_ball,
        positioning.positioning_percent_in_front_ball,
        positioning.positioning_percent_most_back,
        positioning.positioning_percent_most_forward,
        positioning.positioning_percent_closest_to_ball,
        positioning.positioning_percent_farthest_from_ball
    from players
    left join positioning using (player_id)
)

select * from final
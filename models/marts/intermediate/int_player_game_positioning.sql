with positioning as (
    select * from {{ ref('stg_player_games') }}
),

final as (
    select
        game_id,
        player_id,
        positioning_avg_distance_to_ball,
        positioning_avg_distance_to_ball_possession,
        positioning_avg_distance_to_ball_no_possession,
        positioning_avg_distance_to_mates,
        positioning_time_defensive_third,
        positioning_time_neutral_third,
        positioning_time_offensive_third,
        positioning_time_defensive_half,
        positioning_time_offensive_half,
        positioning_time_behind_ball,
        positioning_time_in_front_ball,
        positioning_time_most_back,
        positioning_time_most_forward,
        positioning_goals_against_while_last_defender,
        positioning_time_closest_to_ball,
        positioning_time_farthest_from_ball,
        positioning_percent_defensive_third,
        positioning_percent_offensive_third,
        positioning_percent_neutral_third,
        positioning_percent_defensive_half,
        positioning_percent_offensive_half,
        positioning_percent_behind_ball,
        positioning_percent_in_front_ball,
        positioning_percent_most_back,
        positioning_percent_most_forward,
        positioning_percent_closest_to_ball,
        positioning_percent_farthest_from_ball
    from positioning
)

select * from final
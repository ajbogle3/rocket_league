with movement as (
    select * from {{ ref('stg_player_games') }}
),

final as (
    select
        game_id,
        player_id,
        movement_avg_speed,
        movement_total_distance,
        movement_time_supersonic_speed,
        movement_time_boost_speed,
        movement_time_slow_speed,
        movement_time_ground,
        movement_time_low_air,
        movement_time_high_air,
        movement_time_powerslide,
        movement_count_powerslide,
        movement_avg_powerslide_duration,
        movement_avg_speed_percentage,
        movement_percent_slow_speed,
        movement_percent_boost_speed,
        movement_percent_supersonic_speed,
        movement_percent_ground,
        movement_percent_low_air,
        movement_percent_high_air
    from movement
)

select * from final
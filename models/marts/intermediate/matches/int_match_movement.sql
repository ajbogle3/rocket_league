with movement as (
    select * from {{ ref('stg_match_stats') }}
),

players as (
    select * from {{ref('dim_players')}}
),

final as (
    select
        players.player_id,
        movement.match_id,
        movement.movement_avg_speed,
        movement.movement_total_distance,
        movement.movement_time_supersonic_speed,
        movement.movement_time_boost_speed,
        movement.movement_time_slow_speed,
        movement.movement_time_ground,
        movement.movement_time_low_air,
        movement.movement_time_high_air,
        movement.movement_time_powerslide,
        movement.movement_count_powerslide,
        movement.movement_avg_powerslide_duration,
        movement.movement_avg_speed_percentage,
        movement.movement_percent_slow_speed,
        movement.movement_percent_boost_speed,
        movement.movement_percent_supersonic_speed,
        movement.movement_percent_ground,
        movement.movement_percent_low_air,
        movement.movement_percent_high_air
    from players
    left join movement using (player_id)
)

select * from final
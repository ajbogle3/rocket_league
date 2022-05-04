with player_settings as (
    select * from {{ source('rocket_league', 'games_by_players') }}
),

final as (
    select distinct
        player_id,
        game_id,
        steering_sensitivity::double as steering_sensitivity,
        camera_fov::integer as camera_fov,
        camera_height::integer as camera_height,
        camera_pitch::integer as camera_pitch,
        camera_distance::integer as camera_distance,
        camera_stiffness::double as camera_stiffness,
        camera_swivel_speed::double as camera_swivel_speed,
        camera_transition_speed::double as camera_transition_speed
    from player_settings
    order by player_id
)

select * from final
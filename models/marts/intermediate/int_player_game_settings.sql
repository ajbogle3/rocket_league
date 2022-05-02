with players as (
    select * from {{ ref('dim_players') }}
),

settings as (
    select * from {{ ref('stg_player_game_settings') }}
),

final as (
    select
        settings.game_id,
        players.player_id,
        settings.steering_sensitivity,
        settings.camera_fov,
        settings.camera_height,
        settings.camera_pitch,
        settings.camera_distance,
        settings.camera_stiffness,
        settings.camera_swivel_speed,
        settings.camera_transition_speed
    from players
    left join settings using (player_id)
)

select * from final
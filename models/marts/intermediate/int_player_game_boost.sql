with player_boost as (
    select * from {{ ref('stg_player_games') }}
),

players as (
    select * from {{ref('dim_players')}}
),

final as (
    
    select

        player_boost.game_id,
        players.player_id,
        player_boost.boost_bpm,
        player_boost.boost_bcpm,
        player_boost.boost_avg_amount,
        player_boost.boost_amount_collected,
        player_boost.boost_amount_stolen,
        player_boost.boost_amount_collected_big,
        player_boost.boost_amount_stolen_big,
        player_boost.boost_amount_collected_small,
        player_boost.boost_amount_stolen_small,
        player_boost.boost_count_collected_big,
        player_boost.boost_count_stolen_big,
        player_boost.boost_count_collected_small,
        player_boost.boost_count_stolen_small,
        player_boost.boost_amount_overfill,
        player_boost.boost_amount_overfill_stolen,
        player_boost.boost_amount_used_while_supersonic,
        player_boost.boost_time_zero_boost,
        player_boost.boost_percent_zero_boost,
        player_boost.boost_time_full_boost,
        player_boost.boost_percent_full_boost,
        player_boost.boost_time_boost_0_25,
        player_boost.boost_time_boost_25_50,
        player_boost.boost_time_boost_50_75,
        player_boost.boost_time_boost_75_100,
        player_boost.boost_percent_boost_0_25,
        player_boost.boost_percent_boost_25_50,
        player_boost.boost_percent_boost_50_75,
        player_boost.boost_percent_boost_75_100

    from players
    left join player_boost using (player_id)
)

select * from final
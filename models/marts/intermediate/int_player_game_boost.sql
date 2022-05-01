with player_boost as (
    select * from {{ ref('stg_player_games') }}
),

final as (
    
    select

        game_id,
        player_id,
        boost_bpm,
        boost_bcpm,
        boost_avg_amount,
        boost_amount_collected,
        boost_amount_stolen,
        boost_amount_collected_big,
        boost_amount_stolen_big,
        boost_amount_collected_small,
        boost_amount_stolen_small,
        boost_count_collected_big,
        boost_count_stolen_big,
        boost_count_collected_small,
        boost_count_stolen_small,
        boost_amount_overfill,
        boost_amount_overfill_stolen,
        boost_amount_used_while_supersonic,
        boost_time_zero_boost,
        boost_percent_zero_boost,
        boost_time_full_boost,
        boost_percent_full_boost,
        boost_time_boost_0_25,
        boost_time_boost_25_50,
        boost_time_boost_50_75,
        boost_time_boost_75_100,
        boost_percent_boost_0_25,
        boost_percent_boost_25_50,
        boost_percent_boost_50_75,
        boost_percent_boost_75_100

    from player_boost
)

select * from final
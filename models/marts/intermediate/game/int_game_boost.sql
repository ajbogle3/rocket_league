with boost as (
    select * from {{ ref('stg_game_stats') }}
),

players as (
    select * from {{ref('dim_players')}}
),

final as (
    
    select
        players.player_id,
        boost.team_id,
        boost.game_id,
        boost.boost_bpm,
        boost.boost_bcpm,
        boost.boost_avg_amount,
        boost.boost_amount_collected,
        boost.boost_amount_stolen,
        boost.boost_amount_collected_big,
        boost.boost_amount_stolen_big,
        boost.boost_amount_collected_small,
        boost.boost_amount_stolen_small,
        boost.boost_count_collected_big,
        boost.boost_count_stolen_big,
        boost.boost_count_collected_small,
        boost.boost_count_stolen_small,
        boost.boost_amount_overfill,
        boost.boost_amount_overfill_stolen,
        boost.boost_amount_used_while_supersonic,
        boost.boost_time_zero_boost,
        boost.boost_percent_zero_boost,
        boost.boost_time_full_boost,
        boost.boost_percent_full_boost,
        boost.boost_time_boost_0_25,
        boost.boost_time_boost_25_50,
        boost.boost_time_boost_50_75,
        boost.boost_time_boost_75_100,
        boost.boost_percent_boost_0_25,
        boost.boost_percent_boost_25_50,
        boost.boost_percent_boost_50_75,
        boost.boost_percent_boost_75_100

    from players
    left join boost using (player_id)
)

select * from final
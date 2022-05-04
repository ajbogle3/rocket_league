with matches as (
    select * from {{ ref('stg_match_stats') }}
),

players as (
    select * from {{ref('dim_players')}}
),

final as (
    select
        players.player_id,
        matches.match_id,
        matches.boost_bpm,
        matches.boost_bcpm,
        matches.boost_avg_amount,
        matches.boost_amount_collected,
        matches.boost_amount_stolen,
        matches.boost_amount_collected_big,
        matches.boost_amount_stolen_big,
        matches.boost_amount_collected_small,
        matches.boost_amount_stolen_small,
        matches.boost_count_collected_big,
        matches.boost_count_stolen_big,
        matches.boost_count_collected_small,
        matches.boost_count_stolen_small,
        matches.boost_amount_overfill,
        matches.boost_amount_overfill_stolen,
        matches.boost_amount_used_while_supersonic,
        matches.boost_time_zero_boost,
        matches.boost_percent_zero_boost,
        matches.boost_time_full_boost,
        matches.boost_percent_full_boost,
        matches.boost_time_boost_0_25,
        matches.boost_time_boost_25_50,
        matches.boost_time_boost_50_75,
        matches.boost_time_boost_75_100,
        matches.boost_percent_boost_0_25,
        matches.boost_percent_boost_25_50,
        matches.boost_percent_boost_50_75,
        matches.boost_percent_boost_75_100
    from players
    left join matches using (player_id)
)

select * from final
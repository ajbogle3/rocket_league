with match_history as (
    select * from {{ ref('stg_player_matches') }}
)

select * from match_history
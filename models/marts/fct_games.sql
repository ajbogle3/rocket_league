with games as (
    select * from {{ref('int_game_stats')}}
)

select * from games
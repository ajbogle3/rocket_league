with games as (
    select * from {{ source('rocket_league', 'main') }}
),

final as (
    select distinct
        game_id,
        game_number::int as game_number,
        game_duration::int as game_duration,
        overtime as game_ot,
        map_id
    from games
    where game_id is not null
)

select * from final
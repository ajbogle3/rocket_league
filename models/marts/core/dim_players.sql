with players as (
    select * from {{ ref('stg_players') }}
)

select * from players
with games as (
    select * from {{ ref('stg_games') }}
)

select * from games
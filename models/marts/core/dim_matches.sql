with matches as (
    select * from {{ ref('stg_matches') }}
)

select * from matches
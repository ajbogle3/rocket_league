with matches as (
    select * from {{ ref('int_match_history') }}
)

select * from matches
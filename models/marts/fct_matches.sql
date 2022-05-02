with matches as (
    select * from {{ ref('int_team_match_history') }}
)

select * from matches
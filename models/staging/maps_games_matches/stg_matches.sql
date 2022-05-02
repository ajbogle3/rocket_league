with matches as (
    select * from {{ source('rocket_league', 'main') }}
),

final as (
    select distinct
        match_id,
        match_date::date as match_date,
        reverse_sweep,
        reverse_sweep_attempt,
        match_slug,
        match_format
    from matches
    where match_id is not null
    order by match_date
)

select * from final
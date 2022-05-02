with maps as (
    select * from {{ source('rocket_league', 'main') }}
),

final as (
    select distinct
        map_id,
        map_name
    from maps
    where map_id is not null
)

select * from final
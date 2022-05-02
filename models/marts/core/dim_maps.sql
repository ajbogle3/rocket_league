with maps as (
    select * from {{ ref('stg_maps') }}
)

select * from maps
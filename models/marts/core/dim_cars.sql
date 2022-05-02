with cars as (
    select * from {{ ref('stg_cars') }}
)

select * from cars
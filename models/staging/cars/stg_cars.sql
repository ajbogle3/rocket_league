with cars as (
    
    select distinct
        car_id::integer as car_id,
        car_name
    
    from {{ source('rocket_league', 'games_by_players') }}
)

select * from cars
where car_name is not null
order by car_id
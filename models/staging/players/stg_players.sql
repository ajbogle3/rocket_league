with source as (

    select * from {{ source('rocket_league', 'players_db') }}
),

player_list as (

    select distinct
        player_id,
        player_slug as player_url,
        player_tag,
        player_name,
        player_country

    from source
    order by player_country
)

select * from player_list
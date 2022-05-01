with source as (

    select * from {{ source('rocket_league', 'matches_by_teams') }}
),

team_list as (

    select distinct
      team_id,
      team_name,
      team_slug as octane_url
    from source

)

select * from team_list
where team_id is not null
with source as (

    select * from {{ source('rocket_league', 'matches_by_teams') }}
),

match_history as (

  select
      match_id,
      team_id,
      score::int as games_won,
      winner as match_winner
  from source
)

select * from match_history

select distinct
    team_id,
    team_name,
    team_region
from {{ source('rocket_league', 'games_by_teams') }}

select * 

from {{ source('rocket_league', 'matches_by_teams') }}

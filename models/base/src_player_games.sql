select * 

from {{ source('rocket_league', 'games_by_players') }}

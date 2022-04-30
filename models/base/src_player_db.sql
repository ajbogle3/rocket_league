select
    player_id,
    player_slug,
    player_tag,
    player_name,
    player_country
from {{ source('rocket_league', 'players_db') }}
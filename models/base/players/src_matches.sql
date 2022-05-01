select
    {{ dbt_utils.surrogate_key(['match_id', 'team_id', 'player_id']) }} as match_key,
    match_id,
    team_id,
    team_region,
    player_id,
    score
from {{ source('rocket_league', 'matches_by_players') }}

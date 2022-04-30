select
  event as event_name,
  event_tier,
  event_region,
  event_start_date,
  event_end_date,
  event_phase,
  prize_money,
  match_id,
  match_number,
  match_round,
  game_id,
  game_number,
  game_date,
  game_duration,
  overtime as match_ot,
  map_name,
  match_format
from {{ source('rocket_league', 'main') }}

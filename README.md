Introduction: Rocket League & RLCS

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Rocket League is a vehicular soccer video game developed and published by Psyonix. The game was first released for Microsoft Windows and PlayStation 4 in July 2015, with ports for Xbox One and Nintendo Switch being released later on.

Described as "soccer, but with rocket-powered cars", Rocket League has up to eight players assigned to each of the two teams, using rocket-powered vehicles to hit a ball into their opponent's goal and score points over the course of a match. The game includes single-player and multiplayer modes that can be played both locally and online, including cross-platform play between all versions. Later updates for the game enabled the ability to modify core rules and added new game modes, including ones based on ice hockey and basketball.

[…]

Rocket League was praised for its gameplay improvements over Battle-Cars, as well as its graphics and overall presentation, although some criticism was directed towards the game's physics engine. The game earned a number of industry awards, and saw over 10 million sales and 40 million players by the beginning of 2018. Rocket League has also been adopted as an esport, with professional players participating through ESL and Major League Gaming along with Psyonix's own Rocket League Championship Series (RLCS). […]

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
Content and Context: https://www.kaggle.com/datasets/dylanmonfret/rlcs-202122

The datasets present Rocket League Championship Series 2021-2022 available data, for every single one region around the world ([EU] Europe, [NA] North America, [SAM] South America, [OCE] Oceania, [MENA] Middle East & North Africa, [APAC] Asia Pacific North/South and [SSA] Sub-Saharan African), including International Majors (Tiebreaker Match and APAC Qualifiers included) and the World Championship.

All information available with these datasets was obtained using both octane.gg and ballchasing.com APIs and cover the following events (pending data availability*):

Fall Split
  Regionals 1, 2, 3 (All regions - Invitational Qualifiers, Closed Qualifiers and Main Events)
  Fall Major - Asia-Pacific Qualifier
  Fall Major - North America Tiebreaker (Complexity Gaming vs. Spacestation Gaming)
  Fall Major - Main Event
Winter Split
  Regionals 1, 2, 3 (All regions - Closed Qualifiers and Main Events)
  Winter Major - Asia-Pacific Qualifier
  Winter Major - Main Event
* The work of the octane.gg team, where most of the information are coming from, is to parse RLCS data posted on ballchasing.com, which is using Saltie's carball library to decompile .replay files associated with each game of the season. If a game replay has not been uploaded to ballchasing.com or saved to be decompiled, then information (or a major part of them) associated with the game will not be available in datasets. That is why Open Qualifiers games are not in datasets, because these event phases are not covered enough by the community. Some information from Qualifiers and minor / new regions (OCE, SAM, MENA, APAC, SSA) could also be missing.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
READ ME
--------
As a lover of video games and spending quality time with the boys (as we get older), I figured my first project should revolve around something I enjoy. Therefore, I chose the following dataset as it gave me an opportunity to compare offical matches and unoffical games through the lense of a player and team. 

Use Cases by Player or Team:

  1. How does a player perform either in a match setting or playing an unoffical game?
  2. How does a team perform either in a match setting or playing an unoffical game?
  3. Who were the top 5 players/teams broken down by matches and games?
  4. Who were the bottom 5 players/teams broken down by matches and games?
  5. What exploritorial data analysis can we derive from the following dataset in regards to a team or players stats and win/loss ratio?
      1. Does collecting or stealing boost associate with either a positive or negative outcome or result?
      2. Does movement associate with either a positive or negative outcome or result?
      3. Does positioning associate with either a positive or negative outcome or result?

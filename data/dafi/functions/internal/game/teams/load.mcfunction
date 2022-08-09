#CREATE TEAM RED
team add red
team modify red color red
team modify red nametagVisibility hideForOtherTeams
team modify red friendlyFire false
team modify red collisionRule always

#CREATE TEAM BLUE
team add blue
team modify blue color blue
team modify blue nametagVisibility hideForOtherTeams
team modify blue friendlyFire false
team modify blue collisionRule always

#CREATE TEAM FFA
team add ffa
team modify ffa nametagVisibility never
team modify ffa friendlyFire true
team modify ffa collisionRule always

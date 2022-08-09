# [x,z]*Rot(180) = [-x,-z]
scoreboard players set .x dafi.raycast 100
scoreboard players set .z dafi.raycast 100
scoreboard players operation .x dafi.raycast -= #x dafi.raycast
scoreboard players operation .z dafi.raycast -= #z dafi.raycast
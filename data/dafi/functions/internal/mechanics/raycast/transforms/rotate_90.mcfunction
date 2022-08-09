# [x,z]*Rot(90) = [-z,x]
scoreboard players set .x dafi.raycast 100
scoreboard players operation .x dafi.raycast -= #z dafi.raycast
scoreboard players operation .z dafi.raycast = #x dafi.raycast
# [x,z]*Rot(270) = [z,-x]
scoreboard players set .z dafi.raycast 100
scoreboard players operation .z dafi.raycast -= #x dafi.raycast
scoreboard players operation .x dafi.raycast = #z dafi.raycast
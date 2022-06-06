# [x,z]*Rot(90) = [-z,x]
scoreboard players set .x raycast 100
scoreboard players operation .x raycast -= #z raycast
scoreboard players operation .z raycast = #x raycast
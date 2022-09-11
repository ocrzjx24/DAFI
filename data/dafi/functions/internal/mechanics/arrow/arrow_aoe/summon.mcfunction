tag @s add dafi.arrowaoe.target

## fix lower slab situation

#aim for eyes
summon marker ~ ~ ~ {Tags:["dafi.arrowaoe.LOS"]}
execute as @e[type=marker,tag=dafi.arrow.LOS] run scoreboard players operation @s dafi.sbsid = #temp dafi.sbsid
scoreboard players set .itt dafi.raycast 75
execute facing entity @s eyes as @e[type=marker,tag=dafi.arrowaoe.LOS] run function dafi:internal/mechanics/arrow/arrow_aoe/raycast
kill @e[type=marker,tag=dafi.arrowaoe.LOS]

#aim for feet
summon marker ~ ~ ~ {Tags:["dafi.arrowaoe.LOS"]}
execute as @e[type=marker,tag=dafi.arrow.LOS] run scoreboard players operation @s dafi.sbsid = #temp dafi.sbsid
scoreboard players set .itt dafi.raycast 75
execute facing entity @s feet as @e[type=marker,tag=dafi.arrowaoe.LOS] run function dafi:internal/mechanics/arrow/arrow_aoe/raycast
kill @e[type=marker,tag=dafi.arrowaoe.LOS]

#damage
#scoreboard players operation .sum dafi.raycast -= #constant.140 dafi.math 
#scoreboard players operation .sum dafi.raycast *= #constant.-1 dafi.math 
scoreboard players operation .sum dafi.raycast /= #constant.10 dafi.math 
execute if score .sum dafi.raycast matches 16.. run scoreboard players set .sum dafi.raycast 15

execute if entity @s[tag=dafi.balling] run scoreboard players operation .sum dafi.raycast *= #constant.2 dafi.math
execute if entity @s[nbt={HurtTime:0s}] run scoreboard players operation @s hp_dmg = .sum dafi.raycast
#tellraw @a [{"text":".sum dafi.raycast = "},{"score":{"name":".sum","objective":"dafi.raycast"}}]

scoreboard players set .sum dafi.raycast 0

tag @s remove dafi.arrowaoe.target
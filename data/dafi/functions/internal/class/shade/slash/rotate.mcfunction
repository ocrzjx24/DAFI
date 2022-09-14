#function dafi:internal/class/shade/slash/fire
scoreboard players operation .input dafi.math = .rot.itt dafi.raycast
function dafi:internal/mechanics/math/trigonometry/rotational/cos

scoreboard players set .itt.y dafi.raycast 5
    scoreboard players operation .itt.y dafi.raycast *= .rotator.sin dafi.raycast
    scoreboard players operation .itt.y dafi.raycast *= .output dafi.math
    scoreboard players operation .itt.y dafi.raycast *= #constant.-1 dafi.math
    scoreboard players operation .itt.y dafi.raycast /= #constant.10000 dafi.math
scoreboard players set .itt.x dafi.raycast 5
    scoreboard players operation .itt.x dafi.raycast *= .rotator.cos dafi.raycast
    scoreboard players operation .itt.x dafi.raycast *= .output dafi.math
    scoreboard players operation .itt.x dafi.raycast *= #constant.-1 dafi.math
    scoreboard players operation .itt.x dafi.raycast /= #constant.10000 dafi.math

summon marker ~ ~ ~ {Tags:["dafi.shade.positioner"]}
tp @e[tag=dafi.shade.positioner,limit=1] @s

execute as @e[tag=dafi.shade.positioner] run function dafi:internal/class/shade/slash/position

tp @s ^ ^ ^ ~-1 ~ 
scoreboard players remove .rot.itt dafi.raycast 4
tellraw @a [{"text":"cockis "},{"score":{"name":".rot.itt","objective":"dafi.raycast"}}]

execute if score .rot.itt dafi.raycast matches -180.. at @s rotated as @s run function dafi:internal/class/shade/slash/rotate
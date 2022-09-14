summon marker ~ ~ ~ {Tags:["dafi.shade.rotator"]}
tp @e[tag=dafi.shade.rotator,type=marker,sort=nearest,limit=1] @s
tp @e[tag=dafi.shade.rotator,type=marker,sort=nearest,limit=1] ^ ^ ^1 ~ ~
# get sin and cos
function dafi:internal/mechanics/math/trigonometry/sin_rx
scoreboard players operation .rotator.sin dafi.raycast = .output dafi.math

function dafi:internal/mechanics/math/trigonometry/cos_rx
scoreboard players operation .rotator.cos dafi.raycast = .output dafi.math

scoreboard players set .rot.itt dafi.raycast 180
execute as @e[tag=dafi.shade.rotator,type=marker,sort=nearest,limit=1] at @s anchored eyes positioned ^ ^ ^ run function dafi:internal/class/shade/slash/rotate

kill @e[tag=dafi.shade.rotator,type=marker,sort=nearest,limit=1]

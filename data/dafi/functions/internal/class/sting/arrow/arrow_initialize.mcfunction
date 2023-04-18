#> dafi:internal/class/sting/arrow/arrow_initialize
#

tag @s add dafi.arrow.sting
#data modify entity @s dafi.invisarrow append value 1b
# ^ custom nbt for resource pack :3

execute on origin if score @s dafi.sting.mode matches 0 run data modify entity @e[tag=dafi.arrow.processing,limit=1] damage set value 8.0d
execute on origin if score @s dafi.sting.mode matches 1 run data modify entity @e[tag=dafi.arrow.processing,limit=1] damage set value 0.0d

data modify entity @s NoGravity set value false

execute as @s store result entity @s Motion[0] double 0.0005 run scoreboard players get @s dafi.arrow.x
execute as @s store result entity @s Motion[1] double 0.0005 run scoreboard players get @s dafi.arrow.y
execute as @s store result entity @s Motion[2] double 0.0005 run scoreboard players get @s dafi.arrow.z

# execute at @s on origin if score @s dafi.sting.mode matches 0 run summon minecraft:item_display ~ ~ ~ {item: {id: "minecraft:potion", Count: 1s, tag: {CustomPotionColor: 15728651}}, billboard: "vertical", transformation: [0.500f, 0.000f, 0.000f, 0.000f, 0.000f, 0.500f, 0.000f, -0.400f, 0.000f, 0.000f, 0.500f, 0.000f, 0.000f, 0.000f, 0.000f, 1.000f], Tags: ["dafi.arrow.item", "dafi.arrow.item.processing", "dafi.sting.shell.item"]}
# execute at @s on origin if score @s dafi.sting.mode matches 1 run summon minecraft:item_display ~ ~ ~ {item: {id: "minecraft:potion", Count: 1s, tag: {CustomPotionColor: 5177093}}, billboard: "vertical", transformation: [0.500f, 0.000f, 0.000f, 0.000f, 0.000f, 0.500f, 0.000f, -0.400f, 0.000f, 0.000f, 0.500f, 0.000f, 0.000f, 0.000f, 0.000f, 1.000f], Tags: ["dafi.arrow.item", "dafi.arrow.item.processing", "dafi.sting.splash.item"]}

execute at @s on origin if score @s dafi.sting.mode matches 0 run summon minecraft:item_display ~ ~ ~ {item: {id: "minecraft:potion", Count: 1s, tag: {CustomPotionColor: 15728651}}, billboard: "vertical", transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f]}, Tags: ["dafi.arrow.item", "dafi.arrow.item.processing", "dafi.sting.shell.item"]}
execute at @s on origin if score @s dafi.sting.mode matches 1 run summon minecraft:item_display ~ ~ ~ {item: {id: "minecraft:potion", Count: 1s, tag: {CustomPotionColor: 5177093}}, billboard: "vertical", transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[0.5f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f]}, Tags: ["dafi.arrow.item", "dafi.arrow.item.processing", "dafi.sting.splash.item"]}

execute on origin if score @s dafi.sting.mode matches 0 run tag @e[tag=dafi.arrow.processing,limit=1] add dafi.sting.shell
execute on origin if score @s dafi.sting.mode matches 1 run tag @e[tag=dafi.arrow.processing,limit=1] add dafi.sting.splash

execute if entity @s[tag=dafi.arrow.red] run tag @e[tag=dafi.arrow.item.processing,limit=1] add dafi.sting.projectile.red
execute if entity @s[tag=dafi.arrow.blue] run tag @e[tag=dafi.arrow.item.processing,limit=1] add dafi.sting.projectile.blue
execute if entity @s[tag=dafi.arrow.ffa] run tag @e[tag=dafi.arrow.item.processing,limit=1] add dafi.sting.projectile.ffa

# execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:potion", Count:1b}
ride @e[tag=dafi.arrow.item.processing,limit=1] mount @s
scoreboard players operation @e[tag=dafi.arrow.item.processing,limit=1] dafi.sbsid = @s dafi.sbsid
tag @e[tag=dafi.arrow.item.processing,limit=1] remove dafi.arrow.item.processing
tag @s add dafi.swamp.summon
execute as @e[type=armor_stand,tag=dafi.swamp.TP] if score @s dafi.sbsid = @p dafi.sbsid run kill @s
execute positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {NoBasePlate:1b,ShowArms:1b,Tags:["dafi.swamp.TP","dafi.swamp.init"],ArmorItems:[{id:"netherite_boots",Count:1b},{id:"netherite_leggings",Count:1b},{id:"netherite_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1283888245,259147894,-2017599528,-2013898805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY1NmM2YzcxMjE3NmJlZjk1ZjNiYWM0OWNiOWQwYTI0OWQzMmNkYmQyYWUzYzZjZjc4NWQwY2IwOGMxNWU5YyJ9fX0="}]}}}}],HandItems:[{id:"netherite_axe",Count:1b},{id:"netherite_axe",Count:1b}],DisabledSlots:4144959,Pose:{LeftArm:[0f,270f,150f],RightArm:[0f,90f,210f]}}
data modify entity @e[type=armor_stand,tag=dafi.swamp.TP,tag=!dafi.swamp.motion_added,limit=1] Rotation[0] set from entity @s Rotation[0]
execute if entity @s[team=red] run team join red @e[type=armor_stand,tag=dafi.swamp.TP,tag=!dafi.swamp.motion_added,limit=1]
execute if entity @s[team=blue] run team join blue @e[type=armor_stand,tag=dafi.swamp.TP,tag=!dafi.swamp.motion_added,limit=1]
execute at @s as @e[type=armor_stand,tag=dafi.swamp.TP,tag=!dafi.swamp.motion_added] run function dafi:internal/class/swamp/applymotion
tag @s remove dafi.swamp.summon
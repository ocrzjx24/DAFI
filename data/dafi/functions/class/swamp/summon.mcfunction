tag @s add dafi.swamp.summon

execute as @e[type=armor_stand,tag=swampTP] if score @s sbsid = @p sbsid run kill @s
execute positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,ShowArms:1b,Tags:["swampTP","init"],ArmorItems:[{id:"netherite_boots",Count:1b},{id:"netherite_leggings",Count:1b},{id:"netherite_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1283888245,259147894,-2017599528,-2013898805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY1NmM2YzcxMjE3NmJlZjk1ZjNiYWM0OWNiOWQwYTI0OWQzMmNkYmQyYWUzYzZjZjc4NWQwY2IwOGMxNWU5YyJ9fX0="}]}}}}],HandItems:[{id:"netherite_axe",Count:1b},{id:"netherite_axe",Count:1b}],DisabledSlots:4144959,Pose:{LeftArm:[0f,270f,150f],RightArm:[0f,90f,210f]}}
execute as @e[type=armor_stand,tag=swampTP,tag=!swamp_motion_added] run function dafi:class/swamp/applymotion
tag @s remove dafi.swamp.summon
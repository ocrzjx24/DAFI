##
tag @s add dafi.swamp.init
summon armor_stand ~ ~1.5 ~ {Invisible:1b,NoBasePlate:1b,ShowArms:1b,Tags:["dafi.swamp.TP","dafi.swamp.init"],ArmorItems:[{id:"netherite_boots",Count:1b},{id:"netherite_leggings",Count:1b},{id:"netherite_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1283888245,259147894,-2017599528,-2013898805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY1NmM2YzcxMjE3NmJlZjk1ZjNiYWM0OWNiOWQwYTI0OWQzMmNkYmQyYWUzYzZjZjc4NWQwY2IwOGMxNWU5YyJ9fX0="}]}}}}],HandItems:[{id:"netherite_axe",Count:1b},{id:"netherite_axe",Count:1b}],DisabledSlots:4144959,Pose:{LeftArm:[0f,270f,150f],RightArm:[0f,90f,210f]}}
scoreboard players add .global dafi.sbsid 1
scoreboard players operation @e[type=armor_stand,tag=dafi.swamp.TP,limit=1,tag=dafi.swamp.init] dafi.sbsid = .global dafi.sbsid
tp @e[type=armor_stand,tag=dafi.swamp.TP,tag=dafi.swamp.init,sort=nearest,limit=1] @s
execute as @e[type=armor_stand,tag=dafi.swamp.TP] at @s if score @s dafi.sbsid = @a[scores={dafi.swamp.TPTrigger=10},limit=1] dafi.sbsid run tp @a[scores={dafi.swamp.TPTrigger=10}] ~ ~ ~
execute as @e[type=armor_stand,tag=dafi.swamp.TP] if score @s dafi.sbsid = @a[scores={dafi.swamp.TPTrigger=10},limit=1] dafi.sbsid run kill @s
scoreboard players operation @a[tag=dafi.swamp.init] dafi.sbsid = .global dafi.sbsid
tag @e remove dafi.swamp.init

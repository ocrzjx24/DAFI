##
tag @s add init
summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,ShowArms:1b,Tags:["swampTP","init"],ArmorItems:[{id:"netherite_boots",Count:1b},{id:"netherite_leggings",Count:1b},{id:"netherite_chestplate",Count:1b},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1283888245,259147894,-2017599528,-2013898805],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY1NmM2YzcxMjE3NmJlZjk1ZjNiYWM0OWNiOWQwYTI0OWQzMmNkYmQyYWUzYzZjZjc4NWQwY2IwOGMxNWU5YyJ9fX0="}]}}}}],HandItems:[{id:"netherite_axe",Count:1b},{id:"netherite_axe",Count:1b}],DisabledSlots:4144959,Pose:{LeftArm:[0f,270f,150f],RightArm:[0f,90f,210f]}}
scoreboard players add .global sbsid 1
scoreboard players operation @e[type=armor_stand,tag=swampTP,limit=1,tag=init] sbsid = .global sbsid
tp @e[type=armor_stand,tag=swampTP,tag=init,sort=nearest,limit=1] @s
execute as @e[type=armor_stand,tag=swampTP] at @s if score @s sbsid = @a[scores={swampTPTrigger=10},limit=1] sbsid run tp @a[scores={swampTPTrigger=10}] ~ ~ ~
execute as @e[type=armor_stand,tag=swampTP] if score @s sbsid = @a[scores={swampTPTrigger=10},limit=1] sbsid run kill @s
scoreboard players operation @p[tag=init] sbsid = .global sbsid
tag @e remove init

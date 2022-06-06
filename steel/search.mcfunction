scoreboard players operation .search sbsid = @s sbsid
tag @s add this
execute as @e[type=armor_stand,tag=shulkerLife] if score @s sbside = .search sbsid at @s run function dafi:class/steel/reposition
tag @s remove this
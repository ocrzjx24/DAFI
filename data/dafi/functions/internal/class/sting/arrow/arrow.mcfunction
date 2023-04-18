# execute if entity @s[tag=!dafi.arrow.sting.stuck] run particle wax_on ~ ~ ~ 0 0 0 0 1 force
# execute if entity @s[tag=dafi.arrow.sting.stuck] run particle wax_on ~ ~ ~ 0.1 0.1 0.1 20 3 force
# summon minecraft:armor_stand ~ ~ ~ {Tags:["dafi.sting.blueMolotov"],Invisible:1b,Small:1b}
execute if entity @s[tag=dafi.sting.shell] run particle minecraft:falling_dust red_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 1 force
execute if entity @s[tag=dafi.sting.shell] run particle minecraft:falling_dust orange_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 2 force

execute if entity @s[tag=dafi.sting.splash] run particle minecraft:falling_dust green_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 1 force
execute if entity @s[tag=dafi.sting.splash] run particle minecraft:falling_dust lime_concrete_powder ~ ~0.2 ~ .1 .1 .1 0.001 2 force
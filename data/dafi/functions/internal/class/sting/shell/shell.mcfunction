tag @s add dafi.sting.shell.hit
execute on vehicle on passengers run tag @s remove dafi.sting.shell.hit
execute if entity @s[tag=dafi.sting.shell.hit] at @s run function dafi:internal/class/sting/shell/hit
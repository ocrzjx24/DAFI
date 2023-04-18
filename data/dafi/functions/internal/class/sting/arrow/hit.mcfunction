# placeholder. this is bullshit
#execute as @e[tag=dafi.sting.shell.item] run tag @s add dafi.sting.arrow.hit
#execute as @e[tag=dafi.sting.splash.item] run tag @s add dafi.sting.arrow.hit

#execute as @e[tag=dafi.sting.shell.item] on vehicle on passengers run tag @s remove dafi.sting.arrow.hit
#execute as @e[tag=dafi.sting.splash.item] on vehicle on passengers run tag @s remove dafi.sting.arrow.hit

#execute as @s[tag=dafi.sting.arrow.hit] at @s run function dafi:internal/class/sting/shell/hit
#execute as @s[tag=dafi.sting.arrow.hit] at @s run function dafi:internal/class/sting/splash/hit

#execute as @e[tag=dafi.sting.arrow.hit] run kill @s
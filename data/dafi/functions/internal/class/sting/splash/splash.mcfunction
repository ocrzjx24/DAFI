tag @s add dafi.sting.splash.hit
execute on vehicle on passengers run tag @s remove dafi.sting.splash.hit
execute if entity @s[tag=dafi.sting.splash.hit] at @s run function dafi:internal/class/sting/splash/hit
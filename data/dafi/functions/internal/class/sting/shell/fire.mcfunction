scoreboard players add @s dafi.sting.lifetime 1

execute if entity @s[tag=dafi.sting.projectile.blue] at @s run function dafi:internal/class/sting/shell/fire/blue
execute if entity @s[tag=dafi.sting.projectile.red] at @s run function dafi:internal/class/sting/shell/fire/red
execute if entity @s[tag=dafi.sting.projectile.ffa] at @s run function dafi:internal/class/sting/shell/fire/ffa

execute if score @s dafi.sting.lifetime = .fire.maxlifetime dafi.sting.lifetime run kill @s
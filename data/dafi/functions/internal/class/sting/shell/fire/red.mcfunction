scoreboard players operation .temp dafi.sbsid = @s dafi.sbsid
execute as @a if score @s dafi.sbsid = .temp dafi.sbsid run tag @s add dafi.sbsid.owner
# no idea why im using dafi.sbsid.owner

scoreboard players set @a[distance=..1.5, team=!red] dafi.slow.check 1
execute as @a[distance=..1.5, team=!red] run damage @s 20 minecraft:explosion by @a[tag=dafi.sbsid.owner, limit=1]
# damage @a[distance=..1.5, team=!blue] 1 in_fire by @s

particle dust 1 0.22 0.098 1.5 ~ ~ ~ 0.5 0.1 0.5 0.2 1 force
particle dust 1 0.557 0.141 1 ~ ~ ~ 0.7 0.2 0.7 0.5 1 force

tag @a[tag=dafi.sbsid.owner] remove dafi.sbsid.owner
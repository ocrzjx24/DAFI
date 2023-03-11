#execute as @s at @s run playsound minecraft:block.grindstone.use master @s ~ ~1000 ~ 500 0.96 1
#effect clear @s[] speed
effect give @s[] levitation 1 3 true
scoreboard players set @s dafi.slide.slideTime 1
scoreboard players set @s dafi.slide.sprintTime 0
execute if score #universal dafi.slide.stamina matches 1 run scoreboard players set @s[gamemode=!creative] dafi.slide.stamina.recoveryTime 5
execute if score #universal dafi.slide.stamina matches 1 run scoreboard players remove @s[gamemode=!creative] dafi.slide.stamina 20
execute if score #universal dafi.slide.stamina matches 2 run scoreboard players set @s[gamemode=!creative] dafi.slide.stamina.recoveryTime 10
execute if score #universal dafi.slide.stamina matches 2 run scoreboard players remove @s[gamemode=!creative] dafi.slide.stamina 20

tag @s add dafi.crouched
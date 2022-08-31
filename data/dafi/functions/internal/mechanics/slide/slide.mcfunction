playsound minecraft:block.grindstone.use master @a ~ ~100 ~ 1000 1
effect clear @s[] speed
effect give @s[] levitation 1 3 true
scoreboard players set @s dafi.slide.slideTime 1
scoreboard players set @s dafi.slide.sprintTime 0
tag @s add dafi.crouched
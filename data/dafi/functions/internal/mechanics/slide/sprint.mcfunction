#execute if score @s dafi.slide.sprintTime matches 0.. run effect give @s speed 999999 2 true
#execute if score @s dafi.slide.sprintTime matches 0 run effect clear @s speed
#execute if score @s dafi.slide.sprintTime matches 5.. run effect give @s speed 999999 0 true
#execute if score @s dafi.slide.sprintTime matches 2 at @s run playsound minecraft:block.note_block.hat master @s ~ ~1000 ~ 0.25 0.6 0.25
#execute if score @s dafi.slide.sprintTime matches 10.. run effect give @s speed 999999 1 true
#execute if score @s dafi.slide.sprintTime matches 4 at @s run playsound minecraft:block.note_block.hat master @s ~ ~1000 ~ 0.25 0.75 0.25
#execute if score @s dafi.slide.sprintTime matches 15.. run effect give @s speed 999999 2 true
#execute if score @s dafi.slide.sprintTime matches 6 at @s run playsound minecraft:block.note_block.hat master @s ~ ~1000 ~ 0.25 1 0.25

execute if score @s dafi.slide.sprintTime matches 1.. unless score #universal dafi.slide.stamina matches 1.. if score @s dafi.slide.stamina matches 40.. if data entity @s[tag=!dafi.slide.exempt] {OnGround:1b} if predicate dafi:is_sneaking at @s run function dafi:internal/mechanics/slide/slide
execute if score @s dafi.slide.sprintTime matches 1.. if score #universal dafi.slide.stamina matches 1 if score @s dafi.slide.stamina matches 20.. if data entity @s[tag=!dafi.slide.exempt] {OnGround:1b} if predicate dafi:is_sneaking at @s run function dafi:internal/mechanics/slide/slide
execute if score @s dafi.slide.sprintTime matches 1.. if score #universal dafi.slide.stamina matches 2 if score @s dafi.slide.stamina matches 40.. if data entity @s[tag=!dafi.slide.exempt] {OnGround:1b} if predicate dafi:is_sneaking at @s run function dafi:internal/mechanics/slide/slide
#execute if score @s dafi.slide.slideTime matches 1 run playsound minecraft:block.fire.extinguish master @s ~ ~100 ~ 1000 2
#execute if score @s dafi.slide.slideTime matches 1 run playsound minecraft:block.sand.place master @s ~ ~100 ~ 1000 0.75
#execute if score @s dafi.slide.slideTime matches 1 run playsound minecraft:block.piston.contract master @s ~ ~1000 ~ 100 1.2



execute if score @s dafi.slide.slideTime matches 1.. if data entity @s {OnGround:1b} run effect give @s resistance infinite 255 false
execute if score @s dafi.slide.slideTime matches 1 if data entity @s {OnGround:1b} run scoreboard players set @s delta.addition.magnitude 4800
execute if score @s dafi.slide.slideTime matches 2.. if data entity @s {OnGround:1b} run scoreboard players set @s delta.addition.magnitude 3200
execute if score @s dafi.slide.slideTime matches 2.. if data entity @s {OnGround:0b} run scoreboard players set @s delta.addition.magnitude 1200

execute if score @s dafi.slide.slideTime matches 1.. if predicate dafi:is_sneaking at @s rotated ~ 0 run function dafi:internal/mechanics/addition/add_motion
execute if score @s dafi.slide.slideTime matches 1.. if predicate dafi:is_sneaking at @s run particle electric_spark ~ ~0.5 ~ 0 0 0 0.75 5 normal
#execute if score @s dafi.slide.slideTime matches 1.. if predicate dafi:is_sneaking at @s run function dafi:internal/mechanics/slide/particle1
execute if score @s dafi.slide.slideTime matches 1.. run scoreboard players add @s dafi.slide.slideTime 1
execute if score @s dafi.slide.slideTime matches 5.. run effect clear @s resistance
execute if score @s dafi.slide.slideTime matches 5.. run effect clear @s levitation
execute if score @s dafi.slide.slideTime matches 6.. run effect clear @s speed
    execute if score @s dafi.slide.slideTime matches 2 run effect clear @s levitation
    execute if score @s dafi.slide.slideTime matches 3 run effect give @s[] levitation infinite 6 true
    execute if score @s dafi.slide.slideTime matches 4 run effect clear @s levitation
    execute if score @s dafi.slide.slideTime matches 5 run effect give @s[] levitation infinite 6 true

execute if score @s dafi.slide.slideTime matches 5.. run effect give @s speed 1 2 true
execute if score @s dafi.slide.slideTime matches 6.. run scoreboard players reset @s dafi.slide.slideTime


tag @s[tag=dafi.slide.exempt] remove dafi.slide.exempt
execute unless predicate dafi:is_sneaking run tag @s remove dafi.crouched
execute if predicate dafi:is_sprinting unless score @s[tag=!dafi.crouched] dafi.slide.sprintTime matches 41.. run scoreboard players add @s dafi.slide.sprintTime 1
execute unless predicate dafi:is_sprinting run scoreboard players set @s dafi.slide.sprintTime 0
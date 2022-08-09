effect give @s absorption 1 2 true
effect give @s instant_damage 1 1 true
# data modify entity @s AbsorptionAmount set value 0b
scoreboard players operation @s dafi.mechanics.hp_dmg = @s dafi.siege.hitcount
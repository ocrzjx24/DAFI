scoreboard objectives add dafi.slide.sprintTime dummy
scoreboard objectives add dafi.slide.slideTime dummy
scoreboard objectives add dafi.slide.stamina dummy
    execute unless score $slide_motion_constant dafi.slide.stamina matches 0.. run scoreboard players set $slide_motion_constant dafi.slide.stamina 1000
    execute unless score #universal dafi.slide.stamina matches 0.. run scoreboard players set #universal dafi.slide.stamina 2
scoreboard objectives add dafi.slide.stamina.recoveryTime dummy
scoreboard objectives add dafi.slide.motion_x dummy
scoreboard objectives add dafi.slide.motion_z dummy
scoreboard objectives add dafi.slide.motion_r dummy
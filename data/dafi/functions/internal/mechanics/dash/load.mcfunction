scoreboard objectives add dafi.dash.time dummy
scoreboard objectives add dafi.dash.onGroundCheck dummy
scoreboard objectives add dafi.dash.CD dummy
scoreboard objectives add dafi.dash.y dummy
    execute unless score #universal dafi.dash.CD matches 0.. run scoreboard players set #universal dafi.dash.CD 20
scoreboard objectives add dafi.dash.motion_x dummy
scoreboard objectives add dafi.dash.motion_z dummy
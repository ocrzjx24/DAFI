setblock 0 0 0 minecraft:shulker_box
setblock 1 0 0 minecraft:shulker_box
setblock 0 -1 0 minecraft:bedrock
setblock 1 -1 0 minecraft:bedrock
setblock 0 1 0 minecraft:bedrock
setblock 0 0 1 minecraft:bedrock
setblock 0 0 -1 minecraft:bedrock
setblock 2 0 0 minecraft:bedrock
setblock 1 0 1 minecraft:bedrock
setblock 1 0 -1 minecraft:bedrock
setblock -1 0 0 minecraft:bedrock
setblock 1 1 0 minecraft:bedrock
item replace block 0 0 0 container.0 with minecraft:dirt
item replace block 1 0 0 container.0 with minecraft:dirt
scoreboard objectives add exitrun dummy
scoreboard objectives add damage dummy
scoreboard objectives add health dummy
scoreboard objectives add maxhealth dummy
scoreboard objectives add newmaxhealth dummy
scoreboard objectives add iswearinghelm dummy
scoreboard objectives add sid dummy
scoreboard objectives add const dummy
scoreboard objectives add sethealth dummy
scoreboard players set -1 const -1
# https://github.com/randomuser922/player-health-editor-minecraft
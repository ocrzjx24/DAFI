# DROP
    execute if score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.drop.integer = @s dafi.shade.drop.cooldown
        execute if score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.drop.integer /= #constant.20 dafi.math

    execute if score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.drop.decimal = @s dafi.shade.drop.cooldown
        execute if score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.drop.decimal /= #constant.2 dafi.math
        execute if score @s dafi.shade.drop.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.drop.decimal %= #constant.10 dafi.math

# SWAP
    execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.swap.integer = @s dafi.shade.swap.cooldown
        execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.swap.integer /= #constant.20 dafi.math

    execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.swap.decimal = @s dafi.shade.swap.cooldown
        execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.swap.decimal /= #constant.2 dafi.math
        execute if score @s dafi.shade.swap.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.swap.decimal %= #constant.10 dafi.math

# RMB
    execute if score @s dafi.shade.use.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.use.integer = @s dafi.shade.use.cooldown
        execute if score @s dafi.shade.use.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.use.integer /= #constant.20 dafi.math

    execute if score @s dafi.shade.use.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.use.decimal = @s dafi.shade.use.cooldown
        execute if score @s dafi.shade.use.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.use.decimal /= #constant.2 dafi.math
        execute if score @s dafi.shade.use.cooldown matches 1.. run scoreboard players operation @s dafi.shade.visible_cooldowns.use.decimal %= #constant.10 dafi.math


title @s actionbar ["",{"text":">","color":"light_purple"},{"text":">","color":"#CC00FF"},{"text":"> ","color":"dark_purple"},{"text":"[ ","color":"dark_gray"},{"text":"Q","bold":true,"color":"white"},{"text":" : ","color":"dark_gray"},{"score":{"name":"@s","objective":"dafi.shade.visible_cooldowns.drop.integer"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"dafi.shade.visible_cooldowns.drop.decimal"},"color":"white"},{"text":"] [ ","color":"dark_gray"},{"text":"F","bold":true,"color":"white"},{"text":" :","color":"dark_gray"},{"text":" "},{"score":{"name":"@s","objective":"dafi.shade.visible_cooldowns.swap.integer"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"dafi.shade.visible_cooldowns.swap.decimal"},"color":"white"},{"text":"] [ ","color":"dark_gray"},{"text":"RMB","bold":true,"color":"white"},{"text":" : ","color":"dark_gray"},{"score":{"name":"@s","objective":"dafi.shade.visible_cooldowns.use.integer"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@s","objective":"dafi.shade.visible_cooldowns.use.decimal"},"color":"white"},{"text":"] ","color":"dark_gray"},{"text":"<","color":"dark_purple"},{"text":"<","color":"#CC00FF"},{"text":"<","color":"light_purple"}]




# shell
    execute if score @s dafi.sting.shell.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.shell.integer = @s dafi.sting.shell.cooldownsting
        execute if score @s dafi.sting.shell.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.shell.integer /= #constant.20 dafi.math

    execute if score @s dafi.sting.shell.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.shell.decimal = @s dafi.sting.shell.cooldown
        execute if score @s dafi.sting.shell.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.shell.decimal /= #constant.2 dafi.math
        execute if score @s dafi.sting.shell.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.shell.decimal %= #constant.10 dafi.math

# splash
    execute if score @s dafi.sting.splash.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.splash.integer = @s dafi.sting.splash.cooldown
        execute if score @s dafi.sting.splash.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.splash.integer /= #constant.20 dafi.math

    execute if score @s dafi.sting.splash.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.splash.decimal = @s dafi.sting.splash.cooldown
        execute if score @s dafi.sting.splash.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.splash.decimal /= #constant.2 dafi.math
        execute if score @s dafi.sting.splash.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.splash.decimal %= #constant.10 dafi.math

# swap
    execute if score @s dafi.sting.swap.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.swap.integer = @s dafi.sting.swap.cooldown
        execute if score @s dafi.sting.swap.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.swap.integer /= #constant.20 dafi.math

    execute if score @s dafi.sting.swap.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.swap.decimal = @s dafi.sting.swap.cooldown
        execute if score @s dafi.sting.swap.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.swap.decimal /= #constant.2 dafi.math
        execute if score @s dafi.sting.swap.cooldown matches 1.. run scoreboard players operation @s dafi.sting.visible_cooldowns.swap.decimal %= #constant.10 dafi.math

title @s actionbar ["",{"text":">","color":"yellow"},{"text":">","color":"gold"},{"text":">","color":"#FA6F00"},{"text":" [","color":"dark_gray"},{"text":" Q","bold":true},{"text":" :","color":"dark_gray"},{"text":" "},{"score":{"name":"@s","objective":"dafi.sting.visible_cooldowns.shell.integer"}},{"text":"."},{"score":{"name":"@s","objective":"dafi.sting.visible_cooldowns.shell.decimal"}},{"text":" /","color":"dark_gray"},{"text":" "},{"score":{"name":"@s","objective":"dafi.sting.visible_cooldowns.splash.integer"}},{"text":"."},{"score":{"name":"@s","objective":"dafi.sting.visible_cooldowns.splash.decimal"}},{"text":" ]","color":"dark_gray"},{"text":" [","color":"dark_gray"},{"text":" F","bold":true},{"text":" :","color":"dark_gray"},{"text":" "},{"score":{"name":"@s","objective":"dafi.sting.visible_cooldowns.swap.integer"}},{"text":"."},{"score":{"name":"@s","objective":"dafi.sting.visible_cooldowns.swap.decimal"}},{"text":" ]","color":"dark_gray"},{"text":" <","color":"#FA6F00"},{"text":"<","color":"gold"},{"text":"<","color":"yellow"}]

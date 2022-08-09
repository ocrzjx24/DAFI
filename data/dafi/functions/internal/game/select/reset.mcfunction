## CLEAR
clear @s

## EFFECT
effect clear @s

## TAGS
tag @s remove dafi.sculk
tag @s remove dafi.siege
tag @s remove dafi.saint
tag @s remove dafi.slay
tag @s remove dafi.sting
tag @s remove dafi.soul
tag @s remove dafi.steel
tag @s remove dafi.storm
tag @s remove dafi.shade
tag @s remove dafi.swamp
tag @s remove dafi.wallrunP

## EXTRANEOUS TINGS
execute as @e[type=armor_stand,tag=swampTP] if score @s sbsid = @a[scores={class=1},limit=1] sbsid run kill @s

## SCOREBOARDS (incomplete)
scoreboard players reset @s dafi.siege.mode
scoreboard players set @s dafi.mechanics.offhandReady 1
scoreboard players reset @s dafi.swamp.TPTrigger
# scoreboard players set @s dafi.mechanics.damage 0
# scoreboard players reset @s dafi.swamp.dropScrap
# scoreboard players reset @s vtol
# scoreboard players reset @s dafi.shade.step
scoreboard players reset @s dafi.saint.dropFeather
scoreboard players reset @s dafi.mechanics.dropCrossbow
scoreboard players reset @s dafi.storm.dropDiamondShovel
scoreboard players reset @s dafi.sting.rotate
scoreboard players reset @s dafi.sting.gCD
# scoreboard players reset @s dropMCTNT
scoreboard players set @s dafi.slay.CD 0
scoreboard players set @s dafi.slay.sneak 0
scoreboard players reset @s dafi.useCheck
# scoreboard players set @s bounds 0
# scoreboard players set @s hunted 0
# scoreboard players reset @s step
scoreboard players reset @s dafi.steel.dropStoneAxe
scoreboard players reset @s dafi.soul.dropgoldenhoe
scoreboard players reset @s dafi.storm.dropShell
scoreboard players reset @s dafi.storm.charge
scoreboard players reset @s dafi.game.gray
scoreboard players reset @s dafi.game.white
scoreboard players reset @s dafi.game.red
scoreboard players reset @s dafi.game.orange
scoreboard players reset @s dafi.game.yellow
scoreboard players reset @s dafi.game.lime
scoreboard players reset @s dafi.game.light_blue
scoreboard players reset @s dafi.game.magenta
scoreboard players reset @s dafi.game.brown
scoreboard players reset @s dafi.game.cyan
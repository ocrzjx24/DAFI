## CLEAR
clear @s

## EFFECT
effect clear @s

## TAGS
tag @s remove siege
tag @s remove saint
tag @s remove slay
tag @s remove sting
tag @s remove soul
tag @s remove steel
tag @s remove storm
tag @s remove shade
tag @s remove swamp
tag @s remove wallrunP

## EXTRANEOUS TINGS
execute as @e[type=armor_stand,tag=swampTP] if score @s sbsid = @a[scores={class=1},limit=1] sbsid run kill @s

## SCOREBOARDS (incomplete)
scoreboard players set @s offhandReady 1
scoreboard players reset @s swampTPTrigger
scoreboard players set @s damage 0
scoreboard players reset @s dropScrap
scoreboard players reset @s vtol
scoreboard players reset @s step
scoreboard players reset @s feather
scoreboard players reset @s sentry
scoreboard players reset @s useSentry
scoreboard players set @s sentryOn 0
scoreboard players reset @s sentryOff
scoreboard players reset @s dropCrossbow
scoreboard players reset @s dropWave
scoreboard players reset @s rotate
scoreboard players reset @s gCD
scoreboard players reset @s dropMCTNT
scoreboard players set @s slayCD 0
scoreboard players set @s slaySneak 0
scoreboard players reset @s useCheck
scoreboard players set @s bounds 0
scoreboard players set @s hunted 0
scoreboard players reset @s step
scoreboard players reset @s dropSAxe
scoreboard players reset @s dropReaver
scoreboard players reset @s dropShell
scoreboard players reset @s charge
scoreboard players reset @s[scores={class=1..}] class
scoreboard players reset @s gray
scoreboard players reset @s white
scoreboard players reset @s red
scoreboard players reset @s orange
scoreboard players reset @s yellow
scoreboard players reset @s lime
scoreboard players reset @s light_blue
scoreboard players reset @s magenta
scoreboard players reset @s brown
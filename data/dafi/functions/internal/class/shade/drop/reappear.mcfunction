##> dafi:internal/class/shade/drop/reappear
# Reappears the player
#
# callers:
# > dafi:internal/class/shade/main
##############################################################################

#Necessary Tags
tag @s remove dafi.dash.exempt

# Removes effects
effect clear @s invisibility
effect clear @s speed
effect give @s speed 1 2 true

# SFX and VFX
playsound minecraft:entity.evoker.cast_spell master @s ~ ~100 ~ 1000 1.3
playsound minecraft:entity.ender_dragon.shoot master @s ~ ~100 ~ 1000 1.1

# Prepares offhand
scoreboard players set @s dafi.offhandReady 1

# Returns cleared items
item replace entity @s hotbar.0 with crossbow{mainhand:1,reload_trigger:1,display:{Name:'[{"text":"安倍","italic":false,"color":"yellow","bold":true},{"text":"晋三","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"text":"death.attack.firework.item","italic":false,"color":"dark_green"}]']},Enchantments:[{id:"quick_charge",lvl:5},{id:"knockback",lvl:1}],Unbreakable:1,ChargedProjectiles:[{id:"arrow",Count:1b}],Charged:1b,Unbreakable:1,HideFlags:36} 1
item replace entity @s armor.feet with leather_boots{Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3}],Unbreakable:1,display:{color:4980889},HideFlags:1} 1
item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{Name:'[{"text":"Standard Issue Leather Pants","italic":false,"color":"white","bold":true}]'},Enchantments:[{id:swift_sneak,lvl:3}]} 1
item replace entity @s hotbar.1 with netherite_sword{Unbreakable:1,mainhand:1,swap_trigger:1,display:{Name:'[{"text":"< ","italic":false,"color":"#ff6666","bold":true},{"text":"Z","color":"#ff3366"},{"text":"an","color":"#ff0066"},{"text":"k","color":"#cc0066"},{"text":"i >","color":"#990033"}]',Lore:['[{"text":"残機 | 沈香学","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"zuttomayonakadeiinoni ☽","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:knockback,lvl:2}],HideFlags:7} 1
item replace entity @s weapon.offhand with warped_fungus_on_a_stick{offhand:1,display:{Name:'[{"text":"Fa","italic":false,"bold":true,"color":"light_purple"},{"text":"de ","color":"dark_purple"},{"text":"| ","color":"white","bold":false},{"text":"[RMB]","color":"white","bold":false}]'}} 1
item replace entity @s inventory.0 with skull_banner_pattern{display:{Name:'[{"text":"SHADE ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ","color":"white"},{"text":"Occult Assassin","bold":false,"color":"white"}]',Lore:['[{"text":"\\"Shimmering water, under moonlight.\\"","italic":false}]','[{"text":"To strike a deal with a demon was akin to","italic":false,"color":"dark_green"}]','[{"text":"making a deathwish, though perhaps it\'s","italic":false,"color":"dark_green"}]','[{"text":"what they wanted. What they received was","italic":false,"color":"dark_green"}]','[{"text":"an ever-fleeting existence and an unlikely","italic":false,"color":"dark_green"}]','[{"text":"friendship.","italic":false,"color":"dark_green"}]']}} 1
item replace entity @s inventory.1 with paper{display:{Name:'[{"text":"Onikiri ","italic":false,"bold":true,"color":"light_purple"},{"text":"| "},{"text":"WEAPON","bold":true}]',Lore:['[{"text":"SHADE wields a strange blade inhabited","italic":false}]','[{"text":"by a demon.","italic":false}]']}} 1
item replace entity @s inventory.10 with paper{display:{Name:'[{"text":"Bind ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ACTIVE | "},{"text":"[Q] on ","bold":false},{"text":"Onikiri"}]',Lore:['[{"text":"The demon inside of Onikiri leaps forward,","italic":false}]','[{"text":"binding any opponent in its path. Further-","italic":false}]','[{"text":"more, any opponents within a small radius","italic":false}]','[{"text":"of the initially bound opponent are also","italic":false}]','[{"text":"bound. Opponents that are bound can be","italic":false}]','[{"text":"instantly slain with the Primed Onikiri,","italic":false}]','[{"text":"which activates itself when SHADE enters","italic":false}]','[{"text":"range.","italic":false}]','[{"text":"Cooldown: 3 sec / Effect on target: 6 sec","italic":false,"color":"blue"}]']}} 1
item replace entity @s inventory.11 with paper{display:{Name:'[{"text":"Fade ","italic":false,"bold":true,"color":"light_purple"},{"text":"| ACTIVE | "},{"text":"Hold [RMB]","bold":false}]',Lore:['[{"text":"SHADE concentrates on their demonic powers","italic":false}]','[{"text":"and morphs into a shadow. They become","italic":false}]','[{"text":"very difficult to spot, incredibly agile","italic":false}]','[{"text":"(speed and jump boost), and can run along","italic":false}]','[{"text":"walls in this state.","italic":false}]','[{"text":"Cooldown: 6 sec","italic":false,"color":"blue"}]']}} 1
function dafi:api/hat

# Primes player for shuriken projectiles
tag @s add dafi.shade.primed
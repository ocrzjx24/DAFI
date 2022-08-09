##> dafi:api/hat
# replace caller's head slot with hat of corresponding id
# 
# callers:
# > dafi:api/main

execute if entity @s[tag=dafi.calledhatfromtrigger] run scoreboard players operation @s dafi.hat.selected = @s dafi.hat

# ID#1 // air
execute if score @s dafi.hat.selected matches 1 run item replace entity @s armor.head with air

# ID#2 // Glasstronaut
execute if score @s dafi.hat.selected matches 2 run item replace entity @s armor.head with tinted_glass{display:{Name:'[{"text":"#","italic":false,"color":"white","bold":true,"obfuscated":true},{"text":"Glass","color":"#cc66cc","obfuscated":false},{"text":"tronaut","color":"#cc66ff","obfuscated":false},{"text":"#"}]',Lore:['[{"text":"dafi.hat#1","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:1} 1

# ID#3 // Seige
execute if score @s dafi.hat.selected matches 3 run item replace entity @s armor.head with observer{display:{Name:'[{"text":"#","italic":false,"color":"white","bold":true,"obfuscated":true},{"text":"Sie","color":"gray","obfuscated":false},{"text":"ge","color":"dark_gray","obfuscated":false},{"text":"#"}]',Lore:['[{"text":"dafi.hat#2","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:1} 1

# ID#4 // Unicorn
execute if score @s dafi.hat.selected matches 4 run item replace entity @s armor.head with end_rod{display:{Name:'[{"text":"#","italic":false,"color":"white","bold":true,"obfuscated":true},{"text":"U","color":"red","obfuscated":false},{"text":"n","color":"gold","obfuscated":false},{"text":"i","color":"yellow","obfuscated":false},{"text":"c","color":"green","obfuscated":false},{"text":"o","color":"aqua","obfuscated":false},{"text":"r","color":"dark_blue","obfuscated":false},{"text":"n","color":"light_purple","obfuscated":false},{"text":"#"}]',Lore:['[{"text":"dafi.hat#2","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:1} 1

# ID#5 // Bone
execute if score @s dafi.hat.selected matches 5 run item replace entity @s armor.head with bone{display:{Name:'[{"text":"Bone","italic":false,"color":"gray"},{"text":"Head","color":"dark_gray"}]',Lore:['[{"text":"\\"I WANT BLAIDD TO BREED ME","italic":false}]','[{"text":"I WANT HIS PUPPIES PLEASE","italic":false}]','[{"text":"I WANT THE LEASH","italic":false}]','[{"text":"I WANT THE COLLAR","italic":false}]','[{"text":"I\'M DROOLING","italic":false}]','[{"text":"WOOF WOOF WOOF WOOF WOOF WOOF","italic":false}]','[{"text":"BARK BARK BARK\\"","italic":false}]','[{"text":"dafi.hat#4","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:1}

# ID#6 // Jigsaw
execute if score @s dafi.hat.selected matches 6 run item replace entity @s armor.head with jigsaw{display:{Name:'[{"text":"#","italic":false,"obfuscated":true,"color":"white"},{"text":"Rorschach","obfuscated":false,"color":"#ccccff","bold":true},{"text":"#","bold":true}]',Lore:['[{"text":"dafi.hat#6","italic":false}]']}} 1

# ID#7 // Flowering Azalea
execute if score @s dafi.hat.selected matches 7 run item replace entity @s armor.head with azalea{display:{Name:'[{"text":"#","italic":false,"obfuscated":true,"color":"white"},{"text":"Tree of","obfuscated":false,"color":"dark_green","bold":true},{"text":" ","obfuscated":false,"color":"dark_green","bold":true},{"text":"Oliver","obfuscated":false,"color":"green","bold":true},{"text":"#","bold":true}]',Lore:['[{"text":"dafi.hat#6","italic":false}]']}} 1 

# ID#8 // Antenna
execute if score @s dafi.hat.selected matches 8 run item replace entity @s armor.head with lightning_rod{display:{Name:'[{"text":"#","italic":false,"bold":true,"color":"#00ccff","obfuscated":true},{"text":"Ant","obfuscated":false},{"text":"enna","obfuscated":false,"color":"#ffcc99"},{"text":"#","color":"#ffcc99"}]',Lore:['[{"text":"dafi.hat#7","italic":false,"color":"dark_gray"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:1} 1

# ID#9 //


# ID#10 // 

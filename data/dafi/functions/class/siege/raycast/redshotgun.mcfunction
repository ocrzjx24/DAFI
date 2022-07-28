execute rotated ~ ~ run function dafi:class/siege/raycast/redfire

# execute anchored eyes facing ^0 ^1 ^6 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^0.951 ^0.309 ^6 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^-0.951 ^0.309 ^6 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^0.588 ^-0.809 ^6 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^-0.588 ^-0.809 ^6 run function dafi:class/siege/raycast/redfire

# execute anchored eyes facing ^0 ^-1 ^3 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^-0.951 ^-0.309 ^4 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^0.951 ^-0.309 ^4 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^-0.588 ^0.809 ^4 run function dafi:class/siege/raycast/redfire
# execute anchored eyes facing ^0.588 ^0.809 ^4 run function dafi:class/siege/raycast/redfire


execute anchored eyes facing ^0 ^1 ^12 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^0.951 ^0.309 ^12 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^-0.951 ^0.309 ^12 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^0.588 ^-0.809 ^12 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^-0.588 ^-0.809 ^12 run function dafi:class/siege/raycast/redfire

execute anchored eyes facing ^0 ^-1 ^8 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^-0.951 ^-0.309 ^8 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^0.951 ^-0.309 ^8 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^-0.588 ^0.809 ^8 run function dafi:class/siege/raycast/redfire
execute anchored eyes facing ^0.588 ^0.809 ^8 run function dafi:class/siege/raycast/redfire


## unit vectors facing vertices of a regular pentagon
# <0,1>
# <0.951,0.309>
# <-0.951,0.309>
# <0.588,-0.809>
# <-0.588,-0.809>

## deal damage that scales with hitcount
# execute as @e[scores={hitcount=1..}] run effect give @s absorption 1 0 true
execute as @e[scores={hitcount=1..4}] run effect give @s instant_damage 1 0 true
execute as @e[scores={hitcount=5..8}] run effect give @s instant_damage 1 1 true
execute as @e[scores={hitcount=9..11}] run effect give @s instant_damage 1 2 true

scoreboard players reset @e hitcount 
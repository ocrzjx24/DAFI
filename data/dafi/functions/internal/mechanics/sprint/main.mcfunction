execute as @a[predicate=dafi:is_sprinting,nbt={OnGround:0b}] run scoreboard players set @s delta.addition.magnitude 300
execute as @a[predicate=dafi:is_sprinting,nbt={OnGround:0b}] at @s rotated ~ 0 run function dafi:internal/mechanics/bigpapi_delta/addition/add_motion
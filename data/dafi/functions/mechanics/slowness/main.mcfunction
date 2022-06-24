effect clear @a[] slowness
effect give @a[scores={slow=1..10}] slowness 1 0 true
effect give @a[scores={slow=11..20}] slowness 1 1 true
effect give @a[scores={slow=21..30}] slowness 1 2 true
effect give @a[scores={slow=31..40}] slowness 1 3 true
effect give @a[scores={slow=41..50}] slowness 1 4 true

execute as @a run function dafi:mechanics/slowness/slow
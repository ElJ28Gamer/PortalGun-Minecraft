tag @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] add Portal
tag @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] remove Portal
execute as @a[tag=!Portal] run scoreboard players reset @s Portal
execute as @a[tag=!Portal] run kill @e[tag=Portal.as1]
execute as @a[tag=!Portal] run kill @e[tag=Portal.as2]
execute unless entity @e[tag=Portal.as1] as @a[scores={Portal=1}] at @s anchored eyes run summon minecraft:armor_stand ~ ~ ~ {Tags:[Portal.as1], NoAI:1b, Marker:1b, NoGravity:1b, Invulnerable:1b, Invisible:1b}
execute unless entity @e[tag=Portal.as2] as @a[scores={Portal=2}] at @s anchored eyes run summon minecraft:armor_stand ~ ~ ~3 {Tags:[Portal.as2], NoAI:1b, Marker:1b, NoGravity:1b, Invulnerable:1b, Invisible:1b}
execute as @a[scores={Portal=3..}] run kill @e[tag=Portal.as1]
execute as @a[scores={Portal=3..}] run kill @e[tag=Portal.as2]
execute as @a[scores={Portal=3..}] run scoreboard players reset @s Portal
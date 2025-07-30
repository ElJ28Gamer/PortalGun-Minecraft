execute as @e[tag=Portal.as1] at @s run particle falling_dust{block_state:{Name:lime_wool}} ~ ~0.5 ~ 0.25 0.25 0.25 1 25 force
execute as @e[tag=Portal.as2] at @s run particle falling_dust{block_state:{Name:orange_wool}} ~ ~0.5 ~ 0.25 0.25 0.25 1 25 force
execute as @a[tag=!Portal] run scoreboard players reset @s PortalSound
execute as @a[scores={PortalSound=1..}] at @s run playsound minecraft:entity.blaze.shoot block @a ~ ~ ~ 0.25 1 1
execute as @a[scores={PortalSound=1..}] at @s anchored eyes run particle flash ~ ~-0.5 ~ 1 1 1 1 50 force
execute as @a[scores={PortalSound=1..}] run scoreboard players reset @s PortalSound
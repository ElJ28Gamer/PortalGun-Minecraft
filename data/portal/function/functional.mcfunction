execute as @e[tag=!Portal.as1, tag=!Portal.as2] at @s if entity @e[tag=Portal.as1, distance=..1.5] run scoreboard players add @s PortalTP1 1
execute as @e[tag=!Portal.as1, tag=!Portal.as2] at @s unless entity @e[tag=Portal.as1, distance=..1.5] run scoreboard players reset @s PortalTP1
execute as @e[tag=!Portal.as1, tag=!Portal.as2] at @s if entity @e[tag=Portal.as2, distance=..1.5] run scoreboard players add @s PortalTP2 1
execute as @e[tag=!Portal.as1, tag=!Portal.as2] at @s unless entity @e[tag=Portal.as2, distance=..1.5] run scoreboard players reset @s PortalTP2
execute as @a[scores={PortalTP1=30..}] at @s run tp @s @e[tag=Portal.as2, limit=1]
execute as @a[scores={PortalTP1=30..}] at @s run playsound block.amethyst_block.step block @a ~ ~ ~ 50 1 1
execute as @a[scores={PortalTP1=30..}] run scoreboard players reset @s PortalTP1
execute as @a[scores={PortalTP2=30..}] at @s run tp @s @e[tag=Portal.as1, limit=1]
execute as @a[scores={PortalTP2=30..}] at @s run playsound block.amethyst_block.step block @a ~ ~ ~ 50 1 1
execute as @a[scores={PortalTP2=30..}] run scoreboard players reset @s PortalTP2
function portal:orientation
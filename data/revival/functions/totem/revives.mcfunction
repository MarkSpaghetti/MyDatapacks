function revival:totem/remove_totem 
execute as @a[scores={doing=1}] run scoreboard players set @s dead 0
execute as @a[scores={doing=1}] run kill
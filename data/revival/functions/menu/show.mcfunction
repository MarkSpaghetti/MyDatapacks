# Counts the amount of entities with dead = 1
execute as @a[scores={dead=1}] run scoreboard players add !count counter 1

# Sets displayed of the dead to 0
execute as @a[scores={dead=1}] run scoreboard players set @s displayed 0

# If there no one dead, display another message and set revives 0
execute if score !count counter <= #zero zero run tellraw @a[scores={revives=1},limit=1] {"text":"There is no one dead, yet","bold":true,"color":"dark_red"} 
execute if score !count counter <= #zero zero run scoreboard players set @a[scores={revives=1}] revives 0

# Displays all dead
execute unless score !count counter <= #zero zero run tellraw @a[scores={revives=1},limit=1] {"text": "\nDead players:\n\n","bold":true,"color": "dark_red"}
execute unless score !count counter <= #zero zero run function revival:menu/printlist

# If shown dead people start timer
execute unless score !count counter <= #zero zero run scoreboard players add @a[scores={revives=1}] timer 1

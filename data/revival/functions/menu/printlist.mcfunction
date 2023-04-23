#Working with:
scoreboard players reset @a doing 
execute as @r[scores={displayed=0}] run scoreboard players add @s doing 1

execute as @a[scores={doing=1}] run tellraw @a[scores={revives=1}] {"text": "the fuck","extra":[{"selector":"@s","bold": false,"color":"white","clickEvent":{"action":"run_command","value":"/say fuck"},"hoverEvent":{"action":"show_text","value":{"text": "Clicking here will revive the player","color":"#7d3c98"}}}]}
                                                                                                                                                                                      # "/function revival:totem/revives" 
#Finishes process and considers player displayed
scoreboard players set @a[scores={doing=1}] displayed 1
scoreboard players set @a[scores={doing=1}] doing 0

# Decrease the loop counter
scoreboard players remove !count counter 1

# Recursive if counter != 0
execute unless score !count counter <= #zero zero run function revival:menu/printlist
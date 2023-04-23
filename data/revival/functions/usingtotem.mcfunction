# If there is a dead player a text will be shown with the possibility of reviving them, running the function reviving
execute if score @p[scores={dead=1}] dead matches 1 run tellraw @a[scores={revives=1},limit=1] {"text": "\nDead players:\n\n","bold":true,"color": "dark_red","extra":[{"selector":"@a[scores={dead=1}]","bold": false,"color":"white","clickEvent":{"action":"run_command","value":"/tell @s a "},"hoverEvent":{"action":"show_text","value":{"text": "Clicking here will revive the player","color":"#7d3c98"}}}]}

# If there no one dead, display another message
execute if score @p[scores={dead=0}] dead matches 0 run tellraw @a[scores={revives=1},limit=1] {"text": "\nThere is no one dead, yet\n","bold":true,"color": "dark_red"}

#Everything done, finish interaction
scoreboard players set @p[scores={revives=1}] revives 0
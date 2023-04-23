

#Checks interaction with warp_fungus_on_a_stick and set revives to 0
scoreboard objectives add revives minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard players set @a revives 0

#Keeps track of deaths, is set to 0
scoreboard objectives add dead deathCount 
scoreboard players set @a dead 0

scoreboard objectives add counter dummy 
scoreboard players set !count counter 0

scoreboard objectives add displayed dummy 

scoreboard objectives add zero dummy 
scoreboard players set #zero zero 0

scoreboard objectives add doing dummy
scoreboard players set @a doing 0

scoreboard objectives add timer dummy
scoreboard players set #timer timer 0



#Datapack is loaded
tellraw @a {"text":"Datapack Revival is loaded ","color": "#dda0dd"}
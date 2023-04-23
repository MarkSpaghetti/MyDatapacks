# Will run function "usingtotem" only for the player holding the totem and setting the revives to 1 (using the totem)
execute as @a[scores={revives=1}] if entity @s[nbt={SelectedItem: {id: "minecraft:warped_fungus_on_a_stick", tag: {CustomModelData: 35011001, Damage: 0, Tags: ["Revival Datapack", "Tools"], display: {Lore: ['{"text": "It can revive the dead","color": "#AAAAAA"}'], Name: '{"text": "Totem of Resurrection","color":"#AA00AA"}'}}}}] run function revival:totem/usingtotem

# When someone is dead will run the function forthedead
execute if entity @a[scores={dead=1}] run function revival:forthedead

#Will take the dead count to either 1 or 0. If they somehow die in limbo
scoreboard players set @a[scores={dead=2}] dead 1

#Start timer
execute as @a[scores={revives=1}] run execute if score @s timer matches 1 run scoreboard players add @s timer 1
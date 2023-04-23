# Remove the totem, give the effect and sound
clear @a[scores={revives=1},limit=1] warped_fungus_on_a_stick{CustomModelData:35011001} 1
playsound item.trident.thunder block @a[scores={revives=1},limit=1]
particle minecraft:totem_of_undying ~ ~ ~ ~ ~ ~ 1 10000 normal @a[scores={revives=1},limit=1]


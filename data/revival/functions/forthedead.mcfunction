
#Tp the dead to limbo.
execute in revival:limbo run tp @a[scores={dead=1},nbt={Dimension:"minecraft:overworld"}] 0 70 0
execute in revival:limbo run tp @a[scores={dead=1},nbt={Dimension:"minecraft:the_end"}] 0 70 0
execute in revival:limbo run tp @a[scores={dead=1},nbt={Dimension:"minecraft:the_nether"}] 0 70 0

#Display text
execute in revival:limbo run title @a[x=0,y=44,z=0,distance=..2] title {"text":"Limbo","color":"gray","bold":true}


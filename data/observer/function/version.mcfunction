data modify storage observer:version name set value "Observer"

data modify storage observer:version major set value 0
data modify storage observer:version minor set value 1
data modify storage observer:version patch set value 0
data modify storage observer:version suffix set value "alpha"

execute if data storage observer:version {suffix:""} run tellraw @a {"nbt":"name","storage":"observer:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"observer:version", plain: true, "extra":[{"text":"."},{"nbt":"minor","storage":"observer:version", plain: true},{"text":".","extra":[{"nbt":"patch","storage":"observer:version", plain: true}]}]}]}], plain: true}

execute unless data storage observer:version {suffix:""} run tellraw @a {"nbt":"name","storage":"observer:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"observer:version", plain: true,"extra":[{"text":"."},{"nbt":"minor","storage":"observer:version", plain: true},{"text":".","extra":[{"nbt":"patch","storage":"observer:version", plain: true},{"text":"-","extra":[{"nbt":"suffix","storage":"observer:version", interpret: true}]}]}]}]}], interpret: true}

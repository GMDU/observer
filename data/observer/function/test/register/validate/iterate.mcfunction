data modify storage observer:test register.current set from storage observer:test register.batches[0]
data remove storage observer:test register.batches[0]

execute if data storage observer:test register.current.async run function observer:test/register/validate/check

execute if data storage observer:test register.batches[0] run function observer:test/register/validate/iterate
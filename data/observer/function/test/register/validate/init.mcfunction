execute unless data storage observer:api/test/register target.name run return run data modify storage observer:test register.error set value {text: "Test is missing a name", color: "red"}

data modify storage observer:test register.batches set from storage observer:api/test/register target.batches

execute if data storage observer:test register.batches[] run function observer:test/register/validate/iterate
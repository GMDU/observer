execute store result storage observer:test/private batches.player_id int 1 run function observer:util/player/get_id
function observer:test/batches/player/get_data.macro with storage observer:test/private batches

data modify storage observer:test/private batches.current_batch set from storage observer:test/private batches.current.batches[0]
data remove storage observer:test/private batches.current.batches[0]

function observer:test/batches/player/perform.macro with storage observer:test/private batches.current_batch

execute if data storage observer:test/private batches.current.batches[] run data modify storage observer:test/private batches.running append from storage observer:test/private batches.current
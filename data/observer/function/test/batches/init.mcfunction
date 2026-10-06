execute if function observer:test/batches/already_running run return run function observer:test/batches/error/already_running

data modify storage observer:test/private batches.running append value {}
execute store result storage observer:test/private batches.running[-1].id int 1 run function observer:util/player/get_id
data modify storage observer:test/private batches.running[-1].batches set from storage observer:test registry

tag @s add observer.batches.player

function observer:test/batches/player/schedule
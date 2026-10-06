data modify storage observer:test private.run set value true
tellraw @s [{text: "Performing batch: ", color: "green"}, {storage: "observer:test/private", nbt: "batches.current_batch.name", interpret: true, color: "gold"}]

$function $(entrypoint)

function observer:test/summary
data modify storage observer:test private.run set value false
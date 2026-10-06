execute as @a[tag=observer.batches.player] run function observer:test/batches/player/init

execute if data storage observer:test/private batches.running[] run schedule function observer:test/batches/schedule 1t
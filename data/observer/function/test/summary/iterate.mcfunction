data modify storage observer:test/private results.current set from storage observer:test/private results.log[0]
data remove storage observer:test/private results.log[0]

scoreboard players add $iteration observer.test 1

data modify storage observer:test/private results.time set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"observer:test/private",path:"results.time",fallback:0},{type:"minecraft:storage",storage:"observer:test/private",path:"results.current.time",fallback:0}]}

# execute if data storage observer:test/private results.current{result: "pass"} run function observer:test/summary/output/pass
execute if data storage observer:test/private results.current{result: "fail"} run function observer:test/summary/output/fail

execute if data storage observer:test/private results.log[] run function observer:test/summary/iterate
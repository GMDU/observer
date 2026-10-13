scoreboard players add $success observer.test 1
data modify storage observer:test/private results.log append value {result: "pass", time: 0f, describes: "", expects: {}, receives: {}}

execute store result storage observer:test/private results.log[-1].time int 1 run stopwatch query observer:test 1000
data modify storage observer:test/private results.log[-1].describes set from storage observer:test/it describes
data modify storage observer:test/private results.log[-1].expects set from storage observer:test/it expects
data modify storage observer:test/private results.log[-1].receives set from storage observer:test/it receives
data modify storage observer:test private.temp.expects set from storage observer:test/it expects
data modify storage observer:test private.temp.receives set from storage observer:test/it receives

execute store result storage observer:test private.temp.result byte 1 run data modify storage observer:test private.temp.expects set from storage observer:test private.temp.receives

execute if data storage observer:test private{temp:{result:true}} run data modify storage observer:test private.check set value false
execute if data storage observer:test private{temp:{result:false}} run data modify storage observer:test private.check set value true

execute if data storage observer:test/it expects unless data storage observer:test/it receives run data modify storage observer:test private.check set value false
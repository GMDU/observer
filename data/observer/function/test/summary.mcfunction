scoreboard players operation $percent observer.test = $success observer.test
scoreboard players operation $percent observer.test *= #10000 observer.constants
scoreboard players operation $percent observer.test /= $iteration observer.test
scoreboard players operation $percent.units observer.test = $percent observer.test
scoreboard players operation $percent.units observer.test /= #100 observer.constants
scoreboard players operation $percent.decimals observer.test = $percent observer.test
scoreboard players operation $percent.decimals observer.test %= #100 observer.constants

tellraw @s [{"text":"[","color":"gold","extra":[{"score":{"name":"$success","objective":"observer.test"},"color":"green","extra":[{"text":"/","extra":[{"score":{"name":"$iteration","objective":"observer.test"}}]}]},{"text":"]"}]},{"text":"(","color":"gold","extra":[{"score":{"name":"$percent.units","objective":"observer.test"},"color":"aqua","extra":[{"text":"."},{"score":{"name":"$percent.decimals","objective":"observer.test"}},{"text":"%"}]},{"text":")"},{"text":" tests passing.","color":"white"}]}]
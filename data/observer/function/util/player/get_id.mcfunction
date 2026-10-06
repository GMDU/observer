execute if score @s observer.player_id matches 1.. run return run scoreboard players get @s observer.player_id

scoreboard players add $current observer.player_id 1
scoreboard players operation @s observer.player_id = $current observer.player_id

return run scoreboard players get @s observer.player_id
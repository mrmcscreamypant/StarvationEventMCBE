execute at @e[type=se:smoke_bomb_cloud,tag=!just_spawned2] run particle se:smoke_bomb_emitter

tag @e[type=se:smoke_bomb_cloud,tag=just_spawned1,tag=just_spawned2] remove just_spawned1
tag @e[type=se:smoke_bomb_cloud,tag=just_spawned1,tag=!just_spawned2] add just_spawned2
tag @e[type=se:smoke_bomb_cloud,tag=!just_spawned1,tag=!just_spawned2] add just_spawned1
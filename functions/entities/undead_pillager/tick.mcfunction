playanimation @e[type=se:undead_pillager,tag=!just_spawned2] animation.undead_pillager.emerge
playanimation @e[type=se:undead_pillager,tag=just_spawned1] animation.undead_pillager.emerge
effect @e[type=se:undead_pillager,tag=!just_spawned2] slowness 4 255 true
execute at @e[type=se:undead_pillager,tag=!just_spawned2] run particle se:undead_pillager_emerge_emitter

tag @e[type=se:undead_pillager,tag=just_spawned1,tag=just_spawned2] remove just_spawned1
tag @e[type=se:undead_pillager,tag=just_spawned1,tag=!just_spawned2] add just_spawned2
tag @e[type=se:undead_pillager,tag=!just_spawned1,tag=!just_spawned2] add just_spawned1
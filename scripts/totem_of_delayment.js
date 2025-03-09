import { world, system, EquipmentSlot } from '@minecraft/server';

function init() {

world.afterEvents.entityHurt.subscribe(event => {
    const equipment = event.hurtEntity.getComponent("minecraft:equippable")
    if (!equipment) return
    const weapon = equipment.getEquipment(EquipmentSlot.Offhand)
    // If there's no weapon, skip
    if (!weapon) return

    if (weapon.typeId==="se:active_totem_of_delayment") {
	try {
	event.hurtEntity.setProperty("se:totem_of_delayment_stacked_damage",
		event.hurtEntity.getProperty("se:totem_of_delayment_stacked_damage")+event.damage)
	event.hurtEntity.addEffect("instant_health",1,{amplifier:event.damage})
	} catch (error) {
		(async () => {
	await event.hurtEntity.runCommandAsync("function items/totem_of_delayment/on_player_death");
	event.hurtEntity.setProperty("se:totem_of_delayment_stacked_damage",0)
})();
}
    }
})

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id==="se:totem_of_delayment_timeout") {
		event.sourceEntity.applyDamage(event.sourceEntity.getProperty("se:totem_of_delayment_stacked_damage")+40)
	
	event.sourceEntity.setProperty("se:totem_of_delayment_stacked_damage",0)
}})}

export {init}
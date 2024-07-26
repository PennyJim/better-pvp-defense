-- Initial turrets
local turret = data.raw["ammo-turret"]["gun-turret"]
local defense_turret = table.deepcopy(turret)
defense_turret.name = "pvp-defense-turret"

-- Turret modifications
defense_turret.max_health = turret.max_health * settings.startup["pvp-defense-turret-health-multiplier"].value --[[@as number]]
defense_turret.attack_parameters.range = settings.startup["pvp-defense-turret-range"].value --[[@as number]]
defense_turret.attack_parameters.ammo_consumption_modifier = settings.startup["pvp-defense-turret-ammo-consumption"].value --[[@as number]]
defense_turret.automated_ammo_count = settings.startup["pvp-defense-turret-auto-ammo"].value --[[@as integer]]

-- Actual registration
data:extend{
	defense_turret
}
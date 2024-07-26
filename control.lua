local function load()
	if not remote.interfaces["pvp"] then return end
	local prototypes = remote.call("pvp", "get_config").prototypes
	prototypes.turret = "pvp-defense-turret"
	-- Maybe add more prototype replacements?
	-- Like maybe a stronger wall/gate?
	remote.call("pvp", "set_config", {
		prototypes = prototypes
	})
end

script.on_init(load)
script.on_load(load)
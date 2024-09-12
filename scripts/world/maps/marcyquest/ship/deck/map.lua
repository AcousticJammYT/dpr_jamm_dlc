local Ship, super = Class(Map)

function Ship:init(world, data)
	super.init(self, world, data)
	
	self.tidal_timer = 0
	self.waves = {}
end

function Ship:onEnter()
	local backdrop = Sprite("world/stars", 0, 0)
    backdrop.wrap_texture_x = true
    backdrop:setScale(2)
    Game.world:spawnObject(backdrop, "objects_bg")
	backdrop.physics.speed_x = 0.25
	
	if not Game:getFlag("marcy_with_party") then
		for k,v in ipairs(Game.world.followers) do
			v:remove()
		end
		Game.world.player:setActor("marcy")
		Game.world.disable_dark_menu = true
	end
	if not Game:getFlag("marcyquest_party_1") then
		if #Game.party >= 2 then
			local party1 = NPC(Game.party[2]:getActor().id, 1640, 440, {cutscene="marcyquest.party_1", facing="left", turn=true})
			Game.world:spawnObject(party1)
			party1.partyslot = 2
			if #Game.party >= 3 then
				local party2 = NPC(Game.party[3]:getActor().id, 1802, 300, {cutscene="marcyquest.party_1", facing="up", turn=true})
				Game.world:spawnObject(party2)
				party2.partyslot = 3
				if #Game.party >= 4 then
					local party3 = NPC(Game.party[4]:getActor().id, 1360, 740, {cutscene="marcyquest.party_1", facing="down", turn=true})
					Game.world:spawnObject(party3)
					party3.partyslot = 4
				end
			end
		end
	end
end

function Ship:onExit()
	Game.world.disable_dark_menu = false
end

function Ship:update()
	self.tidal_timer = self.tidal_timer + DT
	if self.tidal_timer > 3 then
		self.tidal_timer = self.tidal_timer - 3
		local ran = love.math.random(0, 120)
		for i=1, 5 do -- y = 134
			Game.world.timer:after(Utils.random(2.2), function()
				if Game.world.map.id == "marcyquest/ship/deck" then
					local water = Sprite("world/miniwave_1", -20, 134 + ran + (160 * (i-1)))
					water:setScale(2)
					Game.world:spawnObject(water, "objects_bg")
					water.physics.speed_x = 3
					table.insert(self.waves, water)
				end
			end)
		end
	end
	
	for k,v in ipairs(self.waves) do
		if v.x > 2079 then
			v:remove()
			table.remove(self.waves, k)
		end
	end
end

return Ship
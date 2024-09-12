function Mod:init()
    print("Loaded "..self.info.name.."!")
end

function Mod:getUISkin()
	if Game.world and Game.world.map and string.sub(Game.world.map.id, 1, string.len("marcyquest"))=="marcyquest" then
		return "pirate"
	end
	return Game:getUISkin()
end
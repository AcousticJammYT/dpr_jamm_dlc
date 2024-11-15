local Cave, super = Class(Map)

function Cave:onEnter()
	super:onEnter(self)
	if Game:getFlag("acj_secret_door_completed", false) then
		local shape = Game.world.map:getHitbox("secret_puzzle_1")
		shape.collidable = false
		Game.world.map:getTileLayer("DoorLayer").visible = false
	end
end

return Cave
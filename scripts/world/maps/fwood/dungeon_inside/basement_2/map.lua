local Cave, super = Class(Map)

function Cave:onEnter()
	super:onEnter(self)
	if Game:getFlag("acj_secret_revealed", false) then
		local shape = Game.world.map:getHitbox("secret_collision")
		shape.collidable = false
		Game.world.map:getTileLayer("DeleteWhenSecret").visible = false
	end
end

return Cave
local Island, super = Class(Map)

function Island:onEnter()
	super:onEnter(self)
	if not Game:getFlag("marcyquest_first_slide") then
		local shape = Game.world.map:getHitbox("key_collision_1")
		shape.collidable = false
	end
	if Game:getFlag("marcyquest_party_key") then
		local shape = Game.world.map:getHitbox("nokey_collision_1")
		shape.collidable = false
		local shape2 = Game.world.map:getHitbox("nokey_collision_2")
		shape2.collidable = false
	end
end

return Island
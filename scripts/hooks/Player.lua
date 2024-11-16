local Player, super = Class(Player)

function Player:init(chara, x, y)
	super.init(self, chara, x, y)
	
	self.doopShader = Assets.newShader("doop")
	
	if Game:getFlag("should_doop") then
		doop_fx = ShaderFX(self.doopShader, {})
		self:addFX(doop_fx, "doop_fx")
	end
end

return Player
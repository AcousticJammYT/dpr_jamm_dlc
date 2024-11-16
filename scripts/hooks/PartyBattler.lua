local PartyBattler, super = Class(PartyBattler)

function PartyBattler:init(chara, x, y)
    super.init(self, chara, x, y)
	
	self.doopShader = Assets.newShader("doop")
	
	if Game:getFlag("should_doop") and self.chara.id == Game.party[1].id then
		doop_fx = ShaderFX(self.doopShader, {})
		self:addFX(doop_fx, "doop_fx")
	end
end

return PartyBattler
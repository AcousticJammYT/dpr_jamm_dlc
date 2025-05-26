local PartyBattler, super = Class(PartyBattler)

function PartyBattler:init(chara, x, y)
    super.init(self, chara, x, y)
	
	self.doopShader = Assets.newShader("doop")
	
	if Game:getFlag("should_doop") and self.chara.id == Game.party[1].id then
		doop_fx = ShaderFX(self.doopShader, {})
		self:addFX(doop_fx, "doop_fx")
	end
end

function PartyBattler:doOverlay()
	if (not self.defending) and (not self.is_down) then
		if not (Game.battle.soul and Game.battle.soul.FS) then
			self.sleeping = false
			self.hurting = true
			self:toggleOverlay(true)
			self.overlay_sprite:setAnimation("battle/hurt", function()
				if self.hurting then
					self.hurting = false
					self:toggleOverlay(false)
				end
				
				if (self.chara:getHealth() <= (self.chara:getStat("health") / 4)) and self.chara.actor:getAnimation("battle/low_health") then
					self:setAnimation("battle/low_health")
				end
			end)
			if not self.overlay_sprite.anim_frames then -- backup if the ID doesn't animate, so it doesn't get stuck with the hurt animation
				Game.battle.timer:after(0.5, function()
					if self.hurting then
						self.hurting = false
						self:toggleOverlay(false)
					end
				end)
			end
		end
	end
end

return PartyBattler
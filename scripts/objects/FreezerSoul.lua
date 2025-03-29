local FreezerSoul, super = Class(Soul)

function FreezerSoul:init(x, y)
    super:init(self, x, y)
	
	self.frozen_overlay = Sprite("player/heart_dodge_frozen_overlay")
	self.frozen_overlay:setOrigin(0.5, 0.5)
	self.frozen_overlay.visible = false
	self:addChild(self.frozen_overlay)
	
	self.FS = true
end

function FreezerSoul:getFrozen()
	return Input.down("confirm")
end

function FreezerSoul:doMovement()
	if not Input.down("confirm") then
		super.doMovement(self)
		self.frozen_overlay.visible = false
	else
		self.frozen_overlay.visible = true
		for _,battler in pairs(Game.battle.party) do
			if (battler.actor.animations["battle/tactic_freeze"] ~= nil) then
				battler:toggleOverlay(true)
				local fanim = "battle/tactic_freeze"
				battler.overlay_sprite:setAnimation(fanim)
			end
		end
	end
	
	if Input.released("confirm") then
		for _,battler in pairs(Game.battle.party) do
			battler:toggleOverlay(false)
		end
	end
end

return FreezerSoul
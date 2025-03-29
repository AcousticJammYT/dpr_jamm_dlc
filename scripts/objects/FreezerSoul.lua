local FreezerSoul, super = Class(Soul)

function FreezerSoul:init(x, y)
    super:init(self, x, y)
	
	self.frozen_overlay = Sprite("player/heart_dodge_frozen_overlay")
	self.frozen_overlay:setOrigin(0.5, 0.5)
	self:addChild(self.frozen_overlay)
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
	end
end

return FreezerSoul
local BellWave, super = Class(Bullet)

function BellWave:init(x, y, rot, speed)
    super.init(self, x, y, "battle/bullets/bellwave")

    self.rotation = rot
    self.physics.speed = speed
	self.physics.match_rotation = true
	self.inv_timer = (1/15)
	self.destroy_on_hit = false
	self.sprite:play(1/15, true)
    self.sprite:setColor(1, 105/255, 105/255)
end

function BellWave:getTarget()
    return "ALL"
end

function BellWave:getDamage()
    return self.attacker and self.attacker.attack * 10 or 0
end

function BellWave:shouldSwoon(damage, target, soul)
    return true
end

function BellWave:update()

	super.update(self)
end

return BellWave
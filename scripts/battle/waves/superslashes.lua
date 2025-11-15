local Aiming, super = Class(Wave)

function Aiming:init()
    super.init(self)
    self.time = -1 -- makes it endless
    self.arena_x = 320
    self.arena_y = 186
    self.arena_width = 20
	self.arena_height = 20
end

function Aiming:onStart()
    local faker = Game.battle:getEnemyBattler("fake_jamm")
    self.timer:every(1/2, function()
        faker:setAnimation("attack")
        Assets.playSound("criticalswing")
        self:spawnBullet("bellwave", faker.x, faker.y - 50, math.rad(180), 12)
    end)
end

function Aiming:update()

    super.update(self)
end

return Aiming
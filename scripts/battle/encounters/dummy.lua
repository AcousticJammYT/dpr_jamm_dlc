local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
    self.text = "* The tutorial begins...?"

    -- Battle music ("battle" is rude buster)
    self.music = "battle"
    -- Enables the purple grid battle background
    self.background = true

    -- Add the dummy enemy to the encounter
    self:addEnemy("dummy")

    --- Uncomment this line to add another!
    --self:addEnemy("dummy")
end

function Dummy:createSoul(x, y, color)
    return FreezerSoul(x, y)
end
function Dummy:onTurnStart()
	for _,battler in pairs(Game.battle.party) do
		battler:toggleOverlay(false)
	end
end

return Dummy
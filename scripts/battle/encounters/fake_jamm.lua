local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    self.text = "* Battle against a faker."

    if Game:isDessMode() then
        self.music = "battle"
    else
        self.music = "faker"
    end
    self.background = false

    self:addEnemy("fake_jamm", 520, 240)

	self.flee = false
end

function Dummy:onGameOver()
    self.gameover = true
    Game.battle:endWaves()
    return true -- prevents game over
end

function Dummy:beforeStateChange(old, new)
	if new == "ENEMYDIALOGUE" then
		local cutscene = Game.battle:startCutscene("fake_jamm.talk")
		cutscene:after(function()
			Game.battle:setState("DIALOGUEEND")
		end)
	end

    if new == "ACTIONSELECT" and self.gameover then
		Game.battle:setState("TRANSITIONOUT")
    end
end

function Dummy:getPartyPosition(index)
    local x, y = 0, 0
    x = 200 - (20 * (index - 1))
    y = 160 + (50 * (index - 1))
    return x, y
end

function Dummy:isAutoHealingEnabled(battler)
    return false
end

return Dummy

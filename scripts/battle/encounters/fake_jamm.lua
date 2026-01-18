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

function Dummy:onReturnToWorld(events)
    local members = {}
	for _, member in ipairs(Game.party) do
        member:setHealth(1)
		table.insert(members, Game.world:getCharacter(member.id))
	end
    for i, member in ipairs(members) do
        member:setAnimation("battle/swooned")
	end
end

function Dummy:onGameOver()
    Game.battle.state = "FAKEGAMEOVER"
    Game.battle:returnSoul()
    Game.battle.arena:remove()
    for _, battler in ipairs(Game.battle.party) do
        battler.should_darken = false
        battler.targeted = false
    end
    for _, wave in ipairs(Game.battle.waves) do
        wave:clear()
        wave:remove()
    end
    if Game.battle.enemies[1] then Game.battle.enemies[1]:setAnimation("idle") end
    Game.battle.current_selecting = 0
    if Game.battle.tension_bar and Game.battle.tension_bar.shown then
        Game.battle.tension_bar:hide()
    end
    Game.battle.battle_ui:transitionOut()
    return true -- prevents game over
end

function Dummy:beforeStateChange(old, new)
	if new == "ENEMYDIALOGUE" then
		local cutscene = Game.battle:startCutscene("fake_jamm.talk")
		cutscene:after(function()
			Game.battle:setState("DIALOGUEEND")
		end)
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

function Dummy:update()
    super.update(self)

    if Game.battle.state == "FAKEGAMEOVER" then
        Game.battle.background_fade_alpha = math.max(Game.battle.background_fade_alpha - (0.05 * DTMULT), 0)
        if Game.battle.background_fade_alpha == 0 then
            Game.battle:updateTransitionOut()
        end
    end
end

return Dummy

local Dummy, super = Class(Encounter)

function Dummy:init()
    super.init(self)

    -- Text displayed at the bottom of the screen at the start of the encounter
	if Game:isDessMode() then
    	self.text = "* The dungeon boss approaches."
	else
		self.text = "* The dungeon boss approaches.\n* Jamm is stunned."
	end
	
	self.boss_rush = false
	if Game.bossrush_encounters ~= nil or Game:getFlag("jamm_closure") == true then
        self.boss_rush = true
        self.text = "* The dungeon boss approaches."
    end

    -- Battle music ("battle" is rude buster)
    self.music = nil
	if self.boss_rush then
		self.music = "jamm_boss"
	end
    -- Enables the purple grid battle background
    self.background = false

    self.flee = false

    -- Add the dummy enemy to the encounter
    self.boss = self:addEnemy("shade_ania")
	
	self.did_first_checkpoint = false
	self.did_second_checkpoint = false
end

function Dummy:onBattleInit()
    super.onBattleInit(self)
	if Game.current_rush == "Jamm Rush" then
		local bg = Sprite("battle/rush_bgs/jamm_rush")
		Game.battle:addChild(bg)
		bg.layer = BATTLE_LAYERS["bottom"]
		bg.alpha = 0
		Game.battle.timer:tween(0.4, bg, {alpha = 1}, "linear")
    elseif self.boss_rush == true then
        Game.battle.dojo_bg = DojoBG({1, 1, 1})
        Game.battle:addChild(Game.battle.dojo_bg)
    end
end

function Dummy:onBattleStart()
	if not self.boss_rush and not Game:isDessMode() then
		local jamm = Game.battle.party[1]
		jamm.chara.stun = true
		jamm:setSprite("battle/hurt_1")
	end
end

function Dummy:update()
	super.update(self)
	if not self.boss_rush and not Game:isDessMode() then
		local jamm = Game.battle.party[1]
		if Game.battle.turn_count < 2 and not Game.battle.unstun then
			jamm.chara.stun = true
		end
		if jamm.chara.stun then
			jamm:setSprite("battle/hurt_1")
			if not (Game.battle.character_actions[1] and Game.battle.character_actions[1]["action"] == "SKIP" and Game.battle.current_action_index > 1) then
				Game.battle:pushForcedAction(jamm, "SKIP")
			end
		end
	end
end

function Dummy:getEncounterText()
	if Game.battle.turn_count%5 == 3 then
		return "* A lethal attack is coming!\n* Brace yourself!"
	end
	return super.getEncounterText(self)
end

function Dummy:beforeStateChange(old, new)
	if not self.boss_rush and Game:getFlag("jamm_closure") ~= true and new == "ENEMYDIALOGUE" then
		if (self.boss.health < 1530 or self.boss.mercy > 33) and not self.did_first_checkpoint then
			self.did_first_checkpoint = true
			Game.battle:startCutscene("shade_ania.checkpoint_1")
		elseif (self.boss.health < 760 or self.boss.mercy > 66) and not self.did_second_checkpoint then
			self.did_second_checkpoint = true
			Game.battle:startCutscene("shade_ania.checkpoint_2")
		end
	end
end

return Dummy

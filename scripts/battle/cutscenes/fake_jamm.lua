return {
    talk = function(cutscene, battler, enemy)
		local enemy = cutscene:getCharacter("fake_jamm")
		if Game:isDessMode() and Game.battle.turn_count == 1 then
			local dess = cutscene:getCharacter("dess")
			Game.battle.music:fade(0, 1)
			cutscene:text("* okay hold the FUCK on", "annoyed", "dess")
			dess:setSprite("walk/down")
			dess:shake()
			Assets.playSound("wing")
			cutscene:wait(1)
			cutscene:text("* okay i know this is the meme shitpost mode but", "neutral_c", "dess")
			cutscene:text("* come ON are we seriously using Rude Buster for this?", "angry", "dess")
			cutscene:battlerText(enemy, "Uh...", {})
			dess:setSprite("walk/right")
			cutscene:text("* this is YOUR fight,[wait:5] isn't it?", "eyebrow", "dess")
			cutscene:text("* you're like,[wait:5] some shapeshifting amalgamate type thingy or some shit", "neutral", "dess")
			cutscene:text("* don't you want actually fitting music?", "eyebrow", "dess")
			cutscene:battlerText(enemy, "I guess?", {})
			dess:setSprite("walk/down")
			cutscene:text("* see?[wait:10] even HE agrees", "condescending", "dess")
			cutscene:text("* can you play something more fitting please", "angry", "dess")
			cutscene:wait(0.5)
			Game.battle.music:play("faker", 0, 1)
			Game.battle.music:fade(1, 1)
			cutscene:wait(1.5)
			dess:setSprite("walk/right")
			cutscene:text("* better?", "neutral_c", "dess")
			cutscene:battlerText(enemy, "Yeah this is\nmuch better.", {})
			cutscene:text("* alright", "genuine", "dess")
			if Game:getTension() >= 16 then
				dess:setSprite("battle/defend_3")
			else
				dess:resetSprite()
			end
			Assets.playSound("ui_cancel_small")
			cutscene:wait(0.5)
			cutscene:text("* lettuce continue", "challenging", "dess")
		end
		if Game.battle.turn_count == 3 then
			cutscene:battlerText(enemy, "Alright, enough\nplaying around.", {})
		else
			cutscene:battlerText(enemy, "...", {})
		end
    end,
}
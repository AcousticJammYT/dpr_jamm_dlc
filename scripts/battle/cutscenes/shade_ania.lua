return {
    unstun = function(cutscene, battler, enemy)
		local dess = cutscene:getCharacter("dess")
		local jamm = cutscene:getCharacter("jamm")
		if Game:isDessMode() then
			cutscene:text("* woah how the hell did i do that", "wtf", "dess")
			cutscene:text("* uhhhh i guess i can set up shields now?", "eyebrow", "dess")
			cutscene:text("* how convenient", "condescending", "dess")
			cutscene:text("* Dess can now cast [color:yellow]BARRIER[color:reset]!")
			Game:getPartyMember("dess"):addSpell("barrier")
			Game.battle:setState("ACTIONSELECT")
			return
		end
		cutscene:battlerText(dess, "took you long\nenough lol", {x=dess.x + 40, y=dess.y - 50, right=true})
		cutscene:battlerText(dess, "guess i can say\ni almost died", {x=dess.x + 40, y=dess.y - 50, right=true})
		if Game:getFlag("dungeonkiller") then
			cutscene:battlerText(jamm, "...", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			cutscene:battlerText(dess, "Jamm,[wait:5] I...", {x=dess.x + 40, y=dess.y - 50, right=true})
		else
			cutscene:battlerText(jamm, "That THING is\nnot my wife.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			cutscene:battlerText(jamm, "To think I could\nmistake this\nbeing for my\ndarling.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			cutscene:battlerText(dess, "Jamm...", {x=dess.x + 40, y=dess.y - 50, right=true})
		end
		cutscene:text("* (Barrier has been registered to Jamm's ACTs.)")
		Game.battle:setState("ACTIONSELECT")
    end,
    checkpoint_1 = function(cutscene, battler, enemy)
		local dess = cutscene:getCharacter("dess")
		local jamm = cutscene:getCharacter("jamm")
		if not Game:isDessMode() then
			cutscene:battlerText(jamm, "Ugh...", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			cutscene:battlerText(dess, "Jamm,[wait:5] are you\ndoing okay?", {x=dess.x + 40, y=dess.y - 50, right=true})
			if Game:getFlag("dungeonkiller") then
				cutscene:battlerText(jamm, "What's it matter\nto you?", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(jamm, "You didn't seem to\ncare when you were\ndesecrating this place.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			else
				cutscene:battlerText(jamm, "I'm fine,[wait:5] Dess.[wait:10]\nReally.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(jamm, "Let's focus on\ngetting this done.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(jamm, "Just you and me,[wait:5]\nright?", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			end
		else
			-- Brenda do whatever you feel is right here
		end
		Game.battle:setState("DEFENDINGBEGIN")
    end,
    checkpoint_2 = function(cutscene, battler, enemy)
		local dess = cutscene:getCharacter("dess")
		local jamm = cutscene:getCharacter("jamm")
		if not Game:isDessMode() then
			cutscene:battlerText(jamm, "Tch...!", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			cutscene:battlerText(dess, "Jamm,[wait:5] seriously.[wait:10]\nI'm getting worried.", {x=dess.x + 40, y=dess.y - 50, right=true})
			if Game:getFlag("dungeonkiller") then
				cutscene:battlerText(jamm, "I don't want to\nhear another word\nfrom you.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			else
				cutscene:battlerText(jamm, "I told you,[wait:5] I'm fine.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(jamm, "...", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(jamm, "But who am I\nkidding right now?", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(jamm, "This is really\ngetting to my\nhead.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(dess, "I don't blame\nyou,[wait:5] Jamm.", {x=dess.x + 40, y=dess.y - 50, right=true})
				cutscene:battlerText(dess, "Do you need me\nto take over for\na bit?", {x=dess.x + 40, y=dess.y - 50, right=true})
				cutscene:battlerText(jamm, "N-no,[wait:5] Dess...[wait:10]\nLet's just get\nthis done.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
				cutscene:battlerText(jamm, "We'll talk when we're\nout of here.", {x=jamm.x + 40, y=jamm.y - 50, right=true})
			end
		else
			-- Brenda do whatever you feel is right here
		end
		Game.battle:setState("DEFENDINGBEGIN")
    end,
}
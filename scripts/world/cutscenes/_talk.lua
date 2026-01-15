return {
    ---@param cutscene WorldCutscene
    main = function(cutscene, map, partyleader)
        if Game:isDessMode() then
            if map == "fwood/cross" then
                cutscene:showNametag("Dess")
                cutscene:text("* dude i always fucking hated this maze", "angry", "dess")
                cutscene:getCharacter("dess"):setFacing("down")
                cutscene:text("* hey i bet you hate it too", "neutral", "dess")
                cutscene:text("* tell you what,[wait:5] ill use my AWESOME DESS POWERS(trademarked)", "condescending", "dess")
                cutscene:text("* and save us both a lot of time", "condescending", "dess")
                cutscene:text("* okay here i go", "calm", "dess")
                cutscene:hideNametag()
                cutscene:mapTransition("fwood/boss", "top")
                Game:setFlag("fwoods_desscut", true)
            else
                cutscene:showNametag("Dess")
                cutscene:text("* allan please add dialogue", "neutral", "dess")
                cutscene:hideNametag()
            end
        else
			if map == "fwood/cross" then
				if Game:hasPartyMember("jamm") then
					cutscene:showNametag("Jamm")
					cutscene:text("* Ah, the forest maze...", "smile", "jamm")
					cutscene:text("* Call me crazy,[wait:5] but it makes me nostalgic for some reason...", "happy", "jamm")
					if Game:hasPartyMember("dess") then
						cutscene:showNametag("Dess")
						cutscene:text("* you're definitely crazy", "smile", "dess")
						cutscene:showNametag("Jamm")
						cutscene:text("* ...okay,[wait:5] I guess I walked into that one.", "nervous_left", "jamm")
					end
					cutscene:text("* I even have the solution memorized,[wait:5] just for convenience.", "neutral", "jamm")
					cutscene:text("* It's West,[wait:5] East,[wait:5] North,[wait:5] South,[wait:5] North,[wait:5] East,[wait:5] South,[wait:5] North.", "side_smile", "jamm")
				end
			elseif map == "fwood/graves" then
				if Game:hasPartyMember("jamm") then
					cutscene:showNametag("Jamm")
					cutscene:text("* ...", "worried", "jamm")
					cutscene:text("* Rest in peace,[wait:5] my love...", "worried", "jamm")
				end
			elseif map == "fwood/boss" then
				if Game:hasPartyMember("jamm") then
					cutscene:showNametag("Jamm")
					cutscene:text("* Man, if I hadn't come to save you guys...", "worried", "jamm")
					cutscene:text("* ...Let's not think about that,[wait:5] haha...", "worried", "jamm")
					if Game:hasPartyMember("susie") then
						cutscene:showNametag("Susie")
						cutscene:text("* But why weren't we able to damage him...?", "smile", "susie")
						cutscene:showNametag("Jamm")
						cutscene:text("* ...I'll give you the short answer.", "nervous_left", "jamm")
						cutscene:text("* He's magically attuned to my blood somehow.", "worried", "jamm")
						cutscene:text("* Meaning that only I can damage him.", "worried_down", "jamm")
						cutscene:text("* ...Please don't ask me how that works.", "nervous_left", "jamm")
					end
				end
			elseif map == "fwood/entry" then
				if Game:hasPartyMember("jamm") then
					cutscene:showNametag("Jamm")
					cutscene:text("* ...", "shaded_neutral", "jamm")
					cutscene:text("* ...Let's get this over with,[wait:5] alright?", "shaded_neutral", "jamm")
				end
			end
        end
		cutscene:hideNametag()
    end,
}
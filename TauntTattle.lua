
function TauntTattleFrame_OnLoad()

	TauntTattleFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");


	ChatFrame1:AddMessage("|cffffff00 Taunt Tattle Loaded");
	UIErrorsFrame:AddMessage("casualcorpse's Taunt Tattle Loaded.", 1.0, 1.0, 1.0, 1.0, UIERRORS_HOLD_TIME);

	-- already hidden by default, but just in case...
	TauntTattleFrame:Hide();
end



function TauntTattleFrame_SlashHandler(arg1)
	if (arg1 == "") then
		ChatFrame1:AddMessage("Taunt Tattle by casualcorpse is loaded");
		return;
	end

end

function TauntTattleFrame_OnEvent(event, ...)

	local timestamp, ttype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, spellid, spellname, spellschool, b_or_d = select(1, ...);

		if (ttype == "SPELL_CAST_SUCCESS") and ((spellname == "Growl") or (spellname == "Challenging Roar") or (spellname == "Taunt") or (spellname == "Challenging Shout") or (spellname == "Mocking Blow") or (spellname == "Righteous Defense") or (spellname == "Hand of Reckoning") or (spellname == "Dark Command")) then

			if (dstName) then
		  ChatFrame1:AddMessage(spellname.." used to taunt "..dstName.." by ".. srcName);
			else
		  ChatFrame1:AddMessage(spellname.." used by ".. srcName);
		end

		end

end

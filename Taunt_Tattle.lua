
function TauntTattleFrame_OnLoad()

	TauntTattleFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");


	ChatFrame1:AddMessage("|cffffff00 Taunt Tattle Loaded");

	-- already hidden by default, but just in case...
	TauntTattleFrame:Hide();
end



function TauntTattleFrame_OnEvent(event, ...)

	local timestamp, ttype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, spellid, spellname, spellschool, b_or_d = select(1, ...);

	if (ttype == "SPELL_CAST_SUCCESS") and ((spellid == 6795) or (spellid == 5209) or (spellid == 355) or (spellid == 1161) or (spellid == 694) or (spellid == 31789) or (spellid == 62124) or (spellid == 56222)) then

			if (dstName) then
		  ChatFrame1:AddMessage(spellname.." used to taunt "..dstName.." by ".. srcName);
			else
		  ChatFrame1:AddMessage(spellname.." used by ".. srcName);
		end

		end

end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- AO: Update Buttons
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function GUIUpdate_AbilityButtons(_Button, _Technology)
	local sel = GUI.GetSelectedEntity()
	local TechState = Logic.GetTechnologyState(GUI.GetPlayerID(), _Technology)
	
	XGUIEng.ShowWidget(_Button,1)

	--Building is interdicted
	if TechState == 0 then	
		XGUIEng.DisableButton(_Button,1)
	
	--Building is not available yet or Technology is to far in the futur
	elseif TechState == 1 or TechState == 2 or TechState == 5 or TechState == 3 then
		XGUIEng.DisableButton(_Button,1)
		
	--Building is enabled and visible	
	elseif TechState == 4 then
		if (_Button == "Scout_Torches") then
			if Logic.HeroGetAbilityRechargeTime(sel, Abilities.AbilityScoutTorches) == Logic.HeroGetAbiltityChargeSeconds(sel, Abilities.AbilityScoutTorches) then
				XGUIEng.DisableButton(_Button,0)
			else
				XGUIEng.DisableButton(_Button,1)
			end
		elseif (_Button == "Thief_PlaceExplosives") then
			if Logic.HeroGetAbilityRechargeTime(sel, Abilities.AbilityPlaceKeg) == Logic.HeroGetAbiltityChargeSeconds(sel, Abilities.AbilityPlaceKeg) then
				XGUIEng.DisableButton(_Button,0)
			else
				XGUIEng.DisableButton(_Button,1)
			end
		else
			XGUIEng.DisableButton(_Button,0)
		end
	end
end

function GUITooltip_AbilityButton(_tech,_tooltip,_ShortCut)
	local pid = GUI.GetPlayerID()
	local ShortCutToolTip = ""
	local TextToolTip = ""
	if _ShortCut ~= nil and Logic.GetTechnologyState(pid, _tech) == 4 then
		ShortCutToolTip = XGUIEng.GetStringTableText("MenuGeneric/Key_name") .. ": [" .. XGUIEng.GetStringTableText(_ShortCut) .. "]"
	end
	if Logic.GetTechnologyState(pid, _tech) == 0 then
		XGUIEng.GetStringTableText("MenuGeneric/TechnologyNotAvailable")
	elseif Logic.GetTechnologyState(pid, _tech) < 4 then
		TextToolTip =  XGUIEng.GetStringTableText(_tooltip .. "_disabled")
	else
		TextToolTip =  XGUIEng.GetStringTableText(_tooltip .. "_normal")
	end
	XGUIEng.SetText(gvGUI_WidgetID.TooltipBottomCosts, "")
	XGUIEng.SetText(gvGUI_WidgetID.TooltipBottomShortCut,ShortCutToolTip)
	XGUIEng.SetText(gvGUI_WidgetID.TooltipBottomText,TextToolTip)
end

function GUIUpdate_ThiefSelection()
	local ThiefID = GUI.GetSelectedEntity()
	
	if ThiefID ~= nil then
		local RessouceID, RessourceAmount = Logic.GetStolenResourceInfo(ThiefID)
		
		if RessouceID == 0 then
			XGUIEng.ShowWidget( "Commands_ThiefHasStolen",0 )
			XGUIEng.ShowWidget( "Commands_ThiefNormal",1 )			
		else
			XGUIEng.ShowWidget( "Commands_ThiefHasStolen",1 )
			XGUIEng.ShowWidget( "Commands_ThiefNormal",0 )
			
			RessourceAmount = "@ra " .. RessourceAmount
			
			XGUIEng.SetText("Thief_StolenRessourceAmount", RessourceAmount)	
			
			
			local SourceTexture = "data\\graphics\\textures\\gui\\"
			
			if RessouceID == ResourceType.ClayRaw
			or RessouceID == ResourceType.Clay then
				SourceTexture = SourceTexture .. "i_res_mud.png"
			elseif RessouceID == ResourceType.WoodRaw 
			or RessouceID == ResourceType.Wood then
				SourceTexture = SourceTexture .. "i_res_wood.png"
			elseif RessouceID == ResourceType.StoneRaw
			or RessouceID == ResourceType.Stone then
				SourceTexture = SourceTexture .. "i_res_stone.png"
			elseif RessouceID == ResourceType.SulfurRaw 
			or RessouceID == ResourceType.Sulfur then
				SourceTexture = SourceTexture .. "i_res_sulfur.png"
			elseif RessouceID == ResourceType.IronRaw 
			or RessouceID == ResourceType.Iron then
				SourceTexture = SourceTexture .. "i_res_iron.png"
			else
				SourceTexture = SourceTexture .. "i_res_gold.png"
			end
			
			XGUIEng.SetMaterialTexture("Thief_StolenRessourceType",1,SourceTexture)
			

		end
	end
	
end



function GUIUpdate_AOHintText()

	local CurrentWidgetID = XGUIEng.GetCurrentWidgetID()
	
	local NameAndType = {Framework.GetCurrentMapTypeAndCampaignName()}
	local Type = NameAndType[1]

	-- is map a campaign map?
	if Type == -1 then
		local Name = Framework.GetCurrentMapName()
		local MapTitle, MapDesc = Framework.GetMapNameAndDescription( Name, -1, NameAndType[2] )		
		
		local HintText 
		
		if NameAndType[2] == "Extra1" then
			HintText = XGUIEng.GetStringTableText( "CM02_MapHints/" .. Name )
		else		
			if Name == "13_Plague" then
				Name = "13_Plaque"
			end
			
			HintText = XGUIEng.GetStringTableText( "CM01_MapHints/" .. Name )
		end
			
			
			
		XGUIEng.SetText("GameEndScreen_OutputBG", HintText)	
		XGUIEng.SetText(CurrentWidgetID, MapTitle)	
	
	end
end
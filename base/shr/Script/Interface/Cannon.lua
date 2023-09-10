function GUIAction_BuyCannon_Init()
	gvGUI_CannonButtonIDArray = {}
end

function GUIUpdate_CancelCannonProgressButton()
	local CurrentWidgetID = XGUIEng.GetCurrentWidgetID()
	local EntityId = GUI.GetSelectedEntity() 

	-- Transfer material
	if gvGUI_CannonButtonIDArray[EntityId] ~= nil then
		XGUIEng.TransferMaterials( gvGUI_CannonButtonIDArray[EntityId], CurrentWidgetID )
	end
end

--------------------------------------------------------------------------------
-- Buy a cannon
--------------------------------------------------------------------------------
function GUIAction_BuyCannon(_CannonType, _UpgradeCategory)

	-- Get barrack
	local FoundryID = GUI.GetSelectedEntity()		

	--gvGUI_CannonButtonIDArray[_CannonType] = XGUIEng.GetCurrentWidgetID()
	gvGUI_CannonButtonIDArray[FoundryID] = XGUIEng.GetCurrentWidgetID()
	
	if InterfaceTool_IsBuildingDoingSomething( FoundryID ) == true then		
		return
	end
	
	local PlayerID = GUI.GetPlayerID()
	
	local VCThreshold = Logic.GetLogicPropertiesMotivationThresholdVCLock()
	local AverageMotivation = Logic.GetAverageMotivation(PlayerID)
	
	if AverageMotivation < VCThreshold then
		GUI.AddNote(XGUIEng.GetStringTableText("InGameMessages/Note_VillageCentersAreClosed"))		
		return
	end

	-- Maximum number of settlers attracted?
	if Logic.GetPlayerAttractionUsage( PlayerID ) >= Logic.GetPlayerAttractionLimit( PlayerID ) then
		GUI.SendPopulationLimitReachedFeedbackEvent( PlayerID )
--		Speech_StartExternal( "Speech_INFO_NoMoreSettlersInVC_2", 3 )
		return
	end
	
	Logic.FillSoldierCostsTable( PlayerID, _UpgradeCategory, InterfaceGlobals.CostTable )
	
	if InterfaceTool_HasPlayerEnoughResources_Feedback( InterfaceGlobals.CostTable ) == 1 then	
		-- Yes
		
		GUI.BuyCannon(FoundryID, _CannonType)
		--Sound.PlayGUISound( Sounds.klick_rnd_1, 0 )		
		XGUIEng.ShowWidget(gvGUI_WidgetID.CannonInProgress,1)
	end
end

function GUIUpdate_CannonProgress()
	
	local CurrentWidgetID = XGUIEng.GetCurrentWidgetID()
	
	local BuildingID = GUI.GetSelectedEntity()
	
	if BuildingID == nil then
		return
	end
	
	local value = Logic.GetCannonProgress(BuildingID)
	
	if value == 100 then
		value = 0 
	end
		
	XGUIEng.SetProgressBarValues(CurrentWidgetID,value, 100)
end
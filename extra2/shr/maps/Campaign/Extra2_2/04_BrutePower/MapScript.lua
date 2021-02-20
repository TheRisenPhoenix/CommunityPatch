
-- Include main function
Script.Load( "Data\\Script\\MapTools\\Main.lua" )

CP_Difficulty = 0

--Include cutscenes
Cutscenes = {}
Cutscenes[INTROCUTSCENE] = "INTRO"
Cutscenes[MISSIONCOMPLETECUTSCENE] = "MISSIONCOMPLETE"

IncludeLocals("Cutscene_" .. Cutscenes[INTROCUTSCENE])
IncludeLocals("Cutscene_" .. Cutscenes[MISSIONCOMPLETECUTSCENE])
IncludeLocals("gameControl")
IncludeLocals("briefing_prelude")
IncludeLocals("briefing_villagers")
IncludeLocals("briefing_Leader")
IncludeLocals("briefing_FirstCaravan")
IncludeLocals("briefing_FirstCaravanAttack")
IncludeLocals("briefing_Robbers")
--IncludeLocals("CaravanDetection")
IncludeLocals("briefing_VillageDone")
IncludeLocals("briefing_Princess")
IncludeLocals("briefing_Toruk")
IncludeLocals("briefing_EnemyMountainMen")
IncludeLocals("briefing_Barbarians")
IncludeLocals("quest_defeat")
IncludeLocals("Chapter1")
IncludeLocals("Chapter2")
IncludeLocals("Chapter3")
IncludeLocals("Chapter4")
IncludeLocals("Chapter5")
IncludeLocals("Chapter6")
IncludeLocals("Chapter7")
IncludeLocals("briefing_Run")
IncludeLocals("briefing_Q5Starter")
IncludeLocals("briefing_Info")
IncludeLocals("briefing_Info2")
IncludeLocals("briefing_Sighting")
IncludeLocals("briefing_YukiSaved")
IncludeLocals("briefing_CityBoy")
IncludeLocals("NPCLeader")
IncludeLocals("NPCLeader1")
IncludeLocals("NPCToruk")
IncludeLocals("NPCCityBoy")
IncludeLocals("NPCYuki")
IncludeLocals("briefing_SentToYuki")
IncludeLocals("briefing_Exterminate")

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to initialize the diplomacy states
function Mission_InitDiplomacy()

	Logic.SetDiplomacyState( 1, 2, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 1, 3, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 1, 4, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 1, 5, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 1, 6, Diplomacy.Neutral )
	Logic.SetDiplomacyState( 1, 7, Diplomacy.Friendly )
	Logic.SetDiplomacyState( 2, 3, Diplomacy.Friendly )
	Logic.SetDiplomacyState( 2, 4, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 2, 5, Diplomacy.Friendly )
	Logic.SetDiplomacyState( 2, 6, Diplomacy.Neutral )
	Logic.SetDiplomacyState( 2, 7, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 3, 4, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 3, 5, Diplomacy.Friendly )
	Logic.SetDiplomacyState( 3, 6, Diplomacy.Neutral )
	Logic.SetDiplomacyState( 3, 7, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 4, 5, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 4, 6, Diplomacy.Neutral )
	Logic.SetDiplomacyState( 4, 7, Diplomacy.Friendly )
	Logic.SetDiplomacyState( 5, 6, Diplomacy.Neutral )
	Logic.SetDiplomacyState( 5, 7, Diplomacy.Hostile )

	end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called to set the player colors
function Mission_InitPlayerColorMapping()
	Display.SetPlayerColorMapping(2, BARBARIAN_COLOR)
	Display.SetPlayerColorMapping(5, ROBBERS_COLOR)
end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to init all resources for player(s)
function Mission_InitResources()
end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called to setup Technology states on mission start
function Mission_InitTechnologies()

	        Logic.SetTechnologyState(gvMission.PlayerID, Technologies.B_Weathermachine     	,0 )	
	        Logic.SetTechnologyState(gvMission.PlayerID, Technologies.B_PowerPlant      	,0 )
	        Logic.SetTechnologyState(gvMission.PlayerID, Technologies.T_WeatherForecast    	,0 ) 
	        Logic.SetTechnologyState(gvMission.PlayerID, Technologies.T_ChangeWeather      	,0 ) 

	if GDB.GetValue("Game\\Campaign_Difficulty") == 1 then
		ResearchAllMilitaryTechsAddOn(2)
		ResearchAllMilitaryTechsAddOn(3)
		ResearchAllMilitaryTechsAddOn(4)
		ResearchAllMilitaryTechsAddOn(5)
	end
end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start to initialize ai for all ai players
function Mission_InitAI()
end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start and after save game is loaded, setup your weather gfx
-- sets here
function Mission_InitWeatherGfxSets()
	SetupHighlandWeatherGfxSet()
	--[[
	Display.SetRenderUseGfxSets(1)
	
	WeatherSets_SetupNormal(1)
	WeatherSets_SetupRain(2)
	WeatherSets_SetupNormal(4, 0, 1)
	WeatherSets_SetupRain(5, 1, 1)
	--]]
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start you should setup your weather periods here
function Mission_InitWeather()
	Logic.AddWeatherElement(1, 700, 1, 1, 5, 10)	-- Sommer
	Logic.AddWeatherElement(2, 100, 1, 2, 5, 10)	-- Foggy with Rain

end
	
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start after all initialization is done
function Mission_FirstMapAction()

	CP_Difficulty = GDB.GetValue("Game\\Campaign_Difficulty")

	String.Init("CM04_04_BrutePower")

	--	resources
	
		AddGold(1300)
		AddWood(3400)
		AddClay(2500)
		AddStone(4500)
		AddIron(900)
		AddSulfur(150)

	--	Variables

		Quest1Status		=0
		Quest1Done		=0
		Quest2Done		=0
		MonasteryDown		=0
		PilFollow		=0
		StopEffects		=0
		PrincessFree		=0
		MountainMenDeastroyed 	=0

		TextDisplayed		=0

		Archery			=0
		Barracks		=0
		Blacksmith		=0
		Brickworks		=0
		Farms			=0
		Farm2			=0
		Farm3			=0
		Farm4			=0
		Residences		=0
		Residence2		=0
		Residence3		=0
		Residence4		=0
		Sawmill			=0
		StoneMason		=0
		University		=0

		Visited			=0

		MM1Group1		=0
		MM1Group2		=0
		MM1Group3		=0

		MM2Group1		=0
		MM2Group2		=0
		MM2Group3		=0

		BGroup1			=0
		BGroup2			=0
		BGroup3			=0

		Switch			=0
		MainCity		=0

		Display.SetPlayerColorMapping(7, 1)
		Logic.SetShareExplorationWithPlayerFlag(1, 7, 1)

		SetPlayerName(2, String.Key("_Player2Name"))
		--SetPlayerName(2, "Barbaren")
		SetPlayerName(3, String.Key("_Player3Name"))
		--SetPlayerName(3, "Bergbewohner")
		SetPlayerName(4, String.Key("_Player4Name"))
		--SetPlayerName(4, "Bergbewohner")
		SetPlayerName(5, String.Key("_Player5Name"))

	-- Set Music-Set

		LocalMusic.UseSet = HIGHLANDMUSIC
	
	--	start quest

	MakeInvulnerable("Rock1")
	MakeInvulnerable("Rock2")
	--EnableDebugging()

	start1stChapter()
	
	if CP_Difficulty == 1 then
		local towers1 = { Logic.GetPlayerEntities(3, Entities.PB_Tower1, 5, 0) }
		for i = 2, table.getn(towers1) do
			if IsExisting(towers1[i]) then
				ReplaceEntity(towers1[i], Entities.PB_Tower2)
			end
		end
		local towers2 = { Logic.GetPlayerEntities(4, Entities.PB_Tower1, 5, 0) }
		for j = 2, table.getn(towers2) do
			if IsExisting(towers2[j]) then
				ReplaceEntity(towers2[j], Entities.PB_Tower2)
			end
		end

		local posvc = GetPosition("vc_empty")
		local posrg = GetPosition("RobbersGenerator")
		CreateEntity(0, Entities.XD_RockDestroyableMedium1, posvc)
		DestroyEntity("vc_empty")
		CreateEntity(0, Entities.XD_VillageCenter, posrg, "vc_empty")
		DestroyEntity("RobbersGenerator")
		CreateEntity(5, Entities.PB_VillageCenter1, posrg, "RobbersGenerator")
	end

	--Tools.ExploreArea(-1, -1, 900) 
end

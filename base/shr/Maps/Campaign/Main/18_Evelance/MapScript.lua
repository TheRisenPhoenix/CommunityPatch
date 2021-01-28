--------------------------------------------------------------------------------
-- MapName: Evelance
--
-- Author: Peter Sprys
--
--------------------------------------------------------------------------------

-->
--	Input.KeyBindDown (Keys.NumPad1, "Cheat_MissionComplete_Start()")
--	Input.KeyBindDown (Keys.NumPad2, "Cheat_Intro_Start()")
--        Input.KeyBindDown (Keys.NumPad5, "Cheat_Cutscene1_Start()")
--        Input.KeyBindDown (Keys.NumPad6, "Cheat_Cutscene2_Start()")
--        Input.KeyBindDown (Keys.NumPad7, "Cheat_Cutscene3_Start()")
        




-- Include main function
Script.Load( Folders.MapTools.."Main.lua" )

CP_Difficulty = 0

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to initialize the diplomacy states
function Mission_InitDiplomacy()
	Logic.SetDiplomacyState( 1, 5, Diplomacy.Hostile )
--	Logic.SetDiplomacyState( 4, 5, Diplomacy.Hostile )
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called to set the player colors
function Mission_InitPlayerColorMapping()
	
	Display.SetPlayerColorMapping(3, BARMECIA_COLOR)		-- Leonardo
	Display.SetPlayerColorMapping(2, KERBEROS_COLOR)		-- Walls not destroyable
	Display.SetPlayerColorMapping(4, KERBEROS_COLOR)			-- Walls destroyable
	Display.SetPlayerColorMapping(5, KERBEROS_COLOR)		-- Kerberos' raiding army
	Display.SetPlayerColorMapping(7, NPC_COLOR)				-- buildings on island
	Display.SetPlayerColorMapping(8, NPC_COLOR)				-- orphaned towers

	Display.SetPlayerColorMapping(6, FRIENDLY_COLOR1)		-- Tendrel

end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to init all resources for player(s)
function Mission_InitResources()

	-- Generate resources
	GeneratePlayerResources(3)--(2)
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called to setup Technology states on mission start
function Mission_InitTechnologies()
	if GDB.GetValue("Game\\Campaign_Difficulty") == 1 then
		ResearchAllMilitaryTechs(2)
		ResearchAllMilitaryTechs(4)
		ResearchAllMilitaryTechs(5)
		ResearchAllMilitaryTechs(6)	--No enemy, but has to be useful
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

	Display.SetRenderUseGfxSets(1)
	
	WeatherSets_SetupEvelance(1)
	WeatherSets_SetupEvelanceRain(2)
	WeatherSets_SetupEvelanceSnow(3)

end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start you should setup your weather periods here
function Mission_InitWeather()

	
	Logic.AddWeatherElement(1, 200, 1, 1, 5, 10)
--	Logic.AddWeatherElement(2, 500, 1, 2, 5, 10)
  
 
		-- [fun]  AddWeatherElement
		--          Add weather period on end of periods.
		-- Param1: Weather State of period, 1 = normal, 2 = rain, 3 = snow
		-- Param2: Duration of period in seconds
		-- Param3: Is periodic, 1 for (normal)periodic weather element else 0 for weather machine effects
		-- Param4: Gfx Set of this weather element
		-- Param5: Gfx Set forerun (gfx transition start some time before logic state change), time in seconds
		-- Param6: duration of Gfx Set transition
 
end
	
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start after all initialization is done
function Mission_FirstMapAction()
	CP_Difficulty = GDB.GetValue("Game\\Campaign_Difficulty")

	-- Load mission files
	IncludeLocals("gameControl")

	IncludeLocals("player_3")
	IncludeLocals("player_5")
	IncludeLocals("player_6")

	IncludeLocals("briefing_prelude")
	IncludeLocals("briefing_major")
	IncludeLocals("briefing_meetleonardo")
	IncludeLocals("briefing_leonardo")
	IncludeLocals("briefing_labyrinth")
	IncludeLocals("briefing_daughter")
	IncludeLocals("briefing_DaughterReturns")
	IncludeLocals("briefing_againAtLeonardo")
	IncludeLocals("briefing_againAtLeonardoThanks")

	IncludeLocals("briefing_viewPoint")
	
	IncludeLocals("quest_defeat")
	IncludeLocals("quest_cathedral")
	IncludeLocals("quest_rescuedaughter")
	IncludeLocals("quest_buildmines")
	IncludeLocals("quest_destroyoutpost")
	IncludeLocals("quest_joiningtowers")
	IncludeLocals("quest_bringdaughterback")
	IncludeLocals("quest_reachViewPoint")
	IncludeLocals("quest_rewards")
	IncludeLocals("quest_gates")
	
	IncludeLocals("army_raiding")
	IncludeLocals("army_tendrel")
	IncludeLocals("army_despair")
	IncludeLocals("army_kerberosdefense")
	IncludeLocals("army_defendPrincess")

	
	IncludeLocals("Cutscene_Control")		--TF_Include!
	IncludeLocals("Map_LocalInit")			--TF_Include!

	-- String Key
		String.Init("CM01_18_Evelance_Txt")

	-- AI
		createPlayer3()			-- Leonardo
		createPlayer5()			-- Kerberos
		createPlayer6()			-- Tendrel

	-- Set Music-Set
		LocalMusic.UseSet = EVELANCEMUSIC

	--	chest handling

		CreateChestOpener("dario")
		CreateChestOpener("erec")
		CreateChestOpener("helias")
		CreateChestOpener("ari")
		CreateChestOpener("pilgrim")
		CreateChestOpener("salim")
	
		CreateRandomGoldChests()
		CreateRandomChests()

		StartChestQuest()
	
	-- Start time line
		TimeLine.Start()
	
	-- Start prelude

		StartCutscene("Intro", start1stQuest)

--DEBUGG
	--EnableDebugging()

-- StartCutscene("AriPilgrim", start1stQuest)

-- StartCutscene("Seer")

-- createBriefingMeetLeonardo()
-- start6thQuest()

	if CP_Difficulty == 1 then
		local bosspos1 = GetPosition("KerberosDefenseSpawnPos")
		local bossID1 = AI.Entity_CreateFormation(4,Entities.CU_BlackKnight_SoldierSword3,0,0,(bosspos1.X - 200),bosspos1.Y,0,0,3,0)

		local bosspos2 = GetPosition("DespairSpawn")
		local bossID2 = AI.Entity_CreateFormation(4,Entities.CU_BlackKnight_SoldierSword3,0,0,(bosspos2.X - 600),bosspos2.Y,0,0,3,0)
		
		for i = 1, 4 do
			local bosspos3 = GetPosition("P5DefenseSpawnPos"..i)
			local bossID3 = AI.Entity_CreateFormation(4,Entities.CU_BlackKnight_SoldierSword3,0,0,bosspos3.X,(bosspos3.Y - 100),0,0,3,0)
			LookAt(bossID3, "Seer")
		end
		
		local bosspos4 = GetPosition("PrincessDefend")
		local bossID4 = AI.Entity_CreateFormation(4,Entities.CU_BlackKnight_SoldierSword3,0,0,(bosspos4.X + 100),bosspos4.Y,0,0,3,0)
		LookAt(bossID4, "Seer")
	end

	--Tools.ExploreArea(-1, -1, 900)
end
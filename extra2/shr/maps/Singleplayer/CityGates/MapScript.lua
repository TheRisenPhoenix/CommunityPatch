
--	Input.KeyBindDown (Keys.NumPad9, "EnableDebugging()")


-- Include main function
Script.Load( Folders.MapTools.."Main.lua" )

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to initialize the diplomacy states
function Mission_InitDiplomacy()
	Logic.SetDiplomacyState( 1, 2, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 1, 3, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 1, 4, Diplomacy.Hostile )
	Logic.SetDiplomacyState( 1, 8, Diplomacy.Neutral )
	end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start and after save game to initialize player colors
function Mission_InitPlayerColorMapping()
	-- Set Colors
	local p1color = GetPlayerPreferredColor()
	Display.SetPlayerColorMapping(1, p1color)

	Display.SetPlayerColorMapping(2, ROBBERS_COLOR)	
	Display.SetPlayerColorMapping(7, NPC_COLOR)
	Display.SetPlayerColorMapping(8, NPC_COLOR)		
	if p1color ~= 2 then	
		Display.SetPlayerColorMapping(3, 2)
		Display.SetPlayerColorMapping(4, 2)
	else
		Display.SetPlayerColorMapping(3, 5)
		Display.SetPlayerColorMapping(4, 5)
	end
	
end
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to init all resources for player(s)
function Mission_InitResources()
	end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called to setup Technology states on mission start
function Mission_InitTechnologies()

	Logic.SetTechnologyState(gvMission.PlayerID,Technologies.B_Tavern, 0)

	
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
	
	WeatherSets_SetupNormal(1)
	WeatherSets_SetupRain(2)
	WeatherSets_SetupSnow(3)
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start you should setup your weather periods here
function Mission_InitWeather()

	Logic.AddWeatherElement(1, 900, 1, 1, 5, 10)	-- Sommer
--	Logic.AddWeatherElement(2, 50, 1, 2, 5, 10)	-- Foggy with Rain
--	Logic.AddWeatherElement(1, 900, 1, 1, 5, 10)	-- Sommer
--	Logic.AddWeatherElement(2, 50, 1, 2, 5, 10)		-- Foggy with Rain

	end

 
		-- [fun]  AddWeatherElement
		--          Add weather period on end of periods.
		-- Param1: Weather State of period, 1 = normal, 2 = rain, 3 = snow
		-- Param2: Duration of period in seconds
		-- Param3: Is periodic, 1 for (normal)periodic weather element else 0 for weather machine effects
		-- Param4: Gfx Set of this weather element
		-- Param5: Gfx Set forerun (gfx transition start some time before logic state change), time in seconds
		-- Param6: duration of Gfx Set transition
 
	
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start after all initialization is done
function Mission_FirstMapAction()

--	IncludeLocals("Cutscene_Control")

	-- Load mission files
	String.Init("SP_citygates")


	IncludeLocals("briefing_prelude")
	IncludeLocals("briefing_merchant1")
	IncludeLocals("briefing_merchant2")
	IncludeLocals("briefing_thief")
	IncludeLocals("gameControl")
	IncludeLocals("player_1")
	IncludeLocals("player_2")
	IncludeLocals("player_3")
	IncludeLocals("player_8")
	IncludeLocals("quest_defeat")
	IncludeLocals("quest_victory")
	IncludeLocals("army_spawn")
        IncludeLocals("army_attack")


	createPlayer1()
	createPlayer2()
	createPlayer3()
	createPlayer4()
	createPlayer8()

	
	-- set player names
	
		-- Logic.SetPlayerName(1, String.MainKey.."_Player1Name")

	-- Set Music-Set
	
		LocalMusic.SetBriefing = LocalMusic.SetBriefingOld
		LocalMusic.UseSet = MEDITERANEANMUSIC

	-- Start time line

		TimeLine.Start()

	--	chest stuff
		
		--	the openers
		
			CreateChestOpener("drake")
	
	-- Start prelude

		--EnableDebugging()
	
		start1stQuest()
	
	-- SetPlayerName(3, "Barbaren")
	SetPlayerName(3, String.Key("_Player3Name"))

	--Tools.ExploreArea(-1, -1, 900)

end
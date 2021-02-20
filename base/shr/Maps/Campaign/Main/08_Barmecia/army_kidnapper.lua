
createArmyKidnapper = function()

	--	set up

		Report("Setting up kidnapper army")
		
		local strength = 4
		if CP_Difficulty == 1 then
			strength = 6
		end
		
		ArmyKidnapper								= {}
	
		ArmyKidnapper.player 					= gvMission.PlayerIDRobbers1
		ArmyKidnapper.id								= 1
		ArmyKidnapper.strength					= strength
		ArmyKidnapper.position					= GetPosition("BanditsHQ1")
		ArmyKidnapper.rodeLength				= 1500
		ArmyKidnapper.beAgressive			= true

		SetupArmy(ArmyKidnapper)

	--	create
		local soldiers = 6
		local experience = LOW_EXPERIENCE
		local etype = Entities.CU_BanditLeaderSword1
		if CP_Difficulty == 1 then
			soldiers = soldiers + 2
			experience = experience + 2
			etype = Entities.CU_BanditLeaderSword2
		end

		local troopDescription = {
		
			minNumberOfSoldiers	= 0,
			maxNumberOfSoldiers = soldiers,
			experiencePoints 	= experience,
			leaderType			= etype
		}			

		for i = 1, strength do
			EnlargeArmy(ArmyKidnapper,troopDescription)
		end

	--	waypoints

	    local waypoints = {
	        "Robbers1_PatrolPoint1",
	        "Robbers1_PatrolPoint2",
	        "Robbers1_PatrolPoint3",
	        "Robbers1_PatrolPoint4",
	    }
		local KidnapperDescription = {}  
	  FeedArmyWithWaypoints(ArmyKidnapper.player,ArmyKidnapper.id,"KidnapperWaypointCallback",waypoints)

		end

KidnapperWaypointCallback = function(_waypointId)
   	return 1
    
    end


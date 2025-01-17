ARMYROBBERS_START_DELAY 	= 120
ARMYROBBERS_DELAY 		= 60

ARMYROBBERS_ATTACKS			= 4



createArmyRobbersEast = function()

	--	set up

		Report("Setting up robbers army")
		
		local strength = 4
		if CP_Difficulty == 1 then
			strength = 6
		elseif CP_Difficulty == 2 then
			strength = 8
		end

		ArmyRobbersEast								= {}
	
		ArmyRobbersEast.player 						= gvMission.PlayerIDRobbers2
		ArmyRobbersEast.id								= gvMission.PlayerIDRobbers2
		ArmyRobbersEast.strength					= strength
		ArmyRobbersEast.position					= GetPosition("BanditsHQ2")
		ArmyRobbersEast.rodeLength				= 1000
		ArmyRobbersEast.beAgressive				= true
		ArmyRobbersEast.control						= {}
		ArmyRobbersEast.control.delay			= ARMYROBBERS_START_DELAY
		ArmyRobbersEast.control.attack		= ARMYROBBERS_ATTACKS							-- Number of Attacks -1

		SetupArmy(ArmyRobbersEast)

	--	create
		local soldiers = 6
		local experience = LOW_EXPERIENCE
		if CP_Difficulty > 0 then
			soldiers = soldiers + 2
			experience = experience + 2
		end

		local troopDescription = {
		
			minNumberOfSoldiers	= 0,
			maxNumberOfSoldiers = soldiers,
			experiencePoints 	= experience
		}		

		if CP_Difficulty == 0 then
			troopDescription.leaderType = Entities.CU_BanditLeaderBow1
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			
			troopDescription.leaderType = Entities.CU_BanditLeaderSword1
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			EnlargeArmy(ArmyRobbersEast,troopDescription)
		else
			troopDescription.leaderType = Entities.CU_BanditLeaderBow2
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			
			troopDescription.leaderType = Entities.CU_BanditLeaderSword2
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			EnlargeArmy(ArmyRobbersEast,troopDescription)
			EnlargeArmy(ArmyRobbersEast,troopDescription)
		end

	--	waypoints
--[[
	    local waypoints = {
	        "Robbers2_PatrolPoint1",
	        "Robbers2_PatrolPoint2",
	        "Robbers2_PatrolPoint3",
	        "Robbers2_PatrolPoint4",
	    }
		
	  FeedArmyWithWaypoints(ArmyRobbersEast.player,ArmyRobbersEast.id,"ArmyRobbersEastWaypointCallback",waypoints)
	]]
		StartJob("ArmyRobbersEast")
	
	  RobbersEastHQDestroyQuest = {}
	  RobbersEastHQDestroyQuest.Callback = RobbersEastHQDestroyed 
	  RobbersEastHQDestroyQuest.Target = GetID("RobbersEastHQ")
	  SetupDestroy(RobbersEastHQDestroyQuest)
end


RobbersEastHQDestroyed = function ()
		Report("RobbersHeadquarter was destroyed!")
		EndJob("ArmyRobbersEast")
		ArmyRobbersEastDead = 1
end


ArmyRobbersEastWaypointCallback = function(_waypointId)
   	return 1  
end


Condition_ArmyRobbersEast = function()
	return 1
end


Action_ArmyRobbersEast = function()
	Defend(ArmyRobbersEast)
	return false
end

    
ArmyRobbersEastSetOffensive = function()
	Report("Robbers set to offensive mode")
	if ArmyRobbersEastDead ~= 1 then
		--ArmyRobbersEast.rodeLength = 25000
		--SetupArmy(ArmyRobbersEast)
		EndJob("ArmyRobbersEast")
		StartJob("ControlRobbersEastOffensive")
	end
end

-----------------------------------------------------------------------------------------------------------------------	
--
--	JOB: "ControlArmyAttack1"
--
-----------------------------------------------------------------------------------------------------------------------	
	-------------------------------------------------------------------------------------------------------------------
	Condition_ControlRobbersEastOffensive = function()
	-------------------------------------------------------------------------------------------------------------------
		
		if IsDead("RobbersEastHQ") then
		
			return false
			
			end
		
		if ArmyRobbersEast.control.delay > 0 then
		
			ArmyRobbersEast.control.delay = ArmyRobbersEast.control.delay -1		
	
			-- give warning message
			if ArmyRobbersEast.control.delay == 0 then

				Report("Attack is gonna start!")
				
			end
		
			return false
			
		end
		
	
		return Counter.Tick2("ControlArmyRobbersEast",5)
		
	end
		
	-------------------------------------------------------------------------------------------------------------------
	Action_ControlRobbersEastOffensive = function()
	-------------------------------------------------------------------------------------------------------------------
		--DebugTmp = GetNumberOfSoldiers(ArmyRobbersEast)
		if IsDead(ArmyRobbersEast) then
		
			if ArmyRobbersEast.control.attack == 0 then
				
				Report("ArmyRobbersEast defeated")
				
		
				return true
				
			end
	
			
			ArmyRobbersEast.control.attack = ArmyRobbersEast.control.attack -1
		
			--Report("ArmyRobbersEast, attack "..ArmyRobbersEast.control.attack)
		
			Retreat(ArmyRobbersEast)
						
			--	create 
			local soldiers = 6
			local experience = LOW_EXPERIENCE
			local strength = 4
			local etype = Entities.CU_BanditLeaderSword1
			if CP_Difficulty > 0 then
				strength = 6
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
	
				-- define new attacking armies
				
				if ArmyRobbersEast.control.attack >= 0 then
					for i = 1, strength do
						EnlargeArmy(ArmyRobbersEast,troopDescription)
					end
				end
						
			--	time till next attack
				
				ArmyRobbersEast.control.delay = ARMYROBBERS_DELAY



		else
		
			--Report("ArmyRobbersEast advanced; ArmyRobbersEast.control.attack = "..ArmyRobbersEast.control.attack)

			Advance(ArmyRobbersEast)
			
		end

		return false
		
		end
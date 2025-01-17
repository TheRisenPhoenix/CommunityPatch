
-- Army in west

createArmyDefenders1 = function()

	--	set up
		local strength = 3
		local experience = 0
		local etype = Entities.CU_BlackKnight_LeaderMace1
		if CP_Difficulty > 0 then
			strength = 4
			experience = HIGH_EXPERIENCE
			etype = Entities.CU_BlackKnight_LeaderMace2
		end

		armyDefenders1						= {}
	
		armyDefenders1.player 				= 5
		armyDefenders1.id					= 7
		armyDefenders1.strength				= strength
		armyDefenders1.position				= GetPosition("spawn1")
		armyDefenders1.rodeLength			= 4000
		armyDefenders1.control				= {}
		armyDefenders1.control.timer		= 0
		
		SetupArmy(armyDefenders1)
	
	--	create

		local troopDescription = {
		
			maxNumberOfSoldiers	= 8,
			minNumberOfSoldiers	= 2,
			experiencePoints 	= experience,
		}				


		troopDescription.leaderType = etype				
		EnlargeArmy(armyDefenders1,troopDescription)
		EnlargeArmy(armyDefenders1,troopDescription)
		
		if CP_Difficulty == 0 then
			troopDescription.leaderType = Entities.PU_LeaderBow1
		elseif CP_Difficulty == 1 then
			troopDescription.leaderType = Entities.PU_LeaderBow2
		else
			troopDescription.leaderType = Entities.PU_LeaderBow3
		end		
		EnlargeArmy(armyDefenders1,troopDescription)

		if CP_Difficulty == 1 then
			troopDescription.leaderType = Entities.PV_Cannon1
		elseif CP_Difficulty == 2 then
			troopDescription.leaderType = Entities.PV_Cannon2
		end
		EnlargeArmy(armyDefenders1,troopDescription)
	
	--	job		
		
		StartJob("ControlArmyDefenders1")

	end


-----------------------------------------------------------------------------------------------------------------------	
--
--	JOB: "ControlArmyDefenders1"
--
-----------------------------------------------------------------------------------------------------------------------	
	-------------------------------------------------------------------------------------------------------------------
	Condition_ControlArmyDefenders1 = function()
	-------------------------------------------------------------------------------------------------------------------
		
		return Counter.Tick2("ControlArmyDefenders1",2)
		
		end
		
	-------------------------------------------------------------------------------------------------------------------
	Action_ControlArmyDefenders1 = function()
	-------------------------------------------------------------------------------------------------------------------
		
		if IsDead(armyDefenders1) then
						
			return true
			
			end

		Defend(armyDefenders1)

		return false
		
		end
	
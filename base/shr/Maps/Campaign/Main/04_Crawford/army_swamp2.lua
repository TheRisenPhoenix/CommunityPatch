
createArmySwamp2 = function()

	--	set up

		ArmySwamp2					= {}
	
		ArmySwamp2.player 			= 6
		ArmySwamp2.id				= 2
		ArmySwamp2.strength			= 1
		ArmySwamp2.position			= GetPosition("attSpawnPoint2_SA")
		ArmySwamp2.rodeLength		= 2200
		
		SetupArmy(ArmySwamp2)

	--	create 
		local soldiers = 4
		local experience = LOW_EXPERIENCE
		local etype = Entities.CU_BanditLeaderSword1
		if CP_Difficulty == 1 then
			soldiers = soldiers + 4
			experience = HIGH_EXPERIENCE
			etype = Entities.CU_BanditLeaderSword2
		end
		local troopDescription = {
		
			maxNumberOfSoldiers	= soldiers,
			minNumberOfSoldiers	= 0,
			experiencePoints 	= experience,
			leaderType			= etype
		}			
	
		EnlargeArmy(ArmySwamp2,troopDescription)

	end

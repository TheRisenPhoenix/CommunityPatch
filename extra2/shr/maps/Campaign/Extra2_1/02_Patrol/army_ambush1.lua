------------------------------------------------------------------------------------------------------------------------------------
function createArmyAmbush1()

	armyAmbush1 = {}

	troopsArmyAmbush1 = { }
        
	if CP_Difficulty == 0 then
		table.insert(troopsArmyAmbush1, Entities.CU_Barbarian_LeaderClub1)
		table.insert(troopsArmyAmbush1, Entities.CU_BanditLeaderSword1)
		table.insert(troopsArmyAmbush1, Entities.CU_BanditLeaderBow1)
		table.insert(troopsArmyAmbush1, Entities.PV_Cannon1)
	else
		table.insert(troopsArmyAmbush1, Entities.CU_Barbarian_LeaderClub2)
		table.insert(troopsArmyAmbush1, Entities.CU_BanditLeaderSword2)
		table.insert(troopsArmyAmbush1, Entities.CU_BanditLeaderBow2)
		if CP_Difficulty == 1 then
			table.insert(troopsArmyAmbush1, Entities.PV_Cannon2)
		else
			table.insert(troopsArmyAmbush1, Entities.PV_Cannon3)
		end
	end

    createArmy(2,4,armyAmbush1,7,"armyAmbush1",CP_Difficulty,troopsArmyAmbush1)

    armyAmbush1.rodeLength = 500

--	StartSimpleJob("controlArmyAmbush1")
	Ambush1JobId = StartSimpleJob("controlArmyAmbush1")
	
    end
------------------------------------------------------------------------------------------------------------------------------------

function controlArmyAmbush1()
	simpleDefendBehaviour(armyAmbush1)
end
function createArmyWolves()
	
	armyWolves = {}

	troopsArmyWolves = {
		Entities.CU_AggressiveWolf
    	}
	
	createArmy(2,1,armyWolves,16,"armyVarg",VERYHIGH_EXPERIENCE,troopsArmyWolves)

	StartSimpleJob("controlArmyWolves")
	
end

------------------------------------------------------------------------------------------------------------------------------------

function controlArmyWolves()
	FrontalAttack(armyWolves)
end
BaseArmy2_DELAY 		=       240
BaseArmy2_COUNTER 	        =	BaseArmy2_DELAY
---------------------------------------------------------------------------------------------------------------------------

createBaseArmy2 = function()


	StartJob("TimerBaseArmy2")


end


---------------------------------------------------------------------------------------------------------------------------	
--
--	JOB: "TimerBaseArmy2"
--
---------------------------------------------------------------------------------------------------------------------------	
	-------------------------------------------------------------------------------------------------------------------
	Condition_TimerBaseArmy2 = function()
	-------------------------------------------------------------------------------------------------------------------

                
                if BaseArmy2_COUNTER > 0 and IsAlive("CapTent2") and IsAlive("CapTent3") and IsDead("MainAttack2") then

			BaseArmy2_COUNTER = BaseArmy2_COUNTER - 1

			return false

                elseif BaseArmy2_COUNTER==0 then 

			return true
                      
                                 
		end

	end


		
	-------------------------------------------------------------------------------------------------------------------
	Action_TimerBaseArmy2 = function()
	-------------------------------------------------------------------------------------------------------------------

		SpawnArmyBase2()

		BaseArmy2_DELAY 	=       180
		BaseArmy2_COUNTER	=	BaseArmy2_DELAY

		StartJob("TimerBaseArmy2")		

		return true


	end

---------------------------------------------------------------------------------------------------------------------------

SpawnArmyBase2 = function()
	local experience = LOW_EXPERIENCE	
	mainArmy2	= {	Entities.PU_LeaderBow3,
				Entities.PU_LeaderHeavyCavalry2,
				Entities.PV_Cannon3,
				Entities.PU_LeaderPoleArm3,
				Entities.PU_LeaderSword3
				}

	if CP_Difficulty == 1 then
		experience = experience + 2
	end


	AttackPoints2	= {	"AttackTarget1",
				"AttackTarget2",
				"AttackTarget3",
				"AttackTarget4",
				"AditionalAttackPoint1"
				}


	RandomUnit2 		= 	mainArmy2[Logic.GetRandom(table.getn(mainArmy2))+1]
	RandomAttackPoint2 	= 	AttackPoints2[Logic.GetRandom(table.getn(AttackPoints2))+1]



		local pos = GetPosition("MainBaseSpawn2")
		MainAttack2 = AI.Entity_CreateFormation(2, RandomUnit2, 0, 8, pos.X, pos.Y, 0, 0, experience, 0)
		SetEntityName(MainAttack2, "BaseAttack2")
		LookAt(MainAttack2, "lookpos")


		Attack("BaseAttack2",RandomAttackPoint2)

end

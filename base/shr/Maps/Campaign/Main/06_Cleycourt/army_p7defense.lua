setupArmyP7Defense = function()

	ArmyP7Defense			=	{}

	-- Create robbers
	ArmyP7Defense.player 			= 	7
	ArmyP7Defense.id				= 	0
	ArmyP7Defense.strength			= 	4
	ArmyP7Defense.position			= 	GetPosition("KerberosCamp")
	ArmyP7Defense.rodeLength		= 	2000
	
	-- Spawn parameter
	if CP_Difficulty > 0 then
		ArmyP7Defense.spawnTypes 		= 	{	{Entities.CU_BlackKnight_LeaderMace2, 8},
												{Entities.PU_LeaderPoleArm2, 4},
												{Entities.PU_LeaderBow2, 4} }
		ArmyP7Defense.maxSpawnAmount	= 	2
	else
		ArmyP7Defense.spawnTypes 		= 	{	{Entities.CU_BlackKnight_LeaderMace2, 6},
												{Entities.PU_LeaderPoleArm1, 4},
												{Entities.PU_LeaderBow1, 4} }
		ArmyP7Defense.maxSpawnAmount	= 	1
	end
									
	ArmyP7Defense.spawnPos			= 	GetPosition("SpawnPos")
	ArmyP7Defense.spawnGenerator	= 	"SpawnGenerator"
	ArmyP7Defense.respawnTime		= 	60
	ArmyP7Defense.endless			= 	true
	ArmyP7Defense.refresh			= 	false

	ArmyP7Defense.retreatStrength	= 	0
	ArmyP7Defense.baseDefenseRange	= 	1000
	ArmyP7Defense.outerDefenseRange	= 	2000
	ArmyP7Defense.Attack			= 	false
	ArmyP7Defense.AttackAllowed		= 	false
	ArmyP7Defense.experiencePoints	=	CP_Difficulty

	-- Setup army
	SetupArmy(ArmyP7Defense)
	
	-- Army generator
	SetupAITroopSpawnGenerator("ArmyP7Defense", ArmyP7Defense)

	StartJob("ControlArmyP7Defense")
end

-----------------------------------------------------------------------------------------------------------------------
--
--	JOB: "ControlArmyAI2"
--
-----------------------------------------------------------------------------------------------------------------------	
	-------------------------------------------------------------------------------------------------------------------
	Condition_ControlArmyP7Defense = function()
	-------------------------------------------------------------------------------------------------------------------
		return Counter.Tick2("ControlArmyP7Defense",10)
	end
		
	-------------------------------------------------------------------------------------------------------------------
	Action_ControlArmyP7Defense = function()
	-------------------------------------------------------------------------------------------------------------------
	
		TickOffensiveAIController(ArmyP7Defense)
		
		return false		
	end
-----------------------------------------------------------------------------------------------------------------------

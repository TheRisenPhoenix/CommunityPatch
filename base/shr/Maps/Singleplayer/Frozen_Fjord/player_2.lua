
createPlayer2 = function()

	--	describe the player structure

	local playerId = 2
	Logic.SetPlayerName(playerId, String.Player(playerId))

	
		player2 	= {}
		player2.id 	= playerId

		
		MapEditor_SetupAI(playerId, 1, 5000, 3, "player2", 0, 0)

	--	set up default information

		local description = {
		
			serfLimit				=	12,
			--------------------------------------------------
			extracting				=	false,
			--------------------------------------------------
			rebuild = {
				delay				=	25,
				randomTime			=	25
			},
			--------------------------------------------------
			resources = {
				gold				=	2000,
				clay				=	1000,
				iron				=	1500,
				sulfur				=	1000,
				stone				=	1000,
				wood				=	2000
			},
			--------------------------------------------------
			refresh = {
				gold				=	100,
				clay				=	10,
				iron				=	100,
				sulfur				=	50,
				stone				=	10,
				wood				=	100,
				updateTime			=	5
			}
		}
		
		SetupPlayerAi(playerId,description)
	
	end

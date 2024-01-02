--------------------------------------------------------------------------------
-- MapName: Thalbach
--
-- Author: Sven Jaginiak
-- Rework by Fire_Bird | Siedler1997
--------------------------------------------------------------------------------

-- Include main function
Script.Load(Folders.MapTools .. "Main.lua")
IncludeGlobals("MapEditorTools")

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to initialize the diplomacy states
function InitDiplomacy()
    SetHostile(1, 4)
    SetFriendly(1, 2)
    SetHostile(3, 4)
    SetHostile(2, 4)

    SetNeutral(1, 3)
    SetNeutral(2, 3)

    SetPlayerName(2, "St. Tropez")
    SetPlayerName(3, "Avignon")
    SetPlayerName(4, "Nebelvolk")
end


--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called from main script to init all resources for player(s)
function InitResources()
    -- set some resources
    AddGold(1000)
    AddSulfur(500)
    AddIron(600)
    AddWood(1000)
    AddStone(800)
    AddClay(1000)
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called to setup Technology states on mission start
function InitTechnologies()
    -- ResearchAllMilitaryTechsAddOn(2)
    -- ResearchAllMilitaryTechsAddOn(3)
    -- ResearchAllMilitaryTechsAddOn(4, true)
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start and after save game is loaded, setup your weather gfx
-- sets here
function InitWeatherGfxSets()
    SetupMoorWeatherGfxSet()
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start you should setup your weather periods here
function InitWeather()
    AddPeriodicSummer(600)
    AddPeriodicRain(120)
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start and after save game to initialize player colors
function InitPlayerColorMapping()
    local p1color = GetPlayerPreferredColor()
    Display.SetPlayerColorMapping(1, p1color)
    if p1color == 2 then
        Display.SetPlayerColorMapping(4, 6)
    else
        Display.SetPlayerColorMapping(4, 2)
    end
    if p1color == 3 then
        Display.SetPlayerColorMapping(3, 1)
    end
    if p1color == 4 then
        Display.SetPlayerColorMapping(2, 9)
    else
        Display.SetPlayerColorMapping(2, 4)
    end
end

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-- This function is called on game start after all initialization is done
function FirstMapAction()
    LocalMusic.UseSet = DARKMOORMUSIC

    -- MapEditor_SetupDestroyVictoryCondition(3)

    -- Level 0 is deactivated...ignore
    MapEditor_SetupAI(2, 2, 20000, 1, "StTropez", 1, 0)
    MapEditor_SetupAI(3, 3, 60000, 3, "DarkCastle", 3, 5400)
    -- MapEditor_SetupAI(4, 3, 70000, 0, "Nebelvolk", 3, 0)
    -- MapEditor_SetupAI(5, 0, 0, 0, "", 0, 0)
    -- MapEditor_SetupAI(6, 0, 0, 0, "", 0, 0)
    -- MapEditor_SetupAI(7, 0, 0, 0, "", 0, 0)
    -- MapEditor_SetupAI(8, 0, 0, 0, "", 0, 0)


    -- HQ Defeat Condition
    MapEditor_CreateHQDefeatCondition()

    -- createBriefingHelias()
    -- createBriefingBergmann()
    -- createBriefingSoldat()
    -- createBriefingKundschafter()

    createPlayer2()
    createPlayer3()
    -- createPlayer4()

    createArmyone()
    createArmyallone()

    StartSimpleJob("vicone")
    --createBriefingHeliastwo()
    StartSimpleJob("VictoryJob")
    StartSimpleJob("DefeatJob")

    local pos = GetPosition("dario")
    Camera.ScrollSetLookAt(pos.X, pos.Y)

    -- StartCountdown(90 * 60, MakeP2Hostile, true)

    CP_ActivateEvilMod(3, 1, 1)
    --Tools.ExploreArea(-1, -1, 900)

    startIntroBriefing()
end

function MakeP2Hostile()
    SetHostile(1, 3)
end

function startIntroBriefing()
    briefingIntro = {}
    briefingIntro.restoreCamera = true

    local page = 0

    page = page + 1

    briefingIntro[page] = {}
    briefingIntro[page].title = "Dovbar"
    briefingIntro[page].text = "Dario! Wie gut dass euch unsere Nachricht erreicht hat. Wir brauchen wirklich dringend Hilfe!"
    briefingIntro[page].position = GetPosition("Dovbar")
    briefingIntro[page].explore = BRIEFING_EXPLORATION_RANGE
    briefingIntro[page].dialogCamera = true

    page = page + 1

    briefingIntro[page] = {}
    briefingIntro[page].title = "Dario"
    briefingIntro[page].text = "Aber natürlich. Wenn ein alter Freund um Hilfe bittet, sind wir natürlich unterwegs. Was kann ich für euch tun? In der Nachricht schriebt ihr dass es Probleme mit der benachbarten Stadt gibt?"
    briefingIntro[page].position = GetPosition("dario")

    page = page + 1

    briefingIntro[page] = {}
    briefingIntro[page].title = "Dovbar"
    briefingIntro[page].text = "Nicht nur das! Seit wir uns in dieser Gegend niedergelassen haben, wussten wir, dass in den Bergen ein großer Stamm des Nebelvolkes lebt. Bis auf vereinzelte Konflikte hatten wir auch keine Probleme mit denen, genauso wenig wie mit unserem Nachbarn Avignon."
    briefingIntro[page].position = GetPosition("Dovbar")

    page = page + 1
    briefingIntro[page] = {}
    briefingIntro[page].title = "Dovbar"
    briefingIntro[page].text = "Doch seit Avignon sich weiter ausgebreitet hat und immer tiefer in die Stammesgebiete eindringt um die dortigen Ressourcen auszubeuten, nehmen die Angriffe wieder zu."
    briefingIntro[page].position = GetPosition("Dovbar")

    page = page + 1
    briefingIntro[page] = {}
    briefingIntro[page].title = "Dovbar"
    briefingIntro[page].text = "Der Stadthalter von Avignon ist blind vor Hass. Er versucht, so viele Ressourcen wie möglich an sich zu reißen. Das hat dazu geführt, dass er selbst unsere Ressourcen will. Als wir sie ihm nicht für seine Kriegstreiberei geben wollten, fing er an, auch uns anzugreifen."
    briefingIntro[page].position = GetPosition("Dovbar")

    page = page + 1
    briefingIntro[page] = {}
    briefingIntro[page].title = "Dario"
    briefingIntro[page].text = "Dann helfen wir euch gerne, den Tribut für eine gewisse Zeit zu überbrücken und euch gegen die Angriffe zu unterstützen!"
    briefingIntro[page].position = GetPosition("dario")

    page = page + 1
    briefingIntro[page] = {}
    briefingIntro[page].title = "Dovbar"
    briefingIntro[page].text = "Das wäre prima. Solange wir die Tribute bezahlen können, sind wir wenigstens vor Angriffen von der einen Seite geschützt. Vielleicht könnten wir es sogar irgendwie hinbekommen, dass sich das Nebelvolk auf Avignon konzentriert?"
    briefingIntro[page].position = GetPosition("Dovbar")

    page = page + 1
    briefingIntro[page] = {}
    briefingIntro[page].title = "Dario"
    briefingIntro[page].text = "Klingt nach einer guten Idee. Ich werde mir das mal überlegen. Aber zuerst müssen wir eine gute Basis errichten."
    briefingIntro[page].position = GetPosition("dario")

    StartBriefing(briefingIntro)
end


function createBriefingHelias()
    BriefingHelias = {}
    BriefingHelias.restoreCamera = true

    local page = 0

    page = page + 1

    BriefingHelias[page] = {}
    BriefingHelias[page].title = "Helias"
    BriefingHelias[page].text = "Seid gegrüßt alter Freund!"
    BriefingHelias[page].position = GetPosition("Helias")
    BriefingHelias[page].dialogCamera = true

    page = page + 1

    BriefingHelias[page] = {}
    BriefingHelias[page].title = "Helias"
    BriefingHelias[page].text = "Dieses Dorf wird bereits seit Jahren vom Nebelvolk bedroht, doch bisher konnte es sich immer selbst sehr gut verteidigen!"
    BriefingHelias[page].position = GetPosition("Helias")

    page = page + 1

    BriefingHelias[page] = {}
    BriefingHelias[page].title = "Helias"
    BriefingHelias[page].text = "Aber vor Kurzem ist der einst mächtige Anführer der Dorfbewohner im Kampf gestorben!"
    BriefingHelias[page].position = GetPosition("Helias")

    page = page + 1

    BriefingHelias[page] = {}
    BriefingHelias[page].title = "Helias"
    BriefingHelias[page].text = "Bitte helft uns und zerstört das Hauptquartier des Nebelvolkes!"
    BriefingHelias[page].position = GetPosition("Nebelvolk")
    BriefingHelias[page].explore = BRIEFING_EXPLORATION_RANGE
    BriefingHelias[page].marker = ANIMATED_MARKER

    page = page + 1

    BriefingHelias[page] = {}
    BriefingHelias[page].title = "Helias"
    BriefingHelias[page].text = "Kommt wieder zu mir, sobald ihr diese Bedrohung beseitig habt!"
    BriefingHelias[page].position = GetPosition("Helias")

    local npcHelias = {}
    npcHelias.name = "Helias"
    npcHelias.briefing = BriefingHelias
    CreateNPC(npcHelias)
end

function createBriefingBergmann()
    BriefingBergmann = {}
    BriefingBergmann.restoreCamera = true

    local page = 0

    page = page + 1

    BriefingBergmann[page] = {}
    BriefingBergmann[page].title = "Bergmann"
    BriefingBergmann[page].text = "Glück auf edler Herr!"
    BriefingBergmann[page].position = GetPosition("Bergmann")
    BriefingBergmann[page].dialogCamera = true

    page = page + 1

    BriefingBergmann[page] = {}
    BriefingBergmann[page].title = "Bergmann"
    BriefingBergmann[page].text = "Diese Brücke wurde schon vor vielen Jahren gesprengt, denn auf der anderen Seite Hausen die roten Teufel, der Schrecken aller Bergmänner!"
    BriefingBergmann[page].position = GetPosition("Bergmann")
    BriefingBergmann[page].explore = BRIEFING_EXPLORATION_RANGE
    BriefingBergmann[page].marker = ANIMATED_MARKER

    page = page + 1

    BriefingBergmann[page] = {}
    BriefingBergmann[page].title = "Bergmann"
    BriefingBergmann[page].text = "Seht euch vor, falls ihr vorhabt, das Ufer zu überqueren!"
    BriefingBergmann[page].position = GetPosition("Bergmann")

    local npcBergmann = {}
    npcBergmann.name = "Bergmann"
    npcBergmann.briefing = BriefingBergmann

    CreateNPC(npcBergmann)
end

function createBriefingSoldat()
    BriefingSoldat = {}
    BriefingSoldat.restoreCamera = true

    local page = 0

    page = page + 1

    BriefingSoldat[page] = {}
    BriefingSoldat[page].title = "Soldat"
    BriefingSoldat[page].text = "Gut, das ich euch antreffe Herr!"
    BriefingSoldat[page].position = GetPosition("Soldat")
    BriefingSoldat[page].dialogCamera = true

    page = page + 1

    BriefingSoldat[page] = {}
    BriefingSoldat[page].title = "Soldat"
    BriefingSoldat[page].text = "Ich warne euch eindringlich, betretet dieses Tal nicht! Dort wartet der Tod!"
    BriefingSoldat[page].position = GetPosition("Soldat")
    BriefingSoldat[page].dialogCamera = false

    page = page + 1

    local npcSoldat = {}
    npcSoldat.name = "Soldat"
    npcSoldat.briefing = BriefingSoldat

    CreateNPC(npcSoldat)
end

function createBriefingKundschafter()
    BriefingKundschafter = {}
    BriefingKundschafter.restoreCamera = true

    local page = 0

    page = page + 1

    BriefingKundschafter[page] = {}
    BriefingKundschafter[page].title = "Kundschafter"
    BriefingKundschafter[page].text = "Was verschlägt euch denn in diese Gegend?"
    BriefingKundschafter[page].position = GetPosition("Kundschafter")
    BriefingKundschafter[page].dialogCamera = true

    page = page + 1

    BriefingKundschafter[page] = {}
    BriefingKundschafter[page].title = "Kundschafter"
    BriefingKundschafter[page].text = "Naja, wir sollten nicht zuviel Zeit verschwenden, ich konnte auf der anderen Seite des Flusses reiche Rohstoffvorkommen ausmachen!"
    BriefingKundschafter[page].position = GetPosition("Kundschafter")
    BriefingKundschafter[page].dialogCamera = false

    local npcKundschafter = {}
    npcKundschafter.name = "Kundschafter"
    npcKundschafter.briefing = BriefingKundschafter

    CreateNPC(npcKundschafter)
end

function createPlayer2()
    local description = { constructing = true, extracting = 0, repairing = true, serfLimit = 8 }
    SetupPlayerAi(2, description)
end

function createPlayer3()
    local description = { { constructing = true, extracting = 1, repairing = true, serfLimit = 15 } }
    SetupPlayerAi(3, description)
end

function createPlayer4()
    local description = { serflimit = 0 }
    SetupPlayerAi(p4, description)
end

function createArmyone()

    armyone = {}

    armyone.player = 4
    armyone.id = 1
    armyone.strength = 3
    armyone.position = GetPosition("Armyone")
    armyone.rodelenght = 60000

    SetupArmy(armyone)

    local troopDescription = { leaderType = Entities.CU_Evil_LeaderBearman1, maxNumberOfSoldiers = 16, minNumberOfSoldiers = 4, experiencePoints = VERYHIGH_EXPERIENCE }

    EnlargeArmy(armyone, troopDescription)
    EnlargeArmy(armyone, troopDescription)
    EnlargeArmy(armyone, troopDescription)

    Defend(armyone)

end

function createArmyallone()

    armyallone = {}

    armyallone.player = 3
    armyallone.id = 8
    armyallone.strength = 3
    armyallone.position = GetPosition("Armyall")
    armyallone.rodelenght = 60000

    SetupArmy(armyallone)

    local troopDescription = { leaderType = Entities.PU_LeaderBow4, maxNumberOfSoldiers = 8, minNumberOfSoldiers = 4, experiencePoints = VERYHIGH_EXPERIENCE }

    EnlargeArmy(armyallone, troopDescription)
    EnlargeArmy(armyallone, troopDescription)
    EnlargeArmy(armyallone, troopDescription)

    Defend(armyallone)

end

function vicone()
    if IsDead("Nebelvolk") then
        createBriefingHeliastwo()
        return true
    end
end

function createBriefingHeliastwo()
    BriefingHeliastwo = {}
    BriefingHeliastwo.restoreCamera = true
    BriefingHeliastwo.finished = BriefingHeliastwoFinished

    local page = 0

    page = page + 1

    BriefingHeliastwo[page] = {}
    BriefingHeliastwo[page].title = "Helias"
    BriefingHeliastwo[page].text = "Ich danke euch Dario! Ich wusste, das ich auf unsere alte Freundschaft bauen kann!"
    BriefingHeliastwo[page].position = GetPosition("Helias")
    BriefingHeliastwo[page].dialogCamera = true

    page = page + 1

    BriefingHeliastwo[page] = {}
    BriefingHeliastwo[page].title = "Helias"
    BriefingHeliastwo[page].text = "Allerdings hat dieses Dorf ein weiteres Problem: Wir werden von der großen Stadt Avignon tyrannisiert und zu Frondiensten gezwungen!"
    BriefingHeliastwo[page].position = GetPosition("DarkCastle")
    BriefingHeliastwo[page].explore = BRIEFING_EXPLORATION_RANGE
    BriefingHeliastwo[page].marker = ANIMATED_MARKER

    page = page + 1

    BriefingHeliastwo[page] = {}
    BriefingHeliastwo[page].title = "Helias"
    BriefingHeliastwo[page].text = "Bitte helft uns und Vernichtet die schwarze Festung von Avignon, damit sich dieses Dorf wieder zu einer blühenden Metropole entwickeln kann!"
    BriefingHeliastwo[page].position = GetPosition("Helias")

    local npcHelias = {}
    npcHelias.name = "Helias"
    npcHelias.briefing = BriefingHeliastwo

    CreateNPC(npcHelias)
end

function BriefingHeliastwoFinished()
    SetHostile(2, 3)
end

function VictoryJob()
    if IsDead("DarkCastle") then
        Victory()
        return true
    end
end

function DefeatJob()
    if IsDead("StTropez") or IsDead("Player1_HQ") then
        Defeat()
        return true
    end
end

-- Quest data
MapEditor_QuestTitle = "Befreit das Dorf von allen Gefahren"
MapEditor_QuestDescription = "Eure Aufgabe ist es, das kleine Dorf, welches im gefährlichen Nebeltal liegt, von der Bedrohung des Nebelvolkes zu befreien und es anschließend aus der Regentschaft der Stadt Avignon zu erlösen. Da die Stadt Avignon selbst ein Interesse an der Vertreibung des Nebelvolkes besitzt, gewährt es euch einen Waffenstillstand von 1,5 Stunden, bevor es euch als Bedrohung ansieht."
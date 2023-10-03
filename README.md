# CommunityPatch
Dieser inoffizielle Patch behebt diverse Bugs der History Edition vom Spiel 'Die Siedler - Das Erbe der K�nige' und f�gt neue Features hinzu.



## Installation
Mit folgenden Schritten l�sst sich der Patch installieren:
1. Sicherungskopie vom DEdK-Ordner anlegen und z.B. "thesettlers5_Orig" nennen
2. Projekt �ber Code -> Download ZIP herunterladen
3. Projektordner in den Ornder OHNE "_Orig-Zusatz" entpacken und die Frage nach �berschreiben von X Dateien best�tigen
3. Zocken



## Features
- Geb�ude
	- richten im Alarm-Modus etwas mehr Schaden an
	- k�nnen stillgelegt werden (per Button im Siedler-Men�)
	- Banken und Schatzkammern z�hlen ebenfalls zu den Veredelungsgeb�uden, die den Ausbau einer Festung zur Zitadelle erm�glichen
	- profitieren von der neuen Technologie 'Leichte Ziegel'
		- wirkt analog zu 'Maurerhandwerk'
		- erh�ht die Verteidigung von Geb�uden um 2 Punkte
		- erforschbar in der Ziegelbrennerei
	- Non-Player-Buildings (Allgemein)
		- sind abrei�bar und geben dabei symbolische 50 Taler
		- sind reparierbar
		- profitieren (fast) alle von den Technologien 'Stadtwache' und 'Maurerhandwerk'
		- haben fast alle die ArmorClass regul�rer Geb�ude - inkl. deren St�rken-Schw�chen
	- Dombaustellen
		- Arbeiter-Icons im Siedler-Men� zeigen Leibeigenen-Icons
		- Overhead-Arbeiter-Icons zeigen Minenarbeiter
		- 'Normale' Leibeigne bauen sie nun an passenderen Position mit besserer Blickrichtung
	- Mauern 
		- sind deutlich solider
		- k�nnen repariert werden
		- profitieren von Geb�ude-Technologien (z.B. 'Maurerhandwerk')
		- Dunkle Mauern sind, wie normale Mauern auch, im 'Nebel des Krieges' sichtbar
	- Au�enposten
		- werden von Arbeitern und Leibeigenen an der Innent�r betreten und verlassen, nicht schon am Haupttor
		- sind baubar (nur die erste Stufe, nach Erforschung von 'Architektur')
		- verf�gen �ber alle Funktionen und Kampfwerte, die auch Hauptquartiere bieten (Au�er Ausbau)
		- k�nnen f�r Leibeigene dazu dienen, dort ihre Waffen zu bekommen und wieder abzulegen
		- profitieren von Maurerhandwerk und Stadtwache
	- Ziergeb�ude
		- haben 100 Lebenspunkte weniger (=200)
		- profitieren von 'Leichte Ziegel' und 'Maurerhandwerk'
	- T�rme
		- haben die richtige ArmorClass -> solider gegen alles au�er Artillerie
		- haben auf jeder Stufe 200 Lebenspunkte weniger (=800-1000-1200)
		- haben weniger und nach Stufe gestaffelte Verteidigung (=3-4-5)
		- Ausbau dauert doppelt so lange (=30 Sek.)
		- Ballistat�rme haben anderen Sound beim Schuss und Aufschlag ihres Geschosses
		- dunkle T�rme sind ausbaubar
	- Wohst�tten
		- haben die gleiche ArmorClass wie andere Geb�ude (siehe "T�rme")
		- sind st�rker gegen alles au�er Schwertk�mpfer und schwere Kavallerie
		- geben beim Abriss 150 Holz und 50 Steine
		- haben weniger Lebenspunkte (=1000) und Verteidigung (=4)
	- Die Geb�ude 'Turm', 'Motte', 'Abtei', 'Landsitz' und 'Schloss' haben deutlich mehr Lebenspunkte
- Einheiten
	- Selbstheilung ist f�r alle Einheiten reduziert
	- Soldaten haben die R�stungspunkte sowie die R�stungsart ihrer Hauptm�nner
	- Wird beim Dr�cken auf den Entlassen-Button gleichzeitig [Strg] gedr�ckt, werden alle selektierten Einheiten (au�er Helden) sofort entlassen
	- Formationen
		- bei Wahl der Marschformation begeben sich Kavallerie und Nebelkrieger stattdessen in ihre eigene Standard-Formation
		- werden diversen Tooltips entsprechend wirklich mit Erforschung von 'Stehendes Heer' freigeschaltet (nicht erst mit 'Taktiken')
	- 'Meistersch�tze' bewirkt einen schw�cheren Bewegungsbonus, daf�r aber auch einen Schadenspunkt mehr
	- NPCs (Zivilisten)
		- k�nnen wirklich sterben
			- dabei crashen sie nicht mehr das Spiel (Leonardo, Bischof, ...)
			- verschwinden wirklich nach ihrem Ableben
		- Zeigen im Siedler-Men� von Geb�uden kein wei�es Quadrat mehr, sondern ein Fragezeichen
		- Statthalter Kadir mit eigenem Design
		- haben einen Lebensbalken
		- haben bessere Stats
			- mehr Lebenspunkte (idR. 100)
			- h�here Sichtweite
	- NPCs (Milit�r)
		- verlangen ebenfalls Sold
		- 'Veteranen' 
			- k�nnen keine Gefolgsleute mehr haben
			- regenerieren ihre Lebenspunkte etwas schneller
			- haben etwas weniger Lebenspunkte
		- Banditen
			- z�hlen als Schwertk�mpfer
			- k�nnen Soldaten an Kasernen nachf�llen
			- haben Rekrutierungskosten (Hauptm�nner und Soldaten)
			- haben die gleiche DamageClass wie schwere Kavallerie
		- Bogensch�tzen-Banditen
			- haben 150 Lebenspunkte (vorher: 120)
			- Hauptm�nner und Soldaten haben die gleiche Nachladedauer
			- sind auch als Variante mit bis zu 8 Soldaten erh�ltlich
		- Nebelkrieger
			- Schaden an ihnen wird korrekt berechnet (f�llt aber kaum auf)
			- haben mehr Lebenspunkte (Hauptm�nner: 150, Soldaten: 100)
			- haben einen R�stungspunkt weniger (=1)
			- B�renmenschen greifen etwas schneller an
			- sind resistenter gegen alle Schadensarten au�er ihre eigene
				- gg�. Scharfsch�tzen sind sie daf�r noch etwas anf�lliger geworden
			- Hauptm�nner sind leicht umtexturiert
		- Barbaren 
			- haben die gleiche ArmorClass wie Speerk�mpfer und Sch�tzen
			- haben einen R�stungspunkt weniger (=1)
			- haben zwei Schadenpunkte mehr (=14)
			- sind auch als Variante mit bis zu 8 Soldaten erh�ltlich
		- Schwarze Ritter 
			- haben einen R�stungspunkt mehr (=3)
			- sind auch als Variante mit bis zu 8 Soldaten erh�ltlich
		- haben Audio-Feedback
		- profitieren von verschiedenen Waffen- und R�stungstechnologien
			- Schwarze Ritter: Technologien der Schwertk�mpfer
			- Barbaren: Technologien der Speerk�mpfer
			- Banditen: Technologien der Schwertk�mpfer
			- Bogen-Banditen: Technologien der Bogensch�tzen
			- Speerwerfer: Technologien der Bogensch�tzen
			- B�renmenschen: Technologien der Speerk�mpfer
			- Veteranen: Je nach Typ wie Barbaren oder Schwarze Ritter
		- profitieren von den Technologien 'Marschieren' (Nahk�mpfer) und 'Meistersch�tze' (Fernk�mpfer)
		- Wilde Tiere
			- W�lfe 
				- haben die gleichen Stats wie die von Varg beschworenen Exemplare
				- sind nicht von Helias konvertierbar
				- Varianten aus AeK zwecks Varianz: Grau, Wei�, Schwarz und Braun
			- Neu: B�ren
				- Aus AeK importiert
				- 3 Arten: Braun-, Eis- und Schwarzb�r
				- Deutlich st�rker und z�her als W�lfe
		- AddOn-Einheiten sind schon fr�her (also im Hauptspiel bzw. Nebelreich) zu finden
			- Bogen-Banditen
			- Schafe
			- Veteranen
			- Wilde W�lfe
	- Milit�rische Einheiten
		- Bogen- und Scharfsch�tzen (au�er Berittene) brauchen l�nger zum Nachladen
		- Leibeigene-Milizen
			- regenerieren langsam ihre HP (1 HP - 5 Sek.)
			- Leibeigene 
				- haben einen R�stungspunkt mehr (=1)
				- haben 50 Lebenspunkte weniger (=150)
				- bewegen sich etwas langsamer
			- Milizen 
				- haben einen R�stungspunkt mehr (=2)
				- profitieren von jenen Technologien, die auch Leibeigene betreffen
				- haben das AudioFeedback von Leibeigenen
		- Rekrutierungskosten von Hauptm�nnern und Soldaten leichter Kavallerie einander angeglichen
			- Berittene Bogensch�tzen (Stufe 1) kosten Holz
			- Berittene Armbrustsch�tzen (Stufe 2) kosten Eisen
		- Schwertk�mpfer
			- haben einen eigenen Kampf-Sound
			- Angriffsgeschwindigkeit leicht reduziert (analog zu z.B. Speerk�mpfern, Barbaren, etc.)
		- Kanonen
			- werden wirklich von der Technologie 'Verbessertes Fahrgestell' beeinflusst
			- bekommen mit 'Schie�pulver' wirklich die Verbesserung in Reichweite und Sichtweite (statt Schadensbonus)
			- nutzen die laut ihren Tooltips richtigen DamageClasses und die damit einhergehenden (In-)Effektivit�ten
			- Bombarden
				- Nachladedauer auf 3 Sek. reduziert (vorher: 3 1/2 Sek.)
				- Schaden auf 35 erh�ht (vorher: 30)
			- Eisenkanonen
				- Nachladedauer auf 3 Sek. erh�ht (vorher: 1/2 Sek.)
				- Schaden auf 70 erh�ht (vorher: 65)
		- Scharfsch�tzen
			- sind nicht mehr ganz so effektiv gegen Geb�ude
			- Leichte Scharfsch�tzen verursachen wirklich Bonusschaden gegen Nebelkrieger
			- Schwere Scharfsch�tzen 
				- zielen erheblich besser
				- haben einen Schadenspunkt weniger (=18)
		- Diebe und Kundschafter 
			- geben ihre pers�nlichen FunnyComments zum Besten
			- profitieren von 'Webstuhl', 'Hochwertige Schuhe' und 'F�hrtenlesen'
			- regenerieren ihre HP langsamer
			- Kundschafter F�higkeiten angepasst
				- 'Rohstoffe finden' muss nicht erforscht werden, sondern steht direkt zur Verf�gung
				- 'Fackeln' verbessert
					- Lebensdauer deutlich erh�ht (60 Sek. -> 120 Sek.)
					- Sichtweite leicht erh�ht (10 SM -> 15 SM)
					- Schon in der Taverne erforschbar
				- Neue F�higkeit 'Aufforsten'
				    - Basiert auf Noigis ScoutForester Script
					- Kann im Wirthaus erforscht werden, sobald 'Fackeln' erforscht wurde
					- Erm�glicht pflanzen neuer Baum-Setzlinge in der N�he von Baumst�mpfen, die zu neuen B�umen heranwachsen k�nnen
					- Kostet 50 Taler pro Verwendung
					- Wachstum h�ngt vom Wetter ab
	- Helden
		- Fernkampf-Helden brauchen l�nger zum Nachladen
		- haben (je nach Waffe) anderen Kampf-Sound
		- profitieren von den Technologien 'Marschieren' (Nahk�mpfer) und 'Meistersch�tze' (Fernk�mpfer)
		- profitieren von der neuen Technologie 'Aegis'
			- erh�ht die R�stung um 4 Punkte
			- erforschbar in der Zitadelle, wenn 'Plattenharnisch' und 'Verst�rktes Leder' erforscht sind
			- in den AddOns wird zus�tzlich die Technologie 'Vliesverst�rkte Lederr�stung' ben�tigt
		- profitieren von diversen Waffentechnologien
			- Ari: 'Befiederung', 'Bodkin Pfeile'
			- Helias, Varg, Kala: 'Holz h�rten', 'Drechseln'
			- Dario, Pilgrim, Salim, Erec, Kerberos, Mary, Yuki, Dovbar: 'Meisterschmied', 'Eisengie�en'
			- Drake: 'Bleikugel', 'Kimme und Korn'
		- k�nnen eine Markierung setzen, die den Bereich dauerhaft aufdeckt
			- die Stelle ist auf der Minmap mit einem wei�en Kreis gekennzeichnet
			- das Setzen einer neuen Markierung entfernt zugleich die Alte
			- wenn zugleich [Strg] gedr�ckt gehalten wird, wird eine Markierung entfernt, ohne eine neue zu setzen
		- Dario
			- Falke hat etwas h�here Sichtweite (15 SM -> 20 SM)
			- Entwicklungsstufen haben leicht unterschiedliche Kampfwerte
				- PU_Hero1b (Dario nach 'Crawford') hat einen R�stungspunkt mehr (=4)
				- PU_Hero1c (Dario ab 'Old Kings Castle') hat noch einen R�stungspunkt (=5) und dazu auch zwei Angriffspunkte mehr (=18)
			- Bei Verwendung von 'Falkensicht' gibt Dario ein Audio-Feedback zur�ck
			- In den AddOns wird bei seiner K�nigs-Version (PU_Hero1c) die F�higkeit 'Falkenauge' durch 'Schild des K�nigs' ersetzt
				- Aura, die Verteidigung von Verb�ndeten in der N�he auf 300% erh�ht
				- reduziert zugleich Angriff jener Einheiten auf 50%
				- Dauer und Cooldown entsprechen Vargs 'Berserkerwut'
		- Drake 
			- hat einen R�stungspunkt weniger (=3)
			- hat 2 Schadenpunkte weniger (=26)
			- seine F�higkeit 'Feuerkraft' betrifft auch
				- Ari 
				- Kanonen
				- Bogen-Banditen
				- Speerwerfer
		- Varg 
			- hat einen R�stungspunkt weniger (=3)
			- seine W�lfe
				- haben eine Lebensdauer von 2:30 Min (vorher: 3 Min.)
				- werden zu 3. beschworen (vorher: 2)
				- verlangen keinen Sold
				- sind �hnlich schnell und haben �hnlich hohe Sichtweite wie wilde W�lfe
				- geben Audio-Feedback
				- sind nicht von Helias konvertierbar
			- seine F�higkeit 'Berserkerwut'
				- h�lt f�r 1:00 Min (vorher: 40 Sek.)
				- betrifft auch Verb�ndete
				- Cooldown betr�gt 3:00 Min. (vorher: 5:00 Min.)
				- wirkt auf gleiche Entfernung wie Erecs 'Aura der St�rke' (15 SM)
				- bewirkt keine einmalige HP-Regeneration mehr
				- erh�ht den verursachten Schaden betroffener Einheiten um 200% (vorher: 100%)
		- Aris Banditen
			- werden zu 5. beschworen (vorher: 3)
			- haben eine Lebensdauer von 2 Min. (vorher: 1 Min.)
			- wechseln nicht mehr dauernd in die Walk-Animation
			- haben einen R�stungspunkt weniger (=3)
			- haben eine Selbstheilung
			- haben eine leicht reduzierte Angriffsgeschwindigkeit
			- profitieren von Technologien der Schwertk�mpfer sowie 'Marschieren'
			- geben Audio-Feedback
			- sind nicht von Helias konvertierbar
		- Salims Heilung heilt Betroffene um 50% ihrer maximalen HP (vorher: 30%)
		- Helias
			- seine F�higkeit 'Segnung' 
				- erh�ht die R�stung Betroffener auf 200% (vorher: 40%)
				- heilt Betroffene um 25% ihrer maximalen HP
			- Helias Bekehrung
				- Cooldown um 50% verl�ngert (1:00 Min. -> 1:30 Min)
				- ben�tigt weniger Zeit
				- kann auf etwas gr��erer Distanz gestartet werden
				- kann �ber etwas gr��ere Distanz gehalten werden
		- Yukis 
			- 'Feuerwerk der Furcht'
				- Fluchtdistanz auf 20 SM gesenkt (vorher: 30 SM)
				- Reichweite auf 15 SM erh�ht (vorher: 10 SM)
				- ist identisch mit den Versionen von Dario und Kerberos
			- Shuriken: 
				- Anzahl verdoppelt (4 -> 8)
				- haben die gleiche DamageClass wie normale Angriff sowie Kala's 'Giftpfeile'
		- Kerberos 'Aura der Furcht' reduziert die R�stung von Gegnern auf 50% (vorher: 80%)
		- Kala 
			- hat einen R�stungspunkt weniger (=4)
			- 'Giftnebel'
				- hat eine Reichweite von 14 SM (vorher: 12 SM)
				- Schaden erh�ht auf 35 (vorher: 25)
			- 'Giftpfeile'
				- Schaden auf 30 erh�ht (vorher: 20)
				- Cooldown um 50% verl�ngert (= 0:30 -> 0:45)
		- Dovbar steht als Held zur Verf�gung
			- Besitzt �hnliche Kampfeigenschaften wie Erec, aber mit anderen F�higkeiten
				- Disziplin: Erh�ht Angriff und Verteidigung naher Verb�ndeter um jeweils 50%
				- Wachen rufen: Beschw�rt 3 Wachen, die f�r kurze Zeit an seiner Seite k�mpfen
- GUI
	- Kamera
		- Maximaler Zoom ist auf Faktor 1,4 festgesetzt, um den Bug der 'verschwindenden Texturen' bei hoher Distanz zu entsch�rfen	
		- Bei Rotation
			- kann die Kamera endlos gedreht werden, ohne an eine Grenze zu sto�en
			- springt sie nicht mehr automatisch in die Ausgangslage zur�ck
			- kann sie mit dem Shortcut '[Strg] - [Leertaste]' in die Ausgangslage zur�ckgesetzt werden 
		- Mit dem shortcut '[Alt] - [I]' kann man (au�erhalb von Briefings) das Interface ein- und ausblenden
		- Entfernungsnebel bei schlechtem Wetter (Regen, Schnee) beeinflusst nicht mehr so sehr die Sicht
			- Nebeneffekt: Einige Settings wirken etwas heller
			- Im Gegenzug sind speziell die Settings von Evelance- und Moorregionen etwas abgedunkelt
	- Tooltips gefixt bzw. erg�nzt
		- Ausbau-Button Festung -> Zitadelle: 'erm�glicht'-Teil erg�nzt
		- 'Heiligsprechung' hat einen Erforscht-Tooltip im Hauptspiel
		- 'L�utet die Glocken' gibt im Hauptspiel alle betroffenen Siedler an
		- 'F�hrtenlesen' hat einen Erforscht-Tooltip
		- Ziergeb�ude sind richtig und einheitlich benannt (z.B. Dariostatue -> Dario-Statue)
		- Wird eine Sub-Technologie (z.B. "Mittleres Wohnhaus") vom Spiel gegeben, steht im Erforscht-F�hnchen nun die Bezeichnung statt der spielinterne Name
		- Bei 'Meistersch�tze' steht der korrekte Effekt (Erh�hung der Bewegungsgeschwindigkeit & Schaden)
		- Bei 'Kimme und Korn' steht der korrekte Effekt (Erh�hung der Reichweite)
		- Formations-Buttons haben DisabledTooltips, wenn 'Stehendes Heer' noch nicht erforscht wurde
		- Der Leibeigenen-Kaufbutton hat einen DisabledTooltip, da dieser in manchen F�llen gesperrt sein kann
		- In den Tooltips der Find-Buttons von Soldaten wird die Anzahl der Hauptm�nner dieser Art angezeigt
		- Alle Kundschafter- und Diebesf�higkeiten haben den richtigen Tooltip in Abh�ngigkeit der jeweiligen Technologie
		- Wird gerade eine Technologie erforscht, wird in ihrem Tooltip darauf hingewiesen, wenn ein anderes, identisches Geb�ude selektiert ist
		- S�ldnerquartier-Angebote zeigen bei Entities ohne definierten Entity-Namen (vor allem XDs und XAs) '???' als Einheitenart an
		- Zahltag
			- Der Countdown wird nicht mehr in Sekunden, sondern im Format "Min:Sek" angegeben
			- Ist ein Wetterturm vorhanden, stehen hier zus�tzliche Infos zu dem Thema
				- Das aktuelle Wetter wird nochmal als Text angegeben
				- Das n�chste Wetter sowie die Zeit bis zum Wechsel wird angezeigt (bei weniger als einer Stunde bis zum Eintreten)
		- Marktplatz: Tooltip f�r 'einzukaufende Holzmenge' analog zu den anderen positioniert
	- S�ldnerquartier: Button-Texturen weisen genauer auf die angebotene Einheit hin
	- Selektionsringe einiger Geb�ude und Einheiten gefixt
		- Alle Geb�ude haben den Geb�ude-Selektionsring
			- gilt auch f�r Pilgrims Kanone und Salims Falle
		- Alle Helden haben den Helden-Selektionsring
		- Alle Milit�reinheiten haben den gleichen Einheiten-Selektionsring
		- AddOn-Zivilisten haben alle den richtigen Zivilisten-Selektionsring
	- Formations-Buttons
		- stehen auch bei selektierter Kavallerie zur Verf�gung
		- verschwinden nicht mehr dauerhaft bei Selektion von Milizsoldaten
	- Erg�nzte und korrigierte SelectionNames und OverheadNames
		- Au�enposten
		- CU_BlackKnight_SoldierSword3 -> Raubritter
		- Veteranen
			- CU_VeteranLieutenant -> 'Berserker'
			- CU_VeteranCaptain -> 'Raubritter'
			- CU_VeteranMajor -> 'Todesritter'
	- VideoPreviews (VPs)
		- NPC-Einheiten, die erst mit den AddOns VPs bekommen haben (z.B. Barbaren), haben diese auch schon im Hauptspiel
		- Dunkle T�rme haben die VPs der normalen T�rme
		- Au�enposten haben die VPs ihrer Hauptquartier-Counterparts
		- Veteranen (CU_VeteranXXX) nutzen die VPs von Barbaren und schwarzen Rittern
		- Dombaustellen verwenden die VP der Kathedrale
		- CU_Serfs (Arbeiter der Dombaustelle) haben die VP von Leibeigenen
	- Fortschrittsanzeige in Kanonengie�ereien beim Kanonenbau gefixt-versch�nert
		- Icon, dass die zu bauende Kanonenart anzeigt (analog zur Technologie-Erforschung)
		- Anzeige erscheint auch dann schon, wenn der Kanonengie�er gerade nicht im Geb�ude ist
	- Der Button zum Kauf von Bogen-Hauptm�nnern hat im Hauptspiel die gleiche Textur wie in den AddOns
	- F�higkeiten-Buttons von Dieben und Kundschaftern werden disabled, wenn der jeweilige Cooldown aktiv ist
	- Gruppenst�rke
		- rechnet bei Nebelkriegern in 2er-Schritten (1 Helm = 2 Krieger)
		- wird bei Einheiten, die keine Soldaten rekrutieren k�nnen, komplett ausgeblendet
		- wird bei 0/x Soldaten nicht mehr fehlerhaft angezeigt
	- Der Button zum Kauf von Soldaten wird ausgeblendet, wenn eine Einheit selektiert wird, die keine Soldaten haben kann (z.B. Helden)
	- Der Entlassen-Button wird ausbeblendet, wenn Helden selektiert sind
	- In Kanonengie�ereien k�nnen Arbeiter und in Tavernen Esser gesichtet werden
	- Countdowns 
		- bleiben im Hauptspiel auch nach dem Laden eines Spielstands sichtbar
		- bei Beginn der letzten Minute ert�nt ein kleiner Sound
	- Hilfe-Button
		- gibt bei jedem Helden spezifische Hilfe
		- gibt bei Kanonen eine eigene Hilfe
		- gibt bei T�rmen Hilfe in Abh�ngigkeit ihrer Ausbaustufe
	- Find-Buttons
		- werden stets korrekt angezeigt (unabh�ngig von der Einheiten-Entwicklungsstufe)
		- Darios Button leuchtet in der Spielerfarbe statt nur blau
			- Bei sehr hellen Spielerfarben (Wei�, Hellgrau) wird hierbei eine andere, dunklere Farbe gew�hlt
		- unterscheiden bei Bogensch�tzen nicht mehr nach Entwicklungsstufe
		- erlauben bei Leibeigenen, alle - besch�ftigt oder nicht - durchzugehen, wenn dabei gleichzeitig [Alt] gedr�ckt gehalten wird
	- Briefing-Window versch�nert
		- Es gibt keine L�cke mehr am linken Bildschirmrand (meistens...)
		- Der obere Balken ist etwas kleiner
		- Der schwarze Hintergrund beider Balken ist leicht transparent
		- Die "silbernen Streifen" sowie der Minimap-Ring sind in der Spielerfarbe eingef�rbt
		- Multiple-Choice-Seiten
			- Headline hat die gleiche Farbe wie bei normalen Seiten
			- Buttons sind so weit unten wie m�glich
				-> mehr Platz f�r Beschreibungstext
			- Button-Highlights werden nach dem Klick auf einen Button wieder entfernt
	- Einige Widgets schlie�en besser am Bildschirmrand bzw. anderen Widgets ab
		- Titelleiste
		- Bodenleiste
		- Minimap
		- VideoPreview
	- Viele kleine Detail-Anpassungen (Verschobene Buttons, gr��ere Tooltip-Boxen, etc.)
	- Diverse Fixes bzgl. MainWindow- und Savegame-Anzeige (by mcb & Zedeg)
		- u.a. werden Spielst�nde (dank Zedeg)
			- auch mit spezieller Textfarbe dargestellt (wenn vom Mapper so vorgesehen)
			- unabh�ngig von Textfarbe und anderen "Schn�rkeln" richtig sortiert
- Diverses
	- Die Spielgeschwindigkeit kann bis auf das 3-Fache erh�ht werden
		- Button daf�r ersetzt den Hilfe-Button
			- Hilfe kann weiterhin �ber den Shortcut F10 abgerufen werden
		- Kann auch �ber den Shortcut '-' ausgel�st werden
	- Hauptmen�
		- Der Reiter 'Spieler' ist reaktiviert
			- Spielername kann ge�ndert werden
			- Eine bevorzugte Spielerfarbe kann eingestellt werden
				- Wahl zwischen Blau (Standard), Gelb und Rot
				- Nahezu alle Vanilla-SP-Maps respektieren diese Einstellung
				- Ggf. haben KIs dadurch auch andere Spielerfarben
				- Gilt NICHT f�r den MP
		- Unter 'Extras' sind auch im Legenden-AddOn die Hauptspiel-Videos einsehbar
		- In den Kampagnen-Men�s kann ein h�herer Schwierigkeitsgrad f�r Kampagnen-Missionen ausgew�hlt werden
		- Mapauswahl im SP-Men� ver�ndert
			- MP-Maps sind nicht mehr enthalten -> Bessere �bersicht
			- Basegame-Maps sind im Nebelreich-AddOn ebenfalls ausw�hlbar
				- Nahezu alle AddOn-Features sind dort nutzbar
				- Leichte Anpassungen wurden vorgenommen, um AddOn-Features besser einzubinden
		- In den Grafik-Einstellungen sind auch bei 'modernen' Grafikkarten wieder hohe Einstellungen ausw�hlbar (Fix bei yoq)
		- Wenn eine Karte l�dt
			- wird beim ersten Laden der Karte die Kartenbeschreibung angezeigt
			- wird beim Laden eines Spielstands ein zuf�lliger Fakt bzw. eine Theorie angezeigt
		- Blaue Hintergr�nde sind nun rot
	- Kampagnen-Maps modifiziert
		- Tipps-Button im Hauptmen� 
			- Ersetzt nutzlosen Netzwerk-Button
			- Tipps sprachlich und inhaltlich korrigiert
		- fehlerhafte-unpassende Spielerzugeh�rigkeit mancher Einheiten-Geb�ude gefixt
		- Drakes Gewehrsch�sse in Cutscenes sind vertont
		- Alternative Schwierigkeitsgrade (im Hauptmen� w�hlbar)
		- in manchen Missionen k�nnen gegnerische Truppen respawnen
			- z.T. abh�ngig vom Schwierigkeitsgrad
		- 'Schlacht um Evelance' ist ein w�rdigeres Finale
			- Gegner sind zahlreicher
			- Gegner bilden auch Truppen in Milit�rgeb�uden aus
			- Gegnerische T�rme sind h�her ausgebaut
		- Schwierigkeitsgrad 'Schwer'
			- Gegnerische Befestigungen sind z�her, etwas zahlreicher und-oder h�her ausgebaut 
			- Gegnerische Truppen sind besser ausger�stet, erfahrener und etwas zahlreicher
			- Gegner nutzen h�ufiger ihre Milit�rgeb�ude zur Ausbildung von Truppen
			- Gegner sind z.T. aggressiver
			- Startbedingungen des Spielers sind bzgl. Rohstoffe-Truppen-Geb�ude etwas schlechter
			- Ausnahmen: Tutorial, M12: Nebelberge (friedlicher Weg)
		- Schwierigkeitsgrad 'Albtraum'
			- Schatztruhen entfallen gr��tenteils
			- enth�lt die gleichen Features wie auf 'Schwer'
			- KI-Truppen und Geb�ude sind noch st�rker bzw. zahlreicher
			- Die Steuern sind auf 'Halbe Steuern' festgesetzt
				- �nderungen im Haupthaus sind NICHT m�glich
				- Eure Beliebtheit steigt deshalb mit jedem Zahltag
			- Die eine oder andere n�tzliche Technologie ist gesperrt
			- In Missionen mit sonst dauerhaftem Sommer regnet es ab und an
			- Wege k�nnten blockiert oder freigelegt sein
			- diverse Gemeinheiten;)
		- Wilde Tiere (W�lfe und B�ren) streifen durch die Gegend
		- Start-Rohstoffe sind immer veredelbar
		- Diverse Optimierungen-Anpassungen-Fixes in einigen Missionen
	- SP-Maps modifiziert
		- �hnliche Features wie bei den Kampagnen-Maps. Ausnahmen:
			- Keine Schwierigkeitsgrade und damit einhergehende Anpassungen
			- Keine Tipps im Hauptmen�
		- Gr��tenteils Fixes und kleinere Optimierungen
	- Die Grafik ist allgemein etwas besser (by yoq)
	- Die Dreckrand-Texturen um Geb�ude gibt es nicht mehr (by yoq)
	- Steuer-Predigt-Exploit entsch�rft
		- Predigten k�nnen mit einer Wahrscheinlichkeit von 25% wirkungslos bleiben
		- Predigten kosten Taler abh�ngig von der 'Stufe' der Predigt und der Anzahl der betroffenen Siedler
	- Musik
		- Winter-Regen-Tracklist aller MusicSets (au�er Evelance und Moor) f�r mehr Vielfalt vereinheitlicht
		- In Evelance- und Moorsettings spielt auch bei Regen-Winter die d�stere Sommer-Musik
		- Buggt nicht mehr rum bei Pausierung sowie �nderung der Spielgeschwindigkeit (by Zedeg)
		- Soundtrack aus anderen Spielen (AeK, S4, Anno 1701, Herr der Ringe, Stronghold (1, Legends))
		- Analog zum Wetter hat jedes MusicSet eigene Battle-Tracks
	- Bei Zerst�rung und (Aus-)Bau von Geb�uden ert�nt ein kleiner Ambient-Sound
	- Wetter-Effekte sind etwas gemischter
		- Regen reduziert zus�tzlich die Bewegungsgeschwindigkeit von Einheiten um 5% (Winter 15%)
		- Winter reduziert zus�tzlich die Sichtweite von Einheiten und Geb�uden um 5% (Regen 20%)
	- Ger�llhaufen werden, wie Steinhaufen auch, mit dem Abbau kleiner
	- ein paar EasterEggs;)
- F�r Mapper
	- Mapeditoren f�r die AddOns sind im jeweiligen bin-Ordner enthalten
	- Einige Entities sind regul�r im Editor verf�gbar - auch ohne Group-Werkzeug
	- Neue, aber eigentlich in den Files vorhandene Entities sind verf�gbar
		- Der NPC 'CU_NPC_EvilGovernor' (Statthalter Kadir)
		- Held 'CU_Hero10'
			- eine Variante von Drake mit Kapuze (wie auf dem Nebelreich-Cover)
			- hat genau die gleichen Stats und F�higkeiten wie das Original, ist aber nicht auf regul�rem Weg erh�ltlich
		- Deko-Objekte 'XD_WreckedBoat01' und 'XD_WreckedBoat02' (Bootsfracks)
		- Goldhaufen 'XD_Gold1', der analog zu den vier bekannten Rohstoffhaufen f�r Gold abgebaut werden kann
		- Der Drache ist theoretisch als 'CU_Dragon' nutzbar (aber leider unsichtbar)
		- Geb�ude 'CB_Grange' (Dorfplatz) ist eine indirekte Vorstufe des Dorfzentrums
		- Geb�ude 'CB_TechTrader' (Technologie-H�ndler) ist nutzbar
		- Der Soldat 'CU_LeaderOutlaw1' (R�uber) mit dem Aussehen von Aris R�uber
		- 'PU_Coiner' (Goldschmied) ist nun ein NPC, kein Arbeiter
	- NPCs k�nnen vom Spieler normal kontrolliert werden
		- einige geben passendes AudioFeedback und haben ebenso passende VideoPreviews
		- auch milit�risch erscheindende NPCs (z.B. der Ordensritter) 
			- k�nnen nicht k�mpfen
			- reagieren nicht auf Angriffe
		- Der Selektionsring ist der gleiche wie bei normalen Arbeitern, nur ggf. etwas gr��er
		- sie werden, je nach Typ, von zivilen oder milit�rischen Technologien beeinflusst
	- S�ldnerquartiere und Tech-Trader erlauben bis zu 6 Angebote
	- Der Held 'PU_Hero1' sieht aus wie Dovbar
		- inkl. Find-Button
		- MultiSelection-Button (Textur by Zedeg)
		- AudioFeedback stammt von den Kundschaftern
	- Die Technologie 'Aegis' tr�gt die interne Bezeichnung 'T_PlateBardingArmor'
	- Die Technologie 'KI-Bonus' 
		- ist als 'T_SuperTechnology' bekannt, nur deutlich weniger overpowered
		- ist bei allen Spieler-Entities hinterlegt
		- erh�ht je nach Entity-Typ verschiedene Stats
			- Schaden
			- Geschwindigkeit
			- Reichweite (Fernk�mpfer)
			- Verteidigung
			- Sichtweite
		- ist vom Spieler regul�r nicht erforschbar
	- Verschiedene Versionen von CU_Barbarian_LeaderClub, CU_BlackKnight_LeaderMace & CU_BanditLeaderBow unterscheiden sich leicht
		- Versionen mit 1er-Endung haben Soldatenmaximum von 4
		- Versionen mit 2er-Endung haben Soldatenmaximum von 8 und kosten etwas mehr Taler
		- Stats sind identisch
		- �ber ihre UpgradeCategories k�nnen die h�heren Stufen zug�nglich gemacht werden (auch der KI)
		- Banditen (CU_BanditLeaderSwordX) sind dahingehend unver�ndert
	- TaskLists
		- Schwertf�hrende Einheiten nutzen neue TaskList 'TL_BATTLE_SWORD'
		- manche Einheiten nutzen andere TaskLists als zuvor
	- Neue Effekte mit eigenem Sound
		- FXExplosionBallista: Effekt, der beim Aufprall eines Ballistaturm-Geschosses erscheint
		- FXExplosionCannon: Effekt, der beim Aufprall eines Kaonenturm-Geschosses erscheint
	- In den Files vorhandene Sounds sind per Script verf�gbar (siehe Datei 'Sounds.xml')
	- Die 'MapEditorTools' 
		- stehen auch im Hauptspiels zur Verf�gung
		- Per 'MapEditor_SetupAI' aktivierte KIs bauen die richtigen Kanonen
			-> d.h. 0 -> Bombarde, 1 -> Bronze, 2 -> Eisen, 3 -> Belagerung
	- Fehlende originale 'Player-Color-Definitions' (z.B. 'MORTFICHET_COLOR') stehen auch in den AddOns zur Verf�gung
		- Andere sind in den AddOns vorhanden, aber bereits anders definiert
	- Darios F�higkeit 'Schild des K�nigs'
		- ist intern die gleiche F�higkeit wie 'Falkensicht' (Abilities.AbilitySendHawk)
		- existiert auch schon im Hauptspiel, ist mangels Falken-Ersatz (Kundschafter-Fernrohr) aber absichtlich nicht verf�gbar
	- Diverse Einheiten geh�ren ebenfalls der EntityCategory 'LongRange' an
		- Ari (PU_Hero5)
		- Kanonen (alle Arten)
		- Bogen-Banditen (CU_BanditLeaderBow1-2)
		- Speerwerfer (CU_Evil_LeaderSkirmisher1)
	- Kanonen haben als SoldierType 'PV_Cannon1', was bei max. 0 Soldaten aber eig. irrelevant ist
	- Das Geb�ude 'CB_Castle1' kann theoretisch zum Geb�ude 'CB_Castle2' ausgebaut werden
		- Da es keinen Ausbaubutton daf�r gibt, ist dies nur per Script oder GUI-Hacks m�glich
	- Die GUI-Funktion 'GUIAction_AOOnlineHelp' ist obsolet, da alle Hilfe-Aktionen in 'GUIAction_OnlineHelp' ausgef�hrt werden
	- LevyTaxes ist nun funktionsf�hig
		- Button wird denoch ausgeblendet, da das Feature schwer zu balancen ist
		- kann mit Aufruf folgender Funktionen in der IPCM aktiviert werden
			- 'XGUIEng.ShowWidget("Levy_Duties",1)' im Hauptquartier
			- 'XGUIEng.ShowWidget("OP_Levy_Duties",1)' in Au�enpopsten
	- Der Aufruf von 'GDB.GetValue("Game\\Campaign_Difficulty")' gibt den Kampagnen-Schwierigkeitsgrad zur�ck
		-> return: int Normal (0) oder Schwer (1)
	- Der Aufruf von 'GetPlayerPreferredColor()' gibt die Id der bevorzugten Spielerfarbe des Spielers zur�ck
		-> return: int Blau (1), Rot (2) oder Gelb (3)
	- 6 unbenutzte Button-Texturen:
		- Sind �ber 6 Dummy-Buttons (DummyButton0X) erreichbar (-> 'TransferMaterials')
		- Die Z�hlung beginnt ab 'DummyButton02' -> 'DummyButton01' existiert nicht!
		- Der Button 'DummyButton07' enth�lt die originale Textur zum Kauf von Bogen-Hauptm�nnern
	- Bei aktiviertem DebugScript gibt es weniger 'nutzlose' Debug-Messages
		- S�ldnerquartiere bei Einheiten ohne definierten Entity-Namen
		- 'Score.OnBuildingConstructionComplete' bei 'SpielerId = 0' (by Play4FuN)
	- Per 'MoveAndVanish' bewegte NPCs despawnen auch, wenn sie ihren Zielort erreicht haben
		- K�nnten aber noch zwischendurch "h�ngen bleiben", wodurch sie hren Zielort nie erreichen
	- Per 'SetupAITroopSpawnGenerator' erstellte Armeen haben neue (optionale) Property 'experiencePoints', mit der man die Truppen-Erfahrung zwischen 0 und 3 setzen kann
	- ScoutForester
		- Default Tree-Set ist Fir (ScoutFoerster_SET_Fir)
		- Kann folgenderma�en in der FMA ge�ndert werden
			- ScoutFoerster_gvScoutFoerster.GROWTH_LEVELS = table.getn(treeset)
			- ScoutFoerster_gvScoutFoerster.treeSet = treeset
			- Gilt analog auch f�r andere Properties, z.B. Preis pro Aufforstung
	- Comforts
		- Variable 'CP_Installed' (bool):
		- 'StartCountdown(_Limit, _Callback, _Show)': Startet einen Countdown
			- Abbrechbar mit StopCountdown(_Id)
		- 'SetAIUnitsToBuild( _aiID, ... )': Bestimmt, welche Einheitenarten die KI ausbilden kann
		- 'InterfaceTool_GetBlessingCosts(PlayerID, _BlessCategory)': Gibt die Segnungskosten f�r eine bestimmte Segnungs-Kategorie (ID) zur�ck
			-> return: int Segnungskosten
		- 'CreateCostString(_costs)' by Noigi: Erstellt einen Kostenstring f�r Tooltips und dergleichen
			-> return: string CostString
		- 'HasPlayerEnoughResources(_costs)': Basiert auf CreateCostString, gibt aber stattdessen ein Feedback, wenn die Resourcen nicht reichen
			-> return int reicht (1) oder reicht nicht (0)
		- 'RaidersCreate(_data)': Erstellt ein aggressives Wolfsrudel mit einem Revier, in dem es sich bewegt
		- 'GetRandom(_min, _max)' by mcb: Gibt eine Pseudozufallszahl zwischen _min und _max zur�ck
			-> return int Zufallszahl
		- 'GetClockTimeString(_sec)': Gibt einen Zeit-String im Uhr- (Std:Min:Sek) oder Datums-Format (T. Std.) zur�ck
			-> return string Zeit
		- 'ResearchAllMilitaryTechs(_PlayerId, _SuperTech)': Gibt der angegebenen PlayerId alle milit�rischen Techs des Hauptspiels (also ohne AddOn) und ggf auch die Super-Technologie
		- 'ResearchAllMilitaryTechsAddOn(_PlayerId, _SuperTech)': Wie 'ResearchAllMilitaryTechs', aber zus�tzlich mit AddOn-Technologien
		- 'UserTool_GetPlayerNameWithTitle(_PlayerID)': Gibt den Namen des Spielers inkl. dem vom Geschlecht abh�ngigen Titel zur�ck
			-> return string Spielername
		- 'SucheAufDerWelt(_player, _entity, _groesse, _punkthier)' by Peermanent? - JugarTeam? - Kingsia?: Sucht Entities und gibt sie per Table zur�ck
			-> return table Entities
		- 'IstDrin(_wert, _table)' by ?: Erg�nzung zu SucheAufDerWelt, um Dopplungen zu vermeiden
			-> return bool true-false
		- 'Tools.RemoveEntityInFogOrDestination(_PlayerID, _EntityID, _Position)': Trigger, der NPC im FOW oder am Zielort entfernt
		- 'CP_ActivateEvilMod(_playerId, _unitstate, _towerstate)': Erlaub einem Spieler, in Milit�rgeb�uden 'b�se' Einheiten zu rekrutieren und mit Leibeigenen dunkle T�rme zu bauen
			- Abfrage der Einheiten mittels 'CP_GetEvilModUnitState(_playerId)'
			- Abfrage dunkler T�rme mittels 'CP_GetEvilModTowerState(_playerId)'
			- Verwendung: siehe Kommentar in 'Comforts.lua'
- Bekannte Bugs & Einschr�nkungen
	- Der Drache ist unsichtbar
		- Grund: zu viele Bones im Modell und dadurch nicht vom Spiel darstellbar
		- M�gliche L�sung: Bones entfernen, aber dann nicht mehr animierbar
	- Kala's Tod verursacht selten stack overflow
		- nur ein mal bislang
		- konnte ich noch nicht reproduzieren
	- Bei der Dombaustelle werden unter ihrem Overhead-Namen Minenarbeiter statt Leibeigene angezeigt
		- gibt halt keine f�r Leibeigene, aber immer noch besser als Bankiers - immerhin stimmt der Bart!
	- VideoPreviews z.T. nicht ganz passend
		- gibt leider keine genauen VideoPreviews f�r diese Entities, sieht aber mMn. besser aus als Blackscreen
	- Sterbende NPCs despawnen z.T. einfach ohne Sterbeanimation
		- Grund: Sie haben einfach keine
	- Mauern sind nicht reparierbar bzw. Leibeigene stehen dabei an komischen Positionen
		- Grund: je nach Gel�nde, umliegenden Objekten und Ausrichtung sind die Reparaturpositionen blockiert oder verschoben
	- Kontrollierbare NPCs 
		- belegen Pl�tze in Wohnh�user-Bauernh�fen und werden zahlenm��ig in der Hungernden-/Obdachlosenanzeige erfasst
		- k�nnen zum Holzf�llen geschickt werden und sehen dabei aus wie Leibeigene



## ToDos:
- SP-Maps: 
	- Umlaute pr�fen (nur Legenden)
	- Wilde Tiere
	- Goldhaufen
- Misc-Items
	- Rifles
	- Evil stuff
- Neue Tastaturbelegungen ingame dokumentieren (Optionen -> 'Tastatur')
- Bauern: Work-Animation verf�gbar machen (muss keine konkrete Verwendung haben)
- Meuchel-Ability f�r Diebe(?)
- Thalgrund: Erster Angriff mit Cutscene-Einheiten
	- ggf. mehr Spielertruppen als Hilfe
- Vertonte Animationen (per TaskLists)
	- Leader-Walk
	- Leader-Train
- Wasteland-D�rfer: Namen im Auftragsbuch
- FunFacts im LoadingScreen
	- mehr davon
	- besser geschrieben
	- auf Englisch �bersetzen
- Dombaustelle: Arbeiter sollen erm�den und im 'Motivationssystem' drin sein
- Rand-Clipping bei Briefing-Minimap entfernen 
- Hauptmen�
	- MP-Window fixen
	- MP-Fix (https:--dedk.de-wiki-doku.php?id=multiplayer:help:historyedition)?
- Random(?) Crashs
	- erste 2 Verst�rkungen in '03_Neighborhood'
- Langzeitwetter ("XNetwork.Manager_IsGameRunning() == 1", SP only)
- Korrekte Kostenanzeige f�r den Kauf von Soldaten
- Countdowns 
	- sollen w�hrend Briefings pausieren
	- Sollen ein eigenes Hintergrund-Image bekommen(?)
- Kontrollierbare Sch�ferhunde(?)
- Verschiebung von Overhead-Daten (RessourceAmount) und SelectionNames auf 4k fixen
- BattleMusic bei vom Spieler besiegten Einheiten(?)
- Neue Spielerfarben(?)
- Auftragsbuch-Highlight fixen
- Auch normale Arbeiter sollen automatisch HP regenerieren
	- scheint leider nicht m�glich zu sein
- Kalas Tod: stack overflow(?)
- Tribute mit alternativem PlayerName (Anf�nge in der Testmap vorhanden)
- Eigene Texturen f�r
	- Tech-Trader
	- Veteranen
	- Varg
	- Bogen-Banditen-Hauptm�nner
	- Leonardos Assistent
	- Hauptmann, Ordensritter und W�chter
- Neue Map "Tal der Verdammten"
	- Bonusmission (Nebelreich), wenn Kampagne auf Schwer beendet
	- Erec lebt
	- Nettes NV
	- Kadirs Bruder
	- Giftiger Schwefelnebel und Dampfmaschinen
- Umsetzung in Vanilla-DEdK
- Organisatorisches
	- FeatureList auch auf Englisch
	- Quellenverzeichnung (also Nennung aller Autoren)
	- GitHub-Startseite
	- Indikator f�r CP-Installation
	- (De-)Installer
		- Backup-Funktion(?)
		- Test-Maps und Thalbach (extra1) entfernen
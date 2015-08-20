/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the 
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true}, 
		["Mission",
			"<marker name='perditus_start'>Perditus</marker> and <marker name='derelictus_start'>Derelictus</marker> will clear the <marker name='end'>LZ</marker> of hostile forces to enable to exfiltration by Terminus. Corona is part of Perditus and his survival is mission critical."],
			
		["Situation",
			"March 4th 2025: after destroying the sensitive equipment along with FOB Aurum, PMC Versus forces on Altis contacted Versus high command in Belarus. The Versus CEO has sanctioned an exfiltration off Altis if the Versus teams can find and secure a landing zone for the two PMC Versus UH-80 Ghost Hawks (callsign 'Terminus').<br/><br/>PMC Versus teams (callsigns 'Perditus' and 'Derelictus') have located a suitable <marker name='end'>LZ</marker> for the helicopters on the skerry Atsalis. Even though the Versus reconnaissance satellite Hannibal-6 is permanently offline, Versus operators have previously acquired data on AAF positions and the skerry is the only location far enough from the AAF SAM-sites.<br/><br/>PMC Versus personnel have managed to steal AAF ships and NVGs and are making their way to Atsalis. When the LZ is considered clear the teams will radio in on Terminus who are standing by a few kliks to the north. The helicopters are the only way off Altis and have not been equipped with slingshot capabilities on such short notice so simply picking up the boats from the sea is not an option.<br/><br/>PMC Versus high command (callsign 'Corona') has been attached as part of Perditus and must make out of Altis alive. Versus policies are very clear on CO's."],

		["Enemy",
			"The good news is that the skerry is far from the mainland and there's no need to worry about the AAF and NATO reinforcements. The bad news is that the skerry is an AAF AA observation post and is believed to be occupied by a platoon sized force.<br/><br/>The Versus CEO has confirmed that the employers have been pleased with Versus work on Altis and that the Nekron Chelia identities have not been questioned. He also added that even though PMC Versus exfiltrations have a history of being rough around the edges they have usually been successful."],

		["Callsigns",
			"Corona: local high command.<br/>Perditus: surgical element.<br/>Derelictus: supporting element.<br/>Terminus: two Versus Ghost Hawks standing by."],
            
        ["Additional",
			"PMC Versus uses FHQ Task Tracker to provide operators with briefings and tasks."]
    
] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "The <marker name='end'>LZ</marker> is hot. Clear the LZ and radio in PMC Versus Ghost Hawks which are standing by.",				       // Task text in briefing
         "Clear the LZ and exfiltrate",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Corona is the highest ranking Versus combatant on Altis and must be exfiltrated.",				       // Task text in briefing
         "Corona must survive.",							// Task title in briefing
         "commander"											// Waypoint text

        ],
		["task3",										// Task name
         "The PMC Versus Ghost Hawks are the only way off Altis. They must survive. Should the helicopters suffer catastrophical damage, PMC Versus high command will cease all communication with the operators.",				       // Task text in briefing
         "Terminus must survive.",							// Task title in briefing
         "ammo trucks"											// Waypoint text
        ]
        

] call FHQ_TT_addTasks;
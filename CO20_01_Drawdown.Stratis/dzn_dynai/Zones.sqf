
/* *********** This array defines detailed properties of zones ************************** */
// MAIN BASE

[
	"enemy" /* Zone Name */
	,"RESISTANCE",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			5, /* Groups quantity */
			/* Units */
			[
				["I_soldier_F", [], "kit_syr_random"]
				,["I_soldier_F", [], "kit_syr_random"]
				,["I_soldier_F", [], "kit_syr_random"]
				,["I_soldier_F", [], "kit_syr_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["FULL","AWARE","YELLOW","WEDGE"]
]

,[
	"ambush" /* Zone Name */
	,"RESISTANCE",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
		2, /* Groups quantity */
		/* Units */
			[
				["I_soldier_F", [], "kit_syr_random"]
				,["I_soldier_F", [], "kit_syr_random"]
				,["I_Soldier_F", [], "kit_syr_random"]
				,["I_Soldier_F", [], "kit_syr_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["FULL","AWARE","YELLOW","STAG COLUMN"]
	,{ ts_tasks > 0 }
]
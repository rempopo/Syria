// ***********************************
// Gear Kits
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

//{{{ Russian Armed Forces
// 	Clothing
#define ru_h ["rhs_6b47","rhs_6b47_bala","rhs_6b47_ess","rhs_6b47_ess_bala"]
#define ru_v_r ["rhs_6b23_6sh116_od","rhs_6b23_6sh116"]
#define ru_v_gr ["rhs_6b23_6sh116_vog_od","rhs_6b23_6sh116_vog"]


kit_ru_msv = [ "kit_ru_sl"
		,"kit_ru_mg"
		,"kit_ru_at"
		,"kit_ru_aat"
		,"kit_ru_gr"
		,"kit_ru_r1"
		,"kit_ru_r2"
];

//{{{ MSV 4+3+2
kit_ru_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_gr,"tf_mr3000_rhs",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9],["rhs_VOG25",14]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ru_mg = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"rhs_assault_umbts",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkp","rhs_100Rnd_762x54mmR",["","","rhs_acc_1p29_pkp",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pya","rhs_mag_9x19_17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1],["HandGrenade",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_ru_at = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"rhs_rpg_empty",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_ekp8_18",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["SECONDARY MAG",2]]]
];

kit_ru_aat = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_gr,"rhs_rpg_empty",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_ekp8_18",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7V_mag",2]]]
];

kit_ru_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_gr,"",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9],["rhs_VOG25",14]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ru_r1 = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"rhs_assault_umbts",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_ekp8_18",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",2]]]
];

kit_ru_r2 = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_ekp8_18",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rshg2","rhs_rshg2_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ru_crew = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless","rhs_6b23_digi","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74un","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74un","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_AK_green",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

//}}}

kit_ru_vv = [ "kit_ru_sl"
		,"kit_ru_mg"
		,"kit_ru_at"
		,"kit_ru_aat"
		,"kit_ru_mg"
		,"kit_ru_gr"
		,"kit_ru_mm"
];

//{{{ VV 4+3

kit_ru_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_gr,"tf_mr3000_rhs",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9],["rhs_VOG25",14]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ru_mg = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"rhs_assault_umbts",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkp","rhs_100Rnd_762x54mmR",["","","rhs_acc_1p29_pkp",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pya","rhs_mag_9x19_17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1],["HandGrenade",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_ru_at = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"rhs_rpg_empty",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_ekp8_18",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["SECONDARY MAG",2]]]
];

kit_ru_aat = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_gr,"rhs_rpg_empty",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_ekp8_18",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7V_mag",2]]]
];

kit_ru_mg = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"rhs_assault_umbts",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkp","rhs_100Rnd_762x54mmR",["","","rhs_acc_1p29_pkp",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pya","rhs_mag_9x19_17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1],["HandGrenade",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_ru_gr = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_gr,"",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74mr_gp25","rhs_30Rnd_545x39_AK",["rhs_acc_uuk","","rhs_acc_1p87",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",9],["rhs_VOG25",14]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ru_mm = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_des_patchless",ru_v_r,"rhs_assault_umbts",ru_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m2",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["rhs_100Rnd_762x54mmR",2]]]
];

//}}}

//}}}

//{{{ British Armed Forces 4+4

//{{{	Random Items

//	Clothing
#define uk_h ["CUP_H_BAF_Helmet_4_MTP","CUP_H_BAF_Helmet_2_MTP","CUP_H_BAF_Helmet_Net_2_MTP","CUP_H_BAF_Helmet_1_MTP"]
#define uk_u ["CUP_U_B_BAF_MTP_S2_UnRolled","CUP_U_B_BAF_MTP_S1_RolledUp","CUP_U_B_BAF_MTP_Tshirt","CUP_U_B_BAF_MTP_S3_RolledUp","CUP_U_B_BAF_MTP_S4_UnRolled","CUP_U_B_BAF_MTP_S5_UnRolled","CUP_U_B_BAF_MTP_S6_UnRolled"]

//	Weapons for Rifleman
#define uk_r_w ["CUP_arifle_L85A2","CUP_arifle_L85A2_G","CUP_arifle_L85A2_NG"]
#define uk_r_a ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag"]

//	Weapons for Marksman
#define uk_m_w ["CUP_arifle_L86A2","CUP_srifle_L129A1_HG"]
#define uk_m_a ["30Rnd_556x45_Stanag","CUP_20Rnd_762x51_L129_M"]

//}}}

//{{{	Section Leader
kit_uk_sl = [
	["<EQUIPEMENT >>  ",uk_u,"CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader","tf_rt1523g_big_rhs",uk_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_GL","30Rnd_556x45_Stanag",["","","CUP_optic_ACOG",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",14],["SmokeShell",2],["SmokeShellBlue",2],["1Rnd_SmokeRed_Grenade_shell",4]]],
	["<BACKPACK ITEMS >> ",[]]
]; //}}}

//{{{	2IC
kit_uk_2ic = [
	["<EQUIPEMENT >>  ",uk_u,"CUP_V_BAF_Osprey_Mk4_MTP_SquadLeader","",uk_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_GL","30Rnd_556x45_Stanag",["","","CUP_optic_ACOG",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",14],["SmokeShell",2],["SmokeShellBlue",2],["1Rnd_SmokeRed_Grenade_shell",4]]],
	["<BACKPACK ITEMS >> ",[]]
]; //}}}

//{{{	Automatic Rifleman
kit_uk_ar = [
	["<EQUIPEMENT >>  ",uk_u,"CUP_V_BAF_Osprey_Mk4_MTP_MachineGunner","CUP_B_Bergen_BAF",uk_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_L110A1","CUP_200Rnd_TE4_Red_Tracer_556x45_M249",["","","CUP_optic_ElcanM145",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Glock17_blk","CUP_17Rnd_9x19_glock17",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",3],["HandGrenade",2],["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",2]]]
]; //}}}

//{{{	Grenadier
kit_uk_gr = [
	["<EQUIPEMENT >>  ",uk_u,"CUP_V_BAF_Osprey_Mk4_MTP_Grenadier","",uk_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_GL","30Rnd_556x45_Stanag",["","","CUP_optic_SUSAT",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS,["ACE_EntrenchingTool",1]]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",9],["1Rnd_HE_Grenade_shell",20]]],
	["<BACKPACK ITEMS >> ",[]]
]; //}}}

//{{{	Rifleman
kit_uk_r = [
	["<EQUIPEMENT >>  ",uk_u,"CUP_V_BAF_Osprey_Mk4_MTP_Rifleman","CUP_B_Bergen_BAF",uk_h,""],
	["<PRIMARY WEAPON >>  ",uk_r_w,uk_r_a,["","","CUP_optic_CompM4",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_NLAW","ACE_PreloadedMissileDummy_NLAW_CUP",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS,["ACE_EntrenchingTool",1]]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",2]]]
]; //}}}

//{{{	Marksman
kit_uk_mm = [
	["<EQUIPEMENT >>  ",uk_u,"CUP_V_BAF_Osprey_Mk4_MTP_Rifleman","CUP_B_Bergen_BAF",uk_h,""],
	["<PRIMARY WEAPON >>  ",uk_m_w,uk_m_a,["","","CUP_optic_ACOG",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_NLAW","ACE_PreloadedMissileDummy_NLAW_CUP",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS,["ACE_EntrenchingTool",1]]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",2]]]
]; //}}}

//{{{	Crew
kit_uk_crew = [
	["<EQUIPEMENT >>  ","CUP_U_B_BAF_MTP_Tshirt","CUP_V_BAF_Osprey_Mk2_DDPM_Pilot","","CUP_H_BAF_Crew_Helmet_MTP",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_L85A2_G","CUP_30Rnd_556x45_Stanag",["","","CUP_optic_MRad",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
]; //}}}

//{{{	Cargo
cargo_kit_uk = [
	[["CUP_launch_NLAW",2]],
	[["HandGrenade",10],["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",30],["SmokeShell",10],["SmokeShellBlue",10],["1Rnd_SmokeRed_Grenade_shell",10],["CUP_17Rnd_9x19_glock17",10],["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",10]],
	[["ACE_fieldDressing",10],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_quikclot",10]],
	[]
]; //}}}
//}}}

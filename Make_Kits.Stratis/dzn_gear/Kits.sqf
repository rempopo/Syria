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
//{{{ 	Random Items
#define ru_h ["rhs_6b47","rhs_6b47_bala","rhs_6b47_ess","rhs_6b47_ess_bala"]
#define ru_v_r ["rhs_6b23_6sh116_od","rhs_6b23_6sh116"]
#define ru_v_gr ["rhs_6b23_6sh116_vog_od","rhs_6b23_6sh116_vog"]
//}}}

kit_ru_msv = [ "kit_ru_sl"
	,"kit_ru_mg"
	,"kit_ru_at"
	,"kit_ru_aat"
	,"kit_ru_gr"
	,"kit_ru_r1"
	,"kit_ru_r2"
];

kit_ru_vv = [ "kit_ru_sl"
	,"kit_ru_mg"
	,"kit_ru_at"
	,"kit_ru_aat"
	,"kit_ru_mg"
	,"kit_ru_gr"
	,"kit_ru_mm"
];

//{{{	Ru Units
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

//{{{	Cargo kit
cargo_kit_ru = [
	[["rhs_weap_rpg26",2],["rhs_weap_rshg2",2]],
	[["rhs_30Rnd_545x39_AK_green",30],["HandGrenade",10],["rhs_VOG25",10],["rhs_100Rnd_762x54mmR",10],["rhs_mag_9x19_17",10],["rhs_rpg7_OG7V_mag",5],["rhs_rpg7_PG7V_mag",5]],
	[["ACE_fieldDressing",10],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_quikclot",10]],
	[]
];
//}}}

//}}}

//{{{ British Armed Forces

kit_uk_random = ["kit_uk_sl","kit_uk_2ic"
		,"kit_uk_ar","kit_uk_ar"
		,"kit_uk_gr","kit_uk_gr"
		,"kit_uk_r","kit_uk_r"
];

//{{{	Uk Units
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

kit_uk_random = [ "kit_uk_sl"
		,"kit_uk_ar" ,"kit_uk_ar"
		,"kit_uk_2ic"
		,"kit_uk_gr" ,"kit_uk_gr"
		,"kit_uk_r" ,"kit_uk_r"
];

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
	["<HANDGUN WEAPON >>  ","KA_P226_Black","KA_P226_15Rnd_9x19_FMJ_Mag",["","","",""]],
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

//}}}

//{{{	Cargo
cargo_kit_uk = [
	[["CUP_launch_NLAW",2]],
	[["HandGrenade",10],["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",30],["SmokeShell",10],["SmokeShellBlue",10],["1Rnd_SmokeRed_Grenade_shell",10],["CUP_17Rnd_9x19_glock17",10],["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",10]],
	[["ACE_fieldDressing",10],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_quikclot",10]],
	[]
]; //}}}

//}}}

//{{{ US Special Forces

kit_ussf_random = ["kit_ussf_sl"
		,"kit_ussf_ftl","kit_ussf_ftl"
		,"kit_ussf_ar","kit_ussf_ar"
		,"kit_ussf_gr","kit_ussf_gr"
		,"kit_ussf_r","kit_ussf_r"
];

//{{{ USSF Units
kit_ussf_sl = [
    ["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_squadleader","tf_rt1523g_big_rhs","rhsusf_opscore_mc_pelt",""],
    ["<PRIMARY WEAPON >>  ","rhs_weap_hk416d10_LMT","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","","rhsusf_acc_ACOG3_USMC_3d",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
    ["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
    ["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",6],["HandGrenade",2],["rhs_mag_m18_green",2],["rhs_mag_m18_red",2],["HANDGUN MAG",2]]],
    ["<BACKPACK ITEMS >> ",[]]
];
 
kit_ussf_ftl = [
    ["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_teamleader","","rhsusf_opscore_mc_pelt",""],
    ["<PRIMARY WEAPON >>  ","rhs_weap_hk416d10_m320","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_ACOG3_USMC_3d",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
    ["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_M433_HEDP",7],["HandGrenade",2],["rhs_mag_m18_green",1],["rhs_mag_m18_red",1]]],
    ["<BACKPACK ITEMS >> ",[]]
];
 
kit_ussf_ar = [
    ["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_mg","rhsusf_falconii_mc","rhsusf_opscore_mc_pelt",""],
    ["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip_L_para","rhsusf_100Rnd_556x45_M855_soft_pouch",["","rhsusf_acc_anpeq15side_bk","rhsusf_acc_elcan_3d",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_JHP",["","","",""]],
    ["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
    ["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
    ["<VEST ITEMS >> ",[["rhs_mag_30Rnd_556x45_M855A1_Stanag",6],["HandGrenade",2],["HANDGUN MAG",2]]],
    ["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];
 
kit_ussf_ftl = [
    ["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_teamleader","","rhsusf_opscore_mc_pelt",""],
    ["<PRIMARY WEAPON >>  ","rhs_weap_hk416d10_m320","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_ACOG3_USMC_3d",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
    ["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_M433_HEDP",7],["HandGrenade",2]]],
    ["<BACKPACK ITEMS >> ",[]]
];
 
kit_ussf_r = [
    ["<EQUIPEMENT >>  ","rhs_uniform_g3_mc","rhsusf_spc_rifleman","rhsusf_falconii_mc","rhsusf_opscore_mc_pelt",""],
    ["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145","rhs_mag_30Rnd_556x45_M855A1_Stanag",["","rhsusf_acc_anpeq15_bk_h","rhsusf_acc_ACOG3_USMC_3d",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
    ["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",10],["HandGrenade",2]]],
    ["<BACKPACK ITEMS >> ",[["rhsusf_100Rnd_556x45_M855_soft_pouch",4]]]
];
//}}}
//}}}

//{{{ Syrian Armed forces

//{{{	Random Items
#define syr_u ["rhsgref_uniform_woodland","rhsgref_uniform_woodland","rhsgref_uniform_woodland","rhsgref_uniform_woodland_olive"]
#define syr_v ["V_TacVest_camo","V_TacVest_oli","V_I_G_resistanceLeader_F"]
#define syr_h ["usm_helmet_pasgt_w","usm_helmet_pasgt_g_w","usm_bdu_cap_wdl","usm_bdu_cap_portliz","usm_bdu_cap_odg","H_PASGT_basic_olive_F","H_Cap_blk","H_Cap_grn","H_Cap_oli","CUP_H_FR_Cap_Headset_Green","rhsgref_helmet_pasgt_olive","ssh68_khaki"]

#define syr_ar_w ["rhs_weap_pkm","hlc_rifle_rpk"]
#define syr_ar_a ["rhs_100Rnd_762x54mmR","hlc_75Rnd_762x39_Drum"]
//}}}

kit_syr_random = [ "kit_syr_sl"
	,"kit_syr_ar"
	,"kit_syr_at"
	,"kit_syr_aat"
	,"kit_syr_gr"
	,"kit_syr_r1"
	,"kit_syr_r2"
];

//{{{	Syr Units

kit_syr_sl = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"tf_mr3000_bwmod","CUP_H_CDF_OfficerCap_FST",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",10],["rhs_GRD40_White",4]]]
];
kit_syr_ar = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"CUP_B_CivPack_WDL",syr_h,""],
	["<PRIMARY WEAPON >>  ",syr_ar_w,syr_ar_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_syr_at = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"rhs_rpg_empty",syr_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_syr_aat = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"rhs_rpg_empty",syr_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_syr_gr = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"TRYK_B_FieldPack_Wood",syr_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",10],["rhs_GRD40_White",4]]]
];

kit_syr_r1 = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"",syr_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rshg2","rhs_rshg2_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_syr_r2 = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"",syr_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_syr_crew = [
	["<EQUIPEMENT >>  ",syr_u,syr_v,"","CUP_H_TK_TankerHelmet",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["rhs_30Rnd_545x39_AK_green",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

//}}}

//{{{	Cargo Kit
cargo_kit_syr = [
	[["rhs_weap_rpg26",2],["rhs_weap_rshg2",2]],
	[["HandGrenade",10],["hlc_75Rnd_762x39_Drum",10],["rhs_30Rnd_762x39mm",20],["rhs_GRD40_White",10],["rhs_VOG25",20],["rhs_100Rnd_762x54mmR",10]],
	[["ACE_fieldDressing",10],["ACE_packingBandage",10],["ACE_elasticBandage",10],["ACE_tourniquet",10],["ACE_morphine",10],["ACE_epinephrine",10],["ACE_quikclot",10]],
	[]
];
//}}}

//}}}

//{{{ Free Syrian Army

//{{{	Random Items
#define fsa_u ["CUP_I_B_PMC_Unit_23","CUP_I_B_PMC_Unit_24","CUP_I_B_PMC_Unit_9","CUP_I_B_PMC_Unit_11","CUP_I_B_PMC_Unit_7","CUP_I_B_PMC_Unit_15","CUP_I_B_PMC_Unit_16","CUP_I_B_PMC_Unit_14","CUP_I_B_PMC_Unit_13","CUP_I_B_PMC_Unit_17","U_BG_Guerilla2_3","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_blue"]

#define fsa_h ["H_Bandanna_mcamo","H_Bandanna_gry","H_Bandanna_cbr","CUP_H_FR_BandanaGreen","CUP_H_FR_BandanaWdl","H_Bandanna_camo","rhs_beanie_green","CUP_H_C_Beanie_03","CUP_H_C_Beanie_04","rhs_beanie","CUP_H_SLA_BeanieGreen","CUP_H_ChDKZ_Beanie","H_Cap_blk","CUP_H_C_MAGA_01","H_Cap_oli","H_Cap_tan","TRYK_H_Bandana_H","TRYK_H_Bandana_wig","TRYK_H_Bandana_wig_g"]
//}}}

kit_fsa_random = [ "kit_fsa_sl"
	,"kit_fsa_ar"
	,"kit_fsa_at"
	,"kit_fsa_aat"
	,"kit_fsa_gr"
	,"kit_fsa_r1"
	,"kit_fsa_r2"
];

//{{{	Units

kit_fsa_sl = [
	["<EQUIPEMENT >>  ",fsa_u,syr_v,"tf_mr3000_bwmod",fsa_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",10],["rhs_GRD40_White",4]]]
];
kit_fsa_ar = [
	["<EQUIPEMENT >>  ",fsa_u,syr_v,"CUP_B_CivPack_WDL",fsa_h,""],
	["<PRIMARY WEAPON >>  ",syr_ar_w,syr_ar_a,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_fsa_at = [
	["<EQUIPEMENT >>  ",fsa_u,syr_v,"rhs_rpg_empty",fsa_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7V_mag",["","rhs_acc_rpg7v_zeroing_100","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_fsa_aat = [
	["<EQUIPEMENT >>  ",fsa_u,syr_v,"rhs_rpg_empty",fsa_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7VL_mag",2]]]
];

kit_fsa_gr = [
	["<EQUIPEMENT >>  ",fsa_u,syr_v,"TRYK_B_FieldPack_Wood",fsa_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm_gp25","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[["rhs_VOG25",10],["rhs_GRD40_White",4]]]
];

kit_fsa_r1 = [
	["<EQUIPEMENT >>  ",fsa_u,syr_v,"",fsa_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rshg2","rhs_rshg2_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_fsa_r2 = [
	["<EQUIPEMENT >>  ",fsa_u,syr_v,"",fsa_h,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_akm","rhs_30Rnd_762x39mm",["rhs_acc_dtkakm","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",5]]],
	["<BACKPACK ITEMS >> ",[]]
];


//}}}

//}}}


// Init player skills.
DIR_var_skills = DIR_var_players get getPlayerUID player;

if (!isNil "DIR_var_skills") then {
	// Init medic and doctor skills.
	if ("Medic" in DIR_var_skills) then {
		player setUnitTrait ["medic", true];
		player setVariable ["ace_medical_medicclass", 1, true];
		systemChat "you are medic";
	};
	if ("Doctor" in DIR_var_skills) then {
		player setUnitTrait ["medic", true];
		player setVariable ["ace_medical_medicclass", 2, true];
		systemChat "you are doctor";
	};

	// Init engineer skills.
	if ("Engineer" in DIR_var_skills) then {
		player setUnitTrait ["engineer", true];
		player setVariable ["ace_isengineer", 1, true];
		systemChat "you are an engineer";
	};
	if ("AdvancedEngineer" in DIR_var_skills) then {
		player setUnitTrait ["engineer", true];
		player setVariable ["ace_isengineer", 2, true];
		systemChat "you are an advanced-engineer";
	};

	// Init explosive specialist skills.
	if ("ExplosiveSpecialist" in DIR_var_skills) then {
		player setUnitTrait ["explosiveSpecialist", true];
		systemChat "you are an explosive specialist";
	};

	// Init firearms skills.
}
// Init player skills.
DIR_var_skills = DIR_var_players get getPlayerUID player;

// Init medic and doctor skills.
if ("medic" in DIR_var_skills) then {
	player setUnitTrait ["Medic", true];
	player setVariable ["ace_medical_medicclass", 1, true];
	systemChat "you are medic";
};
if ("doctor" in DIR_var_skills) then {
	player setUnitTrait ["Medic", true];
	player setVariable ["ace_medical_medicclass", 2, true];
	systemChat "you are doctor";
};

// Init engineer skills.
if ("engineer" in DIR_var_skills) then {
	player setUnitTrait ["Engineer", true];
	player setVariable ["ace_isengineer", 1, true];
	systemChat "you are an engineer";
};
if ("advanced-engineer" in DIR_var_skills) then {
	player setUnitTrait ["Engineer", true];
	player setVariable ["ace_isengineer", 2, true];
	systemChat "you are an advanced-engineer";
};

// Init explosive specialist skills.
if ("explosive-specialist" in DIR_var_skills) then {
	player setUnitTrait ["explosiveSpecialist", true];
	systemChat "you are an explosive specialist";
};

systemChat str DIR_var_skills;
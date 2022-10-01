call DIR_fnc_skills_loadConst;

// Skills.
diag_log "[DIR][SKILLS] load const";
diag_log "[DIR][SKILLS] load skills";
private _skills = DIR_con_players get getPlayerUID player;
diag_log "[DIR][SKILLS]";
diag_log _skills;
if (!isNil "_skills") then {
	// Init medic and doctor skills.
	if (DIR_con_medic in _skills) then {
		player setUnitTrait ["medic", true];
		player setVariable ["ace_medical_medicclass", 1, true];
	};
	if (DIR_con_doctor in _skills) then {
		player setUnitTrait ["medic", true];
		player setVariable ["ace_medical_medicclass", 2, true];
	};

	// Init engineer skills.
	if (DIR_con_engineer in _skills) then {
		player setUnitTrait ["engineer", true];
		player setVariable ["ace_isengineer", 1, true];
	};
	if (DIR_con_advanced_engineer in _skills) then {
		player setUnitTrait ["engineer", true];
		player setVariable ["ace_isengineer", 2, true];
	};

	// Init explosive specialist skills.
	if (DIR_con_exlosive_specialist in _skills) then {
		player setUnitTrait ["explosiveSpecialist", true];
	};

	// Init vehicle skills.
	player addEventHandler ["GetInMan", {
		params ["_unit"];
		_unit call DIR_fnc_skills_handleVehicleSeatEntered;
	}];
	player addEventHandler ["SeatSwitchedMan", {
		params ["_unit1", "_unit2"];
		_unit1 call DIR_fnc_skills_handleVehicleSeatEntered;
		_unit2 call DIR_fnc_skills_handleVehicleSeatEntered;
	}];

	// Init ninja skills.
	if (DIR_con_ninja in _skills) then {
		player setUnitTrait ["camouflageCoef", 0.5];
		player setUnitTrait ["audibleCoef", 0.5];
	};

	// Init firearms skills.
	if (!(DIR_con_firearms in _skills)) then {
		player setCustomAimCoef 200;
		player setUnitRecoilCoefficient 200;
	};
}
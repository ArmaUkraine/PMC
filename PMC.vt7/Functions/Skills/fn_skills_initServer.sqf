diag_log "[DIR][SKILLS] add skills handler";

addMissionEventHandler ["PlayerConnected", {
	params ["", "_uid", "_name", "", "_owner"];

	diag_log "[DIR][SKILLS] triggered skills handler";
	private _skills = DIR_var_players get _uid;
	diag_log _uid;
	diag_log _name;
	diag_log _skills;

	if (!isNil "_skills") then {
		{
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

			// Init vehicle skills.
			diag_log "[DIR] add vehicle handlers";
			player addEventHandler ["GetInMan", {
				params ["_unit"];
				diag_log "[DIR] get in handler";
				_unit call DIR_fnc_skills_handleVehicleSeatEntered;
			}];
			player addEventHandler ["SeatSwitchedMan", {
				params ["_unit1", "_unit2"];
				diag_log "[DIR] change seat handler";
				_unit1 call DIR_fnc_skills_handleVehicleSeatEntered;
				_unit2 call DIR_fnc_skills_handleVehicleSeatEntered;
			}];

			// Init firearms skills.
		} remoteExec ["call", _owner];
	}

	// "Whitelist" remoteExec ["endMission", _owner];
}];
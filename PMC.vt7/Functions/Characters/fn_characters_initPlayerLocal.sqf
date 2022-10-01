call DIR_fnc_characters_loadConst;

// Traits.
private _traits = DIR_con_players get getPlayerUID player;
if (!isNil "_traits") then {
	// =========== Positive

	// Medic and doctor.
	if (DIR_con_medic in _traits) then {
		player setUnitTrait ["medic", true];
		player setVariable ["ace_medical_medicclass", 1, true];
	};
	if (DIR_con_doctor in _traits) then {
		player setUnitTrait ["medic", true];
		player setVariable ["ace_medical_medicclass", 2, true];
	};

	// Engineer and advanced engineer..
	if (DIR_con_engineer in _traits) then {
		player setUnitTrait ["engineer", true];
		player setVariable ["ace_isengineer", 1, true];
	};
	if (DIR_con_advanced_engineer in _traits) then {
		player setUnitTrait ["engineer", true];
		player setVariable ["ace_isengineer", 2, true];
	};

	// Explosive specialist.
	if (DIR_con_exlosive_specialist in _traits) then {
		player setUnitTrait ["explosiveSpecialist", true];
	};

	// vehicles.
	player addEventHandler ["GetInMan", {
		params ["_unit"];
		_unit call DIR_fnc_characters_handleVehicleSeatEntered;
	}];
	player addEventHandler ["SeatSwitchedMan", {
		params ["_unit1", "_unit2"];
		_unit1 call DIR_fnc_characters_handleVehicleSeatEntered;
		_unit2 call DIR_fnc_characters_handleVehicleSeatEntered;
	}];

	// Ninja.
	if (DIR_con_ninja in _traits) then {
		player setUnitTrait ["camouflageCoef", 0.5];
		player setUnitTrait ["audibleCoef", 0.5];
	};

	// Firearms.
	if (!(DIR_con_firearms in _traits)) then {
		player setCustomAimCoef 200;
		player setUnitRecoilCoefficient 200;
	};

	// =========== Negative

	// Headache.
	if (DIR_con_headache in _traits) then {
		[]spawn {
			while { true } do {
				[player, 0.15, "Head", "punch"] call ace_medical_fnc_addDamageToUnit;
				sleep (random 3600 + 1800); // Wait for 30-90 minutes.
			};
		};
	};
}
// default character perks.
["Car-driver", "Motorcycle-driver"] call DIR_fnc_perks_driver; // driving cars
// firearms coef is 1 by default

// Initialize driving limitations.
player addEventHandler ["GetInMan", {
	params ["_unit"];
	_unit call DIR_fnc_perks_handleVehicleSeatEntered;
}];
player addEventHandler ["SeatSwitchedMan", {
	params ["_unit1", "_unit2"];
	_unit1 call DIR_fnc_perks_handleVehicleSeatEntered;
	_unit2 call DIR_fnc_perks_handleVehicleSeatEntered;
}];

switch (getPlayerUID player) do
{
	// DiRaven
	case "76561197999599845": {
		call DIR_fnc_perks_medic;
		call DIR_fnc_perks_doctor;

		call DIR_fnc_perks_engineer;
		call DIR_fnc_perks_advancedEngineer;
		call DIR_fnc_perks_explosiveSpecialist;

		// "LeftArm" call DIR_fnc_perks_ache;
		call DIR_fnc_perks_ninja;
		// 200 call DIR_fnc_perks_firearms;
		// [] call DIR_fnc_perks_driver;
	};
	// ASADA
	case "76561198130468709": {
		call DIR_fnc_perks_medic;
		call DIR_fnc_perks_doctor;
		[] call DIR_fnc_perks_driver;
	};
	// FarinFore
	case "76561198279755835": {
		call DIR_fnc_perks_ninja;
	};
	// Trava
	case "76561198797829439": {
		call DIR_fnc_perks_engineer;
		call DIR_fnc_perks_advancedEngineer;

		"Head" call DIR_fnc_perks_ache;
	};
	// Maverick
	case "76561198043607416": {
		// Starting gear.
		call DIR_fnc_perks_ninja;
		"LeftArm" call DIR_fnc_perks_ache;
	};
	// Frost
	case "76561198873516945": {
		call DIR_fnc_perks_medic;
		// Зв'язки з місцевими, поліцією та уміння налагоджувати контакт.
		2 call DIR_fnc_perks_firearms;

		"Head" call DIR_fnc_perks_ache;
	};
	// illya
	case "76561199126893318": {};
	// Devstor
	case "76561199239995092": {};
	// Butcher
	case "76561198151032070": {};
	// ch_yaroslav
	case "76561198154733916": {};
	// Олесь
	case "76561199013504408": {
		call DIR_fnc_perks_explosiveSpecialist;
	};
	// Holod
	case "76561198179815271": {};
	// Lisovyk
	case "76561198090227690": {};

	default {
		endMission "Whitelist";
	};
};
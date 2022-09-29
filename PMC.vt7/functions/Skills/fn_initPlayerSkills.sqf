player addEventHandler ["GetInMan", {
	params ["_unit"];
	_unit call DIR_fnc_handleVehicleSeatEntered;
}];

player addEventHandler ["SeatSwitchedMan", {
	params ["_unit1", "_unit2"];
	_unit1 call DIR_fnc_handleVehicleSeatEntered;
	_unit2 call DIR_fnc_handleVehicleSeatEntered;
}];
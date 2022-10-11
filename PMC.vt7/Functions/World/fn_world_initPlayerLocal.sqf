player addEventHandler ["GetInMan", {
	[ _this select 2] spawn DIR_fnc_world_fuelConsumption;
}];
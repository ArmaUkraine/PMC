params ["_unit"];

// Remove ammo.
if (random 1 < 0.7) then {
	{
		_unit removeMagazine _x;
	} forEach magazines _unit;
};

// Remove vest.
if (random 1 < 0.7) then {
	removeVest _unit;
};

// Remove weapons.
if (random 1 < 0.7) then {
	removeAllWeapons _unit;
};

// Remove backpack.
if (random 1 < 0.7) then {
	removeBackpack _unit;
};

// Remove radio and map from everyone but group leader.
if (leader _unit != _unit) then {
	removeAllAssignedItems _unit;
};

// Remove googles and armbands.
removeGoggles _unit;
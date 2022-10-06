params ["_unit"];

// Remove ammo.
if (random 1 < 0.80) then {
	{
		_unit removeMagazine _x;
	} forEach magazines _unit;
};

// Remove vest.
if (random 1 < 0.80) then {
	removeVest _unit;
};

// Remove weapons.
if (random 1 < 0.80) then {
	removeAllWeapons _unit;
};

// Remove backpack.
if (random 1 < 0.80) then {
	removeBackpack _unit;
};

// Remove radio, map and watch.
if (random 1 < 0.80) then {
	removeAllAssignedItems _unit;
};

// Remove googles and armbands.
removeGoggles _unit;
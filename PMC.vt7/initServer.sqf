// Automatic mission saves.
[] spawn {
	while { true } do {
		sleep 1800;
		[true, 1800] call grad_persistence_fnc_saveMission;
	};
};

fn_stripUnitRandom = compileFinal preprocessFileLineNumbers "functions\fn_stripUnitRandom.sqf";

// Remove magazines on entity killed.
addMissionEventHandler ["EntityKilled", fn_stripUnitRandom];
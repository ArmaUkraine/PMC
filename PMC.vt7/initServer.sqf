// Automatic mission saves.
[] spawn {
	while { true } do {
		sleep 1800;
		[true, 1800] call grad_persistence_fnc_saveMission;
	};
};

// Remove magazines on entity killed.
fn_stripUnitRandom = compileFinal preprocessFileLineNumbers "functions\fn_stripUnitRandom.sqf";
addMissionEventHandler ["EntityKilled", fn_stripUnitRandom];
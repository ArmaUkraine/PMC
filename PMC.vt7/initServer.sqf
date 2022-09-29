// Automatic mission saves.
[] spawn {
	while { true } do {
		sleep 1800;
		[true, 1800] call grad_persistence_fnc_saveMission;
	};
};

// Remove magazines on entity killed.
addMissionEventHandler ["EntityKilled", DIR_fnc_stripUnitRandom];

call DIR_fnc_loadPlayers;
call DIR_fnc_initWhitelist;
call DIR_fnc_initPlayerSkills;
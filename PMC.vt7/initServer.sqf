// Automatic mission saves.
[] spawn {
	while { true } do {
		sleep 1800;
		[true, 1800] call grad_persistence_fnc_saveMission;
	};
};

// Remove magazines on entity killed.
addMissionEventHandler ["EntityKilled", DIR_fnc_world_stripUnitRandom];

call DIR_fnc_skills_loadPlayers;
call DIR_fnc_whitelist_initServer;
call DIR_fnc_skills_initServer;
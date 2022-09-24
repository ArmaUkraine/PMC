[] spawn {
	while { true } do {
		sleep 1800;
		[true, 1800] call grad_persistence_fnc_saveMission;
	};
};
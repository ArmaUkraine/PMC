[]spawn {
	while { true } do {
		[player, 0.15, "Head", "punch"] call ace_medical_fnc_addDamageToUnit;
		sleep (random 3600 + 1800); // Wait for 30-90 minutes.
	};
};
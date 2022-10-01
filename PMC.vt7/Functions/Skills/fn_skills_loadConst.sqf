// TAGS:
DIR_con_medic = "Medic"; // Діагностика + переливання крові.
DIR_con_doctor = "Doctor"; // Medic + зашивання ран + адреналін, вимагає Medic.

DIR_con_car_driver = "Car-driver"; // Водій авто та мото- транспорту.
DIR_con_car_gunner = "Car-turret"; // Стрілок авто та мото- транспорту.

DIR_con_engineer = "Engineer"; // Польовий ремонт техніки.
DIR_con_advanced_engineer = "AdvancedEngineer"; // Якісніший польовий ремонт а також повний ремонт техніки в гаражі, вимагає Engineer.

DIR_con_exlosive_specialist = "ExplosiveSpecialist"; // Мінування-розмінування.

DIR_con_ninja = "Ninja"; // Менш помітний.

DIR_con_firearms = "Firearms"; // вся вогнепальна зброя за виключенням снайперських гвинтівок та кулеметів.

// PLAYERS:
DIR_con_players = createHashMapFromArray [
	// DiRaven
	["76561197999599845", [
		// DIR_con_car_driver, 
		DIR_con_engineer,
		DIR_con_firearms,
		""
	]],
	// ASADA
	["765611981304687091", [
		DIR_con_medic,
		DIR_con_doctor,
		DIR_con_firearms,
		""
	]],
	// FarinFore
	["765611982797558351", [
		DIR_con_car_driver,
		DIR_con_engineer,
		DIR_con_firearms,
		""
	]]
];
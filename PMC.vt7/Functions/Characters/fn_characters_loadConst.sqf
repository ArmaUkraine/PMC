// Positive traits.
DIR_con_medic = "Medic"; // Діагностика + переливання крові.
DIR_con_doctor = "Doctor"; // Medic + зашивання ран + адреналін, вимагає Medic.
DIR_con_engineer = "Engineer"; // Польовий ремонт техніки.
DIR_con_advanced_engineer = "AdvancedEngineer"; // Якісніший польовий ремонт а також повний ремонт техніки в гаражі, вимагає Engineer.
DIR_con_exlosive_specialist = "ExplosiveSpecialist"; // Мінування-розмінування.
DIR_con_ninja = "Ninja"; // Менш помітний.
DIR_con_firearms = "Firearms"; // Вся вогнепальна зброя за виключенням снайперських гвинтівок та кулеметів.
DIR_con_car_driver = "Car-driver"; // Водій авто та мото- транспорту.
DIR_con_car_gunner = "Car-turret"; // Стрілок авто та мото- транспорту.

// Negative traits.
DIR_con_headache = "Headache"; // Постійний головний біль.

// PLAYERS:
DIR_con_players = createHashMapFromArray [
	// DiRaven
	["76561197999599845", [
		// DIR_con_car_driver, 
		DIR_con_medic,
		DIR_con_doctor,
		DIR_con_engineer,
		DIR_con_advanced_engineer,
		DIR_con_exlosive_specialist,
		DIR_con_ninja,
		DIR_con_firearms,
		DIR_con_car_driver,
		DIR_con_car_gunner,
		DIR_con_headache,
		""
	]],
	// ASADA
	["76561198130468709", [
		DIR_con_medic,
		DIR_con_doctor,
		DIR_con_firearms,
		""
	]],
	// FarinFore
	["76561198279755835", [
		DIR_con_car_driver,
		DIR_con_engineer,
		DIR_con_firearms,
		""
	]],
	// Trava
	["76561198797829439", [
		DIR_con_car_driver,
		DIR_con_engineer,
		DIR_con_advanced_engineer,
		DIR_con_firearms,

		DIR_con_headache,
		""
	]],
	["", []]
];
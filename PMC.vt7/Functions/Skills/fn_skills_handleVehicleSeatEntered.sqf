private _unit = _this;

if (isPlayer _unit) then {
	private _skills = DIR_var_players get getPlayerUID _unit;
	private _role = (assignedVehicleRole _unit) select 0;
	private _vehicle = objectParent _unit;
	private _vehicle_type = _vehicle call BIS_fnc_objectType select 1;
	// Change to switch.
	diag_log str _skills;
	diag_log str _role;
	diag_log str _vehicle_type;

	switch true do
	{
		case ((_vehicle_type == "Motorcycle") && (_role == "driver") && ("MotorcycleDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Motorcycle") && (_role == "turret") && ("MotorcycleGunner" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Car") && (_role == "driver") && ("CarDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Car") && (_role == "turret") && ("CarGunner" in _skills)): {
			true;
		};

		case ((_vehicle_type == "WheeledAPC") && (_role == "driver") && ("WheeledAPCDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "WheeledAPC") && (_role == "turret") && ("WheeledAPCDriver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "TrackedAPC") && (_role == "driver") && ("TrackedAPCDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "TrackedAPC") && (_role == "turret") && ("TrackedAPCDriver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Tank") && (_role == "driver") && ("TankDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Tank") && (_role == "turret") && ("TankDriver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Ship") && (_role == "driver") && ("ShipDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Ship") && (_role == "turret") && ("ShipDriver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Submarine") && (_role == "driver") && ("SubmarineDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Submarine") && (_role == "turret") && ("SubmarineDriver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Helicopter") && (_role == "driver") && ("HelicopterDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Helicopter") && (_role == "turret") && ("HelicopterDriver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Plane") && (_role == "driver") && ("PlaneDriver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Plane") && (_role == "turret") && ("PlaneDriver" in _skills)): {
			true;
		};

		case (_role == "cargo"): {
			true;
		};

		default {
			_unit moveOut _vehicle;
			"Ти не вмієш того робити." remoteExec ["systemChat", _unit];
			diag_log format ["[DIR][SKILLS] Denied entry into '%1' of type '%2' for player '%3' for role '%4'", typeOf _vehicle, _vehicle_type, _unit, _role];
		};
	};
}
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
		case ((_vehicle_type == "Motorcycle") && (_role == "driver") && ("motorcycle-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Motorcycle") && (_role == "turret") && ("motorcycle-gunner" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Car") && (_role == "driver") && ("car-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Car") && (_role == "turret") && ("car-gunner" in _skills)): {
			true;
		};

		case ((_vehicle_type == "WheeledAPC") && (_role == "driver") && ("wheeledapc-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "WheeledAPC") && (_role == "turret") && ("wheeledapc-driver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "TrackedAPC") && (_role == "driver") && ("trackedapc-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "TrackedAPC") && (_role == "turret") && ("trackedapc-driver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Tank") && (_role == "driver") && ("tank-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Tank") && (_role == "turret") && ("tank-driver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Ship") && (_role == "driver") && ("ship-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Ship") && (_role == "turret") && ("ship-driver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Submarine") && (_role == "driver") && ("submarine-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Submarine") && (_role == "turret") && ("submarine-driver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Helicopter") && (_role == "driver") && ("helicopter-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Helicopter") && (_role == "turret") && ("helicopter-driver" in _skills)): {
			true;
		};

		case ((_vehicle_type == "Plane") && (_role == "driver") && ("plane-driver" in _skills)): {
			true;
		};
		case ((_vehicle_type == "Plane") && (_role == "turret") && ("plane-driver" in _skills)): {
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
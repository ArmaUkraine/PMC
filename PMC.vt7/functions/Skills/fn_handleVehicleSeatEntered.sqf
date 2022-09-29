private _unit = _this;
private _warning_text = "Недостатньо знань для цієї задачі.";

if (isPlayer _unit) then {
	private _skills = DIR_var_players get getPlayerUID _unit;
	diag_log "[DIR] unit skills";
	diag_log str _skills;

	private _role = (assignedVehicleRole _unit) select 0;
	diag_log "[DIR] unit role";
	diag_log str _role;

	private _vehicle = objectParent _unit;
	diag_log "[DIR] unit vehicle";
	diag_log str _vehicle;

	// Change to switch.

	if ((_vehicle isKindOf "car") and (_role == "driver") and not("car-driver" in _skills)) then {
		_unit moveOut _vehicle;
		_warning_text remoteExec ["systemChat", _unit];
	};
	if ((_vehicle isKindOf "car") and (_role == "turret") and not("car-gunner" in _skills)) then {
		_unit moveOut _vehicle;
		_warning_text remoteExec ["systemChat", _unit];
	};
	if ((_vehicle isKindOf "tank") and (_role == "driver") and not("tank-driver" in _skills)) then {
		_unit moveOut _vehicle;
		_warning_text remoteExec ["systemChat", _unit];
	};
	if ((_vehicle isKindOf "tank") and (_role == "turret") and not("tank-gunner" in _skills)) then {
		_unit moveOut _vehicle;
		_warning_text remoteExec ["systemChat", _unit];
	};
}
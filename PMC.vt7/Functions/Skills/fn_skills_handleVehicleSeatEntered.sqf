private _unit = _this;

if (isPlayer _unit) then {
	private _skills = DIR_con_players get getPlayerUID _unit;
	private _role = (assignedVehicleRole _unit) select 0;
	private _vehicle = objectParent _unit;
	private _vehicle_category = _vehicle call BIS_fnc_objectType select 1;
	private _vehicle_type = typeOf _vehicle;

	diag_log "_unit";
	diag_log _unit;
	diag_log "_role";
	diag_log _role;
	diag_log "_vehicle";
	diag_log _vehicle;
	diag_log "_vehicle_category";
	diag_log _vehicle_category;
	diag_log "_vehicle_type";
	diag_log _vehicle_type;

	private _skill_required = _vehicle_type + "-" + _role;
	if (_vehicle_category == "Car" || _vehicle_category == "Motorcycle") then {
		_skill_required = _vehicle_category + "-" + _role;
	};
	diag_log "_skill_required";
	diag_log _skill_required;

	if (_role != "cargo" && !(_skill_required in _skills)) then {
		_unit moveOut _vehicle;
		"Ви не вмієте того робити." remoteExec ["systemChat", _unit];
		diag_log format ["[DIR][SKILLS] Denied entry into '%1' of type '%2' for player '%3' for role '%4', missing '%5' skill", typeOf _vehicle, _vehicle_category, _unit, _role, _skill_required];
	} else {
		diag_log format ["[DIR][SKILLS] Allowed entry into '%1' of type '%2' for player '%3' for role '%4', has '%5' skill", typeOf _vehicle, _vehicle_category, _unit, _role, _skill_required];
	};
}
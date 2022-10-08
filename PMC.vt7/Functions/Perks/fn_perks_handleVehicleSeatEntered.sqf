private _unit = _this;

systemChat "test";

if (isPlayer _unit) then {
	systemChat "test1";
	private _role = (assignedVehicleRole _unit) select 0;
	private _vehicle = objectParent _unit;
	private _vehicle_category = _vehicle call BIS_fnc_objectType select 1;
	private _vehicle_type = typeOf _vehicle;

	private _skill_required = _vehicle_type + "-" + _role;
	if (_vehicle_category == "Car" || _vehicle_category == "Motorcycle") then {
		systemChat "test3";
		_skill_required = _vehicle_category + "-" + _role;
	};

	if (_role != "cargo" && !(_skill_required in DIR_var_canDrive)) then {
		_unit moveOut _vehicle;
		"Ви не вмієте того робити." remoteExec ["systemChat", _unit];
		diag_log format ["[DIR][CHARS] Denied entry into '%1' of type '%2' for player '%3' for role '%4', missing '%5' skill", typeOf _vehicle, _vehicle_category, _unit, _role, _skill_required];
	} else {
		diag_log format ["[DIR][CHARS] Allowed entry into '%1' of type '%2' for player '%3' for role '%4', has '%5' skill", typeOf _vehicle, _vehicle_category, _unit, _role, _skill_required];
	};
}
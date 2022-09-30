addMissionEventHandler ["PlayerConnected", {
	params ["", "_uid", "_name"];

	if !(_uid in DIR_var_players) then
	{
		serverCommand format ["#kick %1", _name];
		diag_log format ["[DIR][WHITELIST] kicked player '%1' for using not whitelisted UID '%2'", _name, _uid];
	};
}];
diag_log "[DIR] add whitelist handler";

addMissionEventHandler ["PlayerConnected", {
	params ["", "_uid", "_name", "", "_owner"];

	diag_log "[DIR] triggered whiteslit handler";

	if !(_uid in DIR_var_players) then
	{
		"Whitelist" remoteExec ["endMission", _owner];
		diag_log format ["[DIR][WHITELIST] kicked player '%1' for using not whitelisted UID '%2'", _name, _uid];
	};
}];
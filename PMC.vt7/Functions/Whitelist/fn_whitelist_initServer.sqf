diag_log "[DIR] add whitelist handler";

addMissionEventHandler ["PlayerConnected", {
	params ["_id", "_uid", "_name"];

	diag_log "[DIR] trigger whiteslit handler";

	if !(_uid in DIR_var_players) then
	{
		"Whitelist" remoteExec ["endMission", _id];
		diag_log format ["[DIR][WHITELIST] kicked player '%1' for using not whitelisted UID '%2'", _name, _uid];
	};
}];
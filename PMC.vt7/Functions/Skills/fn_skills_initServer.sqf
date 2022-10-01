call DIR_fnc_skills_loadConst;

addMissionEventHandler ["PlayerConnected", {
	params ["", "_uid", "_name", "", "_owner"];

	// Whitelist.
	if !(_uid in DIR_con_players) then
	{
		"Whitelist" remoteExec ["endMission", _owner];
		diag_log format ["[DIR][WHITELIST] kicked player '%1' for using not whitelisted UID '%2'", _name, _uid];
	};
}];
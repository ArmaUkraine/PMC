[] execVM "briefing.sqf";

// in order for remote server calls to work we need to load players on client side.
call DIR_fnc_skills_loadPlayers;
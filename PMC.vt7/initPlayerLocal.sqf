[] execVM "briefing.sqf";

// Remove magazines on entity killed.
fn_notifyCivilianKill = compileFinal preprocessFileLineNumbers "functions\fn_notifyCivilianKill.sqf";
addMissionEventHandler ["EntityKilled", fn_notifyCivilianKill];
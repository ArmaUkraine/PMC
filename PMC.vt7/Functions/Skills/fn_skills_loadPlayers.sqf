// TAGS:

// Medic
// Doctor
// Engineer
// Advanced-engineer
// Explosive-specialist
// 
// MotorcycleDriver
// MotorcycleGunner
// CarDriver
// CarGunner
// WheeledAPCDriver
// wheeledAPCGunner
// TrackedAPCDriver
// TrackedAPCGunner
// TankDriver
// TankGunner
// ShipDriver
// ShipGunner
// SubmarineDriver
// SubmarineGunner
// HelicopterDriver
// HelicopterGunner
// PlaneDriver
// PlaneGunner
// 
// Ninja - produces less noise and harder to spot
// QuickReloader - faster reloads
// 
// AssaultRifle
// BombLauncher
// Cannon
// GrenadeLauncher
// Handgun
// Launcher
// MachineGun
// Magazine
// MissileLauncher
// Mortar
// RocketLauncher
// Shotgun
// throw
// Rifle
// SubmachineGun
// SniperRifle

// player setUnitRecoilCoefficient 200;
// https// community.bistudio.com/wiki/BIS_fnc_itemType
// https// community.bistudio.com/wiki/Arma_3:_Event_Handlers#Take
// https// community.bistudio.com/wiki/Arma_3:_Event_Handlers#InventoryClosed

diag_log "[DIR] load players";

DIR_var_players = createHashMapFromArray [
	// DiRaven
	["765611979995998451", [
		"CarDriver",
		"Engineer",
		"AssaultRifle",
		""
	]],
	// ASADA
	["76561198130468709", [
		"Medic",
		"Doctor",
		"AssaultRifle",
		""
	]],
	// FarinFore
	["76561198279755835", [
		"CarDriver",
		"Engineer",
		"AssaultRifle",
		""
	]]
];
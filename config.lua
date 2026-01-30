Config = {}

Config.EnableDamageMultiplier = true
Config.Headshot = true
Config.Bodyshot = true
Config.Limbshot = true

Config.Defaults = {
    headshot = 2.0,
    bodyshot = 1.0,
    limbshot = 0.5
}

Config.Weapons = {
    -------------------
    -- MELEE WEAPONS --
    -------------------
    [`WEAPON_UNARMED`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 0.8 },
    [`WEAPON_KNIFE`] = { headshot = 3.0, bodyshot = 1.5, limbshot = 1.0 },
    [`WEAPON_NIGHTSTICK`] = { headshot = 1.5, bodyshot = 1.0, limbshot = 0.8 },
    [`WEAPON_HAMMER`] = { headshot = 2.0, bodyshot = 1.5, limbshot = 1.0 },
    [`WEAPON_BAT`] = { headshot = 2.0, bodyshot = 1.2, limbshot = 0.9 },
    [`WEAPON_GOLFCLUB`] = { headshot = 2.0, bodyshot = 1.2, limbshot = 0.9 },
    [`WEAPON_CROWBAR`] = { headshot = 2.0, bodyshot = 1.3, limbshot = 1.0 },
    [`WEAPON_BOTTLE`] = { headshot = 1.8, bodyshot = 1.1, limbshot = 0.8 },
    [`WEAPON_DAGGER`] = { headshot = 3.0, bodyshot = 1.5, limbshot = 1.0 },
    [`WEAPON_HATCHET`] = { headshot = 3.5, bodyshot = 1.8, limbshot = 1.2 },
    [`WEAPON_KNUCKLE`] = { headshot = 1.5, bodyshot = 1.2, limbshot = 0.9 },
    [`WEAPON_MACHETE`] = { headshot = 3.5, bodyshot = 1.8, limbshot = 1.2 },
    [`WEAPON_FLASHLIGHT`] = { headshot = 1.5, bodyshot = 1.0, limbshot = 0.8 },
    [`WEAPON_SWITCHBLADE`] = { headshot = 3.0, bodyshot = 1.5, limbshot = 1.0 },
    [`WEAPON_POOLCUE`] = { headshot = 1.8, bodyshot = 1.1, limbshot = 0.9 },
    [`WEAPON_WRENCH`] = { headshot = 2.0, bodyshot = 1.3, limbshot = 1.0 },
    [`WEAPON_BATTLEAXE`] = { headshot = 4.0, bodyshot = 2.0, limbshot = 1.3 },
    [`WEAPON_STONE_HATCHET`] = { headshot = 3.5, bodyshot = 1.8, limbshot = 1.2 },
    --------------------
    -- PISTOL WEAPONS --
    --------------------  
    [`WEAPON_PISTOL`] = { headshot = 4.0, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_PISTOL_MK2`] = { headshot = 4.0, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_COMBATPISTOL`] = { headshot = 4.0, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_APPISTOL`] = { headshot = 3.8, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_PISTOL50`] = { headshot = 5.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_SNSPISTOL`] = { headshot = 3.5, bodyshot = 0.9, limbshot = 0.5 },
    [`WEAPON_SNSPISTOL_MK2`] = { headshot = 3.5, bodyshot = 0.9, limbshot = 0.5 },
    [`WEAPON_HEAVYPISTOL`] = { headshot = 4.5, bodyshot = 1.1, limbshot = 0.7 },
    [`WEAPON_VINTAGEPISTOL`] = { headshot = 4.0, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_MARKSMANPISTOL`] = { headshot = 5.0, bodyshot = 1.3, limbshot = 0.8 },
    [`WEAPON_REVOLVER`] = { headshot = 6.0, bodyshot = 1.5, limbshot = 0.9 },
    [`WEAPON_REVOLVER_MK2`] = { headshot = 6.0, bodyshot = 1.5, limbshot = 0.9 },
    [`WEAPON_DOUBLEACTION`] = { headshot = 5.5, bodyshot = 1.4, limbshot = 0.8 },
    [`WEAPON_FLAREGUN`] = { headshot = 3.0, bodyshot = 2.0, limbshot = 1.5 },
    [`WEAPON_STUNGUN`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },
    [`WEAPON_RAYPISTOL`] = { headshot = 4.0, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_CERAMICPISTOL`] = { headshot = 3.8, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_NAVYREVOLVER`] = { headshot = 6.0, bodyshot = 1.5, limbshot = 0.9 },
    [`WEAPON_GADGETPISTOL`] = { headshot = 3.5, bodyshot = 0.9, limbshot = 0.5 },
      -- SUBMACHINE GUNS
    [`WEAPON_MICROSMG`] = { headshot = 3.5, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_SMG`] = { headshot = 3.5, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_SMG_MK2`] = { headshot = 3.5, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_ASSAULTSMG`] = { headshot = 3.5, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_COMBATPDW`] = { headshot = 3.5, bodyshot = 1.0, limbshot = 0.6 },
    [`WEAPON_MACHINEPISTOL`] = { headshot = 3.0, bodyshot = 0.9, limbshot = 0.5 },
    [`WEAPON_MINISMG`] = { headshot = 3.0, bodyshot = 0.9, limbshot = 0.5 },
    [`WEAPON_RAYCARBINE`] = { headshot = 3.5, bodyshot = 1.0, limbshot = 0.6 },

    -- SHOTGUNS
    [`WEAPON_PUMPSHOTGUN`] = { headshot = 5.0, bodyshot = 2.0, limbshot = 1.2 },
    [`WEAPON_PUMPSHOTGUN_MK2`] = { headshot = 5.0, bodyshot = 2.0, limbshot = 1.2 },
    [`WEAPON_SAWNOFFSHOTGUN`] = { headshot = 4.5, bodyshot = 1.8, limbshot = 1.0 },
    [`WEAPON_ASSAULTSHOTGUN`] = { headshot = 4.5, bodyshot = 1.8, limbshot = 1.1 },
    [`WEAPON_BULLPUPSHOTGUN`] = { headshot = 4.5, bodyshot = 1.8, limbshot = 1.1 },
    [`WEAPON_MUSKET`] = { headshot = 5.0, bodyshot = 2.0, limbshot = 1.2 },
    [`WEAPON_HEAVYSHOTGUN`] = { headshot = 5.0, bodyshot = 2.0, limbshot = 1.2 },
    [`WEAPON_DBSHOTGUN`] = { headshot = 6.0, bodyshot = 2.5, limbshot = 1.5 },
    [`WEAPON_AUTOSHOTGUN`] = { headshot = 4.5, bodyshot = 1.8, limbshot = 1.1 },
    [`WEAPON_COMBATSHOTGUN`] = { headshot = 5.0, bodyshot = 2.0, limbshot = 1.2 },

    -- ASSAULT RIFLES
    [`WEAPON_ASSAULTRIFLE`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_ASSAULTRIFLE_MK2`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_CARBINERIFLE`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_CARBINERIFLE_MK2`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_ADVANCEDRIFLE`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_SPECIALCARBINE`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_SPECIALCARBINE_MK2`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_BULLPUPRIFLE`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_BULLPUPRIFLE_MK2`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },
    [`WEAPON_COMPACTRIFLE`] = { headshot = 3.8, bodyshot = 1.1, limbshot = 0.6 },
    [`WEAPON_MILITARYRIFLE`] = { headshot = 4.2, bodyshot = 1.3, limbshot = 0.8 },
    [`WEAPON_HEAVYRIFLE`] = { headshot = 4.5, bodyshot = 1.4, limbshot = 0.8 },
    [`WEAPON_TACTICALRIFLE`] = { headshot = 4.0, bodyshot = 1.2, limbshot = 0.7 },

    -- LIGHT MACHINE GUNS
    [`WEAPON_MG`] = { headshot = 4.0, bodyshot = 1.3, limbshot = 0.8 },
    [`WEAPON_COMBATMG`] = { headshot = 4.0, bodyshot = 1.3, limbshot = 0.8 },
    [`WEAPON_COMBATMG_MK2`] = { headshot = 4.0, bodyshot = 1.3, limbshot = 0.8 },
    [`WEAPON_GUSENBERG`] = { headshot = 3.8, bodyshot = 1.2, limbshot = 0.7 },

    -- SNIPER RIFLES
    [`WEAPON_SNIPERRIFLE`] = { headshot = 10.0, bodyshot = 2.5, limbshot = 1.5 },
    [`WEAPON_HEAVYSNIPER`] = { headshot = 12.0, bodyshot = 3.0, limbshot = 2.0 },
    [`WEAPON_HEAVYSNIPER_MK2`] = { headshot = 12.0, bodyshot = 3.0, limbshot = 2.0 },
    [`WEAPON_MARKSMANRIFLE`] = { headshot = 8.0, bodyshot = 2.0, limbshot = 1.2 },
    [`WEAPON_MARKSMANRIFLE_MK2`] = { headshot = 8.0, bodyshot = 2.0, limbshot = 1.2 },
    [`WEAPON_PRECISIONRIFLE`] = { headshot = 10.0, bodyshot = 2.5, limbshot = 1.5 },

    -- HEAVY WEAPONS
    [`WEAPON_RPG`] = { headshot = 10.0, bodyshot = 10.0, limbshot = 10.0 },
    [`WEAPON_GRENADELAUNCHER`] = { headshot = 8.0, bodyshot = 8.0, limbshot = 8.0 },
    [`WEAPON_GRENADELAUNCHER_SMOKE`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },
    [`WEAPON_MINIGUN`] = { headshot = 5.0, bodyshot = 1.5, limbshot = 1.0 },
    [`WEAPON_FIREWORK`] = { headshot = 5.0, bodyshot = 5.0, limbshot = 5.0 },
    [`WEAPON_RAILGUN`] = { headshot = 15.0, bodyshot = 15.0, limbshot = 15.0 },
    [`WEAPON_HOMINGLAUNCHER`] = { headshot = 10.0, bodyshot = 10.0, limbshot = 10.0 },
    [`WEAPON_COMPACTLAUNCHER`] = { headshot = 8.0, bodyshot = 8.0, limbshot = 8.0 },
    [`WEAPON_RAYMINIGUN`] = { headshot = 5.0, bodyshot = 1.5, limbshot = 1.0 },
    [`WEAPON_EMPLAUNCHER`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },
    [`WEAPON_RAILGUNXM3`] = { headshot = 15.0, bodyshot = 15.0, limbshot = 15.0 },

    -- THROWABLES
    [`WEAPON_GRENADE`] = { headshot = 5.0, bodyshot = 5.0, limbshot = 5.0 },
    [`WEAPON_BZGAS`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },
    [`WEAPON_MOLOTOV`] = { headshot = 3.0, bodyshot = 3.0, limbshot = 3.0 },
    [`WEAPON_STICKYBOMB`] = { headshot = 5.0, bodyshot = 5.0, limbshot = 5.0 },
    [`WEAPON_PROXMINE`] = { headshot = 5.0, bodyshot = 5.0, limbshot = 5.0 },
    [`WEAPON_SNOWBALL`] = { headshot = 0.1, bodyshot = 0.1, limbshot = 0.1 },
    [`WEAPON_PIPEBOMB`] = { headshot = 5.0, bodyshot = 5.0, limbshot = 5.0 },
    [`WEAPON_BALL`] = { headshot = 0.1, bodyshot = 0.1, limbshot = 0.1 },
    [`WEAPON_SMOKEGRENADE`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },
    [`WEAPON_FLARE`] = { headshot = 2.0, bodyshot = 2.0, limbshot = 2.0 },

    -- MISCELLANEOUS
    --[`WEAPON_PETROLCAN`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },
    --[`WEAPON_FIREEXTINGUISHER`] = { headshot = 0.5, bodyshot = 0.5, limbshot = 0.5 },
    --[`WEAPON_HAZARDCAN`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },
    --[`WEAPON_FERTILIZERCAN`] = { headshot = 1.0, bodyshot = 1.0, limbshot = 1.0 },

    -- VEHICLE WEAPONS
    --[`VEHICLE_WEAPON_ROTORS`] = { headshot = 2.0, bodyshot = 2.0, limbshot = 2.0 },
    --[`VEHICLE_WEAPON_TANK`] = { headshot = 10.0, bodyshot = 10.0, limbshot = 10.0 },
    --[`VEHICLE_WEAPON_SPACE_ROCKET`] = { headshot = 10.0, bodyshot = 10.0, limbshot = 10.0 },
    --[`VEHICLE_WEAPON_PLANE_ROCKET`] = { headshot = 10.0, bodyshot = 10.0, limbshot = 10.0 },
    --[`VEHICLE_WEAPON_PLAYER_LASER`] = { headshot = 5.0, bodyshot = 5.0, limbshot = 5.0 },
}  

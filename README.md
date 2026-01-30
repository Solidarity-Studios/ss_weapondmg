# FiveM Damage Multiplier Script

A comprehensive damage multiplier system for FiveM servers that allows you to customize damage values for all weapons based on hit location (headshot, bodyshot, limbshot).

## Features

- ✅ All GTA V weapons included (150+ weapons)
- ✅ Separate multipliers for headshots, bodyshots, and limbshots
- ✅ Individual weapon customization
- ✅ Easy configuration
- ✅ Optimized performance
- ✅ Export functions for integration with other resources
- ✅ Debug commands for testing

## Installation

1. **Download the script files**
   - `config.lua`
   - `cl_main.lua`
   - `fxmanifest.lua`

2. **Create a new folder** in your FiveM server's `resources` directory:
   ```
   resources/[your-scripts]/ss_weapondmg/
   ```

3. **Place both files** in the folder

4. **Add to server.cfg**:
   ```
   ensure ss_weapondmg
   ```

5. **Restart your server**

## Configuration

### Basic Settings

Edit `config.lua` to customize the script:

```lua
Config.eDamageMultiplier = true  -- Enable/disable the entire system
Config.Headshot = true          -- Enable/disable headshot multipliers
Config.Bodyshot = true          -- Enable/disable bodyshot multipliers
Config.Limbshot = true          -- Enable/disable limbshot multipliers
```

### Default Multipliers

These are used when a weapon doesn't have specific multipliers set:

```lua
Config.Default = {
    headshot = 2.0,   -- 2x damage on headshots
    bodyshot = 1.0,   -- 1x damage on bodyshots (normal)
    limbshot = 0.5    -- 0.5x damage on limbs (reduced)
}
```

### Custom Weapon Multipliers

To customize individual weapons, find the weapon in the `Config.Weapons` table:

```lua
[`WEAPON_PISTOL`] = { 
    headshot = 4.0,  -- 4x damage on headshots
    bodyshot = 1.0,  -- Normal damage on body
    limbshot = 0.6   -- 60% damage on limbs
},
```

### Adding Custom Weapons

If you have custom weapons, add them to the configuration:

```lua
[`WEAPON_CUSTOM_NAME`] = { 
    headshot = 3.0, 
    bodyshot = 1.2, 
    limbshot = 0.7 
},
```

## Weapon Categories Included

- **Melee Weapons** (18 weapons) - Knife, Bat, Crowbar, etc.
- **Pistols** (18 weapons) - All pistols and revolvers
- **Submachine Guns** (8 weapons) - SMG, Micro SMG, etc.
- **Shotguns** (10 weapons) - Pump Shotgun, Combat Shotgun, etc.
- **Assault Rifles** (13 weapons) - Carbine, AK-47, etc.
- **Light Machine Guns** (4 weapons) - MG, Combat MG, etc.
- **Sniper Rifles** (6 weapons) - Heavy Sniper, Marksman Rifle, etc.
- **Heavy Weapons** (11 weapons) - RPG, Minigun, Grenade Launcher, etc.
- **Throwables** (10 weapons) - Grenades, Molotovs, etc.
- **Miscellaneous** (4 weapons) - Petrol Can, Fire Extinguisher, etc.
- **Vehicle Weapons** (5 weapons) - Tank cannon, rockets, etc.

## Commands

### Player Commands

- `/dmginfo` - Display current damage multiplier settings
- `/toggledmg` - Toggle damage multiplier on/off

## Performance

This script is optimized and uses:
- Event-driven architecture (no loops)
- Efficient bone detection
- Minimal resource usage

## Customization Tips

1. **Balance PvP**: Lower headshot multipliers (2-3x) for more balanced combat
2. **Realistic RP**: Higher headshot multipliers (4-6x) for realism
3. **Weapon Classes**: Group similar weapons with similar multipliers
4. **Special Weapons**: Make unique weapons stand out with special multipliers


## Support

For issues or questions:
1. Check the troubleshooting section
2. Review the configuration examples
3. Test with `/dmginfo` and `/toggledmg` commands

---

**Version:** 1.0.0  
**Last Updated:** January 2026

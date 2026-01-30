local BoneGroups = {
    -- Head bones
    head = {
        [31086] = true, -- HEAD
        [39317] = true, -- NECK
        [57597] = true, -- SPINE_ROOT
    },
    
    -- Body bones (torso)
    body = {
        [24816] = true, -- PELVIS
        [24817] = true, -- SPINE0
        [24818] = true, -- SPINE1
        [23553] = true, -- SPINE2
        [24819] = true, -- SPINE3
        [64729] = true, -- SKEL_Spine_Root
    },
    
    -- Limb bones (arms and legs)
    limbs = {
        -- Left Arm
        [61163] = true, -- LEFT_CLAVICLE
        [45509] = true, -- LEFT_UPPER_ARM
        [22711] = true, -- LEFT_LOWER_ARM
        [60309] = true, -- LEFT_HAND
        
        -- Right Arm
        [58271] = true, -- RIGHT_CLAVICLE
        [40269] = true, -- RIGHT_UPPER_ARM
        [28252] = true, -- RIGHT_LOWER_ARM
        [57005] = true, -- RIGHT_HAND
        
        -- Left Leg
        [63931] = true, -- LEFT_HIP
        [65478] = true, -- LEFT_LEG
        [58271] = true, -- LEFT_FOOT
        
        -- Right Leg
        [6442] = true,  -- RIGHT_HIP
        [36864] = true, -- RIGHT_LEG
        [52301] = true, -- RIGHT_FOOT
    }
}

-- Get hit zone from bone
local function GetHitZone(bone)
    if BoneGroups.head[bone] then
        return "headshot"
    elseif BoneGroups.body[bone] then
        return "bodyshot"
    elseif BoneGroups.limbs[bone] then
        return "limbshot"
    else
        return "bodyshot" -- Default to body if bone not recognized
    end
end

-- Get multiplier for weapon and hit zone
local function DamageMultiplier(weapon, hitZone)
    if Config.Weapons[weapon] and Config.Weapons[weapon][hitZone] then
        return Config.Weapons[weapon][hitZone]
    else
        return Config.Default[hitZone] or 1.0
    end
end

AddEventHandler('gameEventTriggered', function(name, args)
    if name == "CEventNetworkEntityDamage" then
        local victim = args[1]
        local attacker = args[2]
        local isDead = args[4]
        local weapon = args[5]
        
        -- Only process if damage multiplier is enabled
        if not Config.EnableDamageMultiplier then return end
        
        -- Only process if victim is a player
        if not IsPedAPlayer(victim) then return end
        
        -- Get victim player ID
        local victimPed = PlayerPedId()
        if victim ~= victimPed then return end
        
        -- Get hit bone
        local _, bone = GetPedLastDamageBone(victim)
        
        -- Determine hit zone
        local hitZone = GetHitZone(bone)
        
        -- Check if this zone is enabled
        if hitZone == "headshot" and not Config.EnableHeadshot then return end
        if hitZone == "bodyshot" and not Config.EnableBodyshot then return end
        if hitZone == "limbshot" and not Config.EnableLimbshot then return end
        
        -- Get damage multiplier
        local multiplier = GetDamageMultiplier(weapon, hitZone)
        
        -- Get current health
        local currentHealth = GetEntityHealth(victim)
        
        -- Calculate base damage (difference from max health)
        local baseDamage = 200 - currentHealth
        
        -- Apply multiplier
        local newDamage = baseDamage * multiplier
        
        -- Calculate new health
        local newHealth = 200 - newDamage
        
        -- Ensure health doesn't go below 0 or above max
        if newHealth < 0 then newHealth = 0 end
        if newHealth > 200 then newHealth = 200 end
        
        -- Set new health
        SetEntityHealth(victim, math.floor(newHealth))
        
        -- Optional: Print debug info (comment out in production)
        -- print(string.format("Hit Zone: %s | Weapon: %s | Multiplier: %.2f | New Health: %d", 
        --     hitZone, weapon, multiplier, math.floor(newHealth)))
    end
end)

-- CLIENT COMMANDS (For Testing/Debugging)
if Config.Debug == true then
  RegisterCommand('dmginfo', function()
      print("=== Damage Multiplier Info ===")
      print("Status: " .. (Config.EnableDamageMultiplier and "ENABLED" or "DISABLED"))
      print("Headshot: " .. (Config.EnableHeadshot and "ON" or "OFF"))
      print("Bodyshot: " .. (Config.EnableBodyshot and "ON" or "OFF"))
      print("Limbshot: " .. (Config.EnableLimbshot and "ON" or "OFF"))
      print("Default Headshot Multiplier: " .. Config.DefaultMultipliers.headshot)
      print("Default Bodyshot Multiplier: " .. Config.DefaultMultipliers.bodyshot)
      print("Default Limbshot Multiplier: " .. Config.DefaultMultipliers.limbshot)
  end, false)
  
  RegisterCommand('toggledmg', function()
      Config.EnableDamageMultiplier = not Config.EnableDamageMultiplier
      print("Damage Multiplier: " .. (Config.EnableDamageMultiplier and "ENABLED" or "DISABLED"))
  end, false)
end)

local profile = {};
local sets = {
    ['idle_Priority'] = {
        Ammo = 'Tiphia Sting',
        Head = { 'Genbu\'s Kabuto', 'Destrier Beret' },
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = { 'Kirin\'s Osode', 'Scp. Harness +1', 'Eminence Doublet' },
        Hands = 'Melaco Mittens',
        Ring1 = 'Alert Ring',
        Ring2 = 'Succor Ring',
        Back = 'Shadow Mantle',
        Waist = { 'Black Belt', 'Potent Belt', 'Headlong Belt', 'Purple Belt', 'White Belt' },
        Legs = { {Name = 'Byakko\'s Haidate', Augment = { [1] = 'STR+2', [2] = '"Store TP"+5', [3] = 'AGI+3'} }, 'Strike Subligar', 'Jujitsu Sitabaki', 'Galkan Braguette' },
        Feet = 'Hermes\' Sandals',
    },
    ['idle_town'] = {
        Head = 'Shinku Hatsuburi',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Melee Cyclas',
        Hands = 'Melee Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Shadow Mantle',
        Waist = 'Black Belt',
        Legs = 'Melee Hose',
        Feet = 'Melee Gaiters',
    },
    ['tp_lowacc_Priority'] = {
        Ammo = 'Tiphia Sting',
        Head = { 'Uk\'uxkaj Cap', 'Optical Hat', 'Voyager Sallet', 'Emperor Hairpin', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Brutal Earring', 'Wilder. Earring +1', 'Cassie Earring' },
        Ear2 = { 'Flame Earring', 'Bushinomimi', 'Optical Earring' },
        Body = { 'Enkidu\'s Harness', 'Scp. Harness +1', 'Jujitsu Gi', 'Eminence Doublet' },
        Hands = { 'Enkidu\'s Mittens', 'Alkyoneus\'s Brc.', 'Horomusha Kote', 'Combat Mittens +1', 'Hoshikazu Tekko' },
        Ring1 = { 'Strigoi Ring', 'Flame Ring', 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Portus Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring' },
        Back = { 'Aesir Mantle', 'Forager\'s Mantle', 'Ryl. Army Mantle', 'Accura Cape', 'Fidelity Mantle', 'Traveler\'s Mantle' },
        Waist = { 'Black Belt', 'Brown Belt', 'Purple Belt', 'White Belt' },
        Legs = { 'Byakko\'s Haidate', 'Enkidu\'s Subligar', 'Strike Subligar', 'Jujitsu Sitabaki', 'Hoshikazu Hakama', 'Galkan Braguette' },
        Feet = { 'Suzaku\'s Sune-Ate', 'Battle Boots', 'Kung Fu Shoes', 'H.kazu Kyahan' },
    },
    ['tp_medacc'] = {
        Head = 'Uk\'uxkaj Cap',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Black Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+1', [2] = 'Haste+3' } },
    },
    ['tp_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Enkidu\'s Harness',
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Oneiros Annulet',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Black Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Junhanshi Habaki',
    },
    ['ws_str'] = {
        Head = { Name = 'Shr.Znr.Kabuto', Augment = { [1] = 'Weapon skill damage +3%', [2] = '"Conserve TP"+4', [3] = 'Rng.Atk.+1' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Junhanshi Habaki',
    },
    ['movement'] = {
        Feet = 'Hermes\' Sandals',
    },
    ['chakra'] = {
        Head = { Name = 'Genbu\'s Kabuto', Augment = { [1] = 'Phys. dmg. taken -1%', [2] = 'Haste+1' } },
        Neck = 'Fortitude Torque',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Cassie Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Melee Gloves', -- Has Enhances Chakra effect 2
        Ring1 = 'Corneus Ring',
        Ring2 = 'Portus Ring',
        Back = 'Melee Cape',
        Waist = 'Warwolf Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Junhanshi Habaki',
    },
    ['chiblast'] = {
        --Main = 'Kirin\'s Pole',
        Ammo = 'Jasper Tathlum',
        Head = 'Maat\'s Cap',
        Neck = 'Aife\'s Medal',
        Ear1 = 'Aqua Earring',
        Ear2 = 'Aqua Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Melaco Mittens',
        Ring1 = 'Karka Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Melee Cape',
        Waist = 'Salire Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Suzaku\'s Sune-Ate',
    },
    ['boost'] = {
        Feet = '',
    },
    ['ws_dex'] = {
        Ammo = 'Tiphia Sting',
        Head = 'Maat\'s Cap',
        --Head = { Name = 'Shr.Znr.Kabuto', Augment = { [1] = 'Weapon skill damage +3%', [2] = '"Conserve TP"+4', [3] = 'Rng.Atk.+1' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Pixie Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Mars\'s Ring',
        Ring2 = 'Zilant Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Melee Gaiters',
    },
    ['ws_str_dex'] = {
        Ammo = 'Tiphia Sting',
        Head = 'Maat\'s Cap',
        --Head = { Name = 'Shr.Znr.Kabuto', Augment = { [1] = 'Weapon skill damage +3%', [2] = '"Conserve TP"+4', [3] = 'Rng.Atk.+1' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Pixie Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Zilant Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Junhanshi Habaki',
    },
    ['ws_str_vit'] = {
        Head = 'Genbu\'s Kabuto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Cassie Earring',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Corneus Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Junhanshi Habaki',
    },
    ['counterstance'] = {
        Head = 'Shinku Hatsuburi',
        Neck = 'Backlash Torque',
		Body = 'Arhat\'s Gi',
        Feet = 'Melee Gaiters',
    },
    ['dt'] = {
        Head = 'Genbu\'s Kabuto',
        Neck = 'Orochi Nodowa',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Ring2 = 'Succor Ring',
        Back = 'Shadow Mantle',
        Waist = 'Black Belt',
    },
    ['precast'] = {
        Waist = 'Ninurta\'s Sash',
    },
    ['midcast'] = {
        Waist = 'Black Belt',
    },
};

local towns = T{ 'Aht Urhgan Whitegate', 'Al Zahbi', 'Bastok Markets [S]', 'Bastok Markets', 'Bastok Mines', 'Bastok-Jeuno Airship', 'Celennia Memorial Library', 'Chateau d\'Oraguille', 'Eastern Adoulin', 'Heavens Tower', 'Kazham', 'Kazham-Jeuno Airship', 'Lower Jeuno', 'Metalworks', 'Mhaura', 'Mog Garden', 'Nashmau', 'Norg', 'Northern San d\'Oria', 'Port Bastok', 'Port Jeuno', 'Port San d\'Oria', 'Port Windurst', 'Rabao', 'Ru\'Lude Gardens', 'San d\'Oria-Jeuno Airship', 'Selbina', 'Southern San d\'Oria [S]', 'Southern San d\'Oria', 'Tavnazian Safehold', 'Upper Jeuno', 'Western Adoulin', 'Windurst Walls', 'Windurst Waters [S]', 'Windurst Waters', 'Windurst Woods', 'Windurst-Jeuno Airship' };

local settings = {
	tpvariant = 1,
    diset= false,
	autoberserk = false,
    idleset = nil,
	currentlevel = 0, -- Used for Levelsync gear determination
};

-- Use these names when creating tp sets
-- like tp_default when you add a set via the /lac addset command
-- i.e /lac addset tp_default
-- This will allow you to switch between different tp gear sets
local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    [4] = 'dt'
};

local function DTSetMaybe()
    local lowHPP = 30; -- Set what HP Percent you want your DT set to equip
    local DTSet = 'dt'; -- Set the DT sets name here
    local player = gData.GetPlayer();

    -- Checks if you're under the HP Percent that is set in lowHPP
    -- and if you aren't it just ignores anything below this
    if (player.HPP >= lowHPP) then return; end

    gFunc.EquipSet(DTSet); -- swap to your -DT set

end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    local subjob = gData.GetPlayer()

	if (subjob.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	elseif (subjob.SubJob == 'DNC') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    elseif (subjob.SubJob == 'SAM') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 3');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /mnk /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd diset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd autoberserk');

end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /mnk');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
end

profile.HandleCommand = function(args)

    if (args[1] == 'autoberserk') then
		if (settings.autoberserk == true) then
			settings.autoberserk = false;
		else
			settings.autoberserk = true;
		end
		gFunc.Message('Auto Berserk is now set to ' .. string.upper(tostring(settings.autoberserk)) .. ' a Work In Progress');
	elseif (args[1] == 'tpset') then
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvarianttable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. string.upper(tpvarianttable[settings.tpvariant]));
	end
end

profile.HandleDefault = function()
    local zone = gData.GetEnvironment();
    local player = gData.GetPlayer();
    local counterstance = gData.GetBuffCount(61);
	-- *****************************************************
	-- ********Used for Levelsync gear determination********
	local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	
    if (myLevel ~= settings.currentlevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        settings.currentlevel = myLevel;
	end
	-- *************************End*************************
	-- *****************************************************

    if (player.Status == 'Engaged') then
        gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
        if (counterstance > 0) then
            gFunc.EquipSet(sets.counterstance);
        end
        DTSetMaybe();
    elseif (player.Status == 'Idle') then
        if towns:contains(zone.Area) then -- In town set
            gFunc.EquipSet(sets.idle_town);
        elseif (settings.idleset ~= nil) then -- Not in towns set
            gFunc.EquipSet(settings.idleset);
            DTSetMaybe();
        else
            gFunc.EquipSet(sets.idle);
            if (zone.Timestamp.hour >= 6) and (zone.Timestamp.hour <= 18) then
                gFunc.Equip('Hands', 'Garden Bangles');
            end
        end
    end

    if (player.IsMoving) then
		if (myLevel < 70) and (myLevel >= 32) then
			gFunc.Equip('Body', 'Kupo Suit');
		else
			gFunc.EquipSet(sets.movement);
		end
    end

end

profile.HandleAbility = function()
    local ability = gData.GetAction();
    local zone = gData.GetEnvironment();

    if string.match(ability.Name, 'Waltz') then
        gFunc.EquipSet(sets.waltz);
    elseif (ability.Name == 'Chakra') then
        gFunc.EquipSet(sets.chakra);
        if (zone.Day == 'Darksday') then
            gFunc.Equip('Back', 'Shadow Mantle');
        end
    elseif (ability.Name == 'Chi Blast') then
        gFunc.EquipSet(sets.chiblast);
    elseif (ability.Name == 'Boost') then
        gFunc.EquipSet(sets.boost);
    elseif (ability.Name == 'Counterstance') then
        --gFunc.EquipSet(sets.counterstance);
    elseif (ability.Name == 'Footwork') then

    elseif (ability.Name == 'Dodge') then
        gFunc.EquipSet(sets.dodge);
    elseif (ability.Name == 'Focus') then
        gFunc.EquipSet(sets.focus);
    end

end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.precast);
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.midcast);

    if string.match(spell.Name, 'Utsusemi') then

    elseif string.match(spell.Name, 'Cure') then

    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local ws = gData.GetAction();

    if (ws.Name == 'Shijin Spiral') then
        gFunc.EquipSet(sets.ws_dex);
    elseif (ws.Name == 'Asuran Fists') then
        gFunc.EquipSet(sets.ws_str_vit);
    elseif (ws.Name == 'Dragon Kick') then
        gFunc.EquipSet(sets.ws_str_dex);
    elseif (ws.Name == 'Howling Fist') then
        gFunc.EquipSet(sets.ws_str_vit);
    else
        gFunc.EquipSet(sets.ws_str_vit);
    end
end

return profile;
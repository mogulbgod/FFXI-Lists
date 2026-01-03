local profile = {};
local sets = {
    ['tp_lowacc'] = {
        Head = 'Ace\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Brutal Earring',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Dusk Ledelsens',
    },
	['tp_medacc'] = {
        Head = 'Ace\'s Helm',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Askar Korazin',
        Hands = 'Dusk Gloves',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Mars\'s Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Dusk Ledelsens',
    },
	['tp_highacc'] = {
        Head = 'Optical Hat',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Askar Korazin',
        Hands = 'Hanzo Tekko',
        Ring1 = 'Mars\'s Ring',
        Ring2 = 'Oneiros Annulet',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Askar Dirs',
        Feet = 'Dusk Ledelsens',
    },
	['bow_ws'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Marid Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Potent Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hmn. Sune-Ate',
    },
    ['idle'] = {
        Head = 'Saotome Kabuto',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Hollow Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Saotome Kote',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Warp Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Saotome Haidate',
        Feet = 'Hmn. Sune-Ate',
    },
    ['ws_str'] = {
        Head = 'Ace\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Hachiman Domaru',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Enkidu\'s Subligar',
        Feet = 'Hmn. Sune-Ate',
    },
    ['ws_str_chr'] = {
        Head = 'Askar Zucchetto',
        Neck = 'Fotia Gorget',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Body = 'Hachiman Domaru',
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Ryl. Army Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Ryl.Kgt. Breeches',
        Feet = 'Hmn. Sune-Ate',
    },
    ['namas'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Seiryu Kote',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Adsilio Boots +1',
    },
    ['apex'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Seiryu Kote',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Adsilio Boots +1',
    },
    ['ranged'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Body = 'Hachiman Domaru',
        Hands = 'Seiryu Kote',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Dragon Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Adsilio Boots +1',
    },
	['movement'] = {
        Body = 'Kupo Suit',
        Hands = 'Hanzo Tekko',
        Legs = 'Displaced',
        Feet = 'Hmn. Sune-Ate',
    },
    ['tp_tank'] = {
        Head = 'Hydra Mask',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Megasco Earring',
        Body = 'Hydra Mail',
        Hands = 'Gavial Fng.Gnt. +1',
        Ring1 = 'Jelly Ring',
        Ring2 = 'Setae Ring',
        Back = 'Behemoth Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Hydra Cuisses',
        Feet = 'Askar Gambieras',
    },
    ['lockstyle'] = {
        Head = 'Saotome Kabuto',
        Body = 'Askar Korazin',
        Hands = 'Saotome Kote',
        Legs = 'Saotome Haidate',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['meditate'] = {
        Head = 'Myochin Kabuto',
        Hands = 'Saotome Kote',
    },
    ['polearm'] = {
        Main = 'Tomoe',
        Sub = 'Pole Grip',
    },
    ['gkatana'] = {
        Main = 'Azukinagamitsu',
        Sub = 'Pole Grip',
    },
    ['paralyzed'] = {
        Neck = 'Halting Stole',
    },
    ['slept'] = {
        Neck = 'Opo-opo Necklace',
    },
    ['petrified'] = {
        Back = 'Sand Mantle',
    },
    ['poisoned'] = {
    },
};

local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
    [4] = 'tank',
};

local settings = {
	tpvariant = 1,
	autohasso = false,
	autobersek = false,
	autoseigan = false,
    autotankgear = true, -- If set to true will equip your tank set when HP reaches the autotankhp setting
    forceautotankgear = false, -- Forces your tank set to equip and stay equiped even at idle
    autotankhp = 40, -- HP% for when the tank gear will auto equip
    weapontype = 'gk', -- gk - Great Katana, pa - polearm, changes with commands
};

local bow_ws = T{
	'Flaming Arrow', 
	'Piercing Arrow', 
	'Dulling Arrow',
	'Sidewinder',
	'Namas Arrow',
	'Apex Arrow',
};

function CheckAbilityRecast(check)
	local RecastTime = 0;

	for x = 0, 31 do
		local id = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimerId(x);
		local timer = AshitaCore:GetMemoryManager():GetRecast():GetAbilityTimer(x);

		if ((id ~= 0 or x == 0) and timer > 0) then
			local ability = AshitaCore:GetResourceManager():GetAbilityByTimerId(id);

			if ability ~= nil and ability.Name[1] ~= 'Unknown' and (ability.Name[1] == check) then
				RecastTime = timer;
			end
		end
	end
	return RecastTime;
end

local function CheckStatusEffect()
    local isSleep = gData.GetBuffCount('Sleep');
	local isPoisoned = gData.GetBuffCount('Poison');
	local isParalyzed = gData.GetBuffCount('Paralyze');
	local isPetrified = gData.GetBuffCount('Petrified');
    local isSilenced = gData.GetBuffCount('Silenced') + gData.GetBuffCount('Mute');
    local isBlinded = gData.GetBuffCount('Blind');
    local isCursed = gData.GetBuffCount('Curse');

    if (isSleep > 0) then
        --gFunc.Equip('Neck', 'Opo-opo Necklace'); -- Regain +25 while slept
        gFunc.EquipSet(sets.slept);
    end
    if (isPoisoned > 0) then
        gFunc.EquipSet(sets.poisoned);
    end
    if (isParalyzed > 0) then
        --gFunc.Equip('Neck', 'Halting Stole'); -- Acc+20 while paralyzed
        gFunc.EquipSet(sets.paralyzed);
    end
    if (isPetrified > 0) then
        --gFunc.Equip('Back', 'Sand Mantle'); -- -PDT 20% while petrified
        gFunc.EquipSet(sets.petrified);
    end
end

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	local subjob = gData.GetPlayer()

    -- SAM macro book
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 5');

	if (subjob.SubJob == 'RNG') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
	elseif (subjob.SubJob == 'WAR') then
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	else
		AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
	end

	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /sam /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F2 /lac fwd weaponset');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F3 /lac fwd autohasso');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F4 /lac fwd autoseigan');
	AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F5 /lac fwd autoberserk');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F6 /lac fwd forcetank');

    --Lockstyle set that you have set in macrosets
	AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 024');

end

profile.OnUnload = function()
    -- Unloads keybinds made by the profile
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /sam');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F2');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F3');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F4');
	AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F5');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F6');

end

profile.HandleCommand = function(args)

	if (args[1] == 'autohasso') then
		if (settings.autohasso == true) then
			settings.autohasso = false;
		else
			settings.autohasso = true;
		end
		gFunc.Message('Auto Hasso is now set to ' .. tostring(settings.autohasso));
	elseif (args[1] == 'autoberserk') then
		if (settings.autoberserk == true) then
			settings.autoberserk = false;
		else
			settings.autoberserk = true;
		end
		--gFunc.Message('Auto Berserk is now set to ' .. tostring(settings.autoberserk));
	elseif (args[1] == 'tpset') then
		settings.tpvariant = settings.tpvariant + 1;
		if (settings.tpvariant > #tpvarianttable) then
			settings.tpvariant = 1;
		end
		gFunc.Message('TP Set: ' .. tpvarianttable[settings.tpvariant]);
	elseif (args[1] == 'forcetank') then
        if (settings.forceautotankgear == true) then
            settings.forceautotankgear = false;
        else
            settings.forceautotankgear = true;
        end
        gFunc.Message('Force Tank Set is now set to ' .. string.upper(tostring(settings.forceautotankgear)));
    elseif (args[1] == 'weaponset') then
        if (settings.weapontype == 'gk') then
            settings.weapontype = 'pa';
            gFunc.Message('Force Tank Set is now set to POLEARM.');
        else
            settings.weapontype = 'gk';
            gFunc.Message('Force Tank Set is now set to GREAT KATANA.');
        end

    end

end

profile.HandleDefault = function()

	local action = gData.GetAction();
	local player = gData.GetPlayer();
	local hasso = gData.GetBuffCount('Hasso');
	local seigan = gData.GetBuffCount('Seigan');
    local berserkRecast = CheckAbilityRecast('Berserk');
	
		if (player.Status == 'Engaged') then
			if (settings.autohasso == true) and (hasso == 0) then
				AshitaCore:GetChatManager():QueueCommand(1, '/ja "Hasso" <me>');
			end
		
			if (settings.autoberserk == true) and (berserkRecast == 0) then
				AshitaCore:GetChatManager():QueueCommand(1, '/ja "Berserk" <me>');
			end
			
			if (settings.autoseigan == true) and (seigan == 0) then
				AshitaCore:GetChatManager():QueueCommand(1, '/ja "Seigan" <me>');
			end
			
			gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);

		elseif (player.Status == 'Resting') then
			--gFunc.EquipSet(sets.rest);
            gFunc.EquipSet(sets.idle);
		else
			gFunc.EquipSet(sets.idle);
		end	
		
		if (player.IsMoving == true) then
			gFunc.EquipSet(sets.movement);
		end

        -- Auto tank gear logic start
        if (player.HPP <= settings.autotankhp) and (settings.autotankgear == true) then
            gFunc.EquipSet(sets.tp_tank);
        elseif (settings.forceautotankgear == true) then
                gFunc.EquipSet(sets.tp_tank);
        end
        -- Auto tank gear logic end

        --Check Status Effect is Active Logic
        CheckStatusEffect(); --This allows certain items to equip if a debuff is put on you

end

profile.HandleAbility = function()

	local action = gData.GetAction();
	
	if (action.Name == 'Meditate') then
		gFunc.Equip('Hands', 'Saotome Kote');
		gFunc.Equip('Head', 'Myochin Kabuto');
        --AshitaCore:GetChatManager():QueueCommand(1, '/lac set meditate 30');
	elseif (action.Name == 'Third Eye') then
		gFunc.Equip('Head', 'Saotome Haidate');
	end
	
	
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
	gFunc.EquipSet(sets.ranged);
end

profile.HandleMidshot = function()
	local action = gData.GetAction();
	local weapon = gData.GetEquipment()
	
	if (action.Name == 'Apex Arrow') then
		gFunc.EquipSet(sets.apex);
	elseif (action.Name == 'Namas Arrow') then
		gFunc.EquipSet(sets.namas);
	else
        gFunc.EquipSet(sets.ranged);
	end
end

profile.HandleWeaponskill = function()
	local ws = gData.GetAction();
	local player = gData.GetPlayer();
	local tpindex = 0;

	if (settings.tpvariant == 4) then
        tpindex = 1;
    else
        tpindex = settings.tpvariant;
    end

    if (ws.Name == 'Namas Arrow') then
        gFunc.EquipSet(sets.namas);
    elseif (ws.Name =='Apex Arrow') then
        gFunc.EquipSet(sets.apex);
    elseif (ws.name == 'Tachi: Rana') then -- STR 50%
        gFunc.EquipSet(sets.ws_str);
    elseif (ws.Name == 'Tachi: Gekko') then -- STR 75%, Silences
        gFunc.EquipSet(sets.ws_str);
    elseif (ws.Name == 'Tachi: Kasha') then -- STR 75%, Paralyzes
        gFunc.EquipSet(sets.ws_str);
    elseif (ws.Name == 'Tachi: Jinpu') then -- STR 30%
        gFunc.EquipSet(sets.ws_str);
    elseif (ws.Name == 'Tachi: Shoha') then -- STR 73% (maybe but CEXI /shrug)
        gFunc.EquipSet(sets.ws_str);
    elseif (ws.Name == 'Tachi: Ageha') then -- STR 40%, CHR 60%, Lowers DEF by 27% for 30sec
        gFunc.EquipSet(sets.ws_str_chr);
    elseif (ws.name == 'Tachi: Yukikaze') then -- STR 50%, Blinds
        gFunc.EquipSet(sets.ws_str);
    else
        if (bow_ws:contains(ws.name)) then
            gFunc.EquipSet(sets.bow_ws);
        else
		    gFunc.EquipSet(sets.ws_str);
        end
	end

end

return profile;
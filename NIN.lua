local profile = {};
local sets = {
    ['idle_Priority'] = {
        --Ammo = 'Koga Shuriken',
        Head = { 'Genbu\'s Kabuto', 'Destrier Beret' },
        Neck = 'Orochi Nodowa',
        Ear1 = 'Colossus\'s Earring',
        Ear2 = 'Suppanomimi',
        Body = { 'Kirin\'s Osode', 'Eminence Doublet' },
        Hands = 'Melaco Mittens',
        Ring1 = 'Warp Ring',
        Ring2 = 'Succor Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['idle_town'] = {
        ----Ammo = 'Koga Shuriken',
        Head = 'Koga Hatsuburi',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Kog. Chainmail +1',
        Hands = 'Koga Tekko',
        Ring1 = 'Alert Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Koga Hakama',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['idle_night'] = {
        --Ammo = 'Koga Shuriken',
        Head = 'Genbu\'s Kabuto',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Kirin\'s Osode',
        Hands = 'Hanzo Tekko',
        Ring1 = 'Warp Ring',
        Ring2 = 'Strigoi Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['ws_jin_lowacc'] = {
        Head = { Name = 'Shr.Znr.Kabuto', Augment = { [1] = 'Weapon skill damage +3%', [2] = '"Conserve TP"+4', [3] = 'Rng.Atk.+1' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['tp_lowacc_Priority'] = {
        Head = { 'Dampening Tam', 'Optical Hat', 'Voyager Sallet', 'Precision Bandana', 'Destrier Beret' },
        Neck = { 'Ghost Pendant', 'Chivalrous Chain', 'Peacock Amulet', 'Focus Collar' },
        Ear1 = { 'Brutal Earring', 'Wilderness Earring +1', 'Cassie Earring' },
        Ear2 = { 'Suppanomimi', 'Optical Earring' },
        Body = { 'Enkidu\'s Harness', 'Haubergeon +1', 'Scp. Harness +1', 'Brigandine +1', 'Jujitsu Gi', 'Eminence Doublet' },
        Hands = { 'Enkidu\'s Mittens', 'Alkyoneus\'s Brc.', 'Horomusha Kote', 'Hoshikazu Tekko' },
        Ring1 = { 'Rajas Ring', 'San d\'Orian Ring' },
        Ring2 = { 'Sortie Ring', 'Sniper\'s Ring +1', 'Jaeger Ring', 'Shikaree Ring', 'Sardonyx Ring' },
        Back = { 'Aesir Mantle', 'Forager\'s Mantle', 'Ryl. Army Mantle', 'Accura Cape', 'Fidelity Mantle', 'Traveler\'s Mantle' },
        Waist = { 'Ninurta\'s Sash', 'Potent Belt', 'Headlong Belt', 'Leather Belt' },
        Legs = { 'Byakko\'s Haidate', { Name = 'Dst. Breeches', Augment = { [1] = 'Accuracy+8', [2] = 'Phys. dmg. taken -2%' } }, 'Jujitsu Sitabaki', {Name = 'Chain Hose', Augment = { [1] = 'Accuracy+3' } }, 'Hoshikazu Hakama', 'Galkan Braguette' },
        Feet = { 'Suzaku\'s Sune-Ate', 'Dance Shoes +1', 'Leaping Boots' },
    },
    ['tp_medacc'] = {
        ----Ammo = 'Koga Shuriken',
        Head = 'Dampening Tam',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Jaeger Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['tp_highacc'] = {
        ----Ammo = 'Koga Shuriken',
        Head = 'Optical Hat',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Jaeger Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Denali Kecks',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['ws_jin_night_lowacc'] = {
        Head = { Name = 'Shr.Znr.Kabuto', Augment = { [1] = 'Weapon skill damage +3%', [2] = '"Conserve TP"+4', [3] = 'Rng.Atk.+1' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Alkyoneus\'s Brc.',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['tp_night_lowacc'] = {
        Head = 'Dampening Tam',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Strigoi Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['tp_night_medacc'] = {
        ----Ammo = 'Koga Shuriken',
        Head = 'Dampening Tam',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Jaeger Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['tp_night_highacc'] = {
        ----Ammo = 'Koga Shuriken',
        Head = 'Dampening Tam',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Body = 'Pln. Khazagand',
        Hands = 'Dusk Gloves',
        Ring1 = 'Jaeger Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Virtuoso Belt',
        Legs = 'Denali Kecks',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['ranged'] = {
        Head = { Name = 'Optical Hat', Augment = { [1] = 'Haste+3', [2] = 'HP+15', [3] = 'AGI+3', [4] = 'DEX+3' } },
        Neck = 'Crested Torque',
        Ear1 = 'Wilhelm\'s Earring',
        Ear2 = 'Altdorf\'s Earring',
        Body = 'Pln. Khazagand',
        Hands = 'Pln. Dastanas',
        Ring1 = 'Dragon Ring',
        Ring2 = 'Marid Ring',
        Back = 'Psilos Mantle',
        Waist = 'Precise Belt',
        Legs = 'Pln. Seraweels',
        Feet = 'Hachiryu Sune-Ate',
    },
    ['precast'] = {
        ----Ammo = 'Koga Shuriken',
        Head = 'Dampening Tam',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Scorpion Harness',
        Hands = 'Dusk Gloves',
        Ring1 = 'Succor Ring',
        Ring2 = 'Tamas Ring',
        Back = 'Aesir Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Suzaku\'s Sune-Ate',
    },
    ['midcast_utsusemi'] = {
        --Ammo = 'Koga Shuriken',
        Head = 'Dampening Tam',
        Neck = 'Parrying Torque',
        Ear1 = 'Megasco Earring',
        Ear2 = 'Magnetic Earring',
        Body = 'Scorpion Harness',
        Hands = 'Dusk Gloves',
        Ring1 = 'Succor Ring',
        Ring2 = 'Alert Ring',
        Back = 'Bat Cape',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Denali Kecks',
        Feet = 'Suzaku\'s Sune-Ate',
    },
    ['nukes'] = {
        Head = 'Dampening Tam',
        Neck = 'Parrying Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Crapaud Earring',
        Body = 'Kirin\'s Osode',
        Hands = 'Dusk Gloves',
        Ring1 = 'Farka Ring',
        Ring2 = 'Galdr Ring',
        Back = 'Bat Cape',
        Waist = 'Salire Belt',
        Legs = 'Denali Kecks',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+1', [2] = 'Haste+3' } },
    },
    ['weapons'] = {
        Main = 'Fudo',
        Sub = 'Senjuinrikio',
        Ammo = 'Koga Shuriken',
    },
    ['movement'] = {
        Body = 'Kupo Suit',
        Legs = 'Displaced',
    },
    ['ws_dex'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+5', [2] = 'Phys. dmg. taken -5%', [3] = '"Regen"+2' } },
        Hands = 'Enkidu\'s Mittens',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Zilant Ring',
        Back = 'Forager\'s Mantle',
        Waist = 'Cuchulain\'s Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'STR+2', [2] = '"Store TP"+5', [3] = 'AGI+3' } },
        Feet = 'Adsilio Boots +1',
    },
    ['curetwo'] = {
        Main = 'Shinogi',
        Sub = 'Mercurial Kris',
        Ammo = 'Manji Shuriken',
        Head = 'Voyager Sallet',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Astral Earring',
        Ear2 = 'Wilder. Earring +1',
        Body = 'Kupo Suit',
        Hands = 'Horomusha Kote',
        Ring1 = 'Warp Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Ryl. Army Mantle',
        Waist = 'Headlong Belt',
        Feet = 'Leaping Boots',
    },
};

local towns = T{'Aht Urhgan Whitegate','Al Zahbi','Bastok Markets [S]','Bastok Markets','Bastok Mines','Bastok-Jeuno Airship','Celennia Memorial Library','Chateau d\'Oraguille','Eastern Adoulin','Heavens Tower','Kazham','Kazham-Jeuno Airship','Lower Jeuno','Metalworks','Mhaura','Mog Garden','Nashmau','Norg','Northern San d\'Oria','Port Bastok','Port Jeuno','Port San d\'Oria','Port Windurst','Rabao','Ru\'Lude Gardens','San d\'Oria-Jeuno Airship','Selbina','Southern San d\'Oria [S]','Southern San d\'Oria','Tavnazian Safehold','Upper Jeuno','Western Adoulin','Windurst Walls','Windurst Waters [S]','Windurst Waters','Windurst Woods','Windurst-Jeuno Airship',};

local settings = {
	tpvariant = 1,
	diset = false,
	autoberserk = false,
    tankmode = false,
    use_night_sets = false,
	currentlevel = 0,
};

local tpvarianttable = {
    [1] = 'lowacc',
    [2] = 'medacc',
    [3] = 'highacc',
};

profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;

    local subjob = gData.GetPlayer()

    if (subjob.SubJob == 'WAR') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro book 11');
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    elseif (subjob.SubJob == 'DNC') then
        AshitaCore:GetChatManager():QueueCommand(1, '/macro book 11');
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    else
        AshitaCore:GetChatManager():QueueCommand(1, '/macro book 11');
        AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    end

    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /nin /lac fwd');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /test /lac fwd test');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind !F1 /lac fwd tpset');

    gFunc.EquipSet(sets.weapons);

end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /test');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /nin');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind !F1');
end

profile.HandleCommand = function(args)

    if (args[1] == 'tankmode') then
		if (settings.tankmode == true) then
			settings.tankmode = false;
		else
			settings.tankmode = true;
		end
		gFunc.Message('Tank Mode is now set to ' .. string.upper(tostring(settings.tankmode)));
	elseif (args[1] == 'autoberserk') then
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
    elseif (args[1] == 'diset') then
		if (settings.diset == true) then
			settings.diset = false;
		else
			settings.diset = true;
		end
		gFunc.Message('DI Set is now set to ' .. string.upper(tostring(settings.diset)));
	elseif (args[1] == 'test') then
        local rw = gData.GetEnvironment()
        gFunc.Message(rw.Timestamp.hour);
    end


end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local zone = gData.GetEnvironment();
	local myLevel = AshitaCore:GetMemoryManager():GetPlayer():GetMainJobLevel();
	
    if (myLevel ~= settings.currentlevel) then
        gFunc.EvaluateLevels(profile.Sets, myLevel);
        settings.currentlevel = myLevel;
	end

    if (player.Status == 'Engaged') then
		if (settings.use_night_sets == true) then
			if (zone.Timestamp.hour > 18) and (zone.Timestamp.hour < 4) then
				gFunc.EquipSet('tp_night_' .. tpvarianttable[settings.tpvariant]);
			else
				gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
			end
		else
            gFunc.EquipSet('tp_' .. tpvarianttable[settings.tpvariant]);
        end
    elseif (player.Status == 'Resting') then
    else
        if towns:contains(zone.Area) then
            gFunc.EquipSet(sets.idle_town);
        else
			if (settings.use_night_sets == true) then
				gFunc.EquipSet(sets.idle_night);
			else
				gFunc.EquipSet(sets.idle);
			end
        end
    end

    if (player.IsMoving) then
		if (myLevel > 31) then
			gFunc.EquipSet(sets.movement);
		end
    end

end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()

    local spell = gData.GetAction();

    gFunc.EquipSet(sets.precast);

    if string.match(spell.Name, 'Utsusemi') then

    else

    end

end

profile.HandleMidcast = function()

    local spell = gData.GetAction();

    gFunc.EquipSet(sets.midcast);

    if string.match(spell.Name, 'Utsusemi') then
        gFunc.EquipSet(sets.midcast_utsusemi);
    else
        gFunc.EquipSet(sets.nukes);
    end

end

profile.HandlePreshot = function()
    local rw = gData.GetEquipment().Ammo;
    gFunc.EquipSet(sets.ranged);

    if (rw.Name == 'Koga Shuriken') then
        gFunc.Message('Koga Shuriken is EQUIPPED! Preshot')
        gFunc.CancelAction();
    end

end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.ranged);

end

profile.HandleWeaponskill = function()
    local skill = gData.GetAction();

    if string.match(skill.Name, 'Jin') then
        gFunc.EquipSet(sets.ws_jin_lowacc);
    elseif (skill.name == 'Blade: Shun') then
        gFunc.EquipSet(sets.ws_dex);
    end

end

return profile;

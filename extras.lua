local _, Simulationcraft = ...

-- simc stat abbreviations

Simulationcraft.SimcStatAbbr = {
  ['strength'] = 'str',
  ['agility'] = 'agi',
  ['stamina'] = 'sta',
  ['intellect'] = 'int',
  ['spirit'] = 'spi',
  
  ['spell_power'] = 'sp',
  ['attack_power'] = 'ap',
  ['expertise'] = 'exp',
  ['hit'] = 'hit',
  
  ['critical_strike'] = 'crit',
  ['crit'] = 'crit',
  ['haste'] = 'haste',
  ['mastery'] = 'mastery',
  ['armor'] = 'armor',
  ['bonus_armor'] = 'bonusarmor',
  
  ['resilience'] = 'resil',
  ['dodge'] = 'dodge',
  ['parry'] = 'parry',
  
  ['all_stats'] = 'all',
  ['damage'] = 'damage',
  -- guessing for the rest
  ['multistrike'] = 'mult',
  ['readiness'] = 'readiness',  
}

-- simc meta abbreviations

Simulationcraft.SimcMetaAbbr = {
  ['+216 Strength and 3% Increased Critical Effect'] = 'reverberating_primal',
  ['+216 Agility and 3% Increased Critical Effect'] = 'agile_primal',
  ['+216 Intellect and 3% Increased Critical Effect'] = 'burning_primal',
  ['+432 Critical Strike and 1% Spell Reflect'] = 'destructive_primal',
  ['+324 Stamina and Reduce Spell Damage Taken by 2%'] = 'effulgent_primal',
  ['+216 Intellect and +2% Maximum Mana'] = 'ember_primal',
  ['+432 Critical Strike and Reduces Snare/Root Duration by 10%'] = 'enigmatic_primal',
  ['+432 Dodge and +1% Shield Block Value'] = 'eternal_primal',
  ['+432 Mastery and Minor Run Speed Increase'] = 'fleet_primal',
  ['+216 Intellect and Silence Duration Reduced by 10%'] = 'forlorn_primal',
  ['+432 Critical Strike and Fear Duration Reduced by 10%'] = 'impassive_primal',
  ['+324 Stamina and Stun Duration Reduced by 10%'] = 'powerful_primal',
  ['+324 Stamina and 2% Increased Armor Value from Items'] = 'austere_primal',
  ['+432 Spirit and 3% Increased Critical Effect'] = 'revitalizing_primal',
  ['+324 Crit, and chance on melee or ranged hit to gain Capacitance'] = 'capacitive_primal',    
  ['+324 Crit, and chance on spell damage to gain 30% spell haste'] = 'sinister_primal', 
  ['+324 Stamina and chance on being hit to gain 20% reduction to damage taken'] = 'indomitable_primal', 
  ['+324 Intellect and chance on beneficial spell to make your spells cost no mana for 4 sec.'] = 'courageous_primal', 
}

-- slot name conversion stuff

Simulationcraft.slotNames = {"HeadSlot", "NeckSlot", "ShoulderSlot", "BackSlot", "ChestSlot", "ShirtSlot", "TabardSlot", "WristSlot", "HandsSlot", "WaistSlot", "LegsSlot", "FeetSlot", "Finger0Slot", "Finger1Slot", "Trinket0Slot", "Trinket1Slot", "MainHandSlot", "SecondaryHandSlot", "AmmoSlot" };    
Simulationcraft.simcSlotNames = {'head','neck','shoulder','back','chest','shirt','tabard','wrist','hands','waist','legs','feet','finger1','finger2','trinket1','trinket2','main_hand','off_hand','ammo'}

-- table for conversion to upgrade level, stolen from AMR

Simulationcraft.upgradeTable = {
  [0]   =  0,
  [1]   =  1, -- 1/1 -> 8
  [373] =  1, -- 1/2 -> 4
  [374] =  2, -- 2/2 -> 8
  [375] =  1, -- 1/3 -> 4
  [376] =  2, -- 2/3 -> 4
  [377] =  3, -- 3/3 -> 4
  [378] =  1, -- 1/1 -> 7
  [379] =  1, -- 1/2 -> 4
  [380] =  2, -- 2/2 -> 4
  [445] =  0, -- 0/2 -> 0
  [446] =  1, -- 1/2 -> 4
  [447] =  2, -- 2/2 -> 8
  [451] =  0, -- 0/1 -> 0
  [452] =  1, -- 1/1 -> 8
  [453] =  0, -- 0/2 -> 0
  [454] =  1, -- 1/2 -> 4
  [455] =  2, -- 2/2 -> 8
  [456] =  0, -- 0/1 -> 0
  [457] =  1, -- 1/1 -> 8
  [458] =  0, -- 0/4 -> 0
  [459] =  1, -- 1/4 -> 4
  [460] =  2, -- 2/4 -> 8
  [461] =  3, -- 3/4 -> 12
  [462] =  4, -- 4/4 -> 16
  [465] =  0, -- 0/2 -> 0
  [466] =  1, -- 1/2 -> 4
  [467] =  2, -- 2/2 -> 8
  [468] =  0, -- 0/4 -> 0
  [469] =  1, -- 1/4 -> 4
  [470] =  2, -- 2/4 -> 8
  [471] =  3, -- 3/4 -> 12
  [472] =  4, -- 4/4 -> 16
  [476] =  0, -- ? -> 0
  [479] =  0, -- ? -> 0
  [491] =  0, -- ? -> 0
  [492] =  1, -- ? -> 0
  [493] =  2, -- ? -> 0
  [494] = 0,
  [495] = 1,
  [496] = 2,
  [497] = 3,
  [498] = 4,
  [504] = 3,
  [505] = 4
}

-- this just handles a limited number of enchants for use with
-- "old-style" export strings. "new-style" ones (using "enchant_id=xxxx")
-- don't need this at all. Also stolen from AMR ( <3 )

Simulationcraft.enchantNames = {
[-1000]="Belt Buckle",
[2]="Frostbrand",
[5]="Flametongue",
[25]="Shadow Oil",
[26]="Frost Oil",
[27]="Sundered",
[37]="Steel Weapon Chain",
[911]="Minor Speed Increase",
[912]="Demonslaying",
[1003]="Venomhide Poison",
[1894]="Icy Chill",
[1898]="Lifestealing",
[1899]="Unholy Weapon",
[1900]="Crusader",
[2673]="Mongoose",
[2674]="Spellsurge",
[2675]="Battlemaster",
[3223]="Adamantite Weapon Chain",
[3225]="Executioner",
[3238]="Gatherer",
[3239]="Icebreaker Weapon",
[3241]="Lifeward",
[3250]="Icewalker",
[3251]="Giantslaying",
[3345]="Earthliving",
[3364]="Empower Rune Weapon",
[3365]="Swordshattering",
[3366]="Lichbane",
[3367]="Spellshattering",
[3368]="Fallen Crusader",
[3369]="Cinderglacier",
[3370]="Razorice",
[3594]="Swordbreaking",
[3595]="Spellbreaking",
[3722]="Lightweave 1",
[3728]="Darkglow 1",
[3730]="Swordguard 1",
[3789]="Berserking",
[3790]="Black Magic",
[3847]="Stoneskin Gargoyle",
[3849]="Titanium Plating",
[3883]="Nerubian Carapace",
[4066]="Mending",
[4067]="Avalanche",
[4074]="Elemental Slayer",
[4083]="Hurricane",
[4084]="Heartsong",
[4097]="Power Torrent",
[4098]="Windwalk",
[4099]="Landslide",
[4115]="Lightweave 2",
[4116]="Darkglow 2",
[4117]="Swordguard Embroidery",
[4118]="Swordguard 2",
[4179]="Synapse Springs",
[4180]="Quickflip Deflection Plates",
[4181]="Tazik Shocker",
[4188]="Grounded Plasma Shield",
[4223]="Nitro Boosts",
[4267]="Flintlocke's Woodchucker",
[4441]="Windsong",
[4442]="Jade Spirit",
[4443]="Elemental Force",
[4444]="Dancing Steel",
[4445]="Colossus",
[4446]="River's Song",
[4688]="Samurai",
[4697]="Phase Fingers",
[4698]="Incindiary Fireworks Launcher",
[4699]="Lord Blastington's Scope of Doom",
[4700]="Mirror Scope",
[4717]="Pandamonium",
[4892]="Lightweave 3",
[4893]="Darkglow 3",
[4894]="Swordguard 3",
[5035]="Tyranny",
[5125]="Bloody Dancing Steel"}

Simulationcraft.reforgeTable = {
[113]="spi_dodge",
[114]="spi_parry",
[115]="spi_hit",
[116]="spi_crit",
[117]="spi_haste",
[118]="spi_exp",
[119]="spi_mastery",
[120]="dodge_spi",
[121]="dodge_parry",
[122]="dodge_hit",
[123]="dodge_crit",
[124]="dodge_haste",
[125]="dodge_exp",
[126]="dodge_mastery",
[127]="parry_spi",
[128]="parry_dodge",
[129]="parry_hit",
[130]="parry_crit",
[131]="parry_haste",
[132]="parry_exp",
[133]="parry_mastery",
[134]="hit_spi",
[135]="hit_dodge",
[136]="hit_parry",
[137]="hit_crit",
[137]="hit_crit" ,
[138]="hit_haste",
[139]="hit_exp",
[140]="hit_mastery",
[141]="crit_spi",
[142]="crit_dodge",
[143]="crit_parry",
[144]="crit_hit",
[145]="crit_haste",
[146]="crit_exp",
[147]="crit_mastery",
[148]="haste_spi",
[149]="haste_dodge",
[150]="haste_parry",
[151]="haste_hit",
[152]="haste_crit",
[153]="haste_exp",
[154]="haste_mastery",
[155]="exp_spi",
[156]="exp_dodge",
[157]="exp_parry",
[158]="exp_hit",
[159]="exp_crit",
[160]="exp_haste",
[161]="exp_mastery",
[162]="mastery_spi",
[163]="mastery_dodge",
[164]="mastery_parry",
[165]="mastery_hit",
[166]="mastery_crit",
[167]="mastery_haste",
[168]="mastery_exp"}




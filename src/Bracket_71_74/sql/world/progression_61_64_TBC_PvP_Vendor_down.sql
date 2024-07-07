SET @NPC_ARMOR_ALLIANCE      := 12777; -- Captain Dirgehammer
SET @NPC_ACCESSORY_ALLIANCE  := 12805; -- Officer Areyn (already has inventory)
SET @NPC_WEAPON_ALLIANCE     := 12782; -- Captain O'Neal
SET @NPC_ARMOR_HORDE         := 24520; -- Doris Volanthius
SET @NPC_ACCESSORY_HORDE     := 12799; -- Sergeant Ba'sha (already has inventory)
SET @NPC_WEAPON_HORDE        := 14581; -- Sergeant Thunderhorn

SET @NPC_SEASON_ONE          := 24392; -- Leeni "Smiley" Smalls
UPDATE `creature_template` SET `subname` = '竞技场商人', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_ONE);
SET @NPC_SEASON_TWO          := 26352; -- Big Zokk Torquewrench
UPDATE `creature_template` SET `subname` = '竞技场商人', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_TWO); -- If NPC is changed remember to set the correct subname later
SET @NPC_SEASON_THREE        := 26378; -- Evee Copperspring
UPDATE `creature_template` SET `subname` = '竞技场商人', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_THREE);
SET @NPC_SEASON_FOUR         := 40207; -- Kezzik the Striker
UPDATE `creature_template` SET `subname` = '精锐征服军需官', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_SEASON_FOUR);
SET @NPC_ARENA_ACCESSORY     := 40209; -- Grex Brainboiler
UPDATE `creature_template` SET `subname` = '经典旧世联盟布甲及皮甲', `npcflag`=`npcflag`|128 WHERE (`entry` = @NPC_ARENA_ACCESSORY);

SET @GUID := 3000009; -- Needs 37 free GUIDs

SET @GUID_ARMOR_ALLIANCE_1     := @GUID+0 ;
SET @GUID_ARMOR_ALLIANCE_2     := @GUID+1 ;
SET @GUID_ARMOR_ALLIANCE_3     := @GUID+2 ;
SET @GUID_ARMOR_ALLIANCE_4     := @GUID+3 ;
SET @GUID_ACCESSORY_ALLIANCE_1 := @GUID+4 ;
SET @GUID_ACCESSORY_ALLIANCE_2 := @GUID+5 ;
SET @GUID_ACCESSORY_ALLIANCE_3 := @GUID+6 ;
SET @GUID_ACCESSORY_ALLIANCE_4 := @GUID+7 ;
SET @GUID_WEAPON_ALLIANCE_1    := @GUID+8 ;
SET @GUID_WEAPON_ALLIANCE_2    := @GUID+9 ;
SET @GUID_WEAPON_ALLIANCE_3    := @GUID+10;
SET @GUID_WEAPON_ALLIANCE_4    := @GUID+11;
SET @GUID_ARMOR_HORDE_1        := @GUID+12;
SET @GUID_ARMOR_HORDE_2        := @GUID+13;
SET @GUID_ARMOR_HORDE_3        := @GUID+14;
SET @GUID_ARMOR_HORDE_4        := @GUID+15;
SET @GUID_ACCESSORY_HORDE_1    := @GUID+16;
SET @GUID_ACCESSORY_HORDE_2    := @GUID+17;
SET @GUID_ACCESSORY_HORDE_3    := @GUID+18;
SET @GUID_ACCESSORY_HORDE_4    := @GUID+19;
SET @GUID_WEAPON_HORDE_1       := @GUID+20;
SET @GUID_WEAPON_HORDE_2       := @GUID+21;
SET @GUID_WEAPON_HORDE_3       := @GUID+22;
SET @GUID_WEAPON_HORDE_4       := @GUID+23;
SET @GUID_SEASON_ONE_1         := @GUID+24;
SET @GUID_SEASON_ONE_2         := @GUID+25;
SET @GUID_SEASON_ONE_3         := @GUID+26;
SET @GUID_SEASON_ONE_4         := @GUID+27;
SET @GUID_SEASON_TWO_2         := @GUID+28;
SET @GUID_SEASON_TWO_3         := @GUID+29;
SET @GUID_SEASON_TWO_4         := @GUID+30;
SET @GUID_ARENA_ACCESSORY_2    := @GUID+31;
SET @GUID_ARENA_ACCESSORY_3    := @GUID+32;
SET @GUID_ARENA_ACCESSORY_4    := @GUID+33;
SET @GUID_SEASON_THREE_3       := @GUID+34;
SET @GUID_SEASON_THREE_4       := @GUID+35;
SET @GUID_SEASON_FOUR_4        := @GUID+36;
SET @GUID_ARMOR_ALLIANCE_0     := @GUID+37;
SET @GUID_ACCESSORY_ALLIANCE_0 := @GUID+38;
SET @GUID_WEAPON_ALLIANCE_0    := @GUID+39;
SET @GUID_ARMOR_HORDE_0        := @GUID+40;
SET @GUID_ACCESSORY_HORDE_0    := @GUID+41;
SET @GUID_WEAPON_HORDE_0       := @GUID+42;

DELETE FROM `npc_vendor` WHERE `entry` IN (12799, 12805) AND `item` IN (15197,15200,16335,16341,16486,16497,16532,18427,18428,18429,18430,18432,18434,18435,18436,18437,18461,18675,18834,18845,18846,18849,18850,18851,18852,18853,15196,16342,18440,18441,18442,18443,18444,18452,18453,18664,18857);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12799, 0, 15197, 0, 0, 1007, 0),
(12799, 0, 15200, 0, 0, 838, 0),
(12799, 0, 16335, 0, 0, 491, 0),
(12799, 0, 16341, 0, 0, 986, 0),
(12799, 0, 16486, 0, 0, 492, 0),
(12799, 0, 16497, 0, 0, 492, 0),
(12799, 0, 16532, 0, 0, 492, 0),
(12799, 0, 18427, 0, 0, 1050, 0),
(12799, 0, 18428, 0, 0, 930, 0),
(12799, 0, 18429, 0, 0, 492, 0),
(12799, 0, 18430, 0, 0, 931, 0),
(12799, 0, 18432, 0, 0, 931, 0),
(12799, 0, 18434, 0, 0, 492, 0),
(12799, 0, 18435, 0, 0, 931, 0),
(12799, 0, 18436, 0, 0, 931, 0),
(12799, 0, 18437, 0, 0, 931, 0),
(12799, 0, 18461, 0, 0, 774, 0),
(12799, 0, 18675, 0, 0, 0, 0),
(12799, 0, 18834, 0, 0, 634, 0),
(12799, 0, 18845, 0, 0, 634, 0),
(12799, 0, 18846, 0, 0, 634, 0),
(12799, 0, 18849, 0, 0, 634, 0),
(12799, 0, 18850, 0, 0, 634, 0),
(12799, 0, 18851, 0, 0, 634, 0),
(12799, 0, 18852, 0, 0, 634, 0),
(12799, 0, 18853, 0, 0, 634, 0),
(12805, 0, 15196, 0, 0, 1007, 0),
(12805, 0, 16342, 0, 0, 774, 0),
(12805, 0, 18440, 0, 0, 1050, 0),
(12805, 0, 18441, 0, 0, 986, 0),
(12805, 0, 18442, 0, 0, 838, 0),
(12805, 0, 18443, 0, 0, 491, 0),
(12805, 0, 18444, 0, 0, 930, 0),
(12805, 0, 18452, 0, 0, 492, 0),
(12805, 0, 18453, 0, 0, 931, 0),
(12805, 0, 18664, 0, 0, 0, 0),
(12805, 0, 18857, 0, 0, 634, 0);

-- Restore PhaseMask of Season 8 vendors
UPDATE `creature` SET `PhaseMask`=1 WHERE `id1` IN (34038, 34043, 34060, 34063, 34075, 34078, 40607);

DELETE FROM `creature` WHERE (`id1` IN (@NPC_ARMOR_ALLIANCE,@NPC_ACCESSORY_ALLIANCE,@NPC_WEAPON_ALLIANCE,@NPC_ARMOR_HORDE,@NPC_ACCESSORY_HORDE,@NPC_WEAPON_HORDE,@NPC_SEASON_ONE,@NPC_SEASON_TWO,@NPC_SEASON_THREE,@NPC_SEASON_FOUR,@NPC_ARENA_ACCESSORY)) AND (`guid` IN (@GUID_ARMOR_ALLIANCE_0,@GUID_ACCESSORY_ALLIANCE_0,@GUID_WEAPON_ALLIANCE_0,@GUID_ARMOR_HORDE_0,@GUID_ACCESSORY_HORDE_0,@GUID_WEAPON_HORDE_0,@GUID_ARMOR_ALLIANCE_1,@GUID_ARMOR_ALLIANCE_2,@GUID_ARMOR_ALLIANCE_3,@GUID_ARMOR_ALLIANCE_4,@GUID_ACCESSORY_ALLIANCE_1,@GUID_ACCESSORY_ALLIANCE_2,@GUID_ACCESSORY_ALLIANCE_3,@GUID_ACCESSORY_ALLIANCE_4,@GUID_WEAPON_ALLIANCE_1,@GUID_WEAPON_ALLIANCE_2,@GUID_WEAPON_ALLIANCE_3,@GUID_WEAPON_ALLIANCE_4,@GUID_ARMOR_HORDE_1,@GUID_ARMOR_HORDE_2,@GUID_ARMOR_HORDE_3,@GUID_ARMOR_HORDE_4,@GUID_ACCESSORY_HORDE_1,@GUID_ACCESSORY_HORDE_2,@GUID_ACCESSORY_HORDE_3,@GUID_ACCESSORY_HORDE_4,@GUID_WEAPON_HORDE_1,@GUID_WEAPON_HORDE_2,@GUID_WEAPON_HORDE_3,@GUID_WEAPON_HORDE_4,@GUID_SEASON_ONE_1,@GUID_SEASON_ONE_2,@GUID_SEASON_ONE_3,@GUID_SEASON_ONE_4,@GUID_SEASON_TWO_2,@GUID_SEASON_TWO_3,@GUID_SEASON_TWO_4,@GUID_ARENA_ACCESSORY_2,@GUID_ARENA_ACCESSORY_3,@GUID_ARENA_ACCESSORY_4,@GUID_SEASON_THREE_3,@GUID_SEASON_THREE_4,@GUID_SEASON_FOUR_4));

DELETE FROM `game_event_creature` WHERE (`eventEntry` IN (75, 76, 55, 56, 60)) AND (`guid` IN (@GUID_ARMOR_ALLIANCE_0,@GUID_ACCESSORY_ALLIANCE_0,@GUID_WEAPON_ALLIANCE_0,@GUID_ARMOR_HORDE_0,@GUID_ACCESSORY_HORDE_0,@GUID_WEAPON_HORDE_0,@GUID_ARMOR_ALLIANCE_1,@GUID_ARMOR_ALLIANCE_2,@GUID_ARMOR_ALLIANCE_3,@GUID_ARMOR_ALLIANCE_4,@GUID_ACCESSORY_ALLIANCE_1,@GUID_ACCESSORY_ALLIANCE_2,@GUID_ACCESSORY_ALLIANCE_3,@GUID_ACCESSORY_ALLIANCE_4,@GUID_WEAPON_ALLIANCE_1,@GUID_WEAPON_ALLIANCE_2,@GUID_WEAPON_ALLIANCE_3,@GUID_WEAPON_ALLIANCE_4,@GUID_ARMOR_HORDE_1,@GUID_ARMOR_HORDE_2,@GUID_ARMOR_HORDE_3,@GUID_ARMOR_HORDE_4,@GUID_ACCESSORY_HORDE_1,@GUID_ACCESSORY_HORDE_2,@GUID_ACCESSORY_HORDE_3,@GUID_ACCESSORY_HORDE_4,@GUID_WEAPON_HORDE_1,@GUID_WEAPON_HORDE_2,@GUID_WEAPON_HORDE_3,@GUID_WEAPON_HORDE_4,@GUID_SEASON_ONE_1,@GUID_SEASON_ONE_2,@GUID_SEASON_ONE_3,@GUID_SEASON_ONE_4,@GUID_SEASON_TWO_2,@GUID_SEASON_TWO_3,@GUID_SEASON_TWO_4,@GUID_ARENA_ACCESSORY_2,@GUID_ARENA_ACCESSORY_3,@GUID_ARENA_ACCESSORY_4,@GUID_SEASON_THREE_3,@GUID_SEASON_THREE_4,@GUID_SEASON_FOUR_4));

DELETE FROM `game_event_npc_vendor` WHERE `eventEntry` IN (75, 76, 55, 56, 60) AND `guid` IN (@GUID_ARMOR_ALLIANCE_0,@GUID_ACCESSORY_ALLIANCE_0,@GUID_WEAPON_ALLIANCE_0,@GUID_ARMOR_HORDE_0,@GUID_ACCESSORY_HORDE_0,@GUID_WEAPON_HORDE_0,@GUID_WEAPON_HORDE_1,@GUID_WEAPON_HORDE_2,@GUID_WEAPON_HORDE_3,@GUID_WEAPON_HORDE_4,@GUID_ACCESSORY_HORDE_1,@GUID_ACCESSORY_HORDE_2,@GUID_ACCESSORY_HORDE_3,@GUID_ACCESSORY_HORDE_4,@GUID_ARMOR_HORDE_1,@GUID_ARMOR_HORDE_2,@GUID_ARMOR_HORDE_3,@GUID_ARMOR_HORDE_4,@GUID_ARMOR_ALLIANCE_1,@GUID_ARMOR_ALLIANCE_2,@GUID_ARMOR_ALLIANCE_3,@GUID_ARMOR_ALLIANCE_4,@GUID_WEAPON_ALLIANCE_1,@GUID_WEAPON_ALLIANCE_2,@GUID_WEAPON_ALLIANCE_3,@GUID_WEAPON_ALLIANCE_4,@GUID_ACCESSORY_ALLIANCE_1,@GUID_ACCESSORY_ALLIANCE_2,@GUID_ACCESSORY_ALLIANCE_3,@GUID_ACCESSORY_ALLIANCE_4,@GUID_SEASON_ONE_1,@GUID_SEASON_ONE_2,@GUID_SEASON_ONE_3,@GUID_SEASON_ONE_4,@GUID_SEASON_TWO_2,@GUID_SEASON_TWO_3,@GUID_SEASON_TWO_4,@GUID_ARENA_ACCESSORY_2,@GUID_ARENA_ACCESSORY_3,@GUID_ARENA_ACCESSORY_4,@GUID_SEASON_THREE_3,@GUID_SEASON_THREE_4,@GUID_SEASON_FOUR_4);

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ACCESSORY_ALLIANCE) AND (`SourceEntry` IN (28234,28235,28236,28237,28238,30348,30349,30350,30351,38589));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ACCESSORY_HORDE) AND (`SourceEntry` IN (28240,28241,28242,28243,28239,30343,30346,30344,30345,38588));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARMOR_ALLIANCE) AND (`SourceEntry` IN (28613,28614,28615,28616,28617,28618,28619,28620,28622,28623,28624,28625,28626,28627,28628,31589,31590,31591,31592,31593,28679,28680,28681,28724,28683,28684,28685,28686,28687,28688,28689,28690,28691,28692,28693,28694,28695,28696,28697,28698,31622,31623,31620,31624,31625,31630,31631,31632,31633,31634,28699,28700,28701,28702,28703,31640,31641,31642,31643,31644,28704,28705,28706,28707,28708,28709,28710,28711,28712,28713,28714,28715,28716,28717,28718,28719,28720,28721,28722,28723,28973,28974,28975,28976,28977,28978,28980,28981,28982,31596,31597,31599,28983,28984,28985,28986,28987,28988,28989,28990,28991,28992,28993,28994,28995,28996,28997,28998,28999,29000,29001,29002,29003,29004,29005,29006));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARMOR_HORDE) AND (`SourceEntry` IN (28451,28450,28449,28443,28444,28445,28404,28405,28402,31594,31595,31598,28641,28643,28642,28423,28422,28424,28605,28629,28630,28638,28639,28640,28385,28381,28383,28644,28646,28645,28409,28411,28410,28446,28447,28448,28805,28806,28807,28808,28809,28811,28812,28813,28814,28815,28817,28818,28819,28820,28821,31584,31585,31586,31587,31588,28831,28832,28833,28834,28835,28836,28837,28838,28839,28840,28841,28842,28843,28844,28845,28846,28847,28848,28849,28850,31626,31627,31621,31628,31629,31635,31636,31637,31638,31639,28851,28852,28853,28854,28855,31646,31647,31648,31649,31650,28856,28857,28858,28859,28860,28861,28862,28863,28864,28865,28866,28867,28868,28869,28870,28871,28872,28873,28874,28875));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_ONE) AND (`SourceEntry` IN (24544,24545,24546,24547,24549,24552,24553,24554,24555,24556,25830,25831,25832,25833,25834,25854,25855,25856,25857,25858,25997,25998,25999,26000,26001,27469,27470,27471,27472,27473,27702,27703,27704,27705,27706,27707,27708,27709,27710,27711,27879,27880,27881,27882,27883,28126,28127,28128,28129,28130,28136,28137,28138,28139,28140,28331,28332,28333,28334,28335,30186,30187,30188,30200,30201,31375,31376,31377,31378,31379,28355,31396,31397,31400,31406,31407,28357,31409,31410,31411,31412,31413,31613,31614,31616,31618,28356,31619));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_TWO) AND (`SourceEntry` IN (30486,30487,30488,30489,30490,31960,31961,31962,31963,31964,31967,31968,31969,31971,31972,31973,31974,31975,31976,31977,31979,31980,31981,31982,31983,31987,31988,31989,31990,31991,31992,31993,31995,31996,31997,31998,31999,32000,32001,32002,32004,32005,32006,32007,32008,32009,32010,32011,32012,32013,32015,32016,32017,32018,32019,32020,32021,32022,32023,32024,32029,32030,32031,32032,32033,32034,32035,32036,32037,32038,32039,32040,32041,32042,32043,32047,32048,32049,32050,32051,32056,32057,32058,32059,32060,33946,33943,33076,33937,33077,33949,33940,33952,33078));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_THREE) AND (`SourceEntry` IN (33664,33665,33666,33667,33668,33671,33672,33673,33674,33675,33676,33677,33678,33679,33680,33682,33683,33684,33685,33686,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699,33700,33701,33702,33703,33704,33706,33707,33708,33709,33710,33711,33712,33713,33714,33715,33717,33718,33719,33720,33721,33722,33723,33724,33725,33726,33728,33729,33730,33731,33732,33738,33739,33740,33741,33742,33744,33745,33746,33747,33748,33749,33750,33751,33752,33753,33757,33758,33759,33760,33761,33767,33768,33769,33770,33771,33947,33944,33841,33938,33842,33950,33941,33953,33843,34014));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_SEASON_FOUR) AND (`SourceEntry` IN (34990,34991,34992,34993,34994,34998,34999,35000,35001,35002,35003,35004,35005,35006,35007,35009,35010,35011,35012,35013,35022,35023,35024,35025,35026,35027,35028,35029,35030,35031,35032,35033,35034,35035,35036,35042,35043,35044,35045,35046,35048,35049,35050,35051,35052,35053,35054,35055,35056,35057,35059,35060,35061,35062,35063,35066,35067,35068,35069,35070,35077,35078,35079,35080,35081,35083,35084,35085,35086,35087,35088,35089,35090,35091,35092,35096,35097,35098,35099,35100,35111,35112,35113,35114,35115,35019,35020,35021,35039,35040,35041,35104,35105,35106,35110,36737));

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 23) AND (`SourceGroup` = @NPC_ARENA_ACCESSORY) AND (`SourceEntry` IN (32799,32811,32787,32979,32980,32981,32807,32820,32795,32786,32788,32790,32796,32800,32802,32808,32810,32812,32814,32821,32785,32791,32792,32797,32803,32804,32809,32816,32817,32997,32998,32999,32789,32793,32794,32801,32805,32806,32813,32818,32819,32988,32989,32990,33882,33883,33884,33900,33901,33902,33912,33913,33914,33879,33880,33881,33885,33886,33887,33891,33892,33893,33915,33916,33917,33877,33894,33895,33896,33897,33898,33899,33906,33907,33908,33811,33812,33813,33888,33889,33890,33903,33904,33905,33909,33910,33911,35138,35144,35149,35153,35159,35164,35168,35174,35179,35137,35139,35141,35150,35152,35154,35156,35165,35167,35169,35171,35180,33876,33878,35136,35142,35143,35147,35151,35157,35158,35162,35166,35172,35173,35177,35140,35145,35146,35148,35155,35160,35161,35163,35170,35175,35176,35178));
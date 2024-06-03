-- Onyxia
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `lootid` = 54003, `DamageModifier` = 13 WHERE `entry` = 10184;

-- Trash mobs
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `lootid` = 0, `skinloot` = 0 WHERE `entry` IN (11262, 12129);

DELETE FROM `reference_loot_template` WHERE `Entry` IN (54000, 54001);
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54000, 17067, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Ancient Cornerstone Grimoire'),
(54000, 17078, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Sapphiron Drape'),
(54000, 18205, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Eskhandar Collar'),
(54000, 18813, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Ring of Binding');

INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54001, 16900, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Stormrage Covert'),
(54001, 16908, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Bloodfang Hood'),
(54001, 16914, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Netherwind Crown'),
(54001, 16921, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Halo of Transcendence'),
(54001, 16929, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Nemesis Skullcap'),
(54001, 16939, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Dragonstalker Helmet'),
(54001, 16947, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Helmet of Ten Storms'),
(54001, 16955, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Judgment Crown'),
(54001, 16963, 0, 0, 0, 1, 1, 1, 1, 'Onyxia Ref - Helm of Wrath');

DELETE FROM `creature_loot_template` WHERE `Entry` = 54003;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(54003, 1, 54000, 100, 0, 1, 0, 1, 1, 'Onyxia - Reference Loot - Trinkets'),
(54003, 2, 54001, 100, 0, 1, 0, 1, 2, 'Onyxia - Reference Loot - Tier Pieces'),
(54003, 17966, 0, 100, 0, 1, 2, 1, 2, 'Onyxia - Onyxia Hide Backpack'),
(54003, 17966, 0, 20, 0, 1, 3, 1, 2, 'Onyxia - Onyxia Hide Backpack'),
(54003, 18422, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Head of Onyxia'),
(54003, 18423, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Head of Onyxia'),
(54003, 18705, 0, 40, 1, 1, 0, 1, 1, 'Onyxia - Mature Black Dragon Sinew'),
(54003, 21108, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Draconic for Dummies'),
(54003, 17064, 0, 8.0, 0, 1, 1, 1, 1, 'Onyxia Ref - Shard of the Scale'),
(54003, 17075, 0, 8.0, 0, 1, 1, 1, 1, 'Onyxia Ref - Viskag the Bloodletter'),
(54003, 17068, 0, 8.0, 0, 1, 1, 1, 1, 'Onyxia Ref - Deathbringer');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceGroup` = 54003 AND `SourceEntry` = 21108;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(1, 54003, 21108, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter VI will drop only when a player have The Only Prescription (8620) in their quest log');

DELETE FROM `disables` WHERE `entry` IN (12565, 12566, 12564, 12558) AND `sourceType` = 4;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(4, 12565, 0, 0, 0, 'Disable Many Whelps, Handle it! (10) achievement'),
(4, 12566, 0, 0, 0, 'Disable She deeps breah more (10) achievement'),
(4, 12564, 0, 0, 0, 'Disable More dots! (10) achievement'),
(4, 12558, 0, 0, 0, 'Disable Onyxia Lair (10) achievement');

DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 15;
INSERT INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`) VALUES
(15, 2, 16309, '你必须在一个团队中，等级至少为50级，并在物品栏中携带着龙火护符才能进入。', 2, NULL, 0, '');

UPDATE `dungeon_access_template` SET `min_level` = 60 WHERE `map_id` = 249 AND `difficulty` = 0;

DELETE FROM `mapdifficulty_dbc` WHERE `MapID` = 249;
INSERT INTO `mapdifficulty_dbc` (`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`) VALUES
(26, 249, 0, 604800, 25, 'RAID_DIFFICULTY_25PLAYER');

UPDATE `achievement_criteria_data` SET `value1` = 0 WHERE `criteria_id` IN (12567, 12568, 12569);

-- Victory for the Alliance - Varian
DELETE FROM `creature_questender` WHERE `quest` = 7495;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(29611, 7495);

-- Thrall
DELETE FROM `creature_questender` WHERE `quest` = 7490;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(4949, 7490); -- Victory for the Horde

DELETE FROM `creature_queststarter` WHERE `quest` = 7491;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(4949, 7491);

DELETE FROM `creature_queststarter` WHERE `quest` = 7493;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(14392, 7493);

DELETE FROM `creature_queststarter` WHERE `quest` = 7496;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(1748, 7496);

DELETE FROM `creature_questender` WHERE `quest` = 7491;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(14392, 7491);

DELETE FROM `creature_questender` WHERE `quest` = 7496;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(14394, 7496);

-- Cloak quest - A
DELETE FROM `creature_queststarter` WHERE `quest` = 7497;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(14394, 7497);

DELETE FROM `creature_questender` WHERE `quest` = 7497;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(14394, 7497);

UPDATE `quest_template_addon` SET `PrevQuestID` = 7496 WHERE `ID` = 7497; -- Previously 24428
UPDATE `quest_template_addon` SET `PrevQuestID` = 7490 WHERE `ID` = 7493; -- Previously 24429

-- Compendium
UPDATE `item_template` SET `startquest` = 7507 WHERE `entry` = 18401; -- Foror's Compendium of Dragonslaying
UPDATE `item_template` SET `startquest` = 7508 WHERE `entry` = 18513; -- Dull Elven Blade

DELETE FROM `creature_queststarter` WHERE `quest` = 7509;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(14368, 7509);

DELETE FROM `creature_questender` WHERE `quest` IN (7507, 7508, 7509); -- Lorekeeper Lydros, Foror's Compendium
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(14368, 7507),
(14368, 7508),
(14368, 7509);

DELETE FROM `gossip_menu` WHERE `TextId` = 60040 AND `MenuId` = 5747;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(5747, 60040);

DELETE FROM `gossip_menu` WHERE `TextId` IN (60041, 60042, 60043, 60044, 60045, 60046);
INSERT INTO `gossip_menu` (`MenuId`, `TextId`) VALUES
(60041, 60041),
(60042, 60042),
(60043, 60043),
(60044, 60044),
(60045, 60045),
(60046, 60046);

DELETE FROM `npc_text` WHERE `ID` IN (60040, 60041, 60042, 60043, 60044, 60045, 60046);
INSERT INTO `npc_text` (`ID`, `text0_0`,  `BroadcastTextID0`) VALUES
(60040, '<莱德罗斯将手伸进他的长袍，拿出一把又盾又扁的精灵刀。>$B$B在过去，在远古战争之前，他们就是用这把刀来求生的。', 0),
(60041, '在仪式中，必须使用守护者的后代来锻造这柄剑。真是少见啊……龙不得不锻造并为这柄剑附魔，还得牺牲自己的后代做为附魔的调和剂。', 0),
(60042, '8,000年来只铸造出少量的剑——每柄剑的威力和外观都是独一无二的。奎尔赛拉之剑将沿袭其锻造者的特点。', 0),
(60043, '在传说中，奎尔塞拉之剑是由一位不知名的铁匠结合了五条守护巨龙的力量锻造而成的。在奈法利安和死亡之翼扰乱我们的世界之前，守护巨龙的聚会被称为“五色集会”。看起来五色圣剑奎尔塞拉是他们最为显赫的创作之一。', 0),
(60044, '我能给你的只有这把未经烧制、未经加工的刀刃——最原始、最基本的形态。$B$B现在你只需去找一条愿意为这把刀附魔的龙。$B$B如果你能长生不老的话，或许这还有可能；但是你是凡人，随时都可能命丧黄泉，我建议你试着找体型较小的龙来帮你完成这把剑。', 0),
(60045, '你听说过黑龙公主吗？我想她名叫奥妮克希亚……', 0),
(60046, '我早就已经预感到你要来了，$n，星象已经很明确地告诉了我。', 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14, 15) AND `SourceGroup` = 5747;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(14,5747,60040,0,0,8,0,7507,0,0,0,0,0,'','Lydros Pre Quel\'Serrar Gossip - Requires to have Foror\'s Compendium rewarded'),
(14,5747,60040,0,0,8,0,7508,0,0,1,0,0,'','Lydros Pre Quel\'Serrar Gossip - Requires to not have The Forging of Quel\'Serrar rewarded'),
(15,5747,0,0,0,8,0,7507,0,0,0,0,0,'','Lydros Pre Quel\'Serrar Gossip Option - Requires to have Foror\'s Compendium rewarded'),
(15,5747,0,0,0,8,0,7508,0,0,1,0,0,'','Lydros Pre Quel\'Serrar Gossip Option - Requires to not have The Forging of Quel\'Serrar rewarded');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 5747 AND `SourceEntry` = 60040;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,5747,60040,0,0,8,0,7507,0,0,0,0,0,'','Lydros Pre Quel\'Serrar Gossip - Requires to have Foror\'s Compendium rewarded'),
(15,5747,60040,0,0,8,0,7508,0,0,1,0,0,'','Lydros Pre Quel\'Serrar Gossip - Requires to not have The Forging of Quel\'Serrar rewarded');

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (5747, 60040, 60041, 60042, 60043, 60044, 60045, 60046);
INSERT INTO `gossip_menu_option` (`menuID`, `optionid`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(5747,0,0,'（继续。）', 9519,1,3,60041,0,0,0,NULL,0,0),
(60041,0,0,'（继续。）', 9519,1,3,60042,0,0,0,NULL,0,0),
(60042,0,0,'（继续。）', 9519,1,3,60043,0,0,0,NULL,0,0),
(60043,0,0,'（继续。）', 9519,1,3,60044,0,0,0,NULL,0,0),
(60044,0,0,'嗯？',0,1,3,60045,0,0,0,NULL,0,0),
(60045,0,0,'或许吧……我现在能做什么呢？',0,1,3,0,0,0,0,NULL,0,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = 14368 AND `source_type` = 0 AND `id` IN (1, 2);
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('14368','0','1','0','62','0','100','0','60045','0','0','0','56','18513','1','0','0','0','0','7','0','0','0','0','0','0','0','Lorekeeper Lydros - Giving A Dull and Flat Elven Blade after cliking on last gossip');
insert into `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values('14368','0','2','0','62','0','100','0','60045','0','0','0','72','0','0','0','0','0','0','7','0','0','0','0','0','0','0','Lorekeeper Lydros - On Gossip Option 0 Selected - Close Gossip');

UPDATE `item_template` SET `spellid_1` = 22905 WHERE `entry` = 18489;

delete from `conditions` WHERE `SourceTypeOrReferenceId` = 17 AND  `SourceEntry` = 22905;
insert into `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) values('17','0','22905','0','0','29','0','10184','10','1','0','0','0','','Place Unfired Blade - near dead onyxia');

DELETE FROM spell_linked_spell where spell_trigger = 22905;
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, TYPE, COMMENT) VALUES
(22905, 22906, 0, 'quelserrar');

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `id` = 7509;

UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63,`ScriptName` = 'boss_lord_kazzak', `scale` = 1.2  WHERE `entry` = 12397;

DELETE FROM `spell_script_names` WHERE `spell_id` = 21056;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(21056, 'spell_mark_of_kazzak_60');

DELETE FROM `creature_text` WHERE `CreatureID` = 12397;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(12397, 0, 0, '我仍然清晰地记得上次战争败北的耻辱。我等待复仇的机会已经等得太久了。现在，军团的阴影将笼罩这个世界，你们彻底毁灭的日子……已经不远了。', 14, 0, 0, 0, 0, 11332, 20076, 0, 'kazzak SAY_INTRO'),
(12397, 1, 0, '军团将会征服一切！', 14, 0, 0, 0, 0, 11333, 20077, 3, 'kazzak SAY_AGGRO1'),
(12397, 1, 1, '所有的凡人都将灭亡!', 14, 0, 0, 0, 0, 11334, 20078, 0, 'kazzak SAY_AGGRO2'),
(12397, 2, 0, '所有的生命都将被根除！', 14, 0, 0, 0, 0, 11335, 20079, 0, 'kazzak SAY_SURPREME1'),
(12397, 2, 1, '我要把你们生吞活剥!', 14, 0, 0, 0, 0, 11336, 20080, 0, 'kazzak SAY_SURPREME2'),
(12397, 3, 0, 'Kirel narak!', 14, 0, 0, 0, 0, 11337, 20081, 0, 'kazzak SAY_KILL1'),
(12397, 3, 1, '可笑的蠢货！', 14, 0, 0, 0, 0, 11338, 20082, 0, 'kazzak SAY_KILL2'),
(12397, 4, 0, '军团……永远不会……失败。', 14, 0, 0, 0, 0, 11340, 20084, 0, 'kazzak SAY_DEATH'),
(12397, 5, 0, '%s陷入疯狂！', 16, 0, 0, 0, 0, 0, 38630, 0, 'kazzak EMOTE_FRENZY'),
(12397, 6, 0, '入侵者，你们在遗忘的深渊边缘摇摆！燃烧军团就是你们的末日！\n', 14, 0, 0, 0, 0, 0, 15895, 0, 'kazzak SAY_RAND1'),
(12397, 6, 1, '可笑的凡人，你们只是延迟了不可避免的命运。一个恶魔倒下去，十个恶魔会站起来。这就是卡扎克的意志……', 14, 0, 0, 0, 0, 0, 16432, 0, 'kazzak SAY_RAND2'),
(12397, 7, 0, '宇宙将获得新生。', 14, 0, 0, 0, 0, 11339, 20083, 0, 'kazzak SAY_WIPE'),
(12397, 8, 0, '卡扎克是至高无上的！', 16, 0, 0, 0, 0, 0, 0, 0, 'kazzak SAY_SUPREME_VANILA');

DELETE FROM `creature` WHERE `guid` = 156950 AND `id1` = 12397;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(156950, 12397, 0, 0, 0, 0, 0, 1, 1, 0, -12241.3, -2432.1, 2.93936, 3.26504, 604800, 259200, 0, 1, 0, 2, 0, 0, 0, '', 0);

DELETE FROM `reference_loot_template` WHERE `Entry` = 60000;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(60000, 17111, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 17112, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 17113, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 18204, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 18543, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 18544, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 18546, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 19133, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 19134, 0, 0, 0, 1, 1, 1, 1, NULL),
(60000, 19135, 0, 0, 0, 1, 1, 1, 1, NULL);

DELETE FROM `creature_loot_template` WHERE `Entry` = 12397 AND `Reference` = 60000;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12397, 1, 60000, 100, 0, 1, 1, 2, 2, NULL);

DELETE FROM `creature_loot_template` WHERE `Entry` = 12397 AND `Item` IN (19133, 19134, 19135, 18546, 18544, 18543, 18204, 17113, 17112, 17111);

DELETE FROM `waypoint_data` WHERE `id` = 1569500;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(1569500, 1, -12241.3, -2432.1, 2.93936, 0, 30000, 0, 0, 100, 0),
(1569500, 2, -12271.6, -2453.36, 3.84158, 0, 0, 0, 0, 100, 0),
(1569500, 3, -12279.2, -2488.66, 4.38164, 0, 0, 0, 0, 100, 0),
(1569500, 4, -12275.1, -2520.88, 3.67985, 0, 0, 0, 0, 100, 0),
(1569500, 5, -12224.9, -2522.83, 1.56836, 0, 0, 0, 0, 100, 0),
(1569500, 6, -12191.6, -2502.13, -0.148134, 0, 0, 0, 0, 100, 0),
(1569500, 7, -12114.8, -2510.99, 3.11959, 0, 40000, 0, 0, 100, 0),
(1569500, 8, -12138.4, -2494.16, 3.89333, 0, 0, 0, 0, 100, 0),
(1569500, 9, -12166, -2478.6, 0.810272, 0, 0, 0, 0, 100, 0),
(1569500, 10, -12171.4, -2452.79, -0.15142, 0, 0, 0, 0, 100, 0),
(1569500, 11, -12208, -2436.73, 0.09382, 0, 0, 0, 0, 100, 0);

DELETE FROM `creature_addon` WHERE (`guid` IN (156950));
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(156950, 1569500, 0, 0, 0, 0, 0, NULL);


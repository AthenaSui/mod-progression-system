-- Add attunement requirements for TBC
DELETE FROM `dungeon_access_requirements` WHERE `comment` LIKE 'Progression:%' AND `dungeon_access_id` IN (33,34,48,49,54,55,29,46,47,32,64);
INSERT INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `leader_only`, `requirement_note`, `comment`) VALUES
(33, 2, 28395, 1, (NULL), 'Progression: Hellfire Citadel: The Shattered Halls (Normal)'),
(34, 2, 28395, 1, (NULL), 'Progression: Hellfire Citadel: The Shattered Halls (Heroic)'),
(48, 2, 31084, 1, (NULL), 'Progression: Tempest Keep: The Arcatraz (Normal)'),
(49, 2, 31084, 1, (NULL), 'Progression: Tempest Keep: The Arcatraz (Heroic)'),
(54, 2, 27991, 1, (NULL), 'Progression: Auchindoun: Shadow Labyrinth (Normal)'),
(55, 2, 27991, 1, (NULL), 'Progression: Auchindoun: Shadow Labyrinth (Heroic)'),
(29, 2, 24490, 0, '您必须拥有“麦迪文的钥匙”才能进入卡拉赞。', 'Progression: Phase 1: Karazhan'),
(46, 1, 13431, 0, '你必须完成任务“卡达什圣杖”才能进入毒蛇神殿。', 'Progression: Phase 2: Serpentshrine Cavern'),
(47, 2, 31704, 0, '你必须拥有“风暴钥匙”才能进度风暴要塞。', 'Progression: Phase 2: The Eye'),
(32, 1, 13432, 0, '你必须完成任务“永恒水瓶”才能进入海加尔山之战。', 'Progression: Phase 3: Battle for Mount Hyjal'),
(64, 1, 10985, 0, '你必须拥有“卡拉波勋章”才能进度黑暗神殿。', 'Progression: Phase 3: The Black Temple');

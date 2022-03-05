-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 05 2022 г., 03:34
-- Версия сервера: 10.5.6-MariaDB
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task03_books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `Surname` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `Name`, `Surname`) VALUES
(1, 'King', 'ADZ'),
(2, 'ROY', 'ARUNDHATI'),
(3, 'Soazig', 'Aaron'),
(4, 'Paul', 'Abbott'),
(5, 'Diane', 'Abbott'),
(6, 'Diane', 'Abbott'),
(7, 'Hanif', 'Abdurraqib'),
(8, 'Gary', 'Abromovitz'),
(9, 'Susanna', 'Abse'),
(10, 'Jessica', 'Adams'),
(11, 'Morley', 'Adams'),
(12, 'Tim', 'Adams'),
(13, 'Judith', 'Adamson'),
(14, 'Cameron', 'Addicott'),
(15, 'Hakim', 'Adi'),
(16, 'Mark', 'Adkin'),
(17, 'Peter', 'Adolphsen'),
(18, 'Patrice', 'Aggs'),
(19, 'Pinky', 'Agnew'),
(20, 'Jonathan', 'Agnew'),
(21, 'Julian', 'Aguon'),
(22, 'Mike', 'Ahern'),
(23, 'Elsie', 'Aidinoff'),
(24, 'Eve', 'Ainsworth');

-- --------------------------------------------------------

--
-- Структура таблицы `author_book`
--

CREATE TABLE `author_book` (
  `Fk_author_id` int(11) NOT NULL,
  `Fk_book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author_book`
--

INSERT INTO `author_book` (`Fk_author_id`, `Fk_book_id`) VALUES
(1, 3),
(1, 35),
(1, 36),
(1, 43),
(1, 57),
(1, 66),
(1, 73),
(1, 75),
(1, 79),
(1, 99),
(1, 106),
(1, 113),
(1, 125),
(1, 140),
(2, 16),
(2, 19),
(2, 20),
(2, 25),
(2, 28),
(2, 42),
(2, 44),
(2, 45),
(2, 46),
(2, 49),
(2, 51),
(2, 67),
(2, 79),
(2, 86),
(2, 92),
(2, 93),
(2, 102),
(2, 128),
(2, 134),
(2, 144),
(2, 148),
(3, 4),
(3, 11),
(3, 14),
(3, 34),
(3, 48),
(3, 58),
(3, 67),
(3, 71),
(3, 73),
(3, 90),
(3, 97),
(3, 116),
(3, 121),
(3, 130),
(3, 148),
(4, 3),
(4, 6),
(4, 9),
(4, 34),
(4, 39),
(4, 63),
(4, 75),
(4, 116),
(4, 136),
(4, 137),
(4, 139),
(5, 8),
(5, 10),
(5, 12),
(5, 25),
(5, 37),
(5, 47),
(5, 62),
(5, 69),
(5, 72),
(5, 81),
(5, 92),
(5, 93),
(5, 100),
(5, 108),
(5, 110),
(5, 119),
(5, 129),
(5, 134),
(5, 135),
(6, 11),
(6, 21),
(6, 28),
(6, 45),
(6, 53),
(6, 63),
(6, 82),
(6, 114),
(6, 129),
(6, 145),
(7, 6),
(7, 13),
(7, 18),
(7, 32),
(7, 41),
(7, 60),
(7, 61),
(7, 66),
(7, 70),
(7, 73),
(7, 75),
(7, 80),
(7, 83),
(7, 101),
(7, 115),
(7, 132),
(7, 147),
(8, 27),
(8, 48),
(8, 51),
(8, 53),
(8, 60),
(8, 64),
(8, 72),
(8, 74),
(8, 76),
(8, 100),
(8, 107),
(8, 113),
(8, 148),
(9, 4),
(9, 18),
(9, 26),
(9, 43),
(9, 51),
(9, 57),
(9, 63),
(9, 69),
(9, 79),
(9, 105),
(9, 120),
(9, 125),
(9, 126),
(9, 142),
(9, 149),
(10, 12),
(10, 21),
(10, 35),
(10, 51),
(10, 69),
(10, 77),
(10, 82),
(10, 87),
(10, 88),
(10, 94),
(10, 108),
(10, 109),
(10, 126),
(10, 127),
(10, 128),
(10, 134),
(11, 7),
(11, 9),
(11, 14),
(11, 52),
(11, 55),
(11, 70),
(11, 78),
(11, 91),
(11, 94),
(11, 97),
(11, 102),
(11, 110),
(11, 117),
(11, 121),
(11, 124),
(11, 127),
(11, 130),
(11, 139),
(12, 8),
(12, 11),
(12, 22),
(12, 25),
(12, 26),
(12, 30),
(12, 38),
(12, 39),
(12, 52),
(12, 57),
(12, 89),
(12, 92),
(12, 96),
(12, 99),
(12, 116),
(12, 120),
(12, 122),
(12, 129),
(12, 146),
(12, 147),
(12, 149),
(13, 18),
(13, 25),
(13, 29),
(13, 33),
(13, 44),
(13, 54),
(13, 83),
(13, 84),
(13, 94),
(13, 95),
(13, 103),
(13, 138),
(13, 143),
(14, 19),
(14, 28),
(14, 37),
(14, 38),
(14, 52),
(14, 55),
(14, 56),
(14, 58),
(14, 89),
(14, 92),
(14, 95),
(14, 98),
(14, 112),
(14, 125),
(14, 132),
(14, 135),
(14, 146),
(15, 6),
(15, 10),
(15, 17),
(15, 19),
(15, 22),
(15, 24),
(15, 35),
(15, 37),
(15, 39),
(15, 55),
(15, 62),
(15, 66),
(15, 67),
(15, 74),
(15, 82),
(15, 86),
(15, 90),
(15, 118),
(15, 124),
(15, 127),
(15, 135),
(16, 9),
(16, 32),
(16, 42),
(16, 77),
(16, 79),
(16, 80),
(16, 84),
(16, 85),
(16, 86),
(16, 93),
(16, 97),
(16, 106),
(16, 115),
(16, 130),
(16, 149),
(17, 4),
(17, 5),
(17, 31),
(17, 39),
(17, 49),
(17, 50),
(17, 59),
(17, 67),
(17, 84),
(17, 90),
(17, 104),
(17, 105),
(17, 110),
(17, 111),
(17, 117),
(17, 124),
(17, 136),
(17, 138),
(17, 141),
(17, 145),
(18, 2),
(18, 12),
(18, 17),
(18, 23),
(18, 38),
(18, 43),
(18, 50),
(18, 53),
(18, 76),
(18, 88),
(18, 108),
(18, 140),
(19, 2),
(19, 4),
(19, 20),
(19, 30),
(19, 40),
(19, 47),
(19, 57),
(19, 62),
(19, 90),
(19, 103),
(19, 110),
(19, 113),
(19, 123),
(19, 131),
(19, 134),
(20, 16),
(20, 17),
(20, 21),
(20, 23),
(20, 30),
(20, 44),
(20, 50),
(20, 75),
(20, 88),
(20, 96),
(20, 120),
(20, 137),
(20, 138),
(20, 145),
(21, 8),
(21, 11),
(21, 26),
(21, 31),
(21, 34),
(21, 40),
(21, 42),
(21, 45),
(21, 46),
(21, 47),
(21, 54),
(21, 91),
(21, 99),
(21, 103),
(21, 116),
(21, 124),
(21, 142),
(22, 20),
(22, 33),
(22, 60),
(22, 61),
(22, 73),
(22, 80),
(22, 100),
(22, 120),
(22, 127),
(22, 128),
(22, 129),
(22, 133),
(22, 146),
(23, 2),
(23, 15),
(23, 21),
(23, 45),
(23, 48),
(23, 53),
(23, 61),
(23, 65),
(23, 68),
(23, 83),
(23, 87),
(23, 95),
(23, 97),
(23, 103),
(23, 111),
(23, 114),
(23, 121),
(23, 132),
(23, 137),
(23, 138),
(23, 145),
(23, 148),
(24, 1),
(24, 26),
(24, 27),
(24, 31),
(24, 42),
(24, 52),
(24, 59),
(24, 62),
(24, 65),
(24, 93),
(24, 137),
(24, 140);

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `ISBN` varchar(17) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `ISBN`, `title`, `pages`) VALUES
(1, '8317892423099', 'Abandon', 862),
(2, '2893485865652', 'A Christmas Carol', 393),
(3, '5264580025939', 'A Clash of Kings', 2044),
(4, '2938510854725', 'Across the Universe', 2292),
(5, '7874095891377', 'A Dance with Dragons', 1674),
(6, '5213708282993', 'A Feast for Crows', 1669),
(7, '3823023117797', 'A Game of Thrones', 2143),
(8, '9945967392708', 'All the Bright Places', 2846),
(9, '970020789006', 'Allegiant', 2474),
(10, '4888040068265', 'Along for the Ride', 2218),
(11, '678277471097', 'Am I Normal Yet?', 3641),
(12, '2704433619437', 'A Monster Calls', 1455),
(13, '190843439506', 'Angel of Storms', 2647),
(14, '2569546571581', 'A Storm of Swords: Steel and Snow', 1354),
(15, '6458036194222', 'A Storm of Swords: Blood and Gold', 270),
(16, '3895310791007', 'A Street Cat Named Bob', 847),
(17, '4106888908725', 'Atonement', 1442),
(18, '8907491906808', 'A Tale of Two Cities', 1982),
(19, '7036706509947', 'Beautiful Creatures', 650),
(20, '5764995892652', 'Beautiful Darkness', 2730),
(21, '6568632932843', 'Bitten', 514),
(22, '1882174334353', 'Book of Shadows', 3220),
(23, '756225878659', 'Brisingr', 1938),
(24, '4865839547808', 'Catching Fire', 3486),
(25, '545447264976', 'Crescendo', 2640),
(26, '5053592553827', 'Dash and Lily’s Book of Dares', 996),
(27, '2782485036811', 'David Copperfield', 400),
(28, '1618058034368', 'Destined', 2416),
(29, '413050672794', 'Devoted', 1888),
(30, '6405242944070', 'Die Trying', 1732),
(31, '8695080677131', 'Divergent', 2862),
(32, '2086347113171', 'Dracula', 2814),
(33, '2781758400978', 'Dragon’s Oath', 1756),
(34, '8030313099859', 'Dreamland', 2220),
(35, '7584092589094', 'Dry', 1141),
(36, '9628804670553', 'Eight Mile Island', 2842),
(37, '5892612973487', 'Elantris', 2300),
(38, '5466889957762', 'Eldest', 3134),
(39, '1708840140056', 'Emma', 1011),
(40, '472689111242', 'Empress of All Seasons', 2472),
(41, '8929190332754', 'Eragon', 1725),
(42, '6202781532826', 'Evercrossed', 845),
(43, '3656886943084', 'Everlasting', 380),
(44, '6434703734218', 'Everafter', 3756),
(45, '8377135147561', 'Fahrenheit 451', 1749),
(46, '9912247838948', 'Fangirl', 2378),
(47, '2165374687269', 'Finale', 3552),
(48, '5503077949891', 'Good Wives', 1390),
(49, '7238548286358', 'Go Set a Watchman', 3021),
(50, '5953068134337', 'Great Expectations', 2244),
(51, '2543139767694', 'Hidden', 2883),
(52, '9400213030624', 'Hood', 3650),
(53, '6926492711352', 'House Rules', 1397),
(54, '7152435299425', 'Hush Hush', 2924),
(55, '1001793938493', 'I Am Number Four', 1185),
(56, '1684769367339', 'I Heart Paris', 1365),
(57, '7648018967808', 'I Heart Hollywood', 651),
(58, '2488829097571', 'I Heart London', 3096),
(59, '3559226312329', 'I Heart New York', 496),
(60, '5232799324163', 'I Heart Vegas', 2188),
(61, '8109917417047', 'Inheritance', 3799),
(62, '4200126870567', 'Insurgent', 1993),
(63, '2857901323379', 'It', 343),
(64, '4012277650852', 'Jane Eyre', 2802),
(65, '3581147843783', 'Just Listen', 3058),
(66, '3125264483640', 'Kalona’s Fall', 3394),
(67, '2965469183919', 'Killing Floor', 944),
(68, '4692845320958', 'Kingdom of Ash', 2947),
(69, '4367272098308', 'Kissed', 1853),
(70, '4217632984812', 'Lair of Dreams', 2886),
(71, '3686826597777', 'Leah on the Offbeat', 1598),
(72, '3571521309898', 'Little Women', 3400),
(73, '707365825327', 'Lock And Key', 2510),
(74, '485281921121', 'Lenobia’s Vow', 1243),
(75, '6518902092258', 'Martyn Pig', 3645),
(76, '7162303084058', 'Matched', 1859),
(77, '7711759560609', 'Me Before You', 1896),
(78, '1673217118148', 'Mockingjay', 3758),
(79, '2144770825459', 'Mind the Gap', 3055),
(80, '6410858819185', 'My Heart Goes Bang', 3975),
(81, '8347209592476', 'My Trickster', 3320),
(82, '973353838063', 'Neferet’s Curse', 3106),
(83, '443834940698', 'Only Love Can Break Your Heart', 3057),
(84, '5208433237508', 'On Writing: A Memoir of the Craft', 1510),
(85, '9467978150869', 'Origins', 1273),
(86, '5464107841365', 'Picture Me Gone', 1409),
(87, '1828450561496', 'Pride and Prejudice', 1578),
(88, '766695555013', 'Quiet: The Power of Introverts in a World that Can’t Stop Talking', 2821),
(89, '2094625889974', 'Redeemed', 3374),
(90, '7608090107366', 'Remix', 2654),
(91, '3137881616024', 'Revealed', 1712),
(92, '1123172764340', 'Romanov', 977),
(93, '9450410155472', 'Rosie Loves Jack', 2736),
(94, '6869746643779', 'Scythe', 2462),
(95, '1358390509276', 'Shades of Grey', 2847),
(96, '8635178554268', 'Shadow of the Fox', 1066),
(97, '1278148285258', 'Silence', 2898),
(98, '9835737746184', 'Stardust', 1613),
(99, '2823069537464', 'Stuart Little', 1985),
(100, '8310567315189', 'The Ambassador’s Mission', 3637),
(101, '8647795344419', 'The Art of Being Normal', 2289),
(102, '9208420458697', 'The Bone Season', 416),
(103, '6593790684679', 'The Butterfly Tattoo', 1193),
(104, '3824143941546', 'The Brutal Art', 932),
(105, '1021294309146', 'The Casual Vacancy', 351),
(106, '4127006582513', 'The Catcher in the Rye', 2270),
(107, '9577797374574', 'The Collector', 3457),
(108, '6882448207194', 'The Complete Fairytales', 3745),
(109, '9911299009268', 'The Darkness Rising Trilogy', 2781),
(110, '649721944010', 'The Death Cure', 2655),
(111, '3824940533256', 'The Diviners', 2404),
(112, '6930079779932', 'The Elements of Style', 2726),
(113, '1620379220700', 'The Fault in Our Stars', 657),
(114, '2055018531346', 'The Gemstone Chronicles: The Carnelian', 3615),
(115, '8763659088049', 'The Girl Who Kicked the Hornets’ Nest', 2031),
(116, '7525694881302', 'The Girl Who Played With Fire', 1754),
(117, '5142785940781', 'The Great Gatsby', 2178),
(118, '3523959576318', 'The Guy Next Door', 3097),
(119, '5787625086724', 'The Hate U Give', 1392),
(120, '8324248350820', 'The Help', 2687),
(121, '9577361628561', 'The Historian', 3999),
(122, '1020304797092', 'The Hunger Games', 3968),
(123, '6770159962201', 'The Legend of Sleepy Hollow and Other Stories', 3978),
(124, '528864614271', 'The Loneliest Girl in the Universe', 1818),
(125, '5397590866558', 'The Love & Lies of Rukhsana Ali', 1248),
(126, '1260950281975', 'The Lovely Bones', 353),
(127, '6160962591700', 'The Manifesto on How to be Interesting', 3342),
(128, '6242000397101', 'The Maze Runner', 793),
(129, '5590551998099', 'The Mime Order', 2726),
(130, '2187813757333', 'The Perks of Being a Wallflower', 252),
(131, '7700113941537', 'The Picture of Dorian Gray', 985),
(132, '168493757794', 'The Poppy Wars', 3391),
(133, '9293364432051', 'The Price Guide to the Occult', 1586),
(134, '9634973329706', 'The Priory of the Orange Tree', 937),
(135, '9520243374494', 'The Quiet at the End of the World', 2678),
(136, '4455041951744', 'The Rest of Us Just Live Here', 1676),
(137, '6463640566766', 'The Rogue', 1998),
(138, '5945127401457', 'The Scorch Trials', 636),
(139, '4670548260454', 'The Sky is Everywhere', 1346),
(140, '4063577218713', 'The Silver Linings Playbook', 444),
(141, '4319153389129', 'The South in Winter', 3566),
(142, '7947195470531', 'The Stolen', 2493),
(143, '4151332823879', 'The Traitor Queen', 411),
(144, '1125358846129', 'Thief’s Magic', 1699),
(145, '517670822489', 'Throne of Glass', 2569),
(146, '1083390147077', 'To Kill a Mockingbird', 1272),
(147, '3316033891821', 'Trouble', 1736),
(148, '8256544017617', 'Truth or Dare', 488),
(149, '9588012443379', 'The Wonder of Us', 1076);

-- --------------------------------------------------------

--
-- Структура таблицы `book_genre`
--

CREATE TABLE `book_genre` (
  `Fk_book_id` int(11) NOT NULL,
  `Fk_genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book_genre`
--

INSERT INTO `book_genre` (`Fk_book_id`, `Fk_genre_id`) VALUES
(1, 23),
(1, 24),
(2, 6),
(3, 1),
(3, 16),
(4, 5),
(5, 5),
(5, 22),
(6, 12),
(7, 16),
(8, 4),
(9, 10),
(9, 18),
(10, 15),
(10, 25),
(11, 21),
(11, 25),
(12, 25),
(13, 1),
(13, 7),
(14, 5),
(15, 12),
(16, 14),
(17, 13),
(17, 18),
(18, 15),
(18, 25),
(19, 15),
(20, 14),
(21, 2),
(21, 11),
(22, 2),
(23, 2),
(24, 3),
(24, 19),
(25, 23),
(26, 24),
(27, 25),
(28, 8),
(28, 24),
(29, 2),
(29, 7),
(30, 16),
(31, 10),
(31, 25),
(32, 16),
(33, 20),
(33, 24),
(34, 25),
(35, 14),
(36, 5),
(37, 13),
(38, 2),
(38, 8),
(39, 14),
(39, 17),
(40, 10),
(41, 13),
(42, 6),
(43, 6),
(44, 13),
(45, 2),
(46, 24),
(47, 13),
(48, 6),
(48, 11),
(49, 3),
(49, 14),
(50, 3),
(51, 14),
(52, 1),
(53, 20),
(53, 21),
(54, 21),
(55, 22),
(56, 4),
(56, 24),
(57, 12),
(58, 4),
(58, 12),
(59, 9),
(59, 13),
(60, 4),
(60, 13),
(61, 7),
(61, 21),
(62, 10),
(63, 2),
(64, 8),
(64, 10),
(65, 2),
(65, 25),
(66, 9),
(66, 12),
(67, 15),
(68, 25),
(69, 15),
(69, 16),
(70, 11),
(70, 15),
(71, 3),
(71, 8),
(72, 4),
(72, 15),
(73, 24),
(74, 14),
(74, 18),
(75, 13),
(75, 21),
(76, 15),
(77, 1),
(78, 8),
(79, 16),
(79, 18),
(80, 5),
(80, 8),
(81, 2),
(82, 13),
(82, 19),
(83, 24),
(84, 19),
(85, 6),
(85, 9),
(86, 10),
(86, 22),
(87, 12),
(87, 15),
(88, 13),
(89, 5),
(89, 7),
(90, 9),
(91, 1),
(92, 17),
(93, 3),
(93, 9),
(94, 16),
(94, 18),
(95, 4),
(96, 10),
(97, 25),
(98, 4),
(99, 18),
(100, 9),
(101, 1),
(101, 7),
(102, 14),
(102, 16),
(103, 4),
(103, 12),
(104, 8),
(105, 22),
(106, 18),
(107, 21),
(107, 22),
(108, 20),
(108, 25),
(109, 25),
(110, 11),
(111, 5),
(111, 8),
(112, 11),
(112, 13),
(113, 1),
(114, 10),
(114, 17),
(115, 2),
(116, 13),
(117, 7),
(118, 18),
(119, 5),
(119, 7),
(120, 9),
(120, 17),
(121, 7),
(122, 2),
(123, 11),
(124, 16),
(124, 23),
(125, 15),
(126, 6),
(126, 21),
(127, 20),
(127, 23),
(128, 14),
(128, 20),
(129, 2),
(129, 14),
(130, 2),
(130, 12),
(131, 8),
(132, 6),
(133, 2),
(133, 9),
(134, 1),
(134, 3),
(135, 20),
(136, 15),
(137, 20),
(138, 1),
(138, 24),
(139, 8),
(139, 14),
(140, 10),
(140, 22),
(141, 11),
(142, 10),
(143, 10),
(143, 15),
(144, 7),
(144, 11),
(145, 15),
(145, 23),
(146, 15),
(147, 18),
(147, 19),
(148, 24),
(149, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'name'),
(2, 'Fantasy'),
(3, 'Adventure'),
(4, 'Romance'),
(5, 'Contemporary'),
(6, 'Dystopian'),
(7, 'Mystery'),
(8, 'Horror'),
(9, 'Thriller'),
(10, 'Paranormal'),
(11, 'Historical fiction'),
(12, 'Научная фантастика'),
(13, 'Children’s'),
(14, 'Memoir'),
(15, 'Cooking'),
(16, 'Art'),
(17, 'Self-help / Personal'),
(18, 'Development'),
(19, 'Motivational'),
(20, 'Health'),
(21, 'History'),
(22, 'Travel'),
(23, 'Guide / How-to'),
(24, 'Families & Relationships'),
(25, 'Humor'),
(26, 'name'),
(27, 'Fantasy'),
(28, 'Adventure'),
(29, 'Romance'),
(30, 'Contemporary'),
(31, 'Dystopian'),
(32, 'Mystery'),
(33, 'Horror'),
(34, 'Thriller'),
(35, 'Paranormal'),
(36, 'Historical fiction'),
(37, 'Science Fiction'),
(38, 'Children’s'),
(39, 'Memoir'),
(40, 'Cooking'),
(41, 'Art'),
(42, 'Self-help / Personal'),
(43, 'Development'),
(44, 'Motivational'),
(45, 'Health'),
(46, 'History'),
(47, 'Travel'),
(48, 'Guide / How-to'),
(49, 'Families & Relationships'),
(50, 'Humor');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `mostwrittenbooks`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `mostwrittenbooks` (
`id` int(11)
,`name` varchar(101)
,`writtenBooks` bigint(21)
);

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `scifibooks`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `scifibooks` (
`id` int(11)
,`title` varchar(100)
,`bookAuthors` mediumtext
);

-- --------------------------------------------------------

--
-- Структура для представления `mostwrittenbooks`
--
DROP TABLE IF EXISTS `mostwrittenbooks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mostwrittenbooks`  AS SELECT `authors`.`id` AS `id`, concat(`authors`.`Name`,' ',`authors`.`Surname`) AS `name`, `mw`.`writtenBooks` AS `writtenBooks` FROM (`authors` join (select `author_book`.`Fk_author_id` AS `Fk_author_id`,count(0) AS `writtenBooks` from `author_book` group by `author_book`.`Fk_author_id` order by count(0) desc limit 1) `mw` on(`mw`.`Fk_author_id` = `authors`.`id`)) ;

-- --------------------------------------------------------

--
-- Структура для представления `scifibooks`
--
DROP TABLE IF EXISTS `scifibooks`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `scifibooks`  AS SELECT `books`.`id` AS `id`, `books`.`title` AS `title`, group_concat(distinct concat(`au`.`Name`,' ',`au`.`Surname`) separator ', ') AS `bookAuthors` FROM (((((`books` join `author_book` on(`author_book`.`Fk_book_id` = `books`.`id`)) join `authors` `au` on(`au`.`id` = `author_book`.`Fk_author_id`)) join `book_genre` on(`book_genre`.`Fk_book_id` = `books`.`id`)) join `genres` `gen` on(`gen`.`id` = `book_genre`.`Fk_genre_id`)) join `book_genre` `bg` on(`book_genre`.`Fk_book_id` = `books`.`id`)) WHERE `bg`.`Fk_genre_id` = 12 GROUP BY `books`.`id` ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD PRIMARY KEY (`Fk_author_id`,`Fk_book_id`),
  ADD KEY `author_book_ibfk_2` (`Fk_book_id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD PRIMARY KEY (`Fk_book_id`,`Fk_genre_id`),
  ADD KEY `book_genre_ibfk_2` (`Fk_genre_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_ibfk_1` FOREIGN KEY (`Fk_author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `author_book_ibfk_2` FOREIGN KEY (`Fk_book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`Fk_book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`Fk_genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

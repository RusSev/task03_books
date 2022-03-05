-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 05 2022 г., 04:01
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

-- --------------------------------------------------------

--
-- Структура таблицы `author_book`
--

CREATE TABLE `author_book` (
  `Fk_author_id` int(11) NOT NULL,
  `Fk_book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Структура таблицы `book_genre`
--

CREATE TABLE `book_genre` (
  `Fk_book_id` int(11) NOT NULL,
  `Fk_genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

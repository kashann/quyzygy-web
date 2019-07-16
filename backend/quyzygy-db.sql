-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: iul. 17, 2019 la 12:52 AM
-- Versiune server: 10.1.38-MariaDB
-- Versiune PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `quyzygy-db`
--
CREATE DATABASE IF NOT EXISTS `quyzygy-db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quyzygy-db`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `activatedquizzes`
--

DROP TABLE IF EXISTS `activatedquizzes`;
CREATE TABLE `activatedquizzes` (
  `QuizID` int(11) NOT NULL,
  `AccessCode` int(11) NOT NULL,
  `Students` mediumtext,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `activatedquizzes`
--

INSERT INTO `activatedquizzes` (`QuizID`, `AccessCode`, `Students`, `StartTime`, `EndTime`, `ID`) VALUES
(1, 7274, '', '2019-07-05 15:28:17', '2019-07-05 17:28:17', 0),
(5, 9128, '', '2019-07-05 15:28:20', '2019-07-05 18:28:20', 0),
(6, 2512, '', '2019-07-05 15:28:21', '2019-07-05 18:28:21', 0),
(7, 8371, '', '2019-07-05 15:28:23', '2019-07-05 17:28:23', 0),
(8, 3607, '', '2019-07-05 15:28:24', '2019-07-05 18:28:24', 0),
(1, 3578, '', '2019-07-05 15:31:45', '2019-07-05 17:31:45', 0),
(5, 1182, '', '2019-07-05 15:31:47', '2019-07-05 18:31:47', 0),
(6, 6773, '', '2019-07-05 15:31:49', '2019-07-05 18:31:49', 0),
(7, 2838, '', '2019-07-05 15:31:50', '2019-07-05 17:31:50', 0),
(8, 9454, '', '2019-07-05 15:31:51', '2019-07-05 18:31:51', 0),
(1, 9618, '', '2019-07-05 15:40:34', '2019-07-05 17:40:34', 0),
(5, 5567, '', '2019-07-05 15:42:24', '2019-07-05 18:42:24', 0),
(7, 3143, '', '2019-07-05 15:42:28', '2019-07-05 17:42:28', 0),
(8, 3625, '', '2019-07-05 15:45:35', '2019-07-05 18:45:35', 0),
(6, 9088, '', '2019-07-05 16:20:31', '2019-07-05 19:20:31', 0),
(1, 4029, '', '2019-07-05 16:38:14', '2019-07-05 18:38:14', 0),
(1, 2177, '', '2019-07-05 16:41:05', '2019-07-05 18:41:05', 0),
(1, 1512, '', '2019-07-05 16:43:57', '2019-07-05 18:43:57', 0),
(1, 7118, '', '2019-07-05 16:47:40', '2019-07-05 18:47:40', 0),
(1, 9042, '', '2019-07-06 16:57:39', '2019-07-06 18:57:39', 0),
(1, 3331, '', '2019-07-06 17:01:55', '2019-07-06 19:01:55', 0),
(12, 6710, '', '2019-07-06 17:43:31', '2019-07-07 01:43:31', 0),
(12, 3878, '', '2019-07-06 18:43:37', '2019-07-07 02:37:37', 0),
(1, 4403, '', '2019-07-06 18:46:56', '2019-07-06 20:56:56', 0),
(5, 7148, '', '2019-07-06 18:46:59', '2019-07-06 21:59:59', 0),
(1, 9747, '', '2019-07-06 19:00:49', '2019-07-06 21:49:49', 0),
(5, 8468, '', '2019-07-06 19:13:40', '2019-07-06 22:40:40', 0),
(6, 7163, '', '2019-07-06 19:15:29', '2019-07-06 22:29:29', 0),
(1, 9904, '', '2019-07-09 14:45:17', '2019-07-09 16:17:17', 0),
(1, 1565, '', '2019-07-09 16:05:46', '2019-07-09 18:46:46', 0),
(1, 3012, '', '2019-07-09 16:05:58', '2019-07-09 18:58:58', 0),
(5, 7195, '', '2019-07-09 16:11:27', '2019-07-09 19:27:27', 0),
(1, 9715, '', '2019-07-09 20:22:55', '2019-07-09 22:55:55', 0),
(1, 5875, '', '2019-07-09 20:23:47', '2019-07-09 22:47:47', 0),
(1, 1219, '', '2019-07-09 20:34:27', '2019-07-09 22:27:27', 0),
(1, 1438, '', '2019-07-09 20:36:26', '2019-07-09 22:26:26', 0),
(1, 6202, '', '2019-07-09 20:39:25', '2019-07-09 22:25:25', 0),
(1, 5258, '', '2019-07-09 20:40:27', '2019-07-09 22:27:27', 0),
(1, 2319, '', '2019-07-09 20:41:22', '2019-07-09 22:22:22', 0),
(1, 3498, '', '2019-07-09 20:42:22', '2019-07-09 22:22:22', 0),
(1, 2971, '', '2019-07-09 20:43:33', '2019-07-09 22:33:33', 0),
(1, 4692, '', '2019-07-09 20:50:32', '2019-07-09 22:32:32', 0),
(1, 2724, '', '2019-07-09 20:51:35', '2019-07-09 22:35:35', 0),
(1, 9270, '', '2019-07-09 21:36:25', '2019-07-09 23:25:25', 0),
(1, 7702, '', '2019-07-09 21:46:03', '2019-07-09 23:03:03', 0),
(1, 7414, '', '2019-07-09 21:49:49', '2019-07-09 23:49:49', 0),
(1, 3710, '', '2019-07-09 21:49:49', '2019-07-09 23:49:49', 0),
(1, 9317, '', '2019-07-09 21:58:40', '2019-07-09 22:00:40', 0),
(1, 9136, '', '2019-07-09 22:04:12', '2019-07-09 22:06:12', 0),
(1, 3233, '', '2019-07-09 22:04:13', '2019-07-09 22:06:13', 0),
(1, 6789, '', '2019-07-09 22:06:30', '2019-07-09 22:08:30', 0),
(1, 2365, '', '2019-07-09 22:52:41', '2019-07-09 22:54:41', 0),
(1, 1829, '', '2019-07-14 10:28:15', '2019-07-14 10:30:15', 0),
(1, 6327, '', '2019-07-14 10:32:13', '2019-07-14 10:34:13', 0),
(1, 6435, '', '2019-07-14 10:36:28', '2019-07-14 10:38:28', 0),
(5, 7693, '', '2019-07-14 10:39:26', '2019-07-14 10:42:26', 0),
(1, 6587, '', '2019-07-14 13:45:10', '2019-07-14 13:47:10', 0),
(1, 4851, '', '2019-07-14 15:18:45', '2019-07-14 15:20:45', 0),
(1, 5172, '', '2019-07-14 15:44:09', '2019-07-14 15:46:09', 0),
(1, 3960, '', '2019-07-14 15:55:21', '2019-07-14 15:57:21', 0),
(1, 3142, '', '2019-07-14 15:57:57', '2019-07-14 15:59:57', 0),
(1, 8561, '', '2019-07-14 16:03:17', '2019-07-14 16:05:17', 0),
(1, 9676, '', '2019-07-14 16:06:25', '2019-07-14 16:08:25', 0),
(1, 6156, '', '2019-07-14 16:11:23', '2019-07-14 16:13:23', 0),
(1, 5663, '', '2019-07-14 16:15:53', '2019-07-14 16:17:53', 0),
(1, 3718, '', '2019-07-14 16:18:11', '2019-07-14 16:20:11', 0),
(1, 3972, '', '2019-07-14 18:37:09', '2019-07-14 18:39:09', 0),
(5, 4938, '', '2019-07-14 18:38:29', '2019-07-14 18:41:29', 0),
(6, 3443, '', '2019-07-14 18:40:12', '2019-07-14 18:43:12', 0),
(6, 2751, '', '2019-07-14 19:38:44', '2019-07-14 19:41:44', 0),
(1, 4219, '', '2019-07-14 19:40:33', '2019-07-14 19:42:33', 0),
(5, 3699, '', '2019-07-14 19:43:30', '2019-07-14 19:46:30', 0),
(1, 4583, '', '2019-07-15 15:40:54', '2019-07-15 15:42:54', 0),
(1, 2024, '', '2019-07-15 16:10:16', '2019-07-15 16:12:16', 0),
(1, 9909, '', '2019-07-15 16:10:49', '2019-07-15 16:12:49', 0),
(1, 8961, '', '2019-07-15 16:15:40', '2019-07-15 16:17:40', 0),
(1, 7983, '', '2019-07-15 16:17:54', '2019-07-15 16:19:54', 0),
(1, 9195, '', '2019-07-15 16:36:55', '2019-07-15 16:38:55', 0),
(1, 3015, '', '2019-07-15 18:44:34', '2019-07-15 18:46:34', 0),
(1, 6502, '', '2019-07-15 18:46:09', '2019-07-15 18:48:09', 0),
(1, 6480, '', '2019-07-15 18:49:48', '2019-07-15 18:51:48', 0),
(5, 9195, '', '2019-07-15 18:51:07', '2019-07-15 18:54:07', 0),
(5, 8327, '', '2019-07-15 20:27:41', '2019-07-15 20:30:41', 0),
(5, 9506, '', '2019-07-15 20:28:45', '2019-07-15 20:31:45', 0),
(1, 7844, '', '2019-07-15 20:29:30', '2019-07-15 20:31:30', 0),
(5, 4525, '', '2019-07-15 20:30:06', '2019-07-15 20:33:06', 0),
(1, 1003, '', '2019-07-15 21:25:15', '2019-07-15 21:27:15', 0),
(1, 3187, '', '2019-07-15 21:25:51', '2019-07-15 21:27:51', 0),
(1, 2547, '', '2019-07-15 21:34:10', '2019-07-15 21:36:10', 0),
(1, 8932, '', '2019-07-15 21:39:07', '2019-07-15 21:41:07', 0),
(1, 2212, '', '2019-07-15 21:40:04', '2019-07-15 21:42:04', 0),
(5, 8058, '', '2019-07-15 21:40:30', '2019-07-15 21:43:30', 0),
(5, 4376, '', '2019-07-15 21:41:44', '2019-07-15 21:44:44', 0),
(5, 5315, '', '2019-07-15 21:41:57', '2019-07-15 21:44:57', 0),
(5, 7631, '', '2019-07-15 21:50:23', '2019-07-15 21:53:23', 0),
(1, 8390, '', '2019-07-15 21:57:01', '2019-07-15 21:59:01', 0),
(1, 1451, '', '2019-07-15 22:02:01', '2019-07-15 22:04:01', 0),
(5, 3078, '', '2019-07-15 22:02:32', '2019-07-15 22:05:32', 0),
(5, 7841, '', '2019-07-15 22:03:52', '2019-07-15 22:06:52', 0),
(1, 7568, '', '2019-07-16 00:12:04', '2019-07-16 00:14:04', 0),
(1, 7690, '', '2019-07-16 12:01:20', '2019-07-16 12:03:20', 0),
(5, 1262, '', '2019-07-16 12:11:33', '2019-07-16 12:14:33', 0);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `authenticatedusers`
--

DROP TABLE IF EXISTS `authenticatedusers`;
CREATE TABLE `authenticatedusers` (
  `Email` varchar(50) NOT NULL,
  `SecretKeys` varchar(4096) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `authenticatedusers`
--

INSERT INTO `authenticatedusers` (`Email`, `SecretKeys`, `ID`) VALUES
('blue.carrot@vegetables.com', '[\"00c817783022729be0afd8e30c1015e7\"]', NULL),
('dan@ase.ro', '[\"1b21e3029dc38ab2a3f0d54815a58d48\"]', NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `UserID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `QuizName` varchar(100) NOT NULL,
  `Value` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `Feedback` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `grades`
--

INSERT INTO `grades` (`UserID`, `QuizID`, `QuizName`, `Value`, `Total`, `Feedback`, `Date`, `ID`) VALUES
(5, 12, 'Random Quiz', 50, 60, 'Very good!', '2019-07-06', 15),
(5, 1, 'General knowledge - basic test', 20, 40, 'Pretty good.', '2019-07-09', 20),
(5, 5, 'poo concepts', 20, 30, 'Pretty good.', '2019-07-09', 21),
(22, 5, 'poo concepts', 20, 30, 'Pretty good.', '2019-07-14', 40),
(29, 1, 'General knowledge - basic test', 40, 40, 'Very good!', '2019-07-14', 41),
(22, 1, 'General knowledge - basic test', 40, 40, 'Very good!', '2019-07-14', 42),
(5, 1, 'General knowledge - basic test', 40, 40, 'Very good!', '2019-07-14', 43),
(22, 6, 'poo test2', 10, 30, 'Pretty bad...', '2019-07-14', 48),
(22, 1, 'General knowledge - basic test', 10, 40, 'Pretty bad...', '2019-07-14', 49),
(5, 1, 'General knowledge - basic test', 0, 40, 'Very bad...', '2019-07-15', 52),
(5, 1, 'General knowledge - basic test', 40, 40, 'Very good!', '2019-07-15', 55),
(22, 1, 'General knowledge - basic test', 30, 40, 'Very good!', '2019-07-15', 56),
(22, 5, 'poo concepts', 20, 40, 'Pretty good.', '2019-07-15', 58),
(22, 1, 'General knowledge - basic test', 10, 40, 'Pretty bad...', '2019-07-15', 59),
(22, 1, 'General knowledge - basic test', 20, 40, 'Pretty good.', '2019-07-15', 60),
(22, 5, 'poo concepts', 20, 30, 'Pretty good.', '2019-07-15', 61),
(22, 5, 'poo concepts', 10, 30, 'Pretty bad...', '2019-07-16', 66);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `ID` int(11) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Text` varchar(2048) NOT NULL,
  `Type` varchar(512) NOT NULL,
  `Answers` varchar(4196) NOT NULL,
  `Points` int(11) NOT NULL,
  `CorrectAnswer` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `questions`
--

INSERT INTO `questions` (`ID`, `Author`, `Text`, `Type`, `Answers`, `Points`, `CorrectAnswer`) VALUES
(7, 'blue.carrot@vegetables.com', 'What is the capital of Romania?', 'SingleAnswer', '[\"Bucharest\",\"Budapest\",\"Madrid\",\"Rome\"]', 10, 'Bucharest'),
(8, 'blue.carrot@vegetables.com', 'What year did World War 2 start?', 'SingleAnswer', '[\"1939\",\"1914\",\"1940\",\"1937\",\"1938\"]', 10, '1939'),
(9, 'blue.carrot@vegetables.com', 'What is the standard power line frequency in the USA?', 'SingleAnswer', '[\"50Hz\",\"60Hz\"]', 10, '60Hz'),
(10, 'blue.carrot@vegetables.com', 'In what day of September did World War 2 start?', 'OpenAnswer', '[]', 10, '1'),
(11, 'blue.carrot@vegetables.com', 'What is OOP?', 'OpenAnswer', '[]', 10, 'Object Oriented Programming'),
(12, 'blue.carrot@vegetables.com', 'How many types of constructors are available, in general, in any language?', 'SingleAnswer', '[\"2\",\"3\",\"4\",\"5\"]', 10, '3'),
(17, 'blue.carrot@vegetables.com', 'Which constructor is called while assigning some object with another?', 'SingleAnswer', '[\"Default\",\"Parameterized\",\"Copy\",\"Direct assignment is used\"]', 10, 'Copy'),
(18, 'blue.carrot@vegetables.com', 'Which specifier applies only to the constructors?', 'OpenAnswer', '[]', 10, 'Explicit'),
(19, 'blue.carrot@vegetables.com', 'What day is today?', 'OpenAnswer', '[]', 10, 'Thursday'),
(20, 'blue.carrot@vegetables.com', 'When is the static constructor called?', 'OpenAnswer', '[]', 10, 'before creation of first instance of that class'),
(21, 'popa.bogdan@ase.ro', 'What is a context in android ?', 'SingleAnswer', '[\"It is an interface to store global information about an application\",\"It is used to create new components.\",\"Android has two contexts, those are getContext() and getApplicationContext()\",\"All of Above\"]', 1, 'All of Above'),
(22, 'popa.bogdan@ase.ro', 'How to move services to foreground in android?', 'SingleAnswer', '[\"Services always work in Foreground only\",\"No,We can\'t do this query\",\"Using startService(Intent intent)\",\" startFordgroud(int id, Notification notification).\"]', 1, ' startFordgroud(int id, Notification notification).'),
(25, 'blue.carrot@vegetables.com', 'What is the application class in android?', 'SingleAnswer', '[\"A class that can create only an object\",\"Anonymous class\",\" Java class\",\"Base class for all classes\"]', 1, 'Base class for all classes'),
(27, 'blue.carrot@vegetables.com', 'What is JSON in android?', 'SingleAnswer', '[\"Java Script Object Native\",\"Java Script Oriented Notation\",\"Java Script Object Notation\",\"None of the Above\"]', 1, 'Java Script Object Notation'),
(28, 'blue.carrot@vegetables.com', 'What is singleton class in android?', 'SingleAnswer', '[\"A class that can create only one object\",\"Anonymous class\",\"Java class\",\"Manifest file\"]', 1, 'A class that can create only one object');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE `quizzes` (
  `ID` int(11) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `CourseName` varchar(50) NOT NULL,
  `Questions` varchar(8192) NOT NULL,
  `Duration` int(11) NOT NULL,
  `QuizName` varchar(2048) NOT NULL,
  `Public` tinyint(1) NOT NULL,
  `Geofencing` tinyint(4) NOT NULL,
  `GeofencingData` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `quizzes`
--

INSERT INTO `quizzes` (`ID`, `Author`, `CourseName`, `Questions`, `Duration`, `QuizName`, `Public`, `Geofencing`, `GeofencingData`) VALUES
(1, 'blue.carrot@vegetables.com', 'General knowledge', '[7,8,9,10]', 120, 'General knowledge - basic test', 1, 0, NULL),
(5, 'blue.carrot@vegetables.com', 'poo', '[12,17,18]', 180, 'poo concepts', 1, 0, NULL),
(6, 'blue.carrot@vegetables.com', 'poo', '[11,12,18]', 180, 'poo test2', 1, 0, NULL),
(7, 'blue.carrot@vegetables.com', 'Java', '[7,8]', 120, 'Java SE', 0, 0, NULL),
(8, 'blue.carrot@vegetables.com', 'Object Oriented', '[11,12,20]', 180, 'OOP', 0, 0, NULL),
(12, 'blue.carrot@vegetables.com', 'Life', '[8, 17, 20, 12, 9, 7]', 480, 'Random Quiz', 0, 0, NULL),
(13, 'blue.carrot@vegetables.com', 'CTS', '[8, 11, 18]', 180, 'Design Patterns', 0, 0, NULL),
(14, 'blue.carrot@vegetables.com', 'Testing quiz', '[9, 10]', 120, 'Just a Test', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `PasswordHash` varchar(64) NOT NULL,
  `UserType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`ID`, `FirstName`, `LastName`, `Email`, `PasswordHash`, `UserType`) VALUES
(1, 'Andrei', 'Popescu', 'andrei.popescu@ase.ro', 'EF797C8118F02DFB649607DD5D3F8C7623048C9C063D532CC95C5ED7A898A64F', 'Student'),
(2, 'andreea', 'preda', 'aaa@ppp.com', '1234567891012345678910123456789101234567891012345678910123456789', 'Student'),
(3, 'Mother', 'Horse Eyes', 'mother.he@r.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Student'),
(4, 'Blue', 'Carrot', 'blue.carrot@vegetables.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Professor'),
(5, 'Dan', 'Lana', 'dan@ase.ro', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Student'),
(22, 'Cosmin', 'Preda', 'maria@ase.ro', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Student'),
(29, 'Green', 'Apple', 'green.apple@fruits.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Student'),
(30, 'Popa', 'Bogdan', 'popa.bogdan@ase.ro', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', 'Professor');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `grades`
--
ALTER TABLE `grades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pentru tabele `questions`
--
ALTER TABLE `questions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pentru tabele `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22 Mai 2018 la 23:31
-- Versiune server: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sundaybrawl`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `abilities`
--

CREATE TABLE `abilities` (
  `abilityId` int(11) NOT NULL,
  `charId` int(11) NOT NULL,
  `description` varchar(20) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `type` int(11) NOT NULL,
  `ImgUrl` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `abilities`
--

INSERT INTO `abilities` (`abilityId`, `charId`, `description`, `name`, `type`, `ImgUrl`) VALUES
(1, 1, '', 'Punch', 1, ''),
(2, 1, '', 'Rage', 2, ''),
(3, 1, '', 'Iron Skin', 3, ''),
(4, 1, '', 'HULK SMASH!', 4, ''),
(5, 2, '', 'Sexy justsu', 1, ''),
(6, 2, '', 'Shadow Clone', 2, ''),
(7, 2, '', 'Rasengan', 3, ''),
(8, 2, '', 'Rasen Shuriken', 4, ''),
(9, 3, '', 'Low Kick', 1, ''),
(10, 3, '', 'Web Shot', 2, ''),
(11, 2, '', 'Spider Sense', 3, ''),
(12, 3, '', 'Impress MJ', 4, ''),
(13, 4, '', 'Super Punch', 1, ''),
(14, 4, '', 'Laser Vision', 2, ''),
(15, 4, '', 'Tornado', 3, ''),
(16, 4, '', 'Solar Power', 4, ''),
(17, 5, '', 'Sword Attack', 1, ''),
(18, 5, '', 'Grappling Hook', 2, ''),
(19, 5, '', 'First Aid', 3, ''),
(20, 5, '', 'Titan Transform', 4, ''),
(21, 6, '', 'Ki Blast', 1, ''),
(22, 6, '', 'Twin Dragon Shot', 2, ''),
(23, 6, '', 'Finger Beam', 3, ''),
(24, 6, '', '10x God Kamehameha', 4, '');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `asocchars`
--

CREATE TABLE `asocchars` (
  `charId` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `asocchars`
--

INSERT INTO `asocchars` (`charId`, `id`, `username`) VALUES
(1, 8, 'anggabard'),
(2, 9, 'anggabard'),
(3, 10, 'anggabard'),
(4, 11, 'anggabard'),
(5, 12, 'anggabard'),
(6, 13, 'anggabard'),
(1, 2, 'Nostradamus'),
(2, 3, 'Nostradamus'),
(3, 4, 'Nostradamus'),
(4, 5, 'Nostradamus'),
(5, 6, 'Nostradamus'),
(6, 7, 'Nostradamus');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `asocitems`
--

CREATE TABLE `asocitems` (
  `username` varchar(20) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `itemId` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `char`
--

CREATE TABLE `char` (
  `charId` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `bio` varchar(1000) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `imgUrl` text NOT NULL,
  `att` int(11) NOT NULL,
  `def` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `char`
--

INSERT INTO `char` (`charId`, `name`, `bio`, `imgUrl`, `att`, `def`) VALUES
(1, 'Hulk', 'Hulk este un personaj ficțional, un supererou, care apare în cărțile de benzi desenate publicate de Marvel Comics. Creat de Stan Lee și Jack Kirby, personajul a apărut prima oară în The Incredible Hulk #1 (mai 1962). Hulk este un monstru umanoid mutant, gigantic, verde, iradiat, cu o forță incredibilă și care nu își poate controla furia.', '../../webroot/img/char_portrait_1.jpg', 80, 80),
(2, 'Naruto', 'Naruto este o serie manga japoneză scrisă și ilustrată de Masashi Kishimoto, având și o adaptare anime. Personajul principal, Naruto Uzumaki, este un ninja adolescent, imprevizibil și hiperactiv, care este într-o constantă căutare de cunoaștere, visând să devină Hokage, un ninja recunoscut ca cel mai puternic dintre toți și liderul satului.', '../../webroot/img/char_portrait_2.jpg', 50, 30),
(3, 'SpiderMan', 'Omul Păianjen este de fapt un tânăr student orfan de ambii părinți pe nume Peter Benjamin Parker, care locuia împreună cu unchiul Ben și mătușa May.in New York', '../../webroot/img/char_portrait_3.jpg', 15, 10),
(4, 'SuperMan', 'Superman s-a născut pe planeta Krypton, din părinți pământeni, primind numele de Kal-El. Odată întors pe Terra, datorită puterilor sale extraordinare a ajuns să apere orașul Metropolis, din Statele Unite ale Americii. În timpul liber, Superman este reporter la cotidianul Daily Planet, ascuzându-și adevărata identitate sub numele de Clark Kent. Supergirl, o altă supereroină din universul DC Comics, este verișoara lui Superman.', '../../webroot/img/char_portrait_4.jpg', 80, 60),
(5, 'Eren Jaeger', 'Eren Jeager is a member of the Survey Corps and the main protagonist of Attack on Titan. He lived in the Shiganshina District with his parents and adopted sister Mikasa Ackerman until the fall of Wall Maria. During the incident, Eren impotently witnessed his mother being eaten by a Titan.[26] This event aroused in Eren an intense hatred towards the Titans, and he swore to wipe all of them off the face of the Earth.', '../../webroot/img/char_portrait_5.jpg', 2, 5),
(6, 'Goku', 'Son Goku, born Kakarot, is a male Saiyan and the main protagonist of the Dragon Ball meta-series created by Akira Toriyama. Cheerful, tenacious, and also a bit naïve, Goku is a Saiyan originally sent to Earth as an infant with the mission to destroy it. However, an accident alters his memory, allowing him to grow up pure-hearted and become Earth\'s greatest defender, as well as the informal leader of the Dragon Team. Throughout his life, he constantly strives and trains to be the greatest warrior possible and to fight stronger opponents, which has kept the Earth and the universe safe from destruction many times.', '../../webroot/img/char_portrait_6.jpg', 80, 50);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `imgUrl` varchar(40) NOT NULL,
  `price` int(11) NOT NULL,
  `att` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `items`
--

INSERT INTO `items` (`id`, `name`, `type`, `imgUrl`, `price`, `att`, `def`, `description`) VALUES
(1, 'Batista lui SuperMan', 1, '../../webroot/img/weapon1.jpg', 230, 20, 5, ''),
(2, 'Toporul lui Odin', 1, '../../webroot/img/weapon2.jpg', 500, 50, 15, ''),
(3, 'Fesul lui Dublu D', 0, '../../webroot/img/armor1.jpg', 150, 0, 30, ''),
(4, 'Aparatoare de Cap', 0, '../../webroot/img/armor2.jpg', 150, 0, 20, ''),
(5, 'Sabia lui DEADPOOL', 1, '../../webroot/img/weapon3.jpg', 450, 40, 20, ''),
(6, 'Sort de Bucatarie', 0, '../../webroot/img/armor3.jpg', 650, 0, 100, '');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `user`
--

CREATE TABLE `user` (
  `username` varchar(20) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `money` int(11) NOT NULL,
  `wins` int(11) NOT NULL DEFAULT '0',
  `losses` int(11) NOT NULL DEFAULT '0',
  `gamesPlayed` int(11) NOT NULL DEFAULT '0',
  `gamesPlayedWithAChar` int(11) NOT NULL COMMENT 'De implementat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `money`, `wins`, `losses`, `gamesPlayed`, `gamesPlayedWithAChar`) VALUES
('Adam', 'sexyEva', 'primul_nostru.user@hotmail.com', 0, 0, 0, 0, 0),
('anggabard', 'ceapa123', 'dasd@yahoo.com', 0, 0, 0, 0, 0),
('asdf', 'asdf', 'test@quick.connect', 0, 0, 0, 0, 0),
('Nostradamus', '123', 'ceapa@cea.ro', 0, 0, 0, 0, 0),
('rzv420zbegu', 'nam', 'IamZbegu@html.css', 0, 123, 321, 2, 0),
('TO', 'ilLas', 'teo_jmen@bo.ss', 0, 69, 96, 3, 44),
('urcanCurcan', 'suntparola', 'cristy_raw@yahoo.sc', 0, -1, 100, 20, 23);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `userchr`
--

CREATE TABLE `userchr` (
  `username` varchar(20) CHARACTER SET utf32 COLLATE utf32_romanian_ci NOT NULL,
  `charId` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `gamesPlayed` int(11) NOT NULL,
  `gamesWon` int(11) NOT NULL,
  `gamesLost` int(11) NOT NULL,
  `selectedSkills` int(11) NOT NULL COMMENT 'De implementat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `userchr`
--

INSERT INTO `userchr` (`username`, `charId`, `lvl`, `gamesPlayed`, `gamesWon`, `gamesLost`, `selectedSkills`) VALUES
('anggabard', 1, 0, 0, 0, 0, 0),
('anggabard', 2, 0, 0, 0, 0, 0),
('anggabard', 3, 0, 0, 0, 0, 0),
('anggabard', 4, 1, 0, 0, 0, 0),
('anggabard', 5, 4, 0, 0, 0, 0),
('anggabard', 6, 6, 0, 0, 0, 0),
('Nostradamus', 1, 0, 0, 0, 0, 0),
('Nostradamus', 2, 0, 0, 0, 0, 0),
('Nostradamus', 3, 0, 0, 0, 0, 0),
('Nostradamus', 4, 0, 0, 0, 0, 0),
('Nostradamus', 5, 0, 0, 0, 0, 0),
('Nostradamus', 6, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`abilityId`),
  ADD KEY `charId` (`charId`);

--
-- Indexes for table `asocchars`
--
ALTER TABLE `asocchars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charId` (`charId`),
  ADD KEY `username` (`username`,`charId`);

--
-- Indexes for table `asocitems`
--
ALTER TABLE `asocitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `char`
--
ALTER TABLE `char`
  ADD PRIMARY KEY (`charId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `userchr`
--
ALTER TABLE `userchr`
  ADD PRIMARY KEY (`username`,`charId`),
  ADD KEY `charId` (`charId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `abilityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `asocchars`
--
ALTER TABLE `asocchars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrictii pentru tabele sterse
--

--
-- Restrictii pentru tabele `abilities`
--
ALTER TABLE `abilities`
  ADD CONSTRAINT `abilities_ibfk_1` FOREIGN KEY (`charId`) REFERENCES `char` (`charId`);

--
-- Restrictii pentru tabele `asocchars`
--
ALTER TABLE `asocchars`
  ADD CONSTRAINT `asocchars_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `asocchars_ibfk_2` FOREIGN KEY (`charId`) REFERENCES `char` (`charId`);

--
-- Restrictii pentru tabele `asocitems`
--
ALTER TABLE `asocitems`
  ADD CONSTRAINT `asocitems_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `asocitems_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `items` (`id`);

--
-- Restrictii pentru tabele `userchr`
--
ALTER TABLE `userchr`
  ADD CONSTRAINT `userchr_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `userchr_ibfk_2` FOREIGN KEY (`charId`) REFERENCES `char` (`charId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

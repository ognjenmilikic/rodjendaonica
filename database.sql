-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 01:58 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rodjendaonica2`
--
CREATE DATABASE IF NOT EXISTS `rodjendaonica2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rodjendaonica2`;

-- --------------------------------------------------------

--
-- Table structure for table `agencija`
--

CREATE TABLE `agencija` (
  `agencijaid` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `opis` varchar(600) NOT NULL,
  `adresa` varchar(50) NOT NULL,
  `mapa` varchar(500) NOT NULL,
  `ponudaid` int(11) NOT NULL,
  `menadzerid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agencija`
--

INSERT INTO `agencija` (`agencijaid`, `naziv`, `opis`, `adresa`, `mapa`, `ponudaid`, `menadzerid`) VALUES
(14, 'Decija igraonica \"World of play\"', 'Rezervisite na vreme termin za proslavu rodjendana u Play&Fun igraonici i odlican provod je zagarantovan!\r\nOno sto Play&Fun igraonicu izdvaja od konkurencje je program po kome su deca tokom rodjendana stalno animirana, zatim diskoteka cije je koriscenje sastavni deo svakog rodjendana, kao i takmicarske sportske igre omiljene medju decom, za koje imamo specijalne poligone.', 'Vidikovacki venac 102a', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2834.0088231533523!2d20.413737315749106!3d44.73983678950299!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a71f726087fc9%3A0x5a03840a28893b34!2z0JLQuNC00LjQutC-0LLQsNGH0LrQuCDQstC10L3QsNGGIDEwMmEsINCR0LXQvtCz0YDQsNC0IDExMDAw!5e0!3m2!1ssr!2srs!4v1630080353387!5m2!1ssr!2srs\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1, 3),
(15, 'Igraonica MI-MI LAND', 'Igraonica MI-MI LAND Zeleznik nudi mogucnost organizacije proslava rodjendana kapaciteta do 40-oro dece i 70 odraslih.\r\nU skladu sa Vasim zeljama i zahtevima nudimo kompletnu organizaciju proslava all inclusive.\r\nU nasoj ponudi ocekuje Vas veliki broj termina svakog dana, po najpovoljnijim cenama u gradu.', 'Vodovodska 175E', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2834.0645974654117!2d20.385156115749073!3d44.73869888957815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a6dfdaa8ab079%3A0x7b038e53b500ad29!2zVm9kb3ZvZHNrYSAxNzUsINCR0LXQvtCz0YDQsNC0!5e0!3m2!1ssr!2srs!4v1630080440502!5m2!1ssr!2srs\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 2, 4),
(16, 'Igraonica Mastograd', 'Dragi roditelji, Mastograd decija igraonica Vam je pripremila vise razlicitih paketa za rodjendansku proslavu, od kojih u dogovoru sa Vasim malisanom mozete odabrati onaj koji Vam se najvise dopada, ili iznenadite Vase dete i poklonite mu rodjendan koji ce dugo pamtiti.', 'Pedje Milosavljevica 76a', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2830.149043930254!2d20.372348215751106!3d44.818528184313294!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a6f605ef461f7%3A0xdeb81bfab7171455!2z0J_QtdGS0LUg0JzQuNC70L7RgdCw0LLRmdC10LLQuNGb0LAgNzZhLCDQkdC10L7Qs9GA0LDQtA!5e0!3m2!1ssr!2srs!4v1630080508728!5m2!1ssr!2srs\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 3, 13),
(17, 'Akademija 29', 'Rodjendaonica Akademije 28 predstavlja izuzetno zanimljiv i inovativan koncept proslave roÄendana za decu i odrasle, uz film po izboru ili pozoriÅ¡nu predstavu sa redovnog repertoara.', 'Nemanjina 28', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2830.885312363309!2d20.461333015750643!3d44.80352588530312!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a70082d8dd07d%3A0x7bf86435b4c54b7f!2z0J3QtdC80LDRmtC40L3QsCAyOCwg0JHQtdC-0LPRgNCw0LQ!5e0!3m2!1ssr!2srs!4v1630080559607!5m2!1ssr!2srs\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 9, 14),
(18, 'Rodjendaonica Aquarius', 'Nasa profesionalna organizacija rodjendana nas cini posebnim, jer smo sigurni da ce vasi malisani biti zadovoljni.\r\nProfesionalni tim animatorki ce brinuti o vasim malisanima i proslavu uciniti zaniljivijom i kreativnijom.', 'Zivka Davidovica 73', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2831.619767808796!2d20.512059215750334!3d44.788556586290696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a70996a03d073%3A0xa5dc5cb00b8c22c0!2z0JbQuNCy0LrQsCDQlNCw0LLQuNC00L7QstC40ZvQsCA3Mywg0JHQtdC-0LPRgNCw0LQ!5e0!3m2!1ssr!2srs!4v1630080651586!5m2!1ssr!2srs\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 10, 15),
(19, 'Igraonica Ranch', 'Igraonica Ranch nudi mogucnost proslave rodjendana u veoma prijatnom ambijentu.\r\nKapacitet igraonice u unutrasnjem delu je 50 ljudi, a nasim gostima na raspolaganju je i letnja basta sa 50 mesta, koja predstavlja oazu mira daleko od buke grada.\r\nZa sve goste obezbedjen je adekvatan parking prostor.Organizacija proslave rodjendana u igraonici Ranch podrazumeva brigu o svim sitnicama, tako da Vi i Vasi gosti maksimalno uzivate u zabavi.\r\nPosluzenje mozete prepustiti nama, a postoji i mogucnost da sami donesete Vasu hranu i pice.', 'Lole Ribara 1b', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2834.288046214444!2d20.37437301574895!3d44.73413988987854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a6def5acec07f%3A0x25befafbf71b456f!2z0JvQvtC70LUg0KDQuNCx0LDRgNCwIDEsINCR0LXQvtCz0YDQsNC0!5e0!3m2!1ssr!2srs!4v1630080752576!5m2!1ssr!2srs\" width=\"100%\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 11, 16);

-- --------------------------------------------------------

--
-- Table structure for table `exclusive`
--

CREATE TABLE `exclusive` (
  `exclusiveid` int(11) NOT NULL,
  `opis` varchar(200) NOT NULL,
  `cena` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exclusive`
--

INSERT INTO `exclusive` (`exclusiveid`, `opis`, `cena`) VALUES
(1, 'Ukljuceni prostor, hrana, pice, animator, sportske igre i nakon toga dolazak madjonicara', 15000),
(2, 'Ukljuceni prostor pice hrana i animatori', 16000),
(3, 'Ukljuceni prostor, hrana, pice, animator, dolazak klovna i diskoteka', 14000),
(9, 'Ukljuceni prostor, pice, hrana, animatori i organizovan sportski program za decu', 13000),
(10, 'Ukljuceni prostor, pice, hrana, animatori i dolazak klovna i madjionicara', 12000),
(11, 'Ukljuceni prostor, pice, hrana, animatori organizovani plan i program za decu', 14000);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnikid` int(11) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `bodovi` int(11) DEFAULT 0,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnikid`, `ime`, `prezime`, `email`, `password`, `bodovi`, `role`) VALUES
(1, 'Ognjen', 'Milikic', 'ognjen.milikic97@gmail.com', 'ognjencar', 10, 'admin'),
(3, 'Milica', 'Jovanovic', 'milicajo@gmail.com', 'milicamilica', 0, 'menadzer'),
(4, 'Mirko', 'Lazic', 'lazicmirko@hotmail.com', 'laziclazic', 0, 'menadzer'),
(5, 'Filip', 'Filipovic', 'filipovic@gmail.com', 'filipovicfil', 10, 'korisnik'),
(13, 'Anita', 'Rankovic', 'anirank@gmail.com', 'roletne', 0, 'menadzer'),
(14, 'Zoran', 'Vukic', 'zokizoki@gmail.com', 'zoki12345', 0, 'menadzer'),
(15, 'Slavisa', 'Mihajlovic', 'smihajlovic@gmail.com', 'slavisam', 0, 'menadzer'),
(16, 'Isidora', 'Jankovic', 'ijankovic@gmail.com', 'jankovici', 0, 'menadzer'),
(17, 'Igor', 'Kalezic', 'igork@gmail.com', 'igorigor', 10, 'korisnik'),
(18, 'Radivoje', 'Ljubic', 'radoljub@gmail.com', 'radoljub', 10, 'korisnik'),
(19, 'Slavisa', 'Devitovic', 'devitoah@gmail.com', 'DEVITO', 10, 'korisnik'),
(20, 'Nevena', 'Mitrovic', 'nevenna@gmail.com', 'nevenna', 10, 'korisnik'),
(22, 'Milos', 'Lazic', 'miloslazic@gmail.com', 'miloslazic', 0, 'korisnik');

-- --------------------------------------------------------

--
-- Table structure for table `ponuda`
--

CREATE TABLE `ponuda` (
  `ponudaid` int(11) NOT NULL,
  `standardid` int(11) NOT NULL,
  `premiumid` int(11) NOT NULL,
  `exclusiveid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ponuda`
--

INSERT INTO `ponuda` (`ponudaid`, `standardid`, `premiumid`, `exclusiveid`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(9, 9, 9, 9),
(10, 10, 10, 10),
(11, 11, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `premiumid` int(11) NOT NULL,
  `opis` varchar(200) NOT NULL,
  `cena` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`premiumid`, `opis`, `cena`) VALUES
(1, 'Ukljuceni prostor, pice, hrana, animator i sportske igre', 12000),
(2, 'Ukljuceni prostor pice i hrana', 12000),
(3, 'Ukljuceni prostor, pice, hrana i animator', 11000),
(9, 'Ukljuceni prostor pice i hrana', 8000),
(10, 'Ukljuceni prostor pice hrana i animatori', 10000),
(11, 'Ukljuceni prostor pice hrana i animatori', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `rezervacijaid` int(11) NOT NULL,
  `datum` varchar(20) NOT NULL,
  `vreme` varchar(10) NOT NULL,
  `paket` varchar(20) NOT NULL,
  `opispaketa` varchar(500) NOT NULL,
  `cenapaketa` int(11) DEFAULT 0,
  `agencijaid` int(11) NOT NULL,
  `korisnikid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`rezervacijaid`, `datum`, `vreme`, `paket`, `opispaketa`, `cenapaketa`, `agencijaid`, `korisnikid`) VALUES
(20, '2021-08-31', '15:00', 'STANDARD', 'Ukljuceni prostor i pice', 7000, 16, 17),
(21, '2021-09-07', '14:00', 'EXCLUSIVE', 'Ukljuceni prostor, pice, hrana, animatori i dolazak klovna i madjionicara', 12000, 18, 18),
(22, '2021-09-06', '13:30', 'STANDARD', 'Ukljuceni prostor i pice', 6000, 19, 19),
(25, '2021-09-11', '00:30', 'PREMIUM', 'Ukljuceni prostor pice hrana i animatori', 9000, 18, 5),
(26, '2021-10-05', '15:30', 'PREMIUM', 'Ukljuceni prostor pice i hrana', 12000, 15, 5),
(27, '2021-09-01', '15:00', 'PREMIUM', 'Ukljuceni prostor, pice, hrana i animator', 11000, 16, 20);

-- --------------------------------------------------------

--
-- Table structure for table `standard`
--

CREATE TABLE `standard` (
  `standardid` int(11) NOT NULL,
  `opis` varchar(200) NOT NULL,
  `cena` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standard`
--

INSERT INTO `standard` (`standardid`, `opis`, `cena`) VALUES
(1, 'Proslava u nasoj igraonici, ukljuceni hrana pice i animator', 8000),
(2, 'Ukljucen samo prostor', 8000),
(3, 'Ukljuceni prostor i pice', 7000),
(9, 'Ukljucen samo prostor', 5000),
(10, 'Ukljuceni prostor, pice i hrana', 8000),
(11, 'Ukljuceni prostor i pice', 6000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agencija`
--
ALTER TABLE `agencija`
  ADD PRIMARY KEY (`agencijaid`),
  ADD KEY `menadzerid` (`menadzerid`),
  ADD KEY `ponudaid` (`ponudaid`);

--
-- Indexes for table `exclusive`
--
ALTER TABLE `exclusive`
  ADD PRIMARY KEY (`exclusiveid`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnikid`);

--
-- Indexes for table `ponuda`
--
ALTER TABLE `ponuda`
  ADD PRIMARY KEY (`ponudaid`),
  ADD KEY `standardid` (`standardid`),
  ADD KEY `premiumid` (`premiumid`),
  ADD KEY `exclusiveid` (`exclusiveid`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`premiumid`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`rezervacijaid`),
  ADD KEY `agencijaid` (`agencijaid`),
  ADD KEY `korisnikid` (`korisnikid`);

--
-- Indexes for table `standard`
--
ALTER TABLE `standard`
  ADD PRIMARY KEY (`standardid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agencija`
--
ALTER TABLE `agencija`
  MODIFY `agencijaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exclusive`
--
ALTER TABLE `exclusive`
  MODIFY `exclusiveid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnikid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ponuda`
--
ALTER TABLE `ponuda`
  MODIFY `ponudaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
  MODIFY `premiumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `rezervacijaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `standard`
--
ALTER TABLE `standard`
  MODIFY `standardid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agencija`
--
ALTER TABLE `agencija`
  ADD CONSTRAINT `agencija_ibfk_1` FOREIGN KEY (`menadzerid`) REFERENCES `korisnik` (`korisnikid`),
  ADD CONSTRAINT `agencija_ibfk_2` FOREIGN KEY (`ponudaid`) REFERENCES `ponuda` (`ponudaid`);

--
-- Constraints for table `ponuda`
--
ALTER TABLE `ponuda`
  ADD CONSTRAINT `ponuda_ibfk_1` FOREIGN KEY (`standardid`) REFERENCES `standard` (`standardid`),
  ADD CONSTRAINT `ponuda_ibfk_2` FOREIGN KEY (`premiumid`) REFERENCES `premium` (`premiumid`),
  ADD CONSTRAINT `ponuda_ibfk_3` FOREIGN KEY (`exclusiveid`) REFERENCES `exclusive` (`exclusiveid`);

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `rezervacija_ibfk_1` FOREIGN KEY (`agencijaid`) REFERENCES `agencija` (`agencijaid`),
  ADD CONSTRAINT `rezervacija_ibfk_2` FOREIGN KEY (`korisnikid`) REFERENCES `korisnik` (`korisnikid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

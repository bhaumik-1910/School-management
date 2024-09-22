-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 11:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Id` int(11) NOT NULL,
  `G_Name` varchar(30) NOT NULL,
  `G_Email` varchar(30) NOT NULL,
  `C_Name` varchar(30) NOT NULL,
  `C_Age` int(5) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Id`, `G_Name`, `G_Email`, `C_Name`, `C_Age`, `Message`) VALUES
(1, 'manjibhai', 'manjibhai@gmail.com', 'manu', 10, 'hello ');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `sid` int(10) NOT NULL,
  `date` date NOT NULL,
  `aid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`sid`, `date`, `aid`) VALUES
(3, '2024-09-21', 8);

-- --------------------------------------------------------

--
-- Table structure for table `attendancereport`
--

CREATE TABLE `attendancereport` (
  `aid` int(20) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `hno` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `capacity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`hno`, `title`, `location`, `capacity`) VALUES
('3-A', 'BCA', 'Blobk-A', 70),
('3-B', 'Bsc-it', 'Blobk-B', 50),
('3-C', 'BCA', 'Blobk-C', 65),
('3-D', 'Bsc-it', 'Blobk-D', 50),
('3-E', 'BCA', 'Blobk-E', 70);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `Id` int(11) NOT NULL,
  `Y_name` varchar(30) NOT NULL,
  `Y_email` varchar(30) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`Id`, `Y_name`, `Y_email`, `Subject`, `Message`) VALUES
(2, 'Kothiya Bhaumik ', 'bhaumik@gmail.com', 'Python', 'Samjatu nathi'),
(3, 'Gajera Prince', 'prince@gmail.com', 'J2EE', 'vahh srs'),
(4, 'Gajera Prince', 'prince@gmail.com', 'J2EE', 'vahh srs'),
(5, 'Gajera Prince', 'prince@gmail.com', 'J2EE', 'vahh srs');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `classroom` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `subject`, `teacher`, `classroom`, `date`, `stime`, `etime`) VALUES
(1, '21275003', '18466609', '3-A', '2024-07-08', '04:00:00', '05:00:00'),
(2, '31302945', '3614650', '3-B', '2024-07-09', '04:00:00', '05:00:00'),
(3, '45506890', '41972491', '3-C', '2024-07-10', '04:00:00', '05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `examresult`
--

CREATE TABLE `examresult` (
  `exam` int(11) NOT NULL,
  `student` varchar(50) NOT NULL,
  `marks` int(10) NOT NULL,
  `grade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examresult`
--

INSERT INTO `examresult` (`exam`, `student`, `marks`, `grade`) VALUES
(1, '25142821', 77, 'A'),
(1, '79325536', 80, 'A'),
(2, '25142821', 80, 'A+'),
(2, '79325536', 90, 'A+'),
(3, '25142821', 90, 'A+'),
(3, '79325536', 77, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `notice` varchar(1500) NOT NULL,
  `odience` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`, `odience`, `date`) VALUES
(2, 'Meeting', 'Parent', '2020-05-28 02:53:02'),
(3, 'aaasas', 'All', '2020-05-28 02:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `job` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `nic` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`pid`, `fname`, `lname`, `contact`, `job`, `address`, `gender`, `nic`, `email`) VALUES
(1, 'GHANSHYAMBHAI', 'AKABARI ', '7855660224', 'Farmer', 'Rajkot', 'Male', '7855485552V', 'ghanshyam@gmail.com'),
(2, 'MUKESHBHAI', 'LIMBANI ', '7434068546', 'Enginner', 'Rajkot', 'Male', '7855485553V', 'mukesh@gmail.com'),
(3, 'SURESHBHAI', 'KOTHIYA ', '9313629723', 'Enginner', 'Rajkot', 'Male', '7855485554V', 'suresh@gmail.com'),
(4, 'SUBHASCHANDRA', 'AKBARI ', '7855660224', 'Farmer', 'Rajkot', 'Male', '7855485555V', 'subhashschndra@gmail.com'),
(5, 'SURESHBHAI', 'AMIPARA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485556V', 'asuresh@gmail.com'),
(6, 'HASMUKHBHAI', 'ASHIYANI ', '9874561224', 'Enginner', 'Rajkot', 'Male', '7855485557V', 'hasmukh@gmail.com'),
(7, 'JAGADISHBHAI', 'BORAD ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485558V', 'jagdish@gmail.com'),
(8, 'PARSOTAMBHAI', 'BUHA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485559V', 'parsotam@gmail.com'),
(9, 'SANJAYBHAI', 'CHAUHAN ', '9874561224', 'Enginner', 'Rajkot', 'Male', '7855485560V', 'sanjay@gmail.com'),
(10, 'ASHOKSINH', 'CHUDASAMA ', '9687596585', 'Enginner', 'Rajkot', 'Male', '7855485561V', 'ashokshinh@gmail.com'),
(11, 'PRAKASHBHAI', 'DADHANIYA ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485562V', 'prakash@gmail.com'),
(12, 'BAKULBHAI', 'DAFDA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485563V', 'bakul@gmail.com'),
(13, 'RAMESHBHAI', 'DHARAJIYA ', '9687596585', 'Enginner', 'Rajkot', 'Male', '7855485564V', 'ramesh@gmail.com'),
(14, 'BHAVESHBHAI', 'DHOLARIYA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485565V', 'bhavesh@gamil.com'),
(15, 'ASHOKBHAI', 'DOBARIYA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485566V', 'ashok@gmail.com'),
(16, 'BHIKHABHAI', 'DONGA ', '7855660224', 'Farmer', 'Rajkot', 'Male', '7855485567V', 'bhikhabhai@gmail.com'),
(17, 'GOPALBHAI', 'DUSARA ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485568V', 'gopal@gmail.com'),
(18, 'HITESHBHAI', 'FALDU ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485569V', 'hitesh@gmail.com'),
(19, 'ARVINDBHAI', 'GADHER ', '7434068546', 'Enginner', 'Rajkot', 'Male', '7855485570V', 'arvind@gmail.com'),
(20, 'KISHORBHAI', 'GAJERA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485571V', 'kishor@gmail.com'),
(21, 'ARVINDBHAI', 'GALORIYA ', '7434068546', 'Enginner', 'Rajkot', 'Male', '7855485572V', 'garvind@gmail.com'),
(22, 'HARDEVGIRI', 'GAUSWAMI ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485573V', 'haredevgiri@gmail.com'),
(23, 'PRAFULBHAI', 'GHETIYA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485574V', 'paraful@gmail.com'),
(24, 'TEJASBHAI', 'GOHEL ', '7855660224', 'Enginner', 'Rajkot', 'Male', '7855485575V', 'tejsh@gmail.com'),
(25, 'VINODBHAI', 'GONDALIYA ', '7855660224', 'Enginner', 'Rajkot', 'Male', '7855485576V', 'vinod@gmail.com'),
(26, 'JAYSUKHBHAI', 'JADAV ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485577V', 'jayshukh@gmail.com'),
(27, 'PARSOTAMBHAI', 'JARIYA ', '7855660224', 'Farmer', 'Rajkot', 'Male', '7855485578V', 'jparsotam@gmail.com'),
(28, 'JENTIBHAI', 'KAPADIYA ', '9874561224', 'Enginner', 'Rajkot', 'Male', '7855485579V', 'jenti@gmail.com'),
(29, 'PARESHBHAI', 'KHATRI ', '7855660224', 'Enginner', 'Rajkot', 'Male', '7855485580V', 'paresh@gmail.com'),
(30, 'MAGANBHAI', 'KOLADIYA ', '7855660224', 'Bussines', 'Rajkot', 'Male', '7855485581V', 'magan@gmail.com'),
(31, 'KANTILAL', 'MALAVIYA ', '9874561224', 'Enginner', 'Rajkot', 'Male', '7855485582V', 'kantilal@gmail.com'),
(32, 'VIKRAMBHAI', 'MODEDRA ', '9687596585', 'Enginner', 'Rajkot', 'Male', '7855485583V', 'vikram@gmail.com'),
(33, 'SHAILESHBHAI', 'MUNGRA ', '9687596585', 'Enginner', 'Rajkot', 'Male', '7855485584V', 'shailesh@gmail.com'),
(34, 'VARINDBHAI', 'NAKANI ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485585V', 'varind@gmail.com'),
(35, 'SURESHBHAI', 'PADALIYA ', '9313629723', 'Enginner', 'Rajkot', 'Male', '7855485586V', 'sureshp@gmail.com'),
(36, 'MAHESHBHAI', 'PAMBHAR ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485587V', 'mahesh@gmail.com'),
(37, 'KALESHBHAI', 'PANDVO ', '9313629723', 'Enginner', 'Rajkot', 'Male', '7855485588V', 'kamlesh@gmail.com'),
(38, 'ROHITBHAI', 'PANDYA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485589V', 'rohit@gmail.com'),
(39, 'JAGDISHBHAI', 'PANSURIYA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485590V', 'jagdish@gmail.cm'),
(40, 'MUKESHBHAI', 'PARAKARA ', '7434068546', 'Bussines', 'Rajkot', 'Male', '7855485591V', 'pmukesh@gmail.com'),
(41, 'SANJAYBHAI', 'PAREKH ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485592V', 'psanjay@gmail.com'),
(42, 'ASHVINBHAI', 'PARMAR ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485593V', 'ashvin@gmail.com'),
(43, 'SHAILESHBHAI', 'PARMAR ', '7434068546', 'Enginner', 'Rajkot', 'Male', '7855485594V', 'pshailesh@gmail.com'),
(44, 'CHAGANBHAI', 'PIPALIYA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485595V', 'chagan@gmail.com'),
(45, 'PRASHANTBHAI', 'PRADHAN ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485596V', 'prashant@gmail.com'),
(46, 'JAYDEEPBHAI', 'RATHOD ', '7855660224', 'Farmer', 'Rajkot', 'Male', '7855485597V', 'jaydeep@gmail.com'),
(47, 'MUKESHBHAI', 'RATHOD ', '9313629723', 'Farmer', 'Rajkot', 'Male', '7855485598V', 'rmukesh@gmail.com'),
(48, 'MUKESHBHAI', 'SAKARIYA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485599V', 'smukesh@gmail.com'),
(49, 'HITESHBHAI', 'SARAPDADIYA ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485600V', 'shitesh@gmail.com'),
(50, 'SURESHBHAI', 'SAVALIYA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485601V', 'ssuresh@gmail.com'),
(51, 'VRAJLALBHAI', 'SAVSANI ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485602V', 'vrajlal@gmail.com'),
(52, 'CHIMANBHAI', 'SAYJA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485603V', 'chiman@gmail.com'),
(53, 'RAJESHBHA', 'SEJPAL ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485604V', 'rajesh@gami.com'),
(54, 'MUKESHBHAI', 'SOLANKI ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485605V', 'nmukesh@gmail.com'),
(55, 'JAGDISHBHAI', 'SORATHIYA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485606V', 'sjagdish@gmail.com'),
(56, 'JAGDISHBHAI', 'SORATHIYA ', '9874561224', 'Farmer', 'Rajkot', 'Male', '7855485607V', 'jagdishs@gmail.com'),
(57, 'MUKESHBHAI', 'TALAVIYA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485608V', 'tmukesh@gmail.com'),
(58, 'DHIRAJBHAI', 'TARAVIYA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485609V', 'diraj@gmail.com'),
(59, 'RAJESHBHAI', 'TANK ', '7855660224', 'Enginner', 'Rajkot', 'Male', '7855485610V', 'trajesh@gami.com'),
(60, 'RAHULBHAI', 'THAKKAR', '9687596585', 'Enginner', 'Rajkot', 'Male', '7855485611V', 'rahul@gmail.com'),
(61, 'KHODIDASBHAI', 'THUMMAR ', '9313629723', 'Farmer', 'Rajkot', 'Male', '7855485612V', 'khodidas@gmail.com'),
(62, 'CHANDRKANTBHAI', 'VADHAVANA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485613V', 'chandrkant@gmail.com'),
(63, 'PRAFULBHAI', 'VAGHASIYA ', '9687596585', 'Farmer', 'Rajkot', 'Male', '7855485614V', 'vparaful@gmail.com'),
(64, 'KETANKUMAR', 'VAGHASIYA ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485615V', 'ketan@gmail.com'),
(65, 'NILESHBHAI', 'VAGHASIYA ', '7434068546', 'Enginner', 'Rajkot', 'Male', '7855485616V', 'nilesh@gmail.com'),
(66, 'BHUPATBHAI', 'VAGHASIYA ', '7434068546', 'Enginner', 'Rajkot', 'Male', '7855485617V', 'bhupat@gmail.com'),
(67, 'PARESHBHAI', 'VAISHNAV ', '7434068546', 'Enginner', 'Rajkot', 'Male', '7855485618V', 'vparesh@gmail.com'),
(68, 'HITESHBHAI', 'VANIYA ', '7434068546', 'Farmer', 'Rajkot', 'Male', '7855485619V', 'vhitesh@gmail.com'),
(69, 'KISHORBHAI', 'VORA ', '9313629723', 'Farmer', 'Rajkot', 'Male', '7855485620V', 'vkishor@gmail.com'),
(70, 'BHUPATBHAI', 'ZAPDA ', '9687596585', 'Enginner', 'Rajkot', 'Male', '7855485621V', 'bupat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `stime` time NOT NULL,
  `class` varchar(50) NOT NULL,
  `etime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `subject`, `teacher`, `day`, `stime`, `class`, `etime`) VALUES
(3, '21275003', '3614650', 'Monday', '09:00:00', '3-B', '10:00:00'),
(4, '31302945', '41972491', 'Monday', '09:00:00', '3-C', '10:00:00'),
(5, '31302945', '62207555', 'Monday', '09:00:00', '3-A', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` varchar(25) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `address` varchar(250) NOT NULL,
  `parent` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `classroom` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `fname`, `lname`, `bday`, `address`, `parent`, `gender`, `classroom`, `email`) VALUES
('10252379', 'HARSHIL', 'SAKARIYA ', '2004-07-10', 'Rajkot', 48, 'Male', '3-C', 'harshil@gmail.com'),
('10556147', 'BHAUMIK', 'KOTHIYA ', '2024-09-19', 'Rajkot', 3, 'Male', '3-B', 'bhaumik@gmaill.com'),
('12005742', 'VIPUL ', 'DHARAJIYA ', '2004-07-10', 'Rajkot', 13, 'Male', '3-C', 'vipul@gmail.com'),
('13612004', 'BANSI ', 'GALORIYA ', '2004-07-10', 'Rajkot', 21, 'Female', '3-C', 'bansi@gmail.com'),
('13732567', 'ACHYUT ', 'VAGHASIYA ', '2024-08-10', 'Rajkot', 63, 'Male', '3-B', 'achyut@gmail.com'),
('14502776', 'VIRAJ ', 'SEJPAL ', '2005-03-09', 'Rajkot', 53, 'Male', '3-C', 'viraj@gmail.com'),
('18986355', 'GHANSHYAM ', 'DADHANIYA ', '2024-08-10', 'Rajkot', 11, 'Male', '3-B', 'ghanshyam@gmail.com'),
('1970562', 'JASH ', 'GHETIYA ', '2024-08-29', 'Rajkot', 23, 'Male', '3-C', 'jash@gmail.com'),
('20825657', 'KRUNAL ', 'ASHIYANI ', '2005-03-09', 'Rajkot', 6, 'Male', '3-B', 'krunal@gmail.com'),
('2233337', 'DHYEY ', 'SAVALIYA ', '2004-10-19', 'Rajkot', 50, 'Male', '3-B', 'dhyey@gmail.com'),
('25142821', 'NIL', 'AKABARI ', '2024-09-15', 'Rajkot', 1, 'Male', '3-B', 'nil@gmail.com'),
('25301165', 'BANSI ', 'TARAVIYA ', '2024-08-29', 'Rajkot', 58, 'Female', '3-C', 'tbansi@gmail.com'),
('25862015', 'CHIRAG ', 'JARIYA ', '2004-05-27', 'Rajkot', 27, 'Male', '3-B', 'chiarg@gmail.com'),
('27318074', 'SMIT ', 'JADAV ', '2004-10-19', 'Rajkot', 26, 'Male', '3-B', 'jsmit@gmail.com'),
('27537271', 'YASH ', 'KHATRI ', '2024-08-10', 'Rajkot', 29, 'Male', '3-B', 'kyash@gmail.com'),
('31056969', 'PANKESH ', 'MALAVIYA ', '2024-09-18', 'Rajkot', 31, 'Male', '3-B', 'pankesh@gmail.com'),
('31064788', 'AYUSH ', 'THAKKAR ', '2024-08-10', 'Rajkot', 60, 'Male', '3-B', 'thakkar@gamil.com'),
('3348894', 'KHUSHI ', 'VADHAVANA ', '2024-08-29', 'Rajkot', 62, 'Female', '3-C', 'khushi@gmail.com'),
('35219993', 'UDAY ', 'FALDU ', '2024-08-10', 'Rajkot', 18, 'Male', '3-B', 'uday@gmail.com'),
('36130832', 'VRAJ ', 'PAREKH ', '2004-10-19', 'Rajkot', 41, 'Male', '3-C', 'pvraj@gmail.com'),
('37395958', 'AKSHAY ', 'SAVSANI ', '2024-08-29', 'Rajkot', 51, 'Male', '3-C', 'akshay@gmail.com'),
('37940695', 'DARSHNA ', 'GAUSWAMI ', '2010-08-08', 'Rajkot', 22, 'Female', '3-C', 'darshna@gmail.com'),
('38657049', 'DEEP ', 'TANK ', '2024-08-10', 'Rajkot', 59, 'Male', '3-B', 'deep@gamil.com'),
('41335159', 'TEJASVI ', 'PANDVO ', '2004-05-27', 'Rajkot', 37, 'Female', '3-C', 'tejasvi@gmail.com'),
('43039138', 'POONAM ', 'PRADHAN ', '2005-03-09', 'Rajkot', 45, 'Female', '3-C', 'poonam@gamil.com'),
('4358697', 'KIRTAN ', 'VAGHASIYA ', '2004-10-19', 'Rajkot', 65, 'Male', '3-B', 'vkirtan@gmail.com'),
('4959690', 'TRUSHAL ', 'KAPADIYA ', '2004-07-10', 'Rajkot', 28, 'Male', '3-B', 'trushal@gmail.com'),
('50536988', 'HIRVIT ', 'PAMBHAR ', '2024-08-10', 'Rajkot', 36, 'Male', '3-B', 'hirvit@gmail.com'),
('51454207', 'VRAJ ', 'MUNGRA ', '2024-08-29', 'Rajkot', 33, 'Male', '3-B', 'vraj@gmail.com'),
('52122973', 'ASHISH ', 'PARMAR ', '2024-08-10', 'Rajkot', 42, 'Male', '3-B', 'ashish@gmail.com'),
('54783852', 'BHAVIN ', 'GONDALIYA ', '2024-08-29', 'Rajkot', 25, 'Male', '3-B', 'bhavin@gmail.com'),
('54965701', 'SMIT ', 'DUSARA ', '2004-07-10', 'Rajkot', 17, 'Male', '3-B', 'smit@gmail.com'),
('55153875', 'ABHAYRAJSINH ', 'CHUDASAMA ', '2004-10-19', 'Rajkot', 10, 'Male', '3-B', 'abhayrajsinh@gmail.com'),
('55941080', 'KIRTANKUMAR ', 'BUHA ', '2004-10-19', 'Rajkot', 8, 'Male', '3-B', 'kirtan@gmail.com'),
('56607245', 'NIKHIL ', 'SOLANKI ', '2024-08-29', 'Rajkot', 54, 'Male', '3-B', 'nikhil@gmail.com'),
('59314413', 'GHANSHYAM ', 'PARAKARA ', '2004-07-10', 'Rajkot', 40, 'Male', '3-B', 'pghanshyam@gmail.com'),
('60298640', 'RAKSHIT ', 'GOHEL ', '2005-03-09', 'Rajkot', 24, 'Male', '3-B', 'raxit@gmail.com'),
('6144390', 'SAMIR ', 'NAKANI ', '2004-07-10', 'Rajkot', 34, 'Male', '3-B', 'samir@gmail.com'),
('62940644', 'SANNI ', 'RATHOD ', '2024-08-29', 'Rajkot', 47, 'Male', '3-B', 'sanni@gmail.com'),
('63534966', 'JAY ', 'PANSURIYA ', '2005-03-09', 'Rajkot', 39, 'Male', '3-B', 'jay@gmail.com'),
('65344999', 'DHRUV ', 'CHAUHAN ', '2024-08-10', 'Rajkot', 9, 'Male', '3-B', 'dhruv@gmail.com'),
('65991252', 'HEMANGI ', 'SORATHIYA ', '2005-03-09', 'Rajkot', 55, 'Female', '3-C', 'hemangi@gamil.com'),
('67527959', 'PRINS ', 'GAJERA ', '2005-03-09', 'Rajkot', 20, 'Male', '3-B', 'princ@gmail.com'),
('67598175', 'CHETNA ', 'GAUSWAMI ', '2024-08-10', 'Rajkot', 22, 'Female', '3-C', 'chetna@gmail.com'),
('70164467', 'ABHAY ', 'VANIYA ', '2005-03-09', 'Rajkot', 68, 'Male', '3-C', 'abhay@gmail.com'),
('72264507', 'JASMIN ', 'DHOLARIYA ', '2024-08-29', 'Rajkot', 14, 'Male', '3-C', 'jasmin@gmail.com'),
('72663233', 'VISHWASH ', 'PANDYA ', '2005-03-09', 'Rajkot', 38, 'Male', '3-C', 'vishwash@gmail.com'),
('72766971', 'BHRUGESH ', 'VAGHASIYA ', '2005-03-09', 'Rajkot', 64, 'Male', '3-B', 'bhrugesh@gmail.com'),
('73987541', 'MEHUL ', 'GADHER ', '2004-10-19', 'Rajkot', 19, 'Male', '3-C', 'mehul@gmail.com'),
('74341726', 'MEET ', 'VORA ', '2024-08-10', 'Rajkot', 69, 'Male', '3-C', 'meet@gmail.com'),
('79325536', 'NIJ ', 'AKABARI ', '2005-03-09', 'Rajkot', 1, 'Male', '3-B', 'nij@gmail.coom'),
('79801721', 'SHYAM ', 'ZAPDA ', '2024-08-29', 'Rajkot', 70, 'Male', '3-B', 'shyam@gmail.com'),
('80051462', 'KASHYAP ', 'PADALIYA ', '2024-08-29', 'Rajkot', 35, 'Male', '3-B', 'kashyap@gmail.com'),
('82158847', 'KISHAN ', 'MODEDRA ', '2024-08-29', 'Rajkot', 32, 'Male', '3-B', 'kishan@gmail.com'),
('8254676', 'YASH ', 'SORATHIYA ', '2004-10-19', 'Rajkot', 56, 'Male', '3-B', 'syash@gamil.com'),
('82615431', 'PRATIK', 'VAGHASIYA ', '2005-03-09', 'Rajkot', 66, 'Male', '3-B', 'pratik@gmail.com'),
('84380561', 'JENIL', 'DOBARIYA ', '2024-08-10', 'Rajkot', 15, 'Male', '3-B', 'jenil@gmail.com'),
('85817009', 'RUDRA', 'LIMBANI ', '2024-09-02', 'Rajkot', 2, 'Male', '3-B', 'rudra@gmail.com'),
('85941209', 'HARDEEP ', 'PIPALIYA ', '2004-05-27', 'Rajkot', 44, 'Male', '3-B', 'hardeep@gmail.com'),
('86917767', 'MINNAT ', 'BORAD ', '2005-03-09', 'Rajkot', 7, 'Male', '3-B', 'minnat@gamil.com'),
('87436917', 'ARPIT ', 'SAYJA ', '2004-07-10', 'Rajkot', 52, 'Male', '3-B', 'arpit@gmail.com'),
('88026743', 'MANAV ', 'TALAVIYA ', '2004-07-10', 'Rajkot', 57, 'Male', '3-B', 'manav@gamil.com'),
('88164263', 'DARSHAN ', 'THUMMAR ', '2004-07-10', 'Rajkot', 61, 'Male', '3-B', 'darshn@gmail.com'),
('89606018', 'DHRUV ', 'PARMAR ', '2004-10-19', 'Rajkot', 43, 'Male', '3-B', 'pdhruv@gmail.com'),
('90027453', 'PARTH ', 'DONGA ', '2024-09-11', 'Rajkot', 16, 'Male', '3-B', 'parth@gamil.com'),
('92730782', 'AYUSHI ', 'DAFDA ', '2004-10-19', 'Rajkot', 12, 'Female', '3-C', 'ayushi@gmail.com'),
('92972968', 'DISHANT ', 'AMIPARA', '2024-09-09', 'Rajkot', 5, 'Male', '3-C', 'amit@gmail.com'),
('94108926', 'RAVI ', 'KOLADIYA ', '2024-08-29', 'Rajkot', 30, 'Male', '3-B', 'ravi@gmail.com'),
('95839409', 'RAVIRAJ ', 'RATHOD ', '2004-10-19', 'Rajkot', 46, 'Male', '3-B', 'raviraj@gmail.com'),
('96412857', 'MAULIK ', 'SARAPDADIYA ', '2024-08-10', 'Rajkot', 49, 'Male', '3-B', 'maulik@gmail.com'),
('98158700', 'TIRTH ', 'VAISHNAV ', '2004-07-10', 'Rajkot', 67, 'Male', '3-C', 'tirth@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` varchar(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `title`, `description`) VALUES
('21275003', 'Python', 'Python Basic'),
('31302945', 'Cyber Security', 'Cyber Security Basic'),
('45506890', 'J2EE', 'J2EE Basic');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `skill` varchar(500) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `fname`, `lname`, `address`, `contact`, `bday`, `skill`, `gender`, `email`) VALUES
('18466609', 'JAYDEEP', 'SIR', 'Rajkot', '9313629723', '2004-07-10', 'Computer', 'Male', 'jaydeep@gmail.com'),
('28680047', 'RADHA', 'MEDAM', 'Rajkot', '9687596585', '1994-06-14', 'PHP', 'Female', 'radha@gmail.com'),
('33246307', 'PARTH ', 'SIR', 'Rajkot', '7855660224', '1994-06-14', 'C++', 'Male', 'parth@gamil.com'),
('3614650', 'RADHIKA', 'MEDAM', 'Rajkot', '9687596585', '1990-09-23', 'Python', 'Female', 'radhika@gmail.com'),
('37540158', 'VIRANCHHI', 'SIR', 'Rajkot', '9687596585', '1990-03-09', 'Networking', 'Male', 'viranchhi@gmail.com'),
('41972491', 'HARDIK', 'SIR', 'Rajkot', '9687596585', '1990-09-11', 'CS', 'Male', 'hardik@gmail.com'),
('4862532', 'RAJ', 'SIR', 'Rajkot', '7434068546', '1998-08-14', 'C Language', 'Male', 'raj@gmail.com'),
('61597552', 'SHRUTI', 'MEDAM', 'Rajkot', '9687596585', '1994-06-14', 'CF', 'Female', 'shruti@gmail.com'),
('62207555', 'RASHESH', 'SIR', 'Rajkot', '7855660224', '1995-07-10', 'J2EE', 'Male', 'rashesh@gmail.com'),
('72652537', 'KHUSHBU', 'MEDAM', 'Rajkot', '7434068546', '2023-10-09', 'Joomla', 'Female', 'khushbu@gmail.com'),
('75855875', 'BHOOMI', 'MEDAM', 'Rajkot', '9313629723', '1994-06-14', 'Java', 'Female', 'bhoomi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `role` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`role`, `email`, `password`) VALUES
('Teacher', 'hardik@gmail.com', 'hardik'),
('Student', 'nil@gmail.com', 'nil'),
('Parent', 'suresh@gmail.com', 'suresh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attendancereport`
--
ALTER TABLE `attendancereport`
  ADD PRIMARY KEY (`aid`,`sid`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`hno`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresult`
--
ALTER TABLE `examresult`
  ADD PRIMARY KEY (`exam`,`student`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Des 2022 pada 01.00
-- Versi server: 10.3.37-MariaDB-cll-lve
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookoeme_wp377`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `total_pages` varchar(50) NOT NULL,
  `published_at` datetime NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `book`
--

INSERT INTO `book` (`id`, `name`, `author`, `price`, `description`, `image`, `total_pages`, `published_at`, `isbn`, `rating`, `stock`) VALUES
(1114, 'Harry Potter ', 'J.K Rowling', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886d295521c.jpg', '636', '2022-11-22 00:00:00', '0-7475-4624-X', '4', 1),
(1115, 'Lord of the ring', 'J. R. R. Tolkien', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886d42d31c2.jpg', '423', '2022-11-23 00:00:00', '978-0-5440-0341-5', '4', 20),
(1116, 'Hunger Games', 'Suzanne Collins', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886d53b0455.jpg', '374', '2022-11-24 00:00:00', '978-0-439-02352-8', '4', -7),
(1117, 'CatchingFire', 'Suzanne Collins', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886d68a6616.jpg', '391', '2022-11-20 00:00:00', '978-0-545-22724-7', '5', -4),
(1118, 'Mockingjay', 'Suzanne Collins', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886e79af8f8.png', '390', '2022-11-10 00:00:00', '978-0-439-02351-1', '4', 20),
(1119, 'Divergent', 'Veronica Roth', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886eb01287d.jpg', '487', '2022-11-29 00:00:00', '0-06-202402-7', '5', -7),
(1120, 'Insurgent', 'Veronica Roth', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886ec5b7333.jpg', '525', '2022-11-27 00:00:00', ' 0-06-202404-3', '2', 19),
(1121, 'Allegiant', 'Veronica Roth', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886eda09301.jpg', '526', '2022-11-01 00:00:00', '0-06-202406-X', '3', 20),
(1122, 'Mazerunner', 'James Dashner', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886f2291722.jpg', '375', '2022-11-14 00:00:00', '978-0-385-73794-4', '4', 20),
(1123, 'Scorchtrial', 'James Dashner', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886f374ca11.jpg', '361', '2022-11-08 00:00:00', '978-0-385-73875-0', '5', 6),
(1124, 'Deathcure', 'James Dashner', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886f4da23b0.jpg', '325', '2022-12-01 00:00:00', '978-0-385-73877-4', '1', -34),
(1125, 'Bumi', 'Tere Liye', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886f5da8a66.jpg', '440', '2022-11-22 00:00:00', '978-602-030-112-9', '2', -16),
(1126, 'Bulan', 'Tere Liye', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886f96e5ad5.jpg', '440', '2022-11-08 00:00:00', '978-602-030-112-9', '2', 20),
(1127, 'Matahari', 'Tere Liye', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886fa6a76f4.jpg', '390', '2022-11-30 00:00:00', '978-602-033-211-6', '3', -62),
(1128, 'Rajaraturahasia', 'Wulanfadi', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886fb9283c2.jpg', '388', '2022-11-07 00:00:00', '978-602-6940-26-1', '1', 14),
(1129, 'Akubencicinta', 'Wulanfadi', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886fd72db51.jpg', '492', '2022-11-19 00:00:00', '978-602-6940-79-7', '1', 20),
(1130, 'Thefeeling', 'Vanillametzy', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886feabf80a.jpg', '360', '2022-11-23 00:00:00', '978-602-6940-39-1', '2', 7),
(1131, 'Dilan', 'Pidi Baiq', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63886ffb8aac7.jpg', '332', '2022-11-18 00:00:00', '978-602-7870-41-3', '4', 4),
(1132, 'Maps', 'Radin Azkia', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '638870776039e.jpg', '372', '2022-11-16 00:00:00', '978-602-6922-32-8', '5', 20),
(1133, 'Dearnathan', 'Erisca Febriani', '30.00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', '63887091ed7b7.jpg', '528', '2022-11-24 00:00:00', '978-602-6940-14-8', '2', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id_cart`, `user_id`, `book_id`, `qty`, `price`) VALUES
(47, 106, 1124, 1, '3.00'),
(53, 106, 1117, 1, '3.00'),
(122, 60, 1124, 1, '3.00'),
(144, 108, 1125, 1, '30.00'),
(155, 111, 1127, 1, '30.00'),
(160, 112, 1123, 1, '30.00'),
(161, 113, 1125, 1, '30.00'),
(162, 114, 1114, 1, '30.00'),
(163, 116, 1127, 1, '30.00'),
(164, 117, 1116, 1, '30.00'),
(165, 115, 1127, 1, '30.00'),
(166, 118, 1123, 1, '30.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `transaction_item_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `transaction_item_id`, `user_id`, `total_harga`, `img`) VALUES
(11, 0, 101, 6, 'images/10-12-2022-1670674116-10000.jpg'),
(12, 0, 107, 0, 'images/10-12-2022-1670676177-10000.jpg'),
(13, 0, 101, 6, 'images/10-12-2022-1670677205-10000.jpg'),
(14, 0, 101, 6, 'images/10-12-2022-1670677208-10000.jpg'),
(15, 0, 101, 12, 'images/10-12-2022-1670690080-10000.jpg'),
(16, 0, 101, 6, 'images/10-12-2022-1670690518-10000.jpg'),
(17, 0, 101, 6, 'images/10-12-2022-1670690982-10000.jpg'),
(18, 0, 101, 6, 'images/10-12-2022-1670692996-10000.jpg'),
(19, 0, 101, 12, 'images/10-12-2022-1670701052-10000.jpg'),
(20, 0, 101, 3, 'images/10-12-2022-1670705534-10000.jpg'),
(21, 0, 101, 6, 'images/10-12-2022-1670708206-10000.jpg'),
(22, 0, 101, 9, 'images/10-12-2022-1670708321-10000.jpg'),
(23, 0, 101, 3, 'images/10-12-2022-1670708595-10000.jpg'),
(24, 0, 101, 6, 'images/10-12-2022-1670711034-10000.jpg'),
(25, 0, 101, 6, 'images/10-12-2022-1670711111-10000.jpg'),
(26, 0, 101, 12, 'images/10-12-2022-1670711238-10000.jpg'),
(27, 0, 101, 12, 'images/10-12-2022-1670713040-10000.jpg'),
(28, 0, 101, 12, 'images/10-12-2022-1670713045-10000.jpg'),
(29, 0, 101, 3, 'images/10-12-2022-1670713156-10000.jpg'),
(30, 0, 101, 3, 'images/10-12-2022-1670713880-10000.jpg'),
(31, 0, 101, 3, 'images/10-12-2022-1670713886-10000.jpg'),
(32, 0, 101, 3, 'images/10-12-2022-1670713932-10000.jpg'),
(33, 0, 101, 3, 'images/10-12-2022-1670713997-10000.jpg'),
(34, 0, 101, 3, 'images/10-12-2022-1670714004-10000.jpg'),
(35, 0, 101, 3, 'images/10-12-2022-1670714127-10000.jpg'),
(36, 0, 101, 3, 'images/10-12-2022-1670714207-10000.jpg'),
(37, 0, 101, 3, 'images/10-12-2022-1670714252-10000.jpg'),
(38, 0, 101, 3, 'images/10-12-2022-1670714302-10000.jpg'),
(39, 0, 101, 3, 'images/10-12-2022-1670714304-10000.jpg'),
(40, 0, 101, 3, 'images/10-12-2022-1670714385-10000.jpg'),
(41, 0, 101, 3, 'images/10-12-2022-1670714392-10000.jpg'),
(42, 0, 101, 3, 'images/10-12-2022-1670714454-10000.jpg'),
(43, 0, 101, 3, 'images/10-12-2022-1670714773-10000.jpg'),
(44, 0, 101, 3, 'images/10-12-2022-1670714848-10000.jpg'),
(45, 0, 101, 3, 'images/10-12-2022-1670714860-10000.jpg'),
(46, 0, 101, 3, 'images/10-12-2022-1670714886-10000.jpg'),
(47, 0, 101, 3, 'images/10-12-2022-1670714901-10000.jpg'),
(48, 0, 101, 3, 'images/10-12-2022-1670714962-10000.jpg'),
(49, 0, 101, 3, 'images/10-12-2022-1670715013-10000.jpg'),
(50, 0, 101, 3, 'images/10-12-2022-1670715334-10000.jpg'),
(51, 0, 101, 3, 'images/10-12-2022-1670715361-10000.jpg'),
(52, 0, 101, 3, 'images/10-12-2022-1670715375-10000.jpg'),
(53, 0, 101, 3, 'images/10-12-2022-1670715426-10000.jpg'),
(54, 0, 101, 3, 'images/10-12-2022-1670715494-10000.jpg'),
(55, 0, 101, 3, 'images/10-12-2022-1670715527-10000.jpg'),
(56, 0, 101, 3, 'images/10-12-2022-1670715581-10000.jpg'),
(57, 0, 101, 3, 'images/10-12-2022-1670715613-10000.jpg'),
(58, 0, 101, 3, 'images/10-12-2022-1670715684-10000.jpg'),
(59, 0, 101, 3, 'images/10-12-2022-1670715918-10000.jpg'),
(60, 0, 101, 3, 'images/10-12-2022-1670715959-10000.jpg'),
(61, 0, 101, 3, 'images/10-12-2022-1670715966-10000.jpg'),
(62, 0, 101, 3, 'images/11-12-2022-1670763416-10000.jpg'),
(63, 0, 101, 3, 'images/11-12-2022-1670766400-10000.jpg'),
(64, 0, 101, 3, 'images/11-12-2022-1670766427-10000.jpg'),
(65, 0, 104, 21, 'images/11-12-2022-1670770703-10000.jpg'),
(66, 0, 104, 3, 'images/11-12-2022-1670770810-10000.jpg'),
(67, 0, 104, 15, 'images/11-12-2022-1670770844-10000.jpg'),
(68, 0, 101, 3, 'images/11-12-2022-1670771197-10000.jpg'),
(69, 0, 101, 3, 'images/11-12-2022-1670771242-10000.jpg'),
(70, 0, 101, 3, 'images/12-12-2022-1670871258-10000.jpg'),
(71, 0, 101, 3, 'images/12-12-2022-1670871484-10000.jpg'),
(72, 0, 101, 3, 'images/12-12-2022-1670872092-10000.jpg'),
(73, 0, 101, 3, 'images/12-12-2022-1670872118-10000.jpg'),
(74, 0, 101, 6, 'images/12-12-2022-1670872161-10000.jpg'),
(75, 0, 101, 6, 'images/12-12-2022-1670872167-10000.jpg'),
(76, 0, 101, 6, 'images/12-12-2022-1670872216-10000.jpg'),
(77, 0, 101, 6, 'images/12-12-2022-1670872354-10000.jpg'),
(78, 0, 101, 3, 'images/13-12-2022-1670894264-10000.jpg'),
(79, 0, 101, 3, 'images/13-12-2022-1670894846-10000.jpg'),
(80, 0, 101, 3, 'images/13-12-2022-1670894929-10000.jpg'),
(81, 0, 101, 3, 'images/13-12-2022-1670894979-10000.jpg'),
(82, 0, 101, 3, 'images/13-12-2022-1670894981-10000.jpg'),
(83, 0, 101, 3, 'images/13-12-2022-1670895132-10000.jpg'),
(84, 0, 101, 3, 'images/13-12-2022-1670895204-10000.jpg'),
(85, 0, 101, 3, 'images/13-12-2022-1670895309-10000.jpg'),
(86, 0, 101, 3, 'images/13-12-2022-1670895397-10000.jpg'),
(87, 0, 101, 3, 'images/13-12-2022-1670895421-10000.jpg'),
(88, 0, 101, 3, 'images/13-12-2022-1670895428-10000.jpg'),
(89, 0, 101, 3, 'images/13-12-2022-1670895445-10000.jpg'),
(90, 0, 101, 3, 'images/13-12-2022-1670895509-10000.jpg'),
(91, 0, 101, 3, 'images/13-12-2022-1670895596-10000.jpg'),
(92, 0, 101, 3, 'images/13-12-2022-1670896264-10000.jpg'),
(93, 0, 101, 3, 'images/13-12-2022-1670896470-10000.jpg'),
(94, 0, 101, 3, 'images/13-12-2022-1670896583-10000.jpg'),
(95, 0, 101, 3, 'images/13-12-2022-1670896630-10000.jpg'),
(96, 0, 101, 3, 'images/13-12-2022-1670896715-10000.jpg'),
(97, 0, 101, 3, 'images/13-12-2022-1670896900-10000.jpg'),
(98, 0, 101, 3, 'images/13-12-2022-1670897118-10000.jpg'),
(99, 0, 101, 3, 'images/13-12-2022-1670897169-10000.jpg'),
(100, 0, 101, 3, 'images/13-12-2022-1670897388-10000.jpg'),
(101, 0, 101, 30, 'images/13-12-2022-1670905753-10000.jpg'),
(102, 0, 108, 0, 'images/13-12-2022-1670908725-10000.jpg'),
(103, 0, 108, 0, 'images/13-12-2022-1670909089-10000.jpg'),
(104, 0, 108, 0, 'images/13-12-2022-1670909134-10000.jpg'),
(105, 0, 108, 0, 'images/13-12-2022-1670909339-10000.jpg'),
(106, 0, 108, 0, 'images/13-12-2022-1670909432-10000.jpg'),
(107, 0, 108, 0, 'images/13-12-2022-1670909464-10000.jpg'),
(108, 0, 101, 30, 'images/13-12-2022-1670909472-10000.jpg'),
(109, 0, 108, 0, 'images/13-12-2022-1670909672-10000.jpg'),
(110, 0, 101, 30, 'images/13-12-2022-1670909701-10000.jpg'),
(111, 0, 108, 0, 'images/13-12-2022-1670909748-10000.jpg'),
(112, 0, 108, 0, 'images/13-12-2022-1670909963-10000.jpg'),
(113, 0, 101, 30, 'images/13-12-2022-1670910155-10000.jpg'),
(114, 0, 101, 120, 'images/13-12-2022-1670910340-10000.jpg'),
(115, 0, 108, 0, 'images/13-12-2022-1670910558-10000.jpg'),
(116, 0, 108, 30, 'images/13-12-2022-1670910675-10000.jpg'),
(117, 0, 108, 0, 'images/13-12-2022-1670911749-10000.jpg'),
(118, 0, 108, 0, 'images/13-12-2022-1670911829-10000.jpg'),
(119, 0, 108, 90, 'images/13-12-2022-1670911883-10000.jpg'),
(120, 0, 108, 0, 'images/13-12-2022-1670924536-10000.jpg'),
(121, 0, 108, 0, 'images/13-12-2022-1670924574-10000.jpg'),
(122, 0, 108, 0, 'images/13-12-2022-1670924625-10000.jpg'),
(123, 0, 108, 30, 'images/13-12-2022-1670924684-10000.jpg'),
(124, 0, 108, 0, 'images/13-12-2022-1670925544-10000.jpg'),
(125, 0, 108, 30, 'images/13-12-2022-1670925891-10000.jpg'),
(126, 0, 108, 90, 'images/13-12-2022-1670926200-10000.jpg'),
(127, 0, 108, 240, 'images/13-12-2022-1670926383-10000.jpg'),
(128, 0, 108, 90, 'images/13-12-2022-1670926446-10000.jpg'),
(129, 0, 101, 60, 'images/14-12-2022-1670986974-10000.jpg'),
(130, 0, 110, 30, 'images/14-12-2022-1670987377-10000.jpg'),
(131, 0, 110, 150, 'images/14-12-2022-1670988153-10000.jpg'),
(132, 0, 110, 30, 'images/14-12-2022-1670988180-10000.jpg'),
(133, 0, 110, 30, 'images/14-12-2022-1670994168-10000.jpg'),
(134, 0, 101, 30, 'images/14-12-2022-1670994449-10000.jpg'),
(135, 0, 112, 90, 'images/14-12-2022-1671033096-10000.jpg'),
(136, 0, 112, 90, 'images/14-12-2022-1671035646-10000.jpg'),
(137, 0, 113, 60, 'images/15-12-2022-1671123386-10000.jpg'),
(138, 0, 114, 90, 'images/15-12-2022-1671123675-10000.jpg'),
(139, 0, 114, 30, 'images/15-12-2022-1671123714-10000.jpg'),
(140, 0, 114, 30, 'images/15-12-2022-1671123964-10000.jpg'),
(141, 0, 114, 30, 'images/15-12-2022-1671123970-10000.jpg'),
(142, 0, 117, 120, 'images/15-12-2022-1671138225-10000.jpg'),
(143, 0, 115, 30, 'images/15-12-2022-1671138561-10000.jpg'),
(144, 0, 118, 150, 'images/16-12-2022-1671176876-10000.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `item_count` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_item`
--

CREATE TABLE `transaction_item` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaction_item`
--

INSERT INTO `transaction_item` (`id`, `book_id`, `id_user`, `id_cart`, `qty`, `total_price`, `Address`, `status`) VALUES
(74, 1124, 60, 122, 1, 3, 'sssssssssssssssssssss', 3),
(76, 1124, 60, 122, 3, 9, 'ssssssssss', 1),
(84, 1124, 60, 122, 1, 3, 'aaaaaa', 1),
(149, 1125, 108, 144, 3, 90, 'ehuehue', 2),
(161, 1123, 112, 160, 3, 90, 'UMN', 3),
(162, 1125, 113, 161, 2, 60, 'Jalan UMN', 1),
(163, 1114, 114, 162, 3, 90, 'jalan umn', 1),
(164, 1114, 114, 162, 1, 30, 'a', 1),
(165, 1114, 114, 162, 1, 30, 'a', 1),
(166, 1116, 117, 164, 4, 120, 'jalan abc', 1),
(167, 1127, 115, 165, 1, 30, 'a', 1),
(168, 1123, 118, 166, 5, 150, 'Bintaro viola block b/12', 1);

--
-- Trigger `transaction_item`
--
DELIMITER $$
CREATE TRIGGER `KeluarStock` AFTER INSERT ON `transaction_item` FOR EACH ROW BEGIN
	UPDATE book set stock = stock - NEW.qty
    WHERE id = NEW.book_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `namee` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `passwordw` varchar(1000) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `nohp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `namee`, `email`, `passwordw`, `salt`, `created_at`, `updated_at`, `nohp`) VALUES
(10, 'aaa', 'aa@gmail.com', 'rwrwrw', '', '0000-00-00 00:00:00', NULL, 'g'),
(11, 'f', 'rx', '4', '', '0000-00-00 00:00:00', NULL, '9'),
(13, 'rhei', 'aaa', 'saghw4', '', '0000-00-00 00:00:00', NULL, '08118'),
(14, 'h', 'sa', '2', '', '0000-00-00 00:00:00', NULL, '0'),
(15, 'a', 'a', '0', '', '0000-00-00 00:00:00', NULL, '0'),
(16, 's', '', '6', '', '0000-00-00 00:00:00', NULL, '0'),
(17, 's', '', '6', '', '0000-00-00 00:00:00', NULL, '0'),
(18, '', '', '', '', '0000-00-00 00:00:00', NULL, ''),
(19, 's', '', '', '', '0000-00-00 00:00:00', NULL, ''),
(20, 'a', '', '', '', '0000-00-00 00:00:00', NULL, ''),
(21, 'a', '@', '', '', '0000-00-00 00:00:00', NULL, ''),
(22, 'a', '', '', '', '0000-00-00 00:00:00', NULL, ''),
(23, 'j', '', '', '', '0000-00-00 00:00:00', NULL, ''),
(24, 'dgjdej', 'd', 'hhh', '', '0000-00-00 00:00:00', NULL, '987'),
(26, 'a', 'asd@gmail.com', '246', '', '0000-00-00 00:00:00', NULL, '2356'),
(27, 'aaaaa', 'asade@gmail.com', '000000aA$', '', '0000-00-00 00:00:00', NULL, '081181011'),
(28, 'aaaaa', 'aaaa@gmail.com', '000000aA$', '', '0000-00-00 00:00:00', NULL, '0811812345'),
(29, 'aaaaa', 'aaaa@gmail.com', '000000aA$', '', '0000-00-00 00:00:00', NULL, '0812345678'),
(30, 'AAAAA', 'AAA@GMAIL.COM', 'ASDAEFaa@1', '', '0000-00-00 00:00:00', NULL, '081181032123'),
(31, 'afungs', 'aaa@company.id', '9Aa98asd@', '', '0000-00-00 00:00:00', NULL, '081234589'),
(32, 'roysuryo', 'roy@gmail.com', 'A@aaaa4gg', '', '0000-00-00 00:00:00', NULL, '092255548'),
(33, 'aaaaa', 'konz@gmail.com', 'Aa@fgserg55', '', '2022-11-26 13:46:41', NULL, '081135798435'),
(37, 'asadea', 'asadea@gmail.com', 'c3257a8351cf1da6dc9f6c7c875d201a', '', '2022-11-26 14:18:44', NULL, '081234565444'),
(38, 'aryantid', 'titd@gmail.com', '447bcd79207a4e96f26a1f64c11388fc', '', '2022-11-26 14:20:38', NULL, 'a006e674a9444b24d487'),
(39, 'asasdewa', 'aggaegeaaeg@gmail.com', '7ebc115970e0acad2c0d6324be7d54f2', '', '2022-11-26 14:36:17', NULL, 'f9dc6fc08f85e27ce966'),
(47, 'dontol123', 'adontol@gmail.com', 'Y93SUN6h/ZI9Pw86CjzTpBL3tuYzY2EyYTU2ZDVk', '3ca2a56d5d', '2022-11-27 11:35:03', NULL, ''),
(48, 'dontol123', 'aadontol@gmail.com', 'P+E1O7TXuwI9JhYT5eZvttH7D8pmMzRjNWFlYzFk', 'f34c5aec1d', '2022-11-27 12:10:51', NULL, ''),
(49, 'dontol123', 'aa0dontol@gmail.com', 'SZ+WMtxzt449dvPbVnvKoWMNSLtjMjNlYjAwNjM4', 'c23eb00638', '2022-11-27 12:11:33', NULL, ''),
(50, 'dontol123', 'aa0GGdontol@gmail.com', '3vj0/PA3Re/JrfORVKEuPHA+KHZlNzM0NTUzNmVj', 'e7345536ec', '2022-11-27 12:15:45', NULL, '81a9efcf275be1071a76'),
(51, 'johan hendru', 'johanhendru@gmail.com', 'D8fvnDoI5Y4eOsZI6QOzFhsetoE2MzMzMGY4NTlh', '63330f859a', '2022-11-27 13:15:49', NULL, '08132132122'),
(52, 'johan hendru', '1aa0dontol@gmail.com', 'udspO89yT4e0crs8V4+xDO+/yqBjMzM5YjU0OTEy', 'c339b54912', '2022-11-27 13:17:15', NULL, '08132132122'),
(53, 'aaaaa', 'aaaaaa@gmail.com', 'Pt4DVMyWJKRMu9HPEcBOi/66XfpkOTU2Y2JjZDMz', 'd956cbcd33', '2022-11-27 13:21:35', NULL, '08544453246'),
(54, 'aseta', 'dudung@gmail.com', '8w1/IF2FAKDFYL5oKo+EU3+Kwus1MjFiN2UwOTFl', '521b7e091e', '2022-11-27 13:26:15', NULL, '098765432'),
(55, 'dudunhg', 'aa0GsGdontol@gmail.com', 'VK1Fk/QZyiweO3PHNmkVx9EOMBM5OWQ3YjE5MzVi', '99d7b1935b', '2022-11-27 13:29:32', NULL, '0811810293fg939'),
(56, 'jurhan', 'dodol@gmail.com', 'H4h4UbcRoGZIbHAeQ6sLpmwhz68wNzk0YmFlMDk5', '0794bae099', '2022-11-27 13:30:46', NULL, '098786346356'),
(57, 'rheii', 'daodol@gmail.com', '01tu9FyVqFNhnvVSGOToq+QC09E2N2E2NmNiYzQ1', '67a66cbc45', '2022-11-27 13:42:14', NULL, '09876756543'),
(58, 'AdminRhei', 'AdminRhei@gmail.com', 'JRfuce7Cba2Hq9UOaesvMCP2PxBhOGY5NDcxM2U5', 'a8f94713e9', '2022-11-27 14:14:49', NULL, '08886554321'),
(59, 'dudunhg', 'aaa0GsGdontol@gmail.com', 'Mvz/psnmR3rEApCdBdbL6QaDhExkYTg0OWJiOGNh', 'da849bb8ca', '2022-11-27 14:17:20', NULL, '0811810293fg939'),
(60, 'damai', 'aaaa0GsGdontol@gmail.com', 'FYVsy8WBUOHt3CRl6x6OOB0/3hxkZDUwYjcwZmZk', 'dd50b70ffd', '2022-11-29 03:40:36', NULL, '0811810a293fg939'),
(62, 'akutahu', 'akutahu@gmail.com', 'Y75+nC23GXAEXkDvCI0w9SL5LUtmNjZjYzUxMjgz', 'f66cc51283', '2022-12-02 08:35:07', NULL, '08881088734'),
(63, 'akutahu', 'akutah1u@gmail.com', 'JtW91s3RvmzvxwtX7NQ9d9kO6/ZkNTBiZTQ0NzRj', 'd50be4474c', '2022-12-02 08:37:49', NULL, '088818810488'),
(64, 'yanyoo', 'yanyoo@gmail.com', 'szop0Gqm02Plz79Kht6poMKybbk2M2ZiNzAyY2U2', '63fb702ce6', '2022-12-02 13:25:59', NULL, '08886187508'),
(65, 'asiong', 'a1aaa0GsGdontol@gmail.com', 'yd0YuoehPVmyRsAAVuUbW40a+ZxiYmJkYThmMzNi', 'bbbda8f33b', '2022-12-02 13:41:49', NULL, '0811810293fg939'),
(66, 'palepals', 'palwpal@gmail.com', 'ruIpgv0ISAJULqGBRrn4PgRwgC8yNWJhNDViMGQ5', '25ba45b0d9', '2022-12-03 05:12:11', NULL, '088818810400'),
(67, 'jordi', 'jordi@gmail.com', 'Lw0uWOC7AbdCyGKLWQoLbxRePN40ZjMxYjhlYjQ1', '4f31b8eb45', '2022-12-03 05:39:29', NULL, '098765333'),
(68, 'rheii', 'atma@gmail.com', 'qJxGRN0Ad0an/ImoyiXf5v9eetc2ZjdmNjU1NjBi', '6f7f65560b', '2022-12-03 06:15:28', NULL, '08886187507'),
(69, 'harjanto', 'harjanto@gmail.com', 'Up3hrUSnTKbQveb+iXER8P5nKKYwYWNkODMzN2U0', '0acd8337e4', '2022-12-03 06:19:24', NULL, '0887667553'),
(70, 'hurjinto', 'hurjinto@gmail.com', '4zy58YHs0eLN2U5PEyVKxeFrWfxjNTkxNDM4NzJl', 'c59143872e', '2022-12-03 06:21:20', NULL, '0987654321'),
(71, 'orisinil', 'orisinil@gmail.com', '7sXBMOV9zkVwlnm52X0VyejsxNg5Y2NjMjQzMzRh', '9ccc24334a', '2022-12-03 06:23:05', NULL, '0987654321'),
(72, 'guling', 'guling@gmail.com', 'fgMZaKS7Ihnetwx+SeGnvJu2HwZmYWNlMmVjYTIx', 'face2eca21', '2022-12-03 06:28:17', NULL, '0987654321'),
(73, 'araara', 'araara@gmail.com', 'dHEVP92KlMh4hULD3hQWkqIw2PdlMWM1MGVjOGY1', 'e1c50ec8f5', '2022-12-03 06:30:31', NULL, '0987654321'),
(74, 'yohanes', 'anes@gmail.com', 'WTfepJB910PjjzfpbTUo6qOCZ7gxNDk1NDhhYjMw', '149548ab30', '2022-12-03 06:33:35', NULL, '0987654321'),
(75, 'aduhai', 'aduh@gmail.com', 'EP4w2fsDA3ZmISoM2asngvDBNMszMWQ1OGE0ZTgz', '31d58a4e83', '2022-12-03 06:39:13', NULL, '0987654321'),
(76, 'harjantol', 'harjantol@gmail.com', 'y9elC3TJ6KZ4YAX9+xUjWbt8CaVjY2EwZWM4ZjZl', 'cca0ec8f6e', '2022-12-03 06:51:24', NULL, '0987564321'),
(78, 'BISAA', 'BISA@GMAIL.COM', 'BCZazTqVsIQ/v6IZRFrGhJBQSlZhMjE2MjgyYjY2', 'a216282b66', '2022-12-03 06:57:07', NULL, '0987654321'),
(81, 'aaaaaa', 'aaaaaaa1@gmail.com', 'YNhuFJy476bRdBH9JUlunx8mGE04MjE1YTA5MjAz', '8215a09203', '2022-12-03 07:08:21', NULL, '0987654321'),
(82, 'ahtong', 'ahtong@gmail1.com', 'Bw7kH6TaJ0wJvZbbfxEQUZYp4EU1ODEwNDhhM2U5', '581048a3e9', '2022-12-03 07:09:30', NULL, '0987654321'),
(83, 'PWAPWA', 'PWAPWA@GMAIL.COM', '8nZn8vXzrYUnGjIqjd3mHN0PV8NhZDU3N2FlYmM5', 'ad577aebc9', '2022-12-03 07:11:53', NULL, '0987654321'),
(84, 'HHHHHH', 'HHHHH@GMAIL.COM', 'yif36cYy9/Gvu6rZuClgGjHBE4xlMWQyODk2NmIy', 'e1d28966b2', '2022-12-03 07:13:46', NULL, '0987654321'),
(85, 'FFFFFF', 'FFFFF@GMAIL.COM', 'YC/dOZpyXoztBVQRXN2kcaq1/Os0OWRhMDFmZjhi', '49da01ff8b', '2022-12-03 07:16:43', NULL, '0987654321'),
(86, 'BBBBB', 'BBBBB@GMAIL.COM', 'EDxYaxYxBlT5g920A5U+wdDvYi43MTY0MjljM2Zm', '716429c3ff', '2022-12-03 07:19:06', NULL, '0987654321'),
(87, 'cccccc', 'cccc@gmail.com', 'Gjm2k+fyroxmE5kcq6b9WqNAejI3MmJlMzNjZWM0', '72be33cec4', '2022-12-03 07:22:10', NULL, '0987654321'),
(88, 'MMMMM', 'MMMMM@GMAIL.COM', 'GdWlM1wWGdTqOTSAZ25FiJq70kU5NzliM2JhOTA3', '979b3ba907', '2022-12-03 07:23:42', NULL, '0987654321'),
(89, 'BUDII', 'BUDII@GMAIL.COM', 'GirvazGF3s9qxF1x5ERa+lVU9sw0MGZkNDI0ZjEz', '40fd424f13', '2022-12-03 07:28:37', NULL, '0987654321'),
(90, 'HIHIHI', 'HIHIHI@GMAIL.COM', 'Du4WSPuwgeXhGu//nVDbLjdkjLI0OTI1NzVkZWRi', '492575dedb', '2022-12-03 07:34:45', NULL, '098765322'),
(91, 'GOGOG', 'GOGOG@GMAIL.COM', 'n3YMn8d7ZsCbXHdkbeZxE6U3PQllMjFjMGExNmJk', 'e21c0a16bd', '2022-12-03 07:44:07', NULL, '0987654321'),
(92, 'padidi', 'padidi@gmail.com', 'H/z76dKvciwnIDol9MColxfxhrc0ZDE4Zjg3ZGVl', '4d18f87dee', '2022-12-03 08:12:25', NULL, '0987654321'),
(93, 'jamaludin', 'jamaludin@gmail.com', 'tr/xKMzSLJwtG/PlTwGI7LkXYZxkOWNmYjBiNGRi', 'd9cfb0b4db', '2022-12-03 08:16:10', NULL, '0987654321'),
(94, 'babab', 'babab@gmail.com', 'rOK1yOohZ7uLlOULeu72nn6cBOczNTIxNjFiYjEz', '352161bb13', '2022-12-03 08:32:05', NULL, '088188181818'),
(95, 'alexa', 'tolalt@gmail.com', 'iRinLL3ZIYbi6eVUs7YqdJ0koCgwOTAwNWM4OTg5', '09005c8989', '2022-12-03 09:55:30', NULL, '09888775534'),
(97, 'baruajadeh123', 'baruajadeh123@gmail.com', 'PQrgFeftUp24OqpsyyhVYIUxjsFiOTFhZmEzNWRl', 'b91afa35de', '2022-12-03 12:36:22', NULL, '0876543235'),
(98, 'kejuu123456', '1kejuu123@gmail.com', 'GC/mG9pBHRKOp1nTVySSaLqtcxplNGFiM2ZjY2Zi', 'e4ab3fccfb', '0000-00-00 00:00:00', NULL, '088861875084'),
(99, 'mencoba saja', '1mencobasaja@gmail.com', 'sJcnQkYivkEmixN34aK0YzZ7oC41NTUxYzk3ZjQy', '5551c97f42', '0000-00-00 00:00:00', NULL, '0998618750'),
(100, 'bodreg', 'bodreg777@gmail.com', 'PWiyMZXyzCEXv4gT88q+i2BNw0cwZWIxZTA0OTQx', '0eb1e04941', '2022-12-04 00:20:46', NULL, '08886107508'),
(102, 'surya', 'suryasari@gmail.com', 'FmaD1XSSTTj35IQeLRioyFi/DkxjYmNlZjc2N2U0', 'cbcef767e4', '2022-12-06 12:26:32', NULL, '098786543211'),
(103, 'abeng', 'beengbeng@gmail.com', 'lhpI3eiWE0xUyt6IxbBStJlqyf41NjU5ZmUyOTZk', '5659fe296d', '2022-12-09 03:40:48', NULL, '08123456789'),
(105, 'suistanto', 'suistanto@gmail.com', 'ep/1R5XZ7EXjWsjES9VVJXD5kG9kMzM4NTRmOTQ1', 'd33854f945', '2022-12-09 06:52:47', NULL, '0888655855'),
(106, 'rafaa', 'rafaa@gmail.com', '00MS2I4Km1OvPECbcE2QVE3WGsJlYjQyNzkxZWIy', 'eb42791eb2', '2022-12-09 06:53:45', NULL, '0888588788'),
(107, 'Nicholas Suwandi Wijaya', 'nicholas.suwandi@student.umn.ac.a', 'jcA8yfXSMFF6C0h6MFVY5LelEt81ZTg1NzU2MTY1', '5e85756165', '2022-12-10 12:39:12', NULL, '081378569223'),
(108, 'bukupediaTeam', 'bukupedia@gmail.com', 'DiN39fVSOqDvPbK4Cdzxmc9T1Cc1ZWMzYTdjNmZh', '5ec3a7c6fa', '2022-12-13 04:07:17', NULL, '081316577275'),
(111, 'Bukupedia', 'bukupedia123@gmail.com', 'vYljJNilcNpnN42oCeHjDofHAygzODc5Yzg3MGM3', '3879c870c7', '2022-12-14 13:14:16', NULL, '09876334626'),
(112, 'Rheinald Sulaiman', 'Adyatma.sulaiman@gmail.com', 'Rle+Z/0MaUJjCTfE1AbDYG4ox0UwNTNlM2JhYTll', '053e3baa9e', '2022-12-14 15:21:08', NULL, '081316577775'),
(113, 'Nicholas', 'nicolas1@gmail.com', 'j+CiWItU3Mtfn/qndSTVX5QVcxBhYTFmMWE0NDA1', 'aa1f1a4405', '2022-12-15 16:53:56', NULL, '081378569322'),
(114, 'niconiconico123', 'niconico123@gmail.com', 'GjdRh+Hwpga+xX3zjgrvDdxGBllkZDY5Y2IzOWI2', 'dd69cb39b6', '2022-12-15 16:59:21', NULL, '81378569322'),
(115, 'niconico1', 'niconiconico12@gmail.com', 'vH0Em1Ii96fCo7pdhDY0uKMKVbRmMmFjOTIwMGNk', 'f2ac9200cd', '0000-00-00 00:00:00', NULL, '081329813901'),
(116, 'bukupediaaaq', 'bukupedia12@gmail.com', '4a4K3QVj7qYK1jRIRMPtFH3J9KZkM2IyNjhhY2Fm', 'd3b268acaf', '0000-00-00 00:00:00', NULL, '081231237131'),
(117, 'sayanico1', 'sayanico1@gmail.com', 'uNRScMPLL8kmWJRQ/IGW8cmQ5tJjMjVhZjM5Njli', 'c25af3969b', '0000-00-00 00:00:00', NULL, '081316316119'),
(118, 'Rhonald wijaya', 'Rhonald.wijaya@gmail.com', 'sCYcosJvfH5LO2HB48y2qTpMmTA0YTNkYWE2YTM3', '4a3daa6a37', '2022-12-16 07:45:45', NULL, '08818104567'),
(119, 'junaedi', 'maemunah@gmail.com', 'BT7p5T32E4PmsOzQ5UkTIRDLnik5MjM4ZTU1ZmRi', '9238e55fdb', '0000-00-00 00:00:00', NULL, '02585312552');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-12-02 04:43:50', '2022-12-02 04:43:50', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_litespeed_url`
--

CREATE TABLE `wp_litespeed_url` (
  `id` bigint(20) NOT NULL,
  `url` varchar(500) NOT NULL,
  `cache_tags` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_litespeed_url_file`
--

CREATE TABLE `wp_litespeed_url_file` (
  `id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `vary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of final vary',
  `filename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of file content',
  `type` tinyint(4) NOT NULL COMMENT 'css=1,js=2,ccss=3,ucss=4',
  `expired` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.bookoemen.my.id', 'yes'),
(2, 'home', 'http://www.bookoemen.my.id', 'yes'),
(3, 'blogname', 'My Blog', 'yes'),
(4, 'blogdescription', 'My WordPress Blog', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rheinald@student.umn.ac.id', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:35:\"litespeed-cache/litespeed-cache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentythree', 'yes'),
(41, 'stylesheet', 'twentytwentythree', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1685508230', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:5:{i:1671131441;a:2:{s:27:\"litespeed_task_imgoptm_pull\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:19:\"litespeed_task_lqip\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1671134728;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1671165830;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1671252230;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentythree', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(260, 'litespeed.conf.__activation', '-1', 'yes'),
(232, 'category_children', 'a:0:{}', 'yes'),
(721, 'litespeed.conf.cache', '1', 'yes'),
(964, '_transient_timeout_global_styles_svg_filters_twentytwentythree', '1671117019', 'no'),
(965, '_transient_global_styles_svg_filters_twentytwentythree', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no'),
(127, 'https_detection_errors', 'a:0:{}', 'yes'),
(242, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":5,\"critical\":0}', 'yes'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1671131412;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(968, '_site_transient_timeout_theme_roots', '1671133213', 'no'),
(969, '_site_transient_theme_roots', 'a:3:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(133, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671131413;s:7:\"checked\";a:3:{s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(711, 'litespeed.conf._version', '5.2', 'yes'),
(712, 'litespeed.conf.hash', 'zhsn6BiX0eNQBcFeTbJoLjCxTlaG9Mi5', 'yes'),
(713, 'litespeed.conf.auto_upgrade', '', 'yes'),
(714, 'litespeed.conf.api_key', '', 'yes'),
(715, 'litespeed.conf.server_ip', '', 'yes'),
(716, 'litespeed.conf.guest', '', 'yes'),
(717, 'litespeed.conf.guest_optm', '', 'yes'),
(718, 'litespeed.conf.news', '1', 'yes'),
(719, 'litespeed.conf.guest_uas', '[\"Lighthouse\",\"GTmetrix\",\"Google\",\"Pingdom\",\"bot\",\"PTST\",\"HeadlessChrome\"]', 'yes'),
(720, 'litespeed.conf.guest_ips', '[\"208.70.247.157\",\"172.255.48.130\",\"172.255.48.131\",\"172.255.48.132\",\"172.255.48.133\",\"172.255.48.134\",\"172.255.48.135\",\"172.255.48.136\",\"172.255.48.137\",\"172.255.48.138\",\"172.255.48.139\",\"172.255.48.140\",\"172.255.48.141\",\"172.255.48.142\",\"172.255.48.143\",\"172.255.48.144\",\"172.255.48.145\",\"172.255.48.146\",\"172.255.48.147\",\"52.229.122.240\",\"104.214.72.101\",\"13.66.7.11\",\"13.85.24.83\",\"13.85.24.90\",\"13.85.82.26\",\"40.74.242.253\",\"40.74.243.13\",\"40.74.243.176\",\"104.214.48.247\",\"157.55.189.189\",\"104.214.110.135\",\"70.37.83.240\",\"65.52.36.250\",\"13.78.216.56\",\"52.162.212.163\",\"23.96.34.105\",\"65.52.113.236\",\"172.255.61.34\",\"172.255.61.35\",\"172.255.61.36\",\"172.255.61.37\",\"172.255.61.38\",\"172.255.61.39\",\"172.255.61.40\",\"104.41.2.19\",\"191.235.98.164\",\"191.235.99.221\",\"191.232.194.51\",\"52.237.235.185\",\"52.237.250.73\",\"52.237.236.145\",\"104.211.143.8\",\"104.211.165.53\",\"52.172.14.87\",\"40.83.89.214\",\"52.175.57.81\",\"20.188.63.151\",\"20.52.36.49\",\"52.246.165.153\",\"51.144.102.233\",\"13.76.97.224\",\"102.133.169.66\",\"52.231.199.170\",\"13.53.162.7\",\"40.123.218.94\"]', 'yes'),
(962, '_transient_timeout_global_styles_twentytwentythree', '1671117019', 'no'),
(963, '_transient_global_styles_twentytwentythree', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--base: #ffffff;--wp--preset--color--contrast: #000000;--wp--preset--color--primary: #9DFF20;--wp--preset--color--secondary: #345C00;--wp--preset--color--tertiary: #F6F6F6;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: clamp(0.875rem, 0.875rem + ((1vw - 0.48rem) * 0.24), 1rem);--wp--preset--font-size--medium: clamp(1rem, 1rem + ((1vw - 0.48rem) * 0.24), 1.125rem);--wp--preset--font-size--large: clamp(1.75rem, 1.75rem + ((1vw - 0.48rem) * 0.24), 1.875rem);--wp--preset--font-size--x-large: 2.25rem;--wp--preset--font-size--xx-large: clamp(4rem, 4rem + ((1vw - 0.48rem) * 11.538), 10rem);--wp--preset--font-family--dm-sans: \"DM Sans\", sans-serif;--wp--preset--font-family--ibm-plex-mono: \'IBM Plex Mono\', monospace;--wp--preset--font-family--inter: \"Inter\", sans-serif;--wp--preset--font-family--system-font: -apple-system,BlinkMacSystemFont,\"Segoe UI\",Roboto,Oxygen-Sans,Ubuntu,Cantarell,\"Helvetica Neue\",sans-serif;--wp--preset--font-family--source-serif-pro: \"Source Serif Pro\", serif;--wp--preset--spacing--30: clamp(1.5rem, 5vw, 2rem);--wp--preset--spacing--40: clamp(1.8rem, 1.8rem + ((1vw - 0.48rem) * 2.885), 3rem);--wp--preset--spacing--50: clamp(2.5rem, 8vw, 4.5rem);--wp--preset--spacing--60: clamp(3.75rem, 10vw, 7rem);--wp--preset--spacing--70: clamp(5rem, 5.25rem + ((1vw - 0.48rem) * 9.096), 8rem);--wp--preset--spacing--80: clamp(7rem, 14vw, 11rem);}body { margin: 0;--wp--style--global--content-size: 650px;--wp--style--global--wide-size: 1200px; }.wp-site-blocks { padding-top: var(--wp--style--root--padding-top); padding-bottom: var(--wp--style--root--padding-bottom); }.has-global-padding { padding-right: var(--wp--style--root--padding-right); padding-left: var(--wp--style--root--padding-left); }.has-global-padding :where(.has-global-padding) { padding-right: 0; padding-left: 0; }.has-global-padding > .alignfull { margin-right: calc(var(--wp--style--root--padding-right) * -1); margin-left: calc(var(--wp--style--root--padding-left) * -1); }.has-global-padding :where(.has-global-padding) > .alignfull { margin-right: 0; margin-left: 0; }.has-global-padding > .alignfull:where(:not(.has-global-padding)) > :where([class*=\"wp-block-\"]:not(.alignfull):not([class*=\"__\"]),p,h1,h2,h3,h4,h5,h6,ul,ol) { padding-right: var(--wp--style--root--padding-right); padding-left: var(--wp--style--root--padding-left); }.has-global-padding :where(.has-global-padding) > .alignfull:where(:not(.has-global-padding)) > :where([class*=\"wp-block-\"]:not(.alignfull):not([class*=\"__\"]),p,h1,h2,h3,h4,h5,h6,ul,ol) { padding-right: 0; padding-left: 0; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }.wp-site-blocks > * { margin-block-start: 0; margin-block-end: 0; }.wp-site-blocks > * + * { margin-block-start: 1.5rem; }body { --wp--style--block-gap: 1.5rem; }body .is-layout-flow > *{margin-block-start: 0;margin-block-end: 0;}body .is-layout-flow > * + *{margin-block-start: 1.5rem;margin-block-end: 0;}body .is-layout-constrained > *{margin-block-start: 0;margin-block-end: 0;}body .is-layout-constrained > * + *{margin-block-start: 1.5rem;margin-block-end: 0;}body .is-layout-flex{gap: 1.5rem;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}body{background-color: var(--wp--preset--color--base);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--system-font);font-size: var(--wp--preset--font-size--medium);line-height: 1.6;--wp--style--root--padding-top: var(--wp--preset--spacing--40);--wp--style--root--padding-right: var(--wp--preset--spacing--30);--wp--style--root--padding-bottom: var(--wp--preset--spacing--40);--wp--style--root--padding-left: var(--wp--preset--spacing--30);}a:where(:not(.wp-element-button)){color: var(--wp--preset--color--contrast);text-decoration: underline;}a:where(:not(.wp-element-button)):hover{text-decoration: none;}a:where(:not(.wp-element-button)):focus{text-decoration: underline dashed;}a:where(:not(.wp-element-button)):active{color: var(--wp--preset--color--secondary);text-decoration: none;}h1, h2, h3, h4, h5, h6{font-weight: 400;line-height: 1.4;}h1{font-size: clamp(2.719rem, 2.719rem + ((1vw - 0.48rem) * 1.742), 3.625rem);line-height: 1.2;}h2{font-size: clamp(2.625rem, calc(2.625rem + ((1vw - 0.48rem) * 8.4135)), 3.25rem);line-height: 1.2;}h3{font-size: var(--wp--preset--font-size--x-large);}h4{font-size: var(--wp--preset--font-size--large);}h5{font-size: var(--wp--preset--font-size--medium);font-weight: 700;text-transform: uppercase;}h6{font-size: var(--wp--preset--font-size--medium);text-transform: uppercase;}.wp-element-button, .wp-block-button__link{background-color: var(--wp--preset--color--primary);border-radius: 0;border-width: 0;color: var(--wp--preset--color--contrast);font-family: inherit;font-size: inherit;line-height: inherit;padding: calc(0.667em + 2px) calc(1.333em + 2px);text-decoration: none;}.wp-element-button:visited, .wp-block-button__link:visited{color: var(--wp--preset--color--contrast);}.wp-element-button:hover, .wp-block-button__link:hover{background-color: var(--wp--preset--color--contrast);color: var(--wp--preset--color--base);}.wp-element-button:focus, .wp-block-button__link:focus{background-color: var(--wp--preset--color--contrast);color: var(--wp--preset--color--base);}.wp-element-button:active, .wp-block-button__link:active{background-color: var(--wp--preset--color--secondary);color: var(--wp--preset--color--base);}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-base-color{color: var(--wp--preset--color--base) !important;}.has-contrast-color{color: var(--wp--preset--color--contrast) !important;}.has-primary-color{color: var(--wp--preset--color--primary) !important;}.has-secondary-color{color: var(--wp--preset--color--secondary) !important;}.has-tertiary-color{color: var(--wp--preset--color--tertiary) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-base-background-color{background-color: var(--wp--preset--color--base) !important;}.has-contrast-background-color{background-color: var(--wp--preset--color--contrast) !important;}.has-primary-background-color{background-color: var(--wp--preset--color--primary) !important;}.has-secondary-background-color{background-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-background-color{background-color: var(--wp--preset--color--tertiary) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-base-border-color{border-color: var(--wp--preset--color--base) !important;}.has-contrast-border-color{border-color: var(--wp--preset--color--contrast) !important;}.has-primary-border-color{border-color: var(--wp--preset--color--primary) !important;}.has-secondary-border-color{border-color: var(--wp--preset--color--secondary) !important;}.has-tertiary-border-color{border-color: var(--wp--preset--color--tertiary) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.has-xx-large-font-size{font-size: var(--wp--preset--font-size--xx-large) !important;}.has-dm-sans-font-family{font-family: var(--wp--preset--font-family--dm-sans) !important;}.has-ibm-plex-mono-font-family{font-family: var(--wp--preset--font-family--ibm-plex-mono) !important;}.has-inter-font-family{font-family: var(--wp--preset--font-family--inter) !important;}.has-system-font-font-family{font-family: var(--wp--preset--font-family--system-font) !important;}.has-source-serif-pro-font-family{font-family: var(--wp--preset--font-family--source-serif-pro) !important;}', 'no'),
(696, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1671255278', 'no'),
(697, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(261, 'litespeed.purge.queue', '-1', 'yes'),
(722, 'litespeed.conf.cache-priv', '1', 'yes'),
(262, 'litespeed.purge.queue2', '-1', 'yes'),
(710, 'litespeed.cloud._summary', '{\"curr_request.ver\":0,\"last_request.ver\":1670659229}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(970, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671131414;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:5:\"5.3.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/litespeed-cache.5.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"litespeed-cache/litespeed-cache.php\";s:3:\"5.2\";}}', 'no'),
(723, 'litespeed.conf.cache-commenter', '1', 'yes'),
(724, 'litespeed.conf.cache-rest', '1', 'yes'),
(725, 'litespeed.conf.cache-page_login', '1', 'yes'),
(726, 'litespeed.conf.cache-favicon', '1', 'yes'),
(727, 'litespeed.conf.cache-resources', '1', 'yes'),
(728, 'litespeed.conf.cache-mobile', '', 'yes'),
(729, 'litespeed.conf.cache-mobile_rules', '[\"Mobile\",\"Android\",\"Silk\\/\",\"Kindle\",\"BlackBerry\",\"Opera Mini\",\"Opera Mobi\"]', 'yes'),
(730, 'litespeed.conf.cache-browser', '', 'yes'),
(731, 'litespeed.conf.cache-exc_useragents', '[]', 'yes'),
(732, 'litespeed.conf.cache-exc_cookies', '[]', 'yes'),
(733, 'litespeed.conf.cache-exc_qs', '[]', 'yes'),
(734, 'litespeed.conf.cache-exc_cat', '[]', 'yes'),
(735, 'litespeed.conf.cache-exc_tag', '[]', 'yes'),
(736, 'litespeed.conf.cache-force_uri', '[]', 'yes'),
(737, 'litespeed.conf.cache-force_pub_uri', '[]', 'yes'),
(738, 'litespeed.conf.cache-priv_uri', '[]', 'yes'),
(739, 'litespeed.conf.cache-exc', '[]', 'yes'),
(740, 'litespeed.conf.cache-exc_roles', '[]', 'yes'),
(741, 'litespeed.conf.cache-drop_qs', '[\"fbclid\",\"gclid\",\"utm*\",\"_ga\"]', 'yes'),
(742, 'litespeed.conf.cache-ttl_pub', '604800', 'yes'),
(743, 'litespeed.conf.cache-ttl_priv', '1800', 'yes'),
(744, 'litespeed.conf.cache-ttl_frontpage', '604800', 'yes'),
(745, 'litespeed.conf.cache-ttl_feed', '604800', 'yes'),
(746, 'litespeed.conf.cache-ttl_rest', '604800', 'yes'),
(747, 'litespeed.conf.cache-ttl_browser', '31557600', 'yes'),
(748, 'litespeed.conf.cache-ttl_status', '[\"403 3600\",\"404 3600\",\"500 3600\"]', 'yes'),
(749, 'litespeed.conf.cache-login_cookie', '', 'yes'),
(750, 'litespeed.conf.cache-vary_group', '[]', 'yes'),
(751, 'litespeed.conf.purge-upgrade', '1', 'yes'),
(752, 'litespeed.conf.purge-stale', '', 'yes'),
(753, 'litespeed.conf.purge-post_all', '', 'yes'),
(754, 'litespeed.conf.purge-post_f', '1', 'yes'),
(755, 'litespeed.conf.purge-post_h', '1', 'yes'),
(756, 'litespeed.conf.purge-post_p', '1', 'yes'),
(757, 'litespeed.conf.purge-post_pwrp', '1', 'yes'),
(758, 'litespeed.conf.purge-post_a', '1', 'yes'),
(759, 'litespeed.conf.purge-post_y', '', 'yes'),
(760, 'litespeed.conf.purge-post_m', '1', 'yes'),
(761, 'litespeed.conf.purge-post_d', '', 'yes'),
(762, 'litespeed.conf.purge-post_t', '1', 'yes'),
(763, 'litespeed.conf.purge-post_pt', '1', 'yes'),
(764, 'litespeed.conf.purge-timed_urls', '[]', 'yes'),
(765, 'litespeed.conf.purge-timed_urls_time', '', 'yes'),
(766, 'litespeed.conf.purge-hook_all', '[\"switch_theme\",\"wp_create_nav_menu\",\"wp_update_nav_menu\",\"wp_delete_nav_menu\",\"create_term\",\"edit_terms\",\"delete_term\",\"add_link\",\"edit_link\",\"delete_link\"]', 'yes'),
(767, 'litespeed.conf.esi', '', 'yes'),
(768, 'litespeed.conf.esi-cache_admbar', '1', 'yes'),
(769, 'litespeed.conf.esi-cache_commform', '1', 'yes'),
(770, 'litespeed.conf.esi-nonce', '[\"stats_nonce\",\"subscribe_nonce\"]', 'yes'),
(771, 'litespeed.conf.util-instant_click', '', 'yes'),
(772, 'litespeed.conf.util-no_https_vary', '', 'yes'),
(773, 'litespeed.conf.debug-disable_all', '', 'yes'),
(774, 'litespeed.conf.debug', '', 'yes'),
(775, 'litespeed.conf.debug-ips', '[\"127.0.0.1\"]', 'yes'),
(776, 'litespeed.conf.debug-level', '', 'yes'),
(777, 'litespeed.conf.debug-filesize', '3', 'yes'),
(778, 'litespeed.conf.debug-cookie', '', 'yes'),
(779, 'litespeed.conf.debug-collaps_qs', '', 'yes'),
(780, 'litespeed.conf.debug-inc', '[]', 'yes'),
(781, 'litespeed.conf.debug-exc', '[]', 'yes'),
(782, 'litespeed.conf.debug-exc_strings', '[]', 'yes'),
(783, 'litespeed.conf.db_optm-revisions_max', '0', 'yes'),
(784, 'litespeed.conf.db_optm-revisions_age', '0', 'yes'),
(785, 'litespeed.conf.optm-css_min', '', 'yes'),
(786, 'litespeed.conf.optm-css_comb', '', 'yes'),
(787, 'litespeed.conf.optm-css_comb_ext_inl', '1', 'yes'),
(788, 'litespeed.conf.optm-ucss', '', 'yes'),
(789, 'litespeed.conf.optm-ucss_inline', '', 'yes'),
(790, 'litespeed.conf.optm-ucss_whitelist', '[]', 'yes'),
(791, 'litespeed.conf.optm-ucss_exc', '[]', 'yes'),
(792, 'litespeed.conf.optm-css_exc', '[]', 'yes'),
(793, 'litespeed.conf.optm-js_min', '', 'yes'),
(794, 'litespeed.conf.optm-js_comb', '', 'yes'),
(795, 'litespeed.conf.optm-js_comb_ext_inl', '1', 'yes'),
(796, 'litespeed.conf.optm-js_exc', '[\"jquery.js\",\"jquery.min.js\"]', 'yes'),
(797, 'litespeed.conf.optm-html_min', '', 'yes'),
(798, 'litespeed.conf.optm-html_lazy', '[]', 'yes'),
(799, 'litespeed.conf.optm-qs_rm', '', 'yes'),
(800, 'litespeed.conf.optm-ggfonts_rm', '', 'yes'),
(801, 'litespeed.conf.optm-css_async', '', 'yes'),
(802, 'litespeed.conf.optm-ccss_per_url', '', 'yes'),
(803, 'litespeed.conf.optm-ccss_sep_posttype', '[\"page\"]', 'yes'),
(804, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'yes'),
(805, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(806, 'litespeed.conf.optm-css_font_display', '', 'yes'),
(807, 'litespeed.conf.optm-js_defer', '', 'yes'),
(808, 'litespeed.conf.optm-emoji_rm', '', 'yes'),
(809, 'litespeed.conf.optm-noscript_rm', '', 'yes'),
(810, 'litespeed.conf.optm-ggfonts_async', '', 'yes'),
(811, 'litespeed.conf.optm-exc_roles', '[]', 'yes'),
(812, 'litespeed.conf.optm-ccss_con', '', 'yes'),
(813, 'litespeed.conf.optm-js_defer_exc', '[\"jquery.js\",\"jquery.min.js\",\"gtm.js\",\"analytics.js\"]', 'yes'),
(814, 'litespeed.conf.optm-gm_js_exc', '[]', 'yes'),
(815, 'litespeed.conf.optm-dns_prefetch', '[]', 'yes'),
(816, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'yes'),
(817, 'litespeed.conf.optm-exc', '[]', 'yes'),
(818, 'litespeed.conf.optm-guest_only', '1', 'yes'),
(819, 'litespeed.conf.object', '', 'yes'),
(820, 'litespeed.conf.object-kind', '', 'yes'),
(821, 'litespeed.conf.object-host', 'localhost', 'yes'),
(822, 'litespeed.conf.object-port', '11211', 'yes'),
(823, 'litespeed.conf.object-life', '360', 'yes'),
(824, 'litespeed.conf.object-persistent', '1', 'yes'),
(825, 'litespeed.conf.object-admin', '1', 'yes'),
(826, 'litespeed.conf.object-transients', '1', 'yes'),
(827, 'litespeed.conf.object-db_id', '0', 'yes'),
(828, 'litespeed.conf.object-user', '', 'yes'),
(829, 'litespeed.conf.object-pswd', '', 'yes'),
(830, 'litespeed.conf.object-global_groups', '[\"users\",\"userlogins\",\"useremail\",\"userslugs\",\"usermeta\",\"user_meta\",\"site-transient\",\"site-options\",\"site-lookup\",\"site-details\",\"blog-lookup\",\"blog-details\",\"blog-id-cache\",\"rss\",\"global-posts\",\"global-cache-test\"]', 'yes'),
(831, 'litespeed.conf.object-non_persistent_groups', '[\"comment\",\"counts\",\"plugins\",\"wc_session_id\"]', 'yes'),
(832, 'litespeed.conf.discuss-avatar_cache', '', 'yes'),
(833, 'litespeed.conf.discuss-avatar_cron', '', 'yes'),
(834, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'yes'),
(835, 'litespeed.conf.optm-localize', '', 'yes'),
(836, 'litespeed.conf.optm-localize_domains', '[\"### Popular scripts ###\",\"https:\\/\\/platform.twitter.com\\/widgets.js\",\"https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js\"]', 'yes'),
(837, 'litespeed.conf.media-lazy', '', 'yes'),
(838, 'litespeed.conf.media-lazy_placeholder', '', 'yes'),
(839, 'litespeed.conf.media-placeholder_resp', '', 'yes'),
(840, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'yes'),
(841, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" style=\"fill:{color};fill-opacity: 0.1;\"/></svg>', 'yes'),
(842, 'litespeed.conf.media-lqip', '', 'yes'),
(843, 'litespeed.conf.media-lqip_qual', '4', 'yes'),
(844, 'litespeed.conf.media-lqip_min_w', '150', 'yes'),
(845, 'litespeed.conf.media-lqip_min_h', '150', 'yes'),
(846, 'litespeed.conf.media-placeholder_resp_async', '1', 'yes'),
(847, 'litespeed.conf.media-iframe_lazy', '', 'yes'),
(848, 'litespeed.conf.media-add_missing_sizes', '', 'yes'),
(849, 'litespeed.conf.media-lazy_exc', '[]', 'yes'),
(850, 'litespeed.conf.media-lazy_cls_exc', '[\"wmu-preview-img\"]', 'yes'),
(851, 'litespeed.conf.media-lazy_parent_cls_exc', '[]', 'yes'),
(852, 'litespeed.conf.media-iframe_lazy_cls_exc', '[]', 'yes'),
(853, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', '[]', 'yes'),
(854, 'litespeed.conf.media-lazy_uri_exc', '[]', 'yes'),
(855, 'litespeed.conf.media-lqip_exc', '[]', 'yes'),
(856, 'litespeed.conf.media-vpi', '', 'yes'),
(857, 'litespeed.conf.media-vpi_cron', '', 'yes'),
(858, 'litespeed.conf.img_optm-auto', '', 'yes'),
(859, 'litespeed.conf.img_optm-cron', '1', 'yes'),
(860, 'litespeed.conf.img_optm-ori', '1', 'yes'),
(861, 'litespeed.conf.img_optm-rm_bkup', '', 'yes'),
(862, 'litespeed.conf.img_optm-webp', '1', 'yes'),
(863, 'litespeed.conf.img_optm-lossless', '', 'yes'),
(864, 'litespeed.conf.img_optm-exif', '1', 'yes'),
(865, 'litespeed.conf.img_optm-webp_replace', '', 'yes'),
(866, 'litespeed.conf.img_optm-webp_attr', '[\"img.src\",\"div.data-thumb\",\"img.data-src\",\"img.data-lazyload\",\"div.data-large_image\",\"img.retina_logo_url\",\"div.data-parallax-image\",\"div.data-vc-parallax-image\",\"video.poster\"]', 'yes'),
(867, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'yes'),
(868, 'litespeed.conf.img_optm-jpg_quality', '82', 'yes'),
(869, 'litespeed.conf.crawler', '', 'yes'),
(870, 'litespeed.conf.crawler-usleep', '500', 'yes'),
(871, 'litespeed.conf.crawler-run_duration', '400', 'yes'),
(872, 'litespeed.conf.crawler-run_interval', '600', 'yes'),
(873, 'litespeed.conf.crawler-crawl_interval', '302400', 'yes'),
(874, 'litespeed.conf.crawler-threads', '3', 'yes'),
(875, 'litespeed.conf.crawler-timeout', '30', 'yes'),
(876, 'litespeed.conf.crawler-load_limit', '1', 'yes'),
(877, 'litespeed.conf.crawler-sitemap', '', 'yes'),
(878, 'litespeed.conf.crawler-drop_domain', '1', 'yes'),
(879, 'litespeed.conf.crawler-map_timeout', '120', 'yes'),
(880, 'litespeed.conf.crawler-roles', '[]', 'yes'),
(881, 'litespeed.conf.crawler-cookies', '[]', 'yes'),
(882, 'litespeed.conf.misc-heartbeat_front', '', 'yes'),
(883, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'yes'),
(884, 'litespeed.conf.misc-heartbeat_back', '', 'yes'),
(885, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'yes'),
(886, 'litespeed.conf.misc-heartbeat_editor', '', 'yes'),
(887, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'yes'),
(888, 'litespeed.conf.cdn', '', 'yes'),
(889, 'litespeed.conf.cdn-ori', '[]', 'yes'),
(890, 'litespeed.conf.cdn-ori_dir', '[\"wp-content\",\"wp-includes\"]', 'yes'),
(891, 'litespeed.conf.cdn-exc', '[]', 'yes'),
(892, 'litespeed.conf.cdn-quic', '', 'yes'),
(893, 'litespeed.conf.cdn-cloudflare', '', 'yes'),
(894, 'litespeed.conf.cdn-cloudflare_email', '', 'yes'),
(895, 'litespeed.conf.cdn-cloudflare_key', '', 'yes'),
(896, 'litespeed.conf.cdn-cloudflare_name', '', 'yes'),
(897, 'litespeed.conf.cdn-cloudflare_zone', '', 'yes'),
(898, 'litespeed.conf.cdn-mapping', '[{\"url\":\"\",\"inc_img\":\"1\",\"inc_css\":\"1\",\"inc_js\":\"1\",\"filetype\":[\".aac\",\".css\",\".eot\",\".gif\",\".jpeg\",\".jpg\",\".js\",\".less\",\".mp3\",\".mp4\",\".ogg\",\".otf\",\".pdf\",\".png\",\".svg\",\".ttf\",\".webp\",\".woff\",\".woff2\"]}]', 'yes'),
(899, 'litespeed.conf.cdn-attr', '[\".src\",\".data-src\",\".href\",\".poster\",\"source.srcset\"]', 'yes'),
(900, 'litespeed.conf.qc-token', '', 'yes'),
(901, 'litespeed.conf.qc-nameservers', '', 'yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-12-02 04:43:50', '2022-12-02 04:43:50', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-12-02 04:43:50', '2022-12-02 04:43:50', '', 0, 'http://www.bookoemen.my.id/?p=1', 0, 'post', '', 1),
(2, 1, '2022-12-02 04:43:50', '2022-12-02 04:43:50', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://www.bookoemen.my.id/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-12-02 04:43:50', '2022-12-02 04:43:50', '', 0, 'http://www.bookoemen.my.id/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-12-02 04:43:50', '2022-12-02 04:43:50', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://www.bookoemen.my.id.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-12-02 04:43:50', '2022-12-02 04:43:50', '', 0, 'http://www.bookoemen.my.id/?page_id=3', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'bookoeme'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bookoeme', '$P$BrAVFLJLwcWXQxzMrtOsD5Jc18vEq8/', 'bookoeme', 'rheinald@student.umn.ac.id', 'http://www.bookoemen.my.id', '2022-12-02 04:43:50', '', 0, 'bookoeme');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_item_id` (`transaction_item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `id_cart` (`id_cart`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeks untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeks untuk tabel `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`(191)),
  ADD KEY `cache_tags` (`cache_tags`(191));

--
-- Indeks untuk tabel `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`),
  ADD KEY `type` (`type`),
  ADD KEY `url_id_2` (`url_id`,`vary`,`type`),
  ADD KEY `filename_2` (`filename`,`expired`),
  ADD KEY `url_id` (`url_id`,`expired`);

--
-- Indeks untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indeks untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeks untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeks untuk tabel `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeks untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeks untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1134;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaction_item`
--
ALTER TABLE `transaction_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- AUTO_INCREMENT untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD CONSTRAINT `transaction_item_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `transaction_item_ibfk_2` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_item_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

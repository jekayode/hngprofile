-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2017 at 06:29 PM
-- Server version: 5.5.57-0+deb8u1
-- PHP Version: 7.0.22-1~dotdeb+8.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcvwvprmyw`
--

-- --------------------------------------------------------

--
-- Table structure for table `coins`
--

CREATE TABLE `coins` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `pair` varchar(30) NOT NULL,
  `buy` int(50) DEFAULT NULL,
  `sell` int(50) DEFAULT NULL,
  `total_trade` int(60) NOT NULL,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coins`
--

INSERT INTO `coins` (`id`, `name`, `pair`, `buy`, `sell`, `total_trade`, `rec_date`) VALUES
(65, 'Synereo AMP', 'BTC_AMP', 36, 32, 68, '2017-08-31 18:27:52'),
(66, 'Ardor', 'BTC_ARDR', 0, 5, 5, '2017-08-31 18:27:52'),
(67, 'Bitcoin Cash', 'BTC_BCH', 14, 42, 56, '2017-08-31 18:27:52'),
(68, 'Bytecoin', 'BTC_BCN', 20, 20, 40, '2017-08-31 18:27:53'),
(69, 'BitCrystals', 'BTC_BCY', 1, 0, 1, '2017-08-31 18:27:53'),
(70, 'Bela', 'BTC_BELA', 0, 6, 6, '2017-08-31 18:27:53'),
(71, 'BlackCoin', 'BTC_BLK', 17, 1, 18, '2017-08-31 18:27:54'),
(72, 'Bitcoin', 'BTC_BTC', 0, 0, 0, '2017-08-31 18:27:54'),
(73, 'BitcoinDark', 'BTC_BTCD', 2, 0, 2, '2017-08-31 18:27:55'),
(74, 'BitShares', 'BTC_BTS', 72, 54, 126, '2017-08-31 18:27:55'),
(75, 'Burst', 'BTC_BURST', 8, 10, 18, '2017-08-31 18:27:55'),
(76, 'CLAMS', 'BTC_CLAM', 5, 14, 19, '2017-08-31 18:27:55'),
(77, 'Dash', 'BTC_DASH', 25, 36, 61, '2017-08-31 18:27:56'),
(78, 'Decred', 'BTC_DCR', 5, 10, 15, '2017-08-31 18:27:57'),
(79, 'DigiByte', 'BTC_DGB', 80, 74, 154, '2017-08-31 18:27:57'),
(80, 'Dogecoin', 'BTC_DOGE', 12, 25, 37, '2017-08-31 18:27:57'),
(81, 'Einsteinium', 'BTC_EMC2', 9, 7, 16, '2017-08-31 18:27:58'),
(82, 'Ethereum Classic', 'BTC_ETC', 25, 16, 41, '2017-08-31 18:27:58'),
(83, 'Ethereum', 'BTC_ETH', 93, 283, 376, '2017-08-31 18:27:59'),
(84, 'Expanse', 'BTC_EXP', 9, 7, 16, '2017-08-31 18:27:59'),
(85, 'Factom', 'BTC_FCT', 26, 25, 51, '2017-08-31 18:27:59'),
(86, 'FoldingCoin', 'BTC_FLDC', 16, 11, 27, '2017-08-31 18:27:59'),
(87, 'Florincoin', 'BTC_FLO', 8, 6, 14, '2017-08-31 18:28:00'),
(88, 'GameCredits', 'BTC_GAME', 6, 3, 9, '2017-08-31 18:28:00'),
(89, 'Gnosis', 'BTC_GNO', 8, 3, 11, '2017-08-31 18:28:00'),
(90, 'Golem', 'BTC_GNT', 14, 32, 46, '2017-08-31 18:28:00'),
(91, 'Gridcoin Research', 'BTC_GRC', 2, 0, 2, '2017-08-31 18:28:01'),
(92, 'Huntercoin', 'BTC_HUC', 13, 3, 16, '2017-08-31 18:28:01'),
(93, 'LBRY Credits', 'BTC_LBC', 17, 41, 58, '2017-08-31 18:28:01'),
(94, 'Lisk', 'BTC_LSK', 120, 93, 213, '2017-08-31 18:28:02'),
(95, 'Litecoin', 'BTC_LTC', 526, 484, 1010, '2017-08-31 18:28:02'),
(96, 'MaidSafeCoin', 'BTC_MAID', 8, 11, 19, '2017-08-31 18:28:03'),
(97, 'Nautiluscoin', 'BTC_NAUT', 0, 7, 7, '2017-08-31 18:28:03'),
(98, 'NAVCoin', 'BTC_NAV', 65, 32, 97, '2017-08-31 18:28:03'),
(99, 'Neoscoin', 'BTC_NEOS', 0, 12, 12, '2017-08-31 18:28:04'),
(100, 'Namecoin', 'BTC_NMC', 1, 1, 2, '2017-08-31 18:28:04'),
(101, 'DNotes', 'BTC_NOTE', 2, 0, 2, '2017-08-31 18:28:04'),
(102, 'Nexium', 'BTC_NXC', 1, 1, 2, '2017-08-31 18:28:05'),
(103, 'NXT', 'BTC_NXT', 12, 23, 35, '2017-08-31 18:28:05'),
(104, 'Omni', 'BTC_OMNI', 0, 1, 1, '2017-08-31 18:28:05'),
(105, 'PascalCoin', 'BTC_PASC', 1, 9, 10, '2017-08-31 18:28:05'),
(106, 'Pinkcoin', 'BTC_PINK', 26, 51, 77, '2017-08-31 18:28:06'),
(107, 'PotCoin', 'BTC_POT', 5, 14, 19, '2017-08-31 18:28:06'),
(108, 'Peercoin', 'BTC_PPC', 5, 2, 7, '2017-08-31 18:28:06'),
(109, 'Radium', 'BTC_RADS', 4, 0, 4, '2017-08-31 18:28:07'),
(110, 'Augur', 'BTC_REP', 4, 6, 10, '2017-08-31 18:28:07'),
(111, 'Riecoin', 'BTC_RIC', 0, 3, 3, '2017-08-31 18:28:07'),
(112, 'Siacoin', 'BTC_SC', 35, 17, 52, '2017-08-31 18:28:07'),
(113, 'Storjcoin X', 'BTC_SJCX', 5, 4, 9, '2017-08-31 18:28:08'),
(114, 'Stellar', 'BTC_STR', 48, 56, 104, '2017-08-31 18:28:08'),
(115, 'Stratis', 'BTC_STRAT', 14, 27, 41, '2017-08-31 18:28:08'),
(116, 'Syscoin', 'BTC_SYS', 110, 201, 311, '2017-08-31 18:28:08'),
(117, 'Tether USD', 'BTC_USDT', 0, 0, 0, '2017-08-31 18:28:08'),
(118, 'Viacoin', 'BTC_VIA', 103, 27, 130, '2017-08-31 18:28:09'),
(119, 'VeriCoin', 'BTC_VRC', 1, 3, 4, '2017-08-31 18:28:09'),
(120, 'Vertcoin', 'BTC_VTC', 54, 45, 99, '2017-08-31 18:28:09'),
(121, 'BitcoinPlus', 'BTC_XBC', 1, 3, 4, '2017-08-31 18:28:10'),
(122, 'Counterparty', 'BTC_XCP', 60, 16, 76, '2017-08-31 18:28:10'),
(123, 'NEM', 'BTC_XEM', 230, 178, 408, '2017-08-31 18:28:11'),
(124, 'Monero', 'BTC_XMR', 52, 137, 189, '2017-08-31 18:28:11'),
(125, 'Primecoin', 'BTC_XPM', 0, 3, 3, '2017-08-31 18:28:11'),
(126, 'Ripple', 'BTC_XRP', 233, 205, 438, '2017-08-31 18:28:11'),
(127, 'Zcash', 'BTC_ZEC', 37, 36, 73, '2017-08-31 18:28:12'),
(128, '0x', 'BTC_ZRX', 50, 26, 76, '2017-08-31 18:28:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coins`
--
ALTER TABLE `coins`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

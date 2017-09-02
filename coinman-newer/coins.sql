-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2017 at 07:27 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2750261_wildfire`
--

-- --------------------------------------------------------

--
-- Table structure for table `current`
--

CREATE TABLE `current` (
  `id` int(255) NOT NULL,
  `coin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currencypair` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `buy` bigint(20) NOT NULL,
  `sell` bigint(20) NOT NULL,
  `date_saved` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `current`
--

INSERT INTO `current` (`id`, `coin`, `currencypair`, `buy`, `sell`, `date_saved`) VALUES
(513, 'Synereo AMP', 'AMP', 27, 32, '1504292455'),
(514, 'Ardor', 'ARDR', 19, 21, '1504292455'),
(515, 'Bitcoin Cash', 'BCH', 211, 241, '1504292455'),
(516, 'Bytecoin', 'BCN', 75, 28, '1504292455'),
(517, 'BitCrystals', 'BCY', 1, 8, '1504292455'),
(518, 'Bela', 'BELA', 25, 17, '1504292455'),
(519, 'BlackCoin', 'BLK', 22, 30, '1504292455'),
(520, 'Bitcoin', 'BTC', 0, 0, '1504292455'),
(521, 'BitcoinDark', 'BTCD', 4, 2, '1504292455'),
(522, 'BitShares', 'BTS', 177, 178, '1504292455'),
(523, 'Burst', 'BURST', 59, 148, '1504292455'),
(524, 'CLAMS', 'CLAM', 34, 13, '1504292455'),
(525, 'Dash', 'DASH', 144, 208, '1504292455'),
(526, 'Decred', 'DCR', 45, 28, '1504292455'),
(527, 'DigiByte', 'DGB', 217, 300, '1504292455'),
(528, 'Dogecoin', 'DOGE', 95, 114, '1504292455'),
(529, 'Einsteinium', 'EMC2', 16, 67, '1504292455'),
(530, 'Ethereum Classic', 'ETC', 182, 271, '1504292455'),
(531, 'Ethereum', 'ETH', 667, 332, '1504292455'),
(532, 'Expanse', 'EXP', 85, 32, '1504292455'),
(533, 'Factom', 'FCT', 34, 67, '1504292455'),
(534, 'FoldingCoin', 'FLDC', 110, 104, '1504292455'),
(535, 'Florincoin', 'FLO', 53, 19, '1504292455'),
(536, 'GameCredits', 'GAME', 21, 11, '1504292455'),
(537, 'Gnosis', 'GNO', 12, 50, '1504292455'),
(538, 'Golem', 'GNT', 59, 49, '1504292455'),
(539, 'Gridcoin Research', 'GRC', 85, 23, '1504292455'),
(540, 'Huntercoin', 'HUC', 0, 9, '1504292455'),
(541, 'LBRY Credits', 'LBC', 74, 177, '1504292455'),
(542, 'Lisk', 'LSK', 42, 98, '1504292455'),
(543, 'Litecoin', 'LTC', 2286, 3018, '1504292455'),
(544, 'MaidSafeCoin', 'MAID', 29, 23, '1504292455'),
(545, 'Nautiluscoin', 'NAUT', 34, 12, '1504292455'),
(546, 'NAVCoin', 'NAV', 947, 571, '1504292455'),
(547, 'Neoscoin', 'NEOS', 14, 9, '1504292455'),
(548, 'Namecoin', 'NMC', 45, 39, '1504292455'),
(549, 'DNotes', 'NOTE', 10, 9, '1504292455'),
(550, 'Nexium', 'NXC', 1, 37, '1504292455'),
(551, 'NXT', 'NXT', 38, 52, '1504292455'),
(552, 'Omni', 'OMNI', 16, 71, '1504292455'),
(553, 'PascalCoin', 'PASC', 17, 5, '1504292455'),
(554, 'Pinkcoin', 'PINK', 33, 30, '1504292455'),
(555, 'PotCoin', 'POT', 30, 11, '1504292455'),
(556, 'Peercoin', 'PPC', 28, 15, '1504292455'),
(557, 'Radium', 'RADS', 9, 62, '1504292455'),
(558, 'Augur', 'REP', 41, 37, '1504292455'),
(559, 'Riecoin', 'RIC', 2, 3, '1504292455'),
(560, 'Siacoin', 'SC', 107, 127, '1504292455'),
(561, 'Storjcoin X', 'SJCX', 11, 19, '1504292455'),
(562, 'Stellar', 'STR', 307, 168, '1504292455'),
(563, 'Stratis', 'STRAT', 131, 233, '1504292455'),
(564, 'Syscoin', 'SYS', 58, 13, '1504292455'),
(565, 'Tether USD', 'USDT', 0, 0, '1504292455'),
(566, 'Viacoin', 'VIA', 43, 26, '1504292455'),
(567, 'VeriCoin', 'VRC', 83, 63, '1504292455'),
(568, 'Vertcoin', 'VTC', 27, 41, '1504292455'),
(569, 'BitcoinPlus', 'XBC', 4, 10, '1504292455'),
(570, 'Counterparty', 'XCP', 19, 156, '1504292455'),
(571, 'NEM', 'XEM', 74, 192, '1504292455'),
(572, 'Monero', 'XMR', 264, 231, '1504292455'),
(573, 'Primecoin', 'XPM', 4, 6, '1504292455'),
(574, 'Ripple', 'XRP', 422, 400, '1504292455'),
(575, 'Zcash', 'ZEC', 289, 127, '1504292455'),
(576, '0x', 'ZRX', 172, 115, '1504292455');

-- --------------------------------------------------------

--
-- Table structure for table `previous`
--

CREATE TABLE `previous` (
  `id` int(255) NOT NULL,
  `coin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currencypair` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `buy` bigint(20) NOT NULL,
  `current_buy` bigint(255) NOT NULL,
  `percentage_change` int(255) NOT NULL,
  `sell` bigint(20) NOT NULL,
  `date_saved` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `previous`
--

INSERT INTO `previous` (`id`, `coin`, `currencypair`, `buy`, `current_buy`, `percentage_change`, `sell`, `date_saved`) VALUES
(65, 'Litecoin', 'LTC', 2184, 3018, 0, 3123, '1504292319'),
(66, 'NAVCoin', 'NAV', 975, 571, 0, 577, '1504292319'),
(67, 'Ethereum', 'ETH', 650, 332, 0, 327, '1504292319'),
(68, 'Ripple', 'XRP', 403, 400, 0, 397, '1504292319'),
(69, 'Stellar', 'STR', 317, 168, 0, 186, '1504292319'),
(70, 'Zcash', 'ZEC', 282, 127, 0, 133, '1504292319'),
(71, 'Monero', 'XMR', 263, 231, 0, 221, '1504292319'),
(72, 'DigiByte', 'DGB', 228, 300, 0, 292, '1504292319'),
(73, 'Bitcoin Cash', 'BCH', 189, 241, 0, 234, '1504292319'),
(74, 'Ethereum Classic', 'ETC', 173, 271, 0, 271, '1504292319'),
(75, 'BitShares', 'BTS', 172, 178, 0, 181, '1504292319'),
(76, '0x', 'ZRX', 170, 115, 0, 114, '1504292319'),
(77, 'Dash', 'DASH', 149, 208, 0, 216, '1504292319'),
(78, 'Stratis', 'STRAT', 135, 233, 0, 214, '1504292319'),
(79, 'Siacoin', 'SC', 113, 127, 0, 129, '1504292319'),
(80, 'FoldingCoin', 'FLDC', 105, 104, 0, 105, '1504292319'),
(81, 'Dogecoin', 'DOGE', 92, 114, 0, 59, '1504292319'),
(82, 'Expanse', 'EXP', 79, 32, 0, 32, '1504292319'),
(83, 'VeriCoin', 'VRC', 78, 63, 0, 65, '1504292319'),
(84, 'Bytecoin', 'BCN', 75, 28, 0, 27, '1504292319'),
(85, 'LBRY Credits', 'LBC', 74, 177, 0, 184, '1504292319'),
(86, 'NEM', 'XEM', 69, 192, 0, 195, '1504292319'),
(87, 'Gridcoin Research', 'GRC', 64, 23, 0, 56, '1504292319'),
(88, 'Golem', 'GNT', 58, 49, 0, 52, '1504292319'),
(89, 'Florincoin', 'FLO', 56, 19, 0, 17, '1504292319'),
(90, 'Syscoin', 'SYS', 56, 13, 0, 15, '1504292319'),
(91, 'Burst', 'BURST', 52, 148, 0, 144, '1504292319'),
(92, 'Lisk', 'LSK', 47, 98, 0, 98, '1504292319'),
(93, 'Namecoin', 'NMC', 47, 39, 0, 39, '1504292319'),
(94, 'Viacoin', 'VIA', 43, 26, 0, 26, '1504292319'),
(95, 'Decred', 'DCR', 42, 28, 0, 27, '1504292319'),
(96, 'Augur', 'REP', 42, 37, 0, 34, '1504292319'),
(97, 'NXT', 'NXT', 41, 52, 0, 49, '1504292319'),
(98, 'CLAMS', 'CLAM', 35, 13, 0, 14, '1504292319'),
(99, 'Pinkcoin', 'PINK', 34, 30, 0, 30, '1504292319'),
(100, 'PotCoin', 'POT', 34, 11, 0, 10, '1504292319'),
(101, 'Factom', 'FCT', 33, 67, 0, 61, '1504292319'),
(102, 'Vertcoin', 'VTC', 33, 41, 0, 43, '1504292319'),
(103, 'Bela', 'BELA', 32, 17, 0, 15, '1504292319'),
(104, 'Nautiluscoin', 'NAUT', 32, 12, 0, 9, '1504292319'),
(105, 'MaidSafeCoin', 'MAID', 30, 23, 0, 24, '1504292319'),
(106, 'Peercoin', 'PPC', 28, 15, 0, 15, '1504292319'),
(107, 'Synereo AMP', 'AMP', 27, 32, 0, 32, '1504292319'),
(108, 'BlackCoin', 'BLK', 22, 30, 0, 30, '1504292319'),
(109, 'BitcoinPlus', 'XBC', 19, 10, 0, 10, '1504292319'),
(110, 'Ardor', 'ARDR', 17, 21, 0, 19, '1504292319'),
(111, 'Einsteinium', 'EMC2', 17, 67, 0, 72, '1504292319'),
(112, 'Omni', 'OMNI', 16, 71, 0, 71, '1504292319'),
(113, 'GameCredits', 'GAME', 15, 11, 0, 12, '1504292319'),
(114, 'Gnosis', 'GNO', 15, 50, 0, 43, '1504292319'),
(115, 'PascalCoin', 'PASC', 15, 5, 0, 5, '1504292319'),
(116, 'Counterparty', 'XCP', 15, 156, 0, 158, '1504292319'),
(117, 'Neoscoin', 'NEOS', 14, 9, 0, 9, '1504292319'),
(118, 'Storjcoin X', 'SJCX', 12, 19, 0, 19, '1504292319'),
(119, 'DNotes', 'NOTE', 11, 9, 0, 9, '1504292319'),
(120, 'BitcoinDark', 'BTCD', 9, 2, 0, 2, '1504292319'),
(121, 'Radium', 'RADS', 9, 62, 0, 62, '1504292319'),
(122, 'Primecoin', 'XPM', 5, 6, 0, 4, '1504292319'),
(123, 'Riecoin', 'RIC', 3, 3, 0, 3, '1504292319'),
(124, 'BitCrystals', 'BCY', 2, 8, 0, 8, '1504292319'),
(125, 'Huntercoin', 'HUC', 1, 9, 0, 7, '1504292319'),
(126, 'Nexium', 'NXC', 1, 37, 0, 37, '1504292319'),
(127, 'Bitcoin', 'BTC', 0, 0, 0, 0, '1504292319'),
(128, 'Tether USD', 'USDT', 0, 0, 0, 0, '1504292319');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `current`
--
ALTER TABLE `current`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `previous`
--
ALTER TABLE `previous`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `current`
--
ALTER TABLE `current`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;
--
-- AUTO_INCREMENT for table `previous`
--
ALTER TABLE `previous`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

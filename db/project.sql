-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Eyl 2022, 15:44:02
-- Sunucu sürümü: 10.4.24-MariaDB
-- PHP Sürümü: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `project`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alinan_veri`
--

CREATE TABLE `alinan_veri` (
  `id` int(11) NOT NULL,
  `tc_no` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `sifre` varchar(25) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Tablo döküm verisi `alinan_veri`
--

INSERT INTO `alinan_veri` (`id`, `tc_no`, `sifre`) VALUES
(1, '6545646', '4444545'),
(2, '12asasaasas', 'asasas'),
(3, '12454554445', '12121212'),
(4, '21121221121', '215121'),
(5, '11122233344', 'whyareyougay'),
(6, '12521242212', '121212'),
(7, '24544545454', '12121212'),
(8, 'ssddddddddd', 'sssssss'),
(9, '54564565555', '554654'),
(10, '54564565555', '564546454'),
(11, '48565645648', '4894547'),
(12, '48565645648', '55555555'),
(13, '48565645648', '252525'),
(14, '84654655555', '6546545'),
(15, '56466666655', '546456'),
(16, '45644546544', '545464'),
(17, '24555555555', '23456'),
(18, '55555555555', '5555555'),
(19, '54656464525', '4554554'),
(20, '78945612333', '123123'),
(21, '55544466633', '456456'),
(22, '78945662222', '5464546'),
(24, '22222222222', '11111'),
(25, '11223344550', '15155'),
(26, '22254645645', '564564'),
(27, 'alert(1)   ', '56465'),
(28, 'alert(1111)', '64864654'),
(29, '77889944556', 'ertyu'),
(30, '21121215484', '1456451'),
(31, '01454545464', '354544');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `emailadi` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Tablo döküm verisi `email`
--

INSERT INTO `email` (`id`, `emailadi`) VALUES
(1, 'ergintren@mailinator.com\r\n'),
(2, 'ergin@mailinator.com\n'),
(20, 'ergin7@mailinator.com\n'),
(21, 'ergin8@mailinator.com\n'),
(22, 'ergin9@mailinator.com\n'),
(23, 'ergin10@mailinator.com\n'),
(24, 'ergin11@mailinator.com\n'),
(25, 'ergin12@mailinator.com');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `alinan_veri`
--
ALTER TABLE `alinan_veri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `alinan_veri`
--
ALTER TABLE `alinan_veri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Tablo için AUTO_INCREMENT değeri `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

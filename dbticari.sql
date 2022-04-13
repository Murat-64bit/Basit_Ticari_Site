-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Haz 2021, 00:28:48
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dbticari`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kad` varchar(35) NOT NULL,
  `pass` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tbl_admin`
--

INSERT INTO `tbl_admin` (`kad`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_anasayfa`
--

CREATE TABLE `tbl_anasayfa` (
  `Banner` varchar(250) NOT NULL,
  `Tanitim` varchar(250) NOT NULL,
  `id` tinyint(4) NOT NULL,
  `logo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tbl_anasayfa`
--

INSERT INTO `tbl_anasayfa` (`Banner`, `Tanitim`, `id`, `logo`) VALUES
('/Resimler/Banner.png', '/Resimler/tanitim.jpg', 1, '/Resimler/bim.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_hakkinda`
--

CREATE TABLE `tbl_hakkinda` (
  `id` tinyint(4) NOT NULL,
  `fotograf` varchar(100) NOT NULL,
  `metin` varchar(1250) NOT NULL,
  `konum` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tbl_hakkinda`
--

INSERT INTO `tbl_hakkinda` (`id`, `fotograf`, `metin`, `konum`) VALUES
(1, '/Resimler/business.jpg', 'Modern hayatı şekillendiren yeni keşiflerin öncülüğünü üstlenerek daha iyi bir yaşamın standartlarını oluşturmak için çalışan Doğuş Grubu, 1951 yılında kurulmuştur. Müşterilerinin yanı sıra çalışanları, iş ortakları ve hatta rakipleri için bir tutkuya dönüşecek, sınıfının en iyisi yaşam tarzı markalarını bünyesinde barındıran Doğuş, çalıştığı alanlarda küresel bir oyuncu olma hedefiyle çalışmalarına devam etmektedir. Otomotiv; inşaat; medya; yeme-içme, turizm & perakende; gayrimenkul ve enerji olmak üzere altı ana sektörde faaliyet gösteren Doğuş Grubu ayrıca, mevcut hizmet verdiği sektörlerin yanı sıra teknoloji, spor ve eğlence alanındaki yeni yatırımlarıyla da büyümesini sürdürmektedir. Grup 300’ün üzerindeki şirketi ve 19 bin çalışanıyla müşterilerine üstün teknoloji, yüksek marka kalitesi ve dinamik bir insan kaynağı ile hizmet vermektedir.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d40589.66284551924!2d29.25566574792197!3d40.87527996671889!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cac348cffe0ddf%3A0xc85226fb0f2c4053!2sPendik%20Sahili!5e0!3m2!1str!2str!4v1624470230213!5m2!1str!2str');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_mesajlar`
--

CREATE TABLE `tbl_mesajlar` (
  `id` smallint(6) NOT NULL,
  `adsoyad` varchar(70) NOT NULL,
  `email` varchar(150) NOT NULL,
  `konu` varchar(120) NOT NULL,
  `mesaj` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tbl_mesajlar`
--

INSERT INTO `tbl_mesajlar` (`id`, `adsoyad`, `email`, `konu`, `mesaj`) VALUES
(1, 'Ad Soyad', 'E-Mail', 'Konu', 'asdfsadfsdafsadfsdaasdf'),
(2, 'Mesut Komiser', 'mesutkomiser@gmail.com', 'Selam', 'merhaba lütfen yardımcı olur musunuz?');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_urunler`
--

CREATE TABLE `tbl_urunler` (
  `id` smallint(6) NOT NULL,
  `ad` varchar(200) NOT NULL,
  `fiyat` decimal(18,2) NOT NULL,
  `gorsel` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `tbl_urunler`
--

INSERT INTO `tbl_urunler` (`id`, `ad`, `fiyat`, `gorsel`) VALUES
(2, 'IPAD4', '459.00', '/Resimler/ipad8.jpg'),
(3, 'Apple Pencil', '459.00', '/Resimler/applepencil.jpg'),
(4, 'Apple Pencil', '459.00', '/Resimler/applepencil.jpg'),
(7, 'Alcatell', '500.00', '/Resimler/Alcatel.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbl_anasayfa`
--
ALTER TABLE `tbl_anasayfa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_hakkinda`
--
ALTER TABLE `tbl_hakkinda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_mesajlar`
--
ALTER TABLE `tbl_mesajlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_urunler`
--
ALTER TABLE `tbl_urunler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbl_hakkinda`
--
ALTER TABLE `tbl_hakkinda`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_mesajlar`
--
ALTER TABLE `tbl_mesajlar`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_urunler`
--
ALTER TABLE `tbl_urunler`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

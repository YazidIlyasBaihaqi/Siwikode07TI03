-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 04:25 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsiwikode`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kreasi`
--

CREATE TABLE `jenis_kreasi` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_kreasi`
--

INSERT INTO `jenis_kreasi` (`id`, `name`) VALUES
(1, 'Wisata Budaya'),
(2, 'Wisata Religi'),
(3, 'Wisata Alam'),
(4, 'Wisata Bermain');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kuliner`
--

CREATE TABLE `jenis_kuliner` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_kuliner`
--

INSERT INTO `jenis_kuliner` (`id`, `nama`) VALUES
(1, 'Kedai/Cafe'),
(2, 'Restaurant'),
(3, 'Pasar Kaget');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_wisata`
--

CREATE TABLE `jenis_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_wisata`
--

INSERT INTO `jenis_wisata` (`id`, `nama`) VALUES
(1, 'Argo Wisata'),
(2, 'Kuliner'),
(3, 'Taman Wisata'),
(4, 'Museum'),
(5, 'Water Park / Kolam Renang');

-- --------------------------------------------------------

--
-- Table structure for table `profesi`
--

CREATE TABLE `profesi` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profesi`
--

INSERT INTO `profesi` (`id`, `nama`) VALUES
(1, 'Artist'),
(2, 'Pejabat'),
(3, 'Mahasiswa'),
(4, 'Pegawai Swasta'),
(5, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `wisata_id` int(11) NOT NULL,
  `profesi_id` int(11) NOT NULL,
  `rating` smallint(6) DEFAULT NULL,
  `komentar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wisata_kreasi`
--

CREATE TABLE `wisata_kreasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis_wisata_id` int(11) NOT NULL,
  `fasilitas` text DEFAULT NULL,
  `bintang` smallint(6) DEFAULT NULL,
  `kontak` varchar(45) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `latlong` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `web` varchar(45) DEFAULT NULL,
  `jenis_kuliner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisata_kreasi`
--

INSERT INTO `wisata_kreasi` (`id`, `nama`, `deskripsi`, `jenis_wisata_id`, `fasilitas`, `bintang`, `kontak`, `alamat`, `latlong`, `email`, `web`, `jenis_kuliner_id`) VALUES
(0, 'Masjid Kubah Emas', 'Untuk tempat wisata di depok yang pertama sebagai ikon dari kota depok adalah masjid kubah mas. Masjid ini dikenal juga dengan nama Masjid Dian Al-Mahri. Bangunan yang mempunyai kubah berlapiskan emas ini diresmikan pada tanggal 31 Desember 2006, tepat setelah pelaksanaan shalat idul adha 1427 H. Pendiri masjid bernama Ibu Hj. Dian Juriah Maimun Al-Rasyid serta Bapak H. Maimun Al-Rasyid.\r\n\r\nMasjid ini masih dalam pengembangan menjadi kawasan terpadu bernama Islamic Center Dian Al-Mahri. Kemegahan masjid disebut-sebut sebagai yang paling megah di kawasan Asia Tenggara dan mampu menampung sampai dengan 20.000 jamaah.Kini Masjid Kubah Mas menjadi salah satu obyek wisata religi yang selalu ramai kunjungan, terlebih ketika akhir pekan atau masa liburan setidaknya ada 50.000 pengunjung yang datang.', 1, 'Tempat Sholat', 5, 'Booking : 0838-8822-9900', 'pos security kubah emas, Jl. Raya Meruyung, M', 'Insert', 'masacid2002@gmail.com', 'https://www.google.com/', 2),
(1, 'Arum Jeram', 'Arum jeram ini Baru mulai dikerjakan pada awal 2017 oleh pemerintah Kota Depok, tawaran menarik ini merupakan tempat wisata baru di Depok. Rencananya akan ada empat dermaga yang dibuat.Untuk saat ini, pengunjung biasanya berkumpul di Pos Pantau ciliwung Ratujaya atau dibawah Jembatan Grand Depok City. Menariknya ,adanya pengembangan sungai ciliwung Depok menjadi tempat wisata membuat pemerintah dan warga setempat semakin gencar menjaga kebersihan sungai ini.jadi tidak seperti aliran sungai ciliwung setelah sampai jakarta,sungai ciliwung di bogor dan depok masih cukup bersih dan aman untuk kegiatan arum jeram.', 5, 'Arum Jeram, Kuliner Makanan', 4, 'Booking : 0838-8822-9900', 'Jl. Boulevard Grand Depok City, Depok, Kec. P', 'insert latitude', 'yazi20012ti@student.nurulfikri.ac.id', 'https://www.google.com/maps/embed?pb=!1m18!1m', 4);

-- --------------------------------------------------------

--
-- Table structure for table `wisata_kuliner`
--

CREATE TABLE `wisata_kuliner` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis_wisata_id` int(11) NOT NULL,
  `fasilitas` text DEFAULT NULL,
  `bintang` smallint(6) DEFAULT NULL,
  `kontak` varchar(45) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `latlong` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `web` text DEFAULT NULL,
  `jenis_kuliner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wisata_kuliner`
--

INSERT INTO `wisata_kuliner` (`id`, `nama`, `deskripsi`, `jenis_wisata_id`, `fasilitas`, `bintang`, `kontak`, `alamat`, `latlong`, `email`, `web`, `jenis_kuliner_id`) VALUES
(0, 'Sop Durian Margando', 'Setelah beberapa tempat wisata kuliner depok yang menyediakan makanan berat, pada kali ini akan membahas yang ringan dan segar yakni Sop Durian Margonda, terletak di Jalan Margonda Raya Blok I No.20, Kota Depok, Jawa Barat. Tempat ini juga cukup terkenal sebagai penyedia kuliner enak dengan harga yang murah sekitar Rp10.000 kita sudah bisa merasakan sop durian khas Margonda.\n\nTempat kuliner Sop Durian Margonda sangat pas untuk kalian pecinta buah durian si raja buah, dengan rasa yang lezat dan daging durian yang menggoda memang sangat menggoda untuk dicicipi.', 2, 'Tempat Makan', 4, 'Booking : 0873-9990-1235', 'Jl. Margonda Raya No.1, Depok, Kec. Pancoran Mas, Kota Depok, Jawa Barat 16436', '-6.396550, 106.820717', 'durianenak@google.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.026756598589!2d106.82294231395552!3d-6.390548995375962!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ebfb38f81ddf%3A0x25004ce29298d8ca!2sMargonda&#39;s%20Ice%20Durians!5e0!3m2!1sen!2sid!4v1611118743427!5m2!1sen!2sid', 1),
(1, 'Mang Kabayan', 'Salah satu yang mesti sobat kuliner kunjungi adalah Mang Kabayan, restoran yang cukup terkenal ini memiliki banyak masakan unggulan diantaranya ikan gurame, kita bisa memilih sendiri ikannya, karena ikan yang dipakai masih dalam keadaan hidup sehingga terjamin kesegaran ikan yang dipergunakan, dengan hidangan yang enak dan lezat Mang Kabayan menjadi salah satu tempat yang wajib dikunjungi.\r\n\r\nMang Kabayan menyediakan menu masakan khas sunda yang sangat enak, terletak di Jalan Margonda Raya No.488, Depok, Jawa Barat. Dengan pengalaman dalam bidang kuliner yang sudah teruji, berdasarkan lamanya resto ini berdiri, dan memiliki pengunjung setia, pastinya hidangan yang disediakan mudah cocok dengan lidah siapapun.', 2, 'Tempat Makan', 5, 'Booking : 0838-8822-9900', 'Jalan Margonda Raya No.488, Pondok Cina, Depok, Pondok Cina, Kecamatan Beji, Kota Depok, Jawa Barat 16424\r\n\r\n', 'insert latitude', 'masacid2002@gmail.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.2334161288795!2d106.83126531395538!3d-6.363830295394968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ec16e8ff0f7b%3A0xbc7e07e8cf18cef!2sMang%20Kabayan!5e0!3m2!1sen!2sid!4v1611120489298!5m2!1sen!2sid', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_kreasi`
--
ALTER TABLE `jenis_kreasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profesi`
--
ALTER TABLE `profesi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_testimoni_wisata1_idx` (`wisata_id`),
  ADD KEY `fk_testimoni_profesi1_idx` (`profesi_id`);

--
-- Indexes for table `wisata_kreasi`
--
ALTER TABLE `wisata_kreasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wisata_jenis_wisata_idx` (`jenis_wisata_id`),
  ADD KEY `fk_wisata_jenis_kuliner1_idx` (`jenis_kuliner_id`);

--
-- Indexes for table `wisata_kuliner`
--
ALTER TABLE `wisata_kuliner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_wisata_jenis_wisata_idx` (`jenis_wisata_id`),
  ADD KEY `fk_wisata_jenis_kuliner1_idx` (`jenis_kuliner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_kreasi`
--
ALTER TABLE `jenis_kreasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenis_wisata`
--
ALTER TABLE `jenis_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profesi`
--
ALTER TABLE `profesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD CONSTRAINT `fk_testimoni_profesi1` FOREIGN KEY (`profesi_id`) REFERENCES `profesi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_testimoni_wisata1` FOREIGN KEY (`wisata_id`) REFERENCES `wisata_kuliner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wisata_kuliner`
--
ALTER TABLE `wisata_kuliner`
  ADD CONSTRAINT `fk_wisata_jenis_kuliner1` FOREIGN KEY (`jenis_kuliner_id`) REFERENCES `jenis_kuliner` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_wisata_jenis_wisata` FOREIGN KEY (`jenis_wisata_id`) REFERENCES `jenis_wisata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

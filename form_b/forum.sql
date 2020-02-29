-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2020 pada 15.56
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id -mahsiswa` int(10) NOT NULL,
  `nim` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `nama` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `prodi_id` int(10) NOT NULL DEFAULT 0,
  `fakultas_id` int(10) NOT NULL DEFAULT 0,
  `tahun_masuk` char(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `gender` enum('L','P','''''') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `tmpt_lahir` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id -mahsiswa`, `nim`, `nama`, `prodi_id`, `fakultas_id`, `tahun_masuk`, `gender`, `tmpt_lahir`, `tgl_lahir`) VALUES
(1, '318311053', 'Dini', 0, 0, '\'\'', 'P', '\'\'', '0000-00-00'),
(2, '3183110534', 'Diniy', 0, 0, '\'\'', 'P', '\'\'', '0000-00-00'),
(3, '31831111010', 'Dyniess', 0, 0, '\'\'', 'P', '\'\'', '0000-00-00'),
(4, '3183111011', 'Rudy Asri', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(5, '3183111031', 'Budi', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(6, '3183111031', 'Kiko', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(8, '3183111041', 'Fancy', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(9, '3183111042', 'Kodi', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(10, '3183111034', 'Sanji', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(11, '3183111038', 'Luffy', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(12, '3183111089', 'Shanks', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(13, '3183111078', 'Kaido', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(14, '3183111051', 'Jinbei\'', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(15, '3183111051', 'Zoro', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(16, '3183111054', 'Chopper', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(17, '31831110510', 'Roger', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(18, '31831110519', 'Rayleigh', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(19, '31831110541', 'Nami', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(20, '31831110599', 'Robin', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(21, '31831111072', 'Ruli Indriyani', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00'),
(22, '3183111070', 'Ahmad', 0, 0, '\'\'', '\'\'', '\'\'', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id -mahsiswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id -mahsiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

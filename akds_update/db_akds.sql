-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Jul 2019 pada 15.32
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akds`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_absensi_guru`
--

CREATE TABLE `rb_absensi_guru` (
  `id_absensi_guru` int(5) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_absensi_guru`
--

INSERT INTO `rb_absensi_guru` (`id_absensi_guru`, `kodejdwl`, `nip`, `kode_kehadiran`, `tanggal`, `waktu_input`) VALUES
(1, 5, '195806161984000001', 'I', '2018-11-24', '2018-11-24 10:26:06'),
(2, 13, '195704111980032004', 'H', '2018-11-24', '2018-11-24 10:26:06'),
(3, 14, '195806161984032002', 'H', '2018-11-24', '2018-11-24 10:26:06'),
(4, 35, 'guru2', 'I', '2018-11-29', '2018-11-29 10:46:15'),
(5, 37, 'guru1', 'H', '2018-11-29', '2018-11-29 10:46:15'),
(6, 38, 'guru1', 'H', '2018-11-29', '2018-11-29 10:46:15'),
(7, 36, 'guru1', 'H', '2018-11-29', '2018-11-29 10:46:15'),
(8, 41, 'guru1', 'I', '2018-12-22', '2018-12-22 08:18:12'),
(9, 41, 'guru1', 'H', '2019-01-10', '2019-01-10 20:32:05'),
(10, 42, 'guru1', 'H', '2019-01-10', '2019-01-10 20:32:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_absensi_siswa`
--

CREATE TABLE `rb_absensi_siswa` (
  `id_absensi_siswa` int(5) NOT NULL,
  `id_journal` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kehadiran` varchar(5) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_absensi_siswa`
--

INSERT INTO `rb_absensi_siswa` (`id_absensi_siswa`, `id_journal`, `kodejdwl`, `nisn`, `kode_kehadiran`, `tanggal`, `waktu_input`) VALUES
(127, 8, 0, 'siswa4', 'H', '2019-01-10', '2019-01-10 20:35:41'),
(126, 8, 0, 'siswa2', 'H', '2019-01-10', '2019-01-10 20:35:41'),
(125, 8, 0, 'siswa1', 'H', '2019-01-10', '2019-01-10 20:35:41'),
(72, 0, 0, 'siswa2', 'H', '2018-11-26', '2018-11-26 16:19:19'),
(73, 0, 0, 'siswa1', 'S', '2018-11-25', '2018-11-26 16:19:37'),
(74, 0, 0, 'siswa2', 'H', '2018-11-25', '2018-11-26 16:19:37'),
(75, 0, 37, 'siswa1', 'I', '2018-11-26', '2018-11-26 17:00:49'),
(76, 0, 37, 'siswa2', 'S', '2018-11-26', '2018-11-26 17:00:49'),
(77, 0, 0, 'siswa1', 'S', '2018-11-24', '2018-11-26 17:03:14'),
(78, 0, 0, 'siswa2', 'H', '2018-11-24', '2018-11-26 17:03:14'),
(79, 0, 0, 'siswa1', 'S', '2018-11-23', '2018-11-26 17:03:25'),
(80, 0, 0, 'siswa2', 'H', '2018-11-23', '2018-11-26 17:03:25'),
(81, 0, 0, 'siswa1', 'S', '2018-11-27', '2018-11-26 17:23:33'),
(82, 0, 0, 'siswa2', 'H', '2018-11-27', '2018-11-26 17:23:33'),
(83, 0, 0, 'siswa1', 'S', '2018-11-28', '2018-11-26 17:23:43'),
(84, 0, 0, 'siswa2', 'H', '2018-11-28', '2018-11-26 17:23:43'),
(85, 0, 0, 'siswa1', 'S', '2018-11-29', '2018-11-26 17:23:53'),
(86, 0, 0, 'siswa2', 'H', '2018-11-29', '2018-11-26 17:23:53'),
(87, 0, 0, 'siswa1', 'S', '2018-11-17', '2018-11-29 10:08:20'),
(88, 0, 0, 'siswa2', 'H', '2018-11-17', '2018-11-29 10:08:20'),
(89, 0, 0, 'siswa1', 'S', '2018-11-05', '2018-11-29 10:08:29'),
(90, 0, 0, 'siswa2', 'H', '2018-11-05', '2018-11-29 10:08:29'),
(91, 0, 0, 'siswa1', 'S', '2018-11-12', '2018-11-29 10:08:35'),
(92, 0, 0, 'siswa2', 'H', '2018-11-12', '2018-11-29 10:08:35'),
(93, 0, 35, 'siswa1', 'I', '2018-12-02', '2018-12-02 19:35:21'),
(94, 0, 35, 'siswa2', 'H', '2018-12-02', '2018-12-02 19:35:21'),
(95, 0, 0, 'siswa1', 'S', '2018-12-19', '2018-12-20 13:09:57'),
(96, 0, 0, 'siswa2', 'H', '2018-12-19', '2018-12-20 13:09:58'),
(97, 0, 0, 'siswa1', 'S', '2018-12-20', '2018-12-20 13:10:05'),
(98, 0, 0, 'siswa2', 'H', '2018-12-20', '2018-12-20 13:10:05'),
(99, 0, 0, 'siswa1', 'S', '2018-12-18', '2018-12-20 13:10:13'),
(100, 0, 0, 'siswa2', 'H', '2018-12-18', '2018-12-20 13:10:13'),
(101, 0, 0, 'siswa1', 'S', '2018-12-23', '2018-12-20 13:10:28'),
(102, 0, 0, 'siswa2', 'H', '2018-12-23', '2018-12-20 13:10:28'),
(103, 0, 0, 'siswa1', 'S', '2018-04-08', '2018-12-20 14:56:22'),
(104, 0, 0, 'siswa2', 'H', '2018-04-08', '2018-12-20 14:56:22'),
(105, 6, 39, 'siswa1', 'H', '2018-12-21', '2018-12-21 08:24:28'),
(106, 6, 39, 'siswa2', 'H', '2018-12-21', '2018-12-21 08:24:28'),
(107, 7, 0, 'siswa1', 'H', '2019-01-09', '2019-01-10 12:23:20'),
(108, 7, 0, 'siswa2', 'H', '2019-01-09', '2019-01-10 12:23:20'),
(109, 7, 0, 'siswa4', 'H', '2019-01-09', '2019-01-10 12:23:20'),
(110, 9, 41, 'siswa1', 'S', '2019-01-10', '2019-01-10 12:24:23'),
(111, 9, 41, 'siswa2', 'H', '2019-01-10', '2019-01-10 12:24:23'),
(112, 9, 41, 'siswa4', 'H', '2019-01-10', '2019-01-10 12:24:23'),
(113, 9, 41, 'siswa1', 'S', '2019-01-09', '2019-01-10 12:25:49'),
(114, 9, 41, 'siswa2', 'H', '2019-01-09', '2019-01-10 12:25:49'),
(115, 9, 41, 'siswa4', 'H', '2019-01-09', '2019-01-10 12:25:49'),
(116, 9, 41, 'siswa1', 'S', '2019-01-11', '2019-01-10 12:28:53'),
(117, 9, 41, 'siswa2', 'H', '2019-01-11', '2019-01-10 12:28:53'),
(118, 9, 41, 'siswa4', 'H', '2019-01-11', '2019-01-10 12:28:53'),
(119, 9, 41, 'siswa1', 'S', '2019-01-08', '2019-01-10 13:48:42'),
(120, 9, 41, 'siswa2', 'H', '2019-01-08', '2019-01-10 13:48:42'),
(121, 9, 41, 'siswa4', 'H', '2019-01-08', '2019-01-10 13:48:42'),
(122, 12, 41, 'siswa1', 'H', '2019-01-12', '2019-01-10 20:18:41'),
(123, 12, 41, 'siswa2', 'S', '2019-01-12', '2019-01-10 20:18:41'),
(124, 12, 41, 'siswa4', 'H', '2019-01-12', '2019-01-10 20:18:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_agama`
--

CREATE TABLE `rb_agama` (
  `id_agama` int(5) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_agama`
--

INSERT INTO `rb_agama` (`id_agama`, `nama_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Hindu'),
(4, 'Budha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_elearning`
--

CREATE TABLE `rb_elearning` (
  `id_elearning` int(10) NOT NULL,
  `id_kategori_elearning` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `nama_file` varchar(255) NOT NULL,
  `file_upload` text NOT NULL,
  `tanggal_tugas` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_elearning`
--

INSERT INTO `rb_elearning` (`id_elearning`, `id_kategori_elearning`, `kodejdwl`, `nama_file`, `file_upload`, `tanggal_tugas`, `tanggal_selesai`, `keterangan`) VALUES
(13, 1, 7, 'File Upload Materi 1', 'Contoh_Kasus_AHP.docx', '2015-12-09 08:07:15', '0000-00-00 00:00:00', ''),
(22, 2, 7, 'Tugas Untuk Siswa Kelompok yang Malas', 'cover_Pidana_korupsi.docx', '2015-12-09 22:37:51', '2015-12-23 13:07:09', 'Tolong Dikerjakan, Kalau Tidak Maka nilai Raport anda merah..'),
(23, 2, 7, 'Tugas Pertama ', 'Surat-Keterangan-Kepsek.docx', '2015-12-13 15:02:00', '2016-01-22 15:02:00', 'Selesaikan Secepatnya,..!'),
(24, 1, 5, 'Bahan Untuk Tugas Semester 2', 'journal_profile_matching_beasiswa.pdf', '2016-02-23 09:04:22', '2016-12-23 11:04:22', 'Bahan Untuk Tugas Semester 2 ini tolong dipelajari karena akan banyak keluar di ujian semester nanti.'),
(25, 2, 5, 'Tugas Semester 1 Tahun Ajaran 2015/2016', 'Metode-Profile-Matching.pdf', '2015-12-23 09:11:15', '2016-04-25 09:11:15', 'Silahkan Dijawab dan unutk jawaban di upload disini paling lambat sesuai tanggal selesai..'),
(26, 1, 13, 'Bahan Unutk Peljaran Besok', '20160311072304-Tugas_laura.docx', '2016-03-11 07:22:32', '2016-03-11 07:22:32', ''),
(27, 2, 13, 'Tugas Unutk Dikumpul Besok 12 Maret 2016', '20160311072502-Aturan Main Projects.docx', '2016-03-11 07:24:16', '2016-03-13 07:24:16', ''),
(28, 1, 13, 'kjbkjbkbk', '20160311143928-HITUNG NILAI RAPORT.docx', '2016-03-11 14:39:09', '2016-03-11 14:39:09', 'kjbkbk'),
(29, 2, 5, 'Tugas 1', '20181124171536-Doc2.docx', '2018-11-24 17:14:48', '2018-11-25 17:14:48', 'Harus Siap'),
(30, 1, 41, 'Bahan Pelajaran Di kumpukan Besok', '20190107092910-panduan singkat eRaporSMK2018 v4.1.0 txt.txt', '2019-01-07 09:27:57', '2019-01-09 09:27:57', 'Cepat jangan Telat'),
(31, 2, 41, 'Tugas 1', '20190107092952-guru.doc', '2019-01-07 09:29:21', '2019-01-09 09:29:21', 'Jngan Lupa di kerjakan yaa'),
(32, 1, 41, 'vgte5y45', '20190519110604-cv fadel muhammad.pdf', '2019-05-19 11:05:31', '2019-05-19 15:05:31', 'evt45tw45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_elearning_jawab`
--

CREATE TABLE `rb_elearning_jawab` (
  `id_elearning_jawab` int(5) NOT NULL,
  `id_elearning` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `file_tugas` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_elearning_jawab`
--

INSERT INTO `rb_elearning_jawab` (`id_elearning_jawab`, `id_elearning`, `nisn`, `keterangan`, `file_tugas`, `waktu`) VALUES
(3, 25, '9991268756', 'Ini buk Guru tugas dari saya, Tolong diperiksa,..', '20160309112015-Nilai_Siswa_9982679070.pdf', '2016-03-09 11:20:15'),
(4, 27, '9991268756', 'Ini Tugas saya buk..', '20160311072733-Pengembangan Members.txt', '2016-03-11 07:27:33'),
(5, 29, 'siswa', 'okee buk', '20181124172059-Welcome Scan.jpg', '2018-11-24 17:20:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_forum_komentar`
--

CREATE TABLE `rb_forum_komentar` (
  `id_forum_komentar` int(10) NOT NULL,
  `id_forum_topic` int(10) NOT NULL,
  `nisn_nip` varchar(20) NOT NULL,
  `isi_komentar` text NOT NULL,
  `waktu_komentar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_forum_komentar`
--

INSERT INTO `rb_forum_komentar` (`id_forum_komentar`, `id_forum_topic`, `nisn_nip`, `isi_komentar`, `waktu_komentar`) VALUES
(1, 3, '9980707189', 'Senangi dulu pelajaran yang diharapkan nilainya bagus. Tanpa menyenangi pelajaran tersebut, maka hasil yang diperoleh melalui belajar tidak akan maksimal. Paling tidak, jangan sampai membenci pelajarannya. Hal ini karena akan tidak mungkin seseorang bisa betah lama-lama belajar materi suatu mata pelajaran yang dibencinya, apalagi untuk memahaminya.', '2015-12-12 05:09:15'),
(7, 1, '9980722436', 'Hallo teman teman, Numpang share lowongan ya. lagi di butuhkan segera nih buat posisi Full Time Web Developer/ Web Programmer.', '2016-02-26 00:34:01'),
(13, 1, '9991268756', 'Kami hanya ingin berdoa, ingin beribadah dan menjalankan ibadat kami. Kami tidak pernah menggangu apalagi berusaha untuk mengganggu umat beragama lain apalagi melakukan kristenisasi. Berpikir untuk itu saja kami tidak pernah.', '2016-03-09 10:38:51'),
(12, 1, '195704111980032004', 'Kami cuma ingin memiliki rumah ibadat agar kami dapat berdoa kepada Tuhan kami dengan khusuk. Dosakah itu? apakah itu terlarang di negara yag berazaskan Pancasila ini? Dimanakah rasa damai dan keadilan itu? Masih adakah toleransi di negara ini?', '2016-03-09 10:36:22'),
(3, 3, '9980722436', 'Milikilah rasa ingin tahu yang besar, karena hanya orang-orang yang memiliki rasa ingin tahu yang besar dalam banyak hal lah yang akan selalu senang dalam belajar, dan selalu ingin mempelajari dan memahami hal-hal baru dan banyak hal yang ia temui.', '2015-12-11 17:09:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_forum_topic`
--

CREATE TABLE `rb_forum_topic` (
  `id_forum_topic` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `judul_topic` varchar(255) NOT NULL,
  `isi_topic` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_forum_topic`
--

INSERT INTO `rb_forum_topic` (`id_forum_topic`, `kodejdwl`, `judul_topic`, `isi_topic`, `waktu`) VALUES
(1, 33, 'Cara Unutk Memahami Rumus Pitagoras dengan mudah.', 'Dalam matematika, teorema Pythagoras adalah suatu keterkaitan dalam geometri Euklides antara tiga sisi sebuah segitiga siku-siku. Teorema ini dinamakan menurut nama filsuf dan matematikawan Yunani abad ke-6 SM, Pythagoras. . Pythagoras mendapat kredit karena ialah yang pertama membuktikan kebenaran universal dari teorema ini melalui pembuktian matematis.', '2015-12-11 08:08:18'),
(2, 7, 'Rumus untuk menghitung pendapatan perkapita', 'Pendapatan per kapita adalah jumlah (nilai) barang dan jasa rata-rata yang tersedia bagi setiap penduduk suatu negara pada suatu periode tertentu.\r\n\r\nPendapatan per kapita dapat digunakan untuk membandingkan kesejahteraan atau standar hidup suatu negara dari tahun ke tahun. Dengan melakukan perbandingan seperti itu, kita dapat mengamati apakah kesejahteraan masyarakat pada suatu negara secara rata-rata telah meningkat. Pendapatan per kapita yang meningkat merupakan salah satu tanda bahwa rata-rata kesejahteraan penduduk telah meningkat. Pendapatan per kapita menunjukkan pula apakah pembangunan yang telah dilaksanakan oleh pemerintah telah berhasil, berapa besar keberhasilan tersebut, dan akibat apa yang timbul oleh peningkatan tersebut.', '2015-12-12 13:13:27'),
(3, 7, 'Cara Mendapatkan Nilai Bagus Dan Menjadi Juara Kelas Di Sekolah', 'Bagaimana caranya agar nilai rapor mata pelajaran di sekolah hasilnya baik dan bagus sehingga syukur-syukur bisa menjadi juara kelas ? Ikuti tips di bawah ini yang didasarkan pada sebuah pengalaman nyata bertahun-tahun dari berbagai sumber. \r\n\r\nPerlu untuk digaris-bawahi, tak dibutuhkan otak yang pintar atau jenius untuk mendapatkan nilai yang bagus di sekolah ataupun untuk menjadi seorang juara kelas. Seseorang yang kemampuan otaknya biasa-biasa saja akan bisa memperoleh hasil yang bagus asalkan ia memiliki niat, kemauan, maupun sikap yang tepat dalam mewujudkan ambisinya.', '2015-12-11 16:20:51'),
(4, 41, 'Fadel Muhammad', 'http://localhost/akds-k13/index.php?view=forum&act=tambah&jdwl=41&id=Kelas%20XI&kd=MP-02', '2018-12-22 07:38:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_gedung`
--

CREATE TABLE `rb_gedung` (
  `kode_gedung` varchar(10) NOT NULL,
  `nama_gedung` varchar(100) NOT NULL,
  `jumlah_lantai` varchar(20) NOT NULL,
  `panjang` varchar(20) NOT NULL,
  `tinggi` varchar(20) NOT NULL,
  `lebar` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_gedung`
--

INSERT INTO `rb_gedung` (`kode_gedung`, `nama_gedung`, `jumlah_lantai`, `panjang`, `tinggi`, `lebar`, `keterangan`, `aktif`) VALUES
('G001', 'Gedung A', '2', '100', '50', '50', '', 'Y'),
('G002', 'Gedung B', '3', '50', '80', '30', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_golongan`
--

CREATE TABLE `rb_golongan` (
  `id_golongan` int(5) NOT NULL,
  `nama_golongan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_golongan`
--

INSERT INTO `rb_golongan` (`id_golongan`, `nama_golongan`, `keterangan`) VALUES
(1, 'IV/a', 'Golongan IV/a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_guru`
--

CREATE TABLE `rb_guru` (
  `nip` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_guru` varchar(150) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `niy_nigk` varchar(50) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `id_status_kepegawaian` int(5) NOT NULL,
  `id_jenis_ptk` int(5) NOT NULL,
  `pengawas_bidang_studi` varchar(150) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `nama_dusun` varchar(100) NOT NULL,
  `desa_kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `tugas_tambahan` varchar(100) NOT NULL,
  `id_status_keaktifan` int(5) NOT NULL,
  `sk_cpns` varchar(150) NOT NULL,
  `tanggal_cpns` date NOT NULL,
  `sk_pengangkatan` varchar(150) NOT NULL,
  `tmt_pengangkatan` date NOT NULL,
  `lembaga_pengangkatan` varchar(150) NOT NULL,
  `id_golongan` int(5) NOT NULL,
  `keahlian_laboratorium` varchar(150) NOT NULL,
  `sumber_gaji` varchar(150) NOT NULL,
  `nama_ibu_kandung` varchar(100) NOT NULL,
  `id_status_pernikahan` int(5) NOT NULL,
  `nama_suami_istri` varchar(100) NOT NULL,
  `nip_suami_istri` varchar(30) NOT NULL,
  `pekerjaan_suami_istri` varchar(100) NOT NULL,
  `tmt_pns` date NOT NULL,
  `lisensi_kepsek` varchar(20) NOT NULL,
  `jumlah_sekolah_binaan` int(5) NOT NULL,
  `diklat_kepengawasan` varchar(20) NOT NULL,
  `mampu_handle_kk` varchar(20) NOT NULL,
  `keahlian_breile` varchar(20) NOT NULL,
  `keahlian_bahasa_isyarat` varchar(20) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_guru`
--

INSERT INTO `rb_guru` (`nip`, `password`, `nama_guru`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nik`, `niy_nigk`, `nuptk`, `id_status_kepegawaian`, `id_jenis_ptk`, `pengawas_bidang_studi`, `id_agama`, `alamat_jalan`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `kode_pos`, `telepon`, `hp`, `email`, `tugas_tambahan`, `id_status_keaktifan`, `sk_cpns`, `tanggal_cpns`, `sk_pengangkatan`, `tmt_pengangkatan`, `lembaga_pengangkatan`, `id_golongan`, `keahlian_laboratorium`, `sumber_gaji`, `nama_ibu_kandung`, `id_status_pernikahan`, `nama_suami_istri`, `nip_suami_istri`, `pekerjaan_suami_istri`, `tmt_pns`, `lisensi_kepsek`, `jumlah_sekolah_binaan`, `diklat_kepengawasan`, `mampu_handle_kk`, `keahlian_breile`, `keahlian_bahasa_isyarat`, `npwp`, `kewarganegaraan`, `foto`) VALUES
('guru1', 'guru1', 'Annisa Bahar', 2, '', '0000-00-00', '', '', '', 1, 2, '', 1, '', '00', '00', '', '', '', 0, '', '', '', '', 1, '', '0000-00-00', '', '0000-00-00', '', 1, '', '', '', 1, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '20181126114750-avatar3.png'),
('guru2', 'guru2', 'Kharunnas', 1, '', '0000-00-00', '', '', '', 2, 2, '', 1, '', '00', '00', '', '', '', 0, '', '', '', '', 1, '', '0000-00-00', '', '0000-00-00', '', 1, '', '', '', 1, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '20181126114923-avatar.png'),
('guru3', 'guru3', 'Mujahiddin', 1, '', '0000-00-00', '', '', '', 2, 2, '', 1, '', '00', '00', '', '', '', 0, '', '', '', '', 1, '', '0000-00-00', '', '0000-00-00', '', 1, '', '', '', 2, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '20181126115017-avatar04.png'),
('guru4', 'guru4', 'Melly', 2, '', '0000-00-00', '', '', '', 2, 2, '', 1, '', '00', '00', '', '', '', 0, '', '', '', '', 1, '', '0000-00-00', '', '0000-00-00', '', 0, '', '', '', 1, '', '', '', '0000-00-00', '', 0, '', '', '', '', '', '', '20181126115125-user4-128x128.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_halaman`
--

CREATE TABLE `rb_halaman` (
  `id_halaman` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `judul_seo` varchar(255) NOT NULL,
  `isi_halaman` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_halaman`
--

INSERT INTO `rb_halaman` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `username`, `status`) VALUES
(1, 'Selamat Datang di Sistem Pendaftaran Siswa Baru', 'selamat-datang-di-sistem-pendaftaran-siswa-baru', 'Sistem PSB online atau sistem informasi aplikasi penerimaan siswa baru online merupakan produk layanan aplikasi perangkat lunak  yang online real time dan 100%   berbasis web. Sistem   ini   berusaha   memenuhi kebutuhan   masyarakat khususnya  bagi orangtua  dan  calon  siswa  untuk  dapat melaksanakan  pendaftaran  ke sekolah dengan  aman  dan  tertib  dengan menyediakan  fitur  otomasi  proses penerimaan  siswa  baru secara  langsung  menggunakan  media internet,  mulai  dari proses pendaftaran, proses seleksi, hingga pengumuman hasil penerimaan siswa secara langsung nyata melalui internet.\r\n\r\nYayasan ini didirikan di Padang dengan Akte Notaris Leurentia Siti Nyoman tertanggal 6 Maret 1996.Pada tahun pertama ini dibukalah taman kanak-kanak dan plygroup dengan murid berjumlah 73 orang dan kampusnya berlokasi di jalan Thamrin No.22-25', 'admin', 'psb'),
(2, 'Prosedur Pendaftaran Siswa Baru', 'prosedur-pendaftaran-siswa-baru', 'Melakukan  pendaftaran secara online melalui website psb.dek.sch.id\nMembayar uang pendaftaran sebesar Rp 60.000,00 ke Rekening Sekolah :\nNo Rekening : xxxxxxxxxxxxxx\nAtas Nama : BPN 010 SMAK PADANG\nBRI UNIT PASAR BARU PADANG\n\n<b>Note : Bagi Bapak/Ibuk yang sudah melakukan pembayaran dan konfirmasi harap segera megirim pesan ke nomor 082384116431</b>\n\nUntuk Metode Tansfer.\ndengan format pesan : [jenis metode pembaran] [no_rekening] [nama anak/nama pesera] [nomor_konfirmasi]\nContoh Pesan Metode Transfer : Transfer 111112318923 Annisa Mardatilah QC401\n\nUntuk Metode Setoran.\nInvite/Add ID What''sApp dengan nomor 081267771344\ndengan format pesan : Kirim foto bukti slip setoran dan nama anak/peserta serta nomor konfirmasi\nContoh Format Pesan Whatsapp : [foto bukti slip setor] Annisa Mardatillah QC401\n\nMenyerahkan berkas dan ketentuan sebagai berikut apabila calon siswa dinyatakan lulus tes online.\nFoto kopi  rapor yang sudah dilegalisasi dari semester I - IV (1 rangkap)\nMemperlihatkan rapor asli\nSehat jasmani dan rohani (diperiksa di  SMK SMAK)\nTidak Buta Warna (diperiksa di SMK SMAK Padang)\nPas foto  warna terbaru ukuran 2x3 sebanyak 2 lembar dan 3X4 sebanyak 3 lembar', 'admin', 'psb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_identitas_sekolah`
--

CREATE TABLE `rb_identitas_sekolah` (
  `id_identitas_sekolah` int(5) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `npsn` varchar(50) NOT NULL,
  `nss` varchar(50) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten_kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `website` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_identitas_sekolah`
--

INSERT INTO `rb_identitas_sekolah` (`id_identitas_sekolah`, `nama_sekolah`, `npsn`, `nss`, `alamat_sekolah`, `kode_pos`, `no_telpon`, `kelurahan`, `kecamatan`, `kabupaten_kota`, `provinsi`, `website`, `email`) VALUES
(1, 'SMA NEGERI 1 INDONESIA', '10301989', '4232322', 'Jln. Sisfo No 23 A. Kota Solok', 26175, '0751-190285', 'Kel. Sisfo No 12 A ', 'Kec. Sisfo No 12 A', 'Kabupaten Solok', 'Sumatera Barat', 'sisfo.sch.id', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jadwal_pelajaran`
--

CREATE TABLE `rb_jadwal_pelajaran` (
  `kodejdwl` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kode_pelajaran` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `paralel` varchar(10) NOT NULL,
  `jadwal_serial` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `hari` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jadwal_pelajaran`
--

INSERT INTO `rb_jadwal_pelajaran` (`kodejdwl`, `id_tahun_akademik`, `kode_kelas`, `kode_pelajaran`, `kode_ruangan`, `nip`, `paralel`, `jadwal_serial`, `jam_mulai`, `jam_selesai`, `hari`, `aktif`) VALUES
(5, 20161, 'X.MIPA.1', 'MK02', 'R003', '195806161984000001', '', '', '23:00:00', '23:30:00', 'Senin', 'Ya'),
(13, 20161, 'X.MIPA.1', 'MK01', 'R003', '195704111980032004', '', '', '09:00:00', '11:30:00', 'Senin', 'Ya'),
(14, 20161, 'X.MIPA.1', 'MK03', 'R004', '195806161984032002', '', '', '08:00:00', '10:30:00', 'Selasa', 'Ya'),
(33, 20162, 'X.MIPA.1', 'MK15', 'R001', '195806161984000002', '00', '00', '08:00:00', '10:00:00', 'Senin', 'Ya'),
(34, 20161, 'X.MIPA.1', 'MK01', 'R001', '195806161984032002', '3', '3', '17:16:18', '19:16:18', 'Selasa', 'Ya'),
(35, 20181, 'KL4', 'MP-04', 'R001', 'guru2', '', '', '16:12:20', '20:12:20', 'Senin', 'Ya'),
(36, 20181, 'KL4', 'MP-01', 'R001', 'guru1', '', '', '16:14:17', '21:14:17', 'Jumat', 'Ya'),
(37, 20181, 'KL4', 'MP-03', 'R001', 'guru1', '', '', '16:16:49', '17:16:49', 'Sabtu', 'Ya'),
(38, 20181, 'KL4', 'MP-04', 'R001', 'guru1', '', '', '16:17:28', '18:17:28', 'Jumat', 'Ya'),
(39, 20181, 'KL11', 'MP-02', 'R001', 'guru1', '', '', '12:54:26', '13:54:26', 'Senin', 'Ya'),
(40, 20181, 'KL11', 'MP-02', 'R002', 'guru1', '', '', '12:55:07', '16:55:07', 'Selasa', 'Ya'),
(41, 20181, 'Kelas XI', 'MP-02', 'R001', 'guru1', '-', '-', '07:44:52', '21:44:52', 'Senin', 'Ya'),
(42, 20181, 'Kelas XI', 'MP-02', 'R001', 'guru1', '', '', '12:12:29', '15:12:29', 'Kamis', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jawaban_essai`
--

CREATE TABLE `rb_jawaban_essai` (
  `id_jawaban_essai` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_pertanyaan_essai` int(10) NOT NULL,
  `jawaban_essai` text NOT NULL,
  `waktu_tugas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jawaban_essai`
--

INSERT INTO `rb_jawaban_essai` (`id_jawaban_essai`, `nisn`, `id_pertanyaan_essai`, `jawaban_essai`, `waktu_tugas`) VALUES
(1, '0000261141', 1, 'abdurrahman wahid (Gus Dur)', '2016-03-05 14:16:15'),
(2, '0000261141', 2, '1. Udin Sedunia\r\n2. Sopan Sopian\r\n3. Inul Daratista\r\n4. Angelina Sondak\r\n5. Ruhut Sitompul', '2016-03-05 14:16:11'),
(3, '0000261141', 3, 'Di Kota Padang, Sumatera Barat Kota Padang', '2016-03-05 14:16:08'),
(4, '0000261141', 6, 'Wr Supratman', '2016-03-05 14:16:04'),
(5, '0000240365', 10, '359', '2016-03-05 14:15:41'),
(6, '0000240365', 9, 'Robby Prihandaya, S.Kom, M.Kom', '2016-03-05 14:15:51'),
(7, '9991268756', 10, 'Jawaban dari soal no 1..', '2016-03-09 03:39:36'),
(8, '9991268756', 9, 'Jawaban soal no 2,..', '2016-03-09 03:39:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jawaban_objektif`
--

CREATE TABLE `rb_jawaban_objektif` (
  `id_jawaban_objektif` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `id_pertanyaan_objektif` int(10) NOT NULL,
  `jawaban` varchar(2) NOT NULL,
  `waktu_objektif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jawaban_objektif`
--

INSERT INTO `rb_jawaban_objektif` (`id_jawaban_objektif`, `nisn`, `id_pertanyaan_objektif`, `jawaban`, `waktu_objektif`) VALUES
(21, '0000261141', 5, 'a', '2016-03-05 14:16:54'),
(20, '0000261141', 1, 'b', '2016-03-05 14:16:51'),
(19, '0000261141', 2, 'c', '2016-03-05 14:16:48'),
(18, '0000240365', 6, 'a', '2016-03-05 14:22:49'),
(22, '0000240365', 8, 'e', '2016-03-05 14:16:40'),
(23, '9991268756', 8, 'a', '2016-03-09 03:39:51'),
(24, '9991268756', 6, 'b', '2016-03-09 03:39:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jenis_kelamin`
--

CREATE TABLE `rb_jenis_kelamin` (
  `id_jenis_kelamin` int(5) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jenis_kelamin`
--

INSERT INTO `rb_jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jenis_ptk`
--

CREATE TABLE `rb_jenis_ptk` (
  `id_jenis_ptk` int(5) NOT NULL,
  `jenis_ptk` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jenis_ptk`
--

INSERT INTO `rb_jenis_ptk` (`id_jenis_ptk`, `jenis_ptk`, `keterangan`) VALUES
(1, 'Tenaga Administrasi Sekolah', ''),
(2, 'Guru Mapel', ''),
(3, 'Guru BK', ''),
(4, 'Guru Kelas', ''),
(5, 'nnnnn', 'nmnnm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_journal_list`
--

CREATE TABLE `rb_journal_list` (
  `id_journal` int(10) NOT NULL,
  `id_kompetensi_dasar` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_ke` varchar(50) NOT NULL,
  `materi` text NOT NULL,
  `keterangan` text NOT NULL,
  `waktu_input` datetime NOT NULL,
  `users` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_journal_list`
--

INSERT INTO `rb_journal_list` (`id_journal`, `id_kompetensi_dasar`, `kodejdwl`, `hari`, `tanggal`, `jam_ke`, `materi`, `keterangan`, `waktu_input`, `users`) VALUES
(1, 0, 33, 'Jumat', '2016-07-08', '1', 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisannn.', 'Sebagai pendidik kita tentunya harus mempersiapkan segala sesuatu yang berhubungan dengan administrasi untuk mengajar...dalam kesempatan ini kami akan mencoba membuat draft jurnal kelas', '2016-07-08 08:08:37', '195806161984000002'),
(2, 0, 33, 'Jumat', '2016-07-08', '2', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisane.', 'Jurnal pembelajaran harian merupakan salah satu perangkat pembelajaran yang diperlukan oleh guru guna mencatat pelaksanaan pembelajaran setiap hari. jurnal pembelajaran dapat membantu proses sejauh mana kita telah mengajar serta menghandle siapa saja murid/guru yang tidak masuk atau yang tidak mengikuti proses KBM.', '2016-07-08 09:11:24', '195806161984000002'),
(5, 0, 33, 'Jumat', '2016-07-08', '3', 'Berikut ini merupakan contoh dari enkripsi RSA dan dekripsinya. Parameter yang digunakan disini berupa bilangan kecil.', 'RSA di bidang kriptografi adalah sebuah algoritma pada enkripsi public key. RSA merupakan algoritma pertama yang cocok untuk digital signature seperti halnya ekripsi, dan salah satu yang paling maju dalam bidang kriptografi public key. RSA masih digunakan secara luas dalam protokol electronic commerce, dan dipercaya dalam mengamnkan dengan menggunakan kunci yang cukup panjang.', '2016-07-08 10:33:39', '1'),
(6, 0, 39, 'Jumat', '2018-12-21', '', '', 'RTTTTTTTTTTTTTTTTTTTTTTTTTTTTT', '2018-12-21 08:24:28', '1'),
(7, 0, 0, 'Rabu', '2019-01-09', '', '', '', '2019-01-10 12:23:20', '1'),
(8, 0, 41, 'Kamis', '2019-01-10', '1', 'rgtrh', 'trhfghd', '2019-01-10 12:24:23', '1'),
(9, 10, 41, 'Rabu', '2019-01-09', '2', 'hfgnfgx', 'gnfxngn', '2019-01-10 12:25:49', '1'),
(10, 0, 41, 'Jumat', '2019-01-11', '3', 'gnjhjmg', 'fjmghmghm', '2019-01-10 12:28:53', '1'),
(11, 4, 41, 'Selasa', '2019-01-08', '', '', '', '2019-01-10 13:48:42', '1'),
(12, 0, 41, 'Sabtu', '2019-01-12', '4', 'erwertwe', 'sdgds', '2019-01-10 20:18:41', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_jurusan`
--

CREATE TABLE `rb_jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `nama_jurusan_en` varchar(255) NOT NULL,
  `bidang_keahlian` varchar(150) NOT NULL,
  `kompetensi_umum` varchar(150) NOT NULL,
  `kompetensi_khusus` varchar(150) NOT NULL,
  `pejabat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_jurusan`
--

INSERT INTO `rb_jurusan` (`kode_jurusan`, `nama_jurusan`, `nama_jurusan_en`, `bidang_keahlian`, `kompetensi_umum`, `kompetensi_khusus`, `pejabat`, `jabatan`, `keterangan`, `aktif`) VALUES
('JR-BIO', 'TKJ', '', 'MIPA', '', '', '', '', '', 'Ya'),
('JR-SEJ', 'ILMU PENGETAHUAN SOSIAL', '', 'IPS', '', '', '', '', '', 'Ya'),
('JR-MTK', 'FMIPA', 'math', 'MIPA', '', '', '', '', '', 'Ya'),
('JR-BI', 'SASTRA INDO', '', 'Bahasa dan Sastra', '', '', '', '', '', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_elearning`
--

CREATE TABLE `rb_kategori_elearning` (
  `id_kategori_elearning` int(5) NOT NULL,
  `nama_kategori_elearning` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_elearning`
--

INSERT INTO `rb_kategori_elearning` (`id_kategori_elearning`, `nama_kategori_elearning`) VALUES
(1, 'Bahan'),
(2, 'Tugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_quiz_ujian`
--

CREATE TABLE `rb_kategori_quiz_ujian` (
  `id_kategori_quiz_ujian` int(5) NOT NULL,
  `kategori_quiz_ujian` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_quiz_ujian`
--

INSERT INTO `rb_kategori_quiz_ujian` (`id_kategori_quiz_ujian`, `kategori_quiz_ujian`) VALUES
(1, 'Quiz Online'),
(2, 'Ujian Online');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kehadiran`
--

CREATE TABLE `rb_kehadiran` (
  `kode_kehadiran` varchar(5) NOT NULL,
  `nama_kehadiran` varchar(20) NOT NULL,
  `nilai` int(2) NOT NULL,
  `bobot` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kehadiran`
--

INSERT INTO `rb_kehadiran` (`kode_kehadiran`, `nama_kehadiran`, `nilai`, `bobot`) VALUES
('H', 'Hadir', 1, '1'),
('I', 'Izin', 1, '0.5'),
('S', 'Sakit', 1, '0.5'),
('A', 'Alpa', 0, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kelas`
--

CREATE TABLE `rb_kelas` (
  `kode_kelas` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kelas`
--

INSERT INTO `rb_kelas` (`kode_kelas`, `nip`, `kode_jurusan`, `kode_ruangan`, `nama_kelas`, `aktif`) VALUES
('Kelas XI', 'guru3', 'JR-SEJ', 'R001', 'KELAS XI IPS. A', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kelompok_mata_pelajaran`
--

CREATE TABLE `rb_kelompok_mata_pelajaran` (
  `id_kelompok_mata_pelajaran` int(5) NOT NULL,
  `jenis_kelompok_mata_pelajaran` varchar(50) NOT NULL,
  `nama_kelompok_mata_pelajaran` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kelompok_mata_pelajaran`
--

INSERT INTO `rb_kelompok_mata_pelajaran` (`id_kelompok_mata_pelajaran`, `jenis_kelompok_mata_pelajaran`, `nama_kelompok_mata_pelajaran`) VALUES
(1, 'A', 'Kelompok A (Umum)'),
(2, 'B', 'Kelompok B (Umum)'),
(3, 'C', 'Kelompok C (Peminatan)'),
(4, 'D', 'Kelompok Umum 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keuangan_bayar`
--

CREATE TABLE `rb_keuangan_bayar` (
  `id_keuangan_bayar` int(10) NOT NULL,
  `id_keuangan_jenis` int(5) NOT NULL,
  `kode_kelas` varchar(20) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `tahun_akademik` int(5) NOT NULL,
  `total_bayar` int(20) NOT NULL,
  `waktu_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keuangan_bayar`
--

INSERT INTO `rb_keuangan_bayar` (`id_keuangan_bayar`, `id_keuangan_jenis`, `kode_kelas`, `nisn`, `tahun_akademik`, `total_bayar`, `waktu_bayar`) VALUES
(1, 2, 'KL3', 'siswa1', 20181, 400000, '2018-12-20 11:06:17'),
(2, 1, 'KL3', 'siswa1', 20181, 5000, '2018-12-20 11:08:48'),
(3, 2, 'KL3', 'siswa1', 20181, 100000, '2018-12-20 11:10:43'),
(4, 1, 'KL11', 'siswa1', 20181, 5000, '2018-12-20 14:39:41'),
(5, 2, 'KL11', 'siswa1', 20181, 500000, '2018-12-20 18:15:15'),
(6, 1, 'KL11', 'siswa2', 20181, 5000, '2018-12-20 18:19:14'),
(7, 1, 'Kelas XI', 'siswa4', 20181, 5000, '2019-01-23 09:23:51'),
(8, 1, 'Kelas XI', 'siswa4', 20181, 1000, '2019-01-23 09:24:56'),
(9, 1, 'Kelas XI', 'siswa1', 20181, 5000, '2019-01-23 09:50:37'),
(10, 3, 'Kelas XI', 'siswa4', 20181, 400000, '2019-01-23 09:56:30'),
(11, 3, 'Kelas XI', 'siswa4', 20181, 5000, '2019-01-23 09:56:35'),
(12, 3, 'Kelas XI', 'siswa4', 20181, 100000, '2019-01-23 09:56:45'),
(13, 3, 'Kelas XI', 'siswa4', 20181, 100000, '2019-01-23 09:56:55'),
(14, 3, 'Kelas XI', 'siswa4', 20181, 100000, '2019-01-23 09:57:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keuangan_jenis`
--

CREATE TABLE `rb_keuangan_jenis` (
  `id_keuangan_jenis` int(10) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL,
  `total_beban` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keuangan_jenis`
--

INSERT INTO `rb_keuangan_jenis` (`id_keuangan_jenis`, `nama_jenis`, `total_beban`) VALUES
(1, 'SPP', 200000),
(2, 'Biaya Praktek Komputer', 500000),
(3, 'jjjuuuuuuuuuu', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kompetensi_dasar`
--

CREATE TABLE `rb_kompetensi_dasar` (
  `id_kompetensi_dasar` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `ranah` enum('pengetahuan','keterampilan','sikap') NOT NULL,
  `kompetensi_dasar` text NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kompetensi_dasar`
--

INSERT INTO `rb_kompetensi_dasar` (`id_kompetensi_dasar`, `kodejdwl`, `ranah`, `kompetensi_dasar`, `waktu_input`) VALUES
(1, 33, 'pengetahuan', 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisannn.', '2016-07-03 08:10:13'),
(2, 33, 'keterampilan', 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisane.', '2016-07-03 09:44:36'),
(3, 39, 'keterampilan', 'ghcthxdh', '2018-12-20 14:26:31'),
(4, 39, 'keterampilan', 'GDHDDTX     M UJ', '2018-12-21 08:25:18'),
(5, 41, 'pengetahuan', '1.0 menampilkan yang tidak terlihat', '2019-01-10 12:30:46'),
(6, 41, 'pengetahuan', '1.1 Melihat yang terlihat', '2019-01-10 12:31:08'),
(7, 41, 'pengetahuan', 'trutrnurtn', '2019-01-10 13:07:41'),
(8, 41, 'keterampilan', 'untfyumtyi', '2019-01-10 13:14:22'),
(9, 41, 'pengetahuan', ' fdhgdrh', '2019-01-10 13:15:36'),
(10, 41, 'pengetahuan', 'fgb dr hsrt', '2019-01-10 13:15:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kurikulum`
--

CREATE TABLE `rb_kurikulum` (
  `kode_kurikulum` int(5) NOT NULL,
  `nama_kurikulum` varchar(255) NOT NULL,
  `status_kurikulum` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kurikulum`
--

INSERT INTO `rb_kurikulum` (`kode_kurikulum`, `nama_kurikulum`, `status_kurikulum`) VALUES
(1, 'Kurikulum 2013', 'Ya'),
(2, 'Kurikulum 2016', 'Tidak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_mata_pelajaran`
--

CREATE TABLE `rb_mata_pelajaran` (
  `kode_pelajaran` varchar(20) NOT NULL,
  `id_kelompok_mata_pelajaran` int(3) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `kode_kurikulum` int(5) NOT NULL,
  `namamatapelajaran` varchar(150) NOT NULL,
  `namamatapelajaran_en` varchar(150) NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kompetensi_umum` text NOT NULL,
  `kompetensi_khusus` text NOT NULL,
  `jumlah_jam` varchar(20) NOT NULL,
  `sesi` varchar(50) NOT NULL,
  `urutan` int(3) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_mata_pelajaran`
--

INSERT INTO `rb_mata_pelajaran` (`kode_pelajaran`, `id_kelompok_mata_pelajaran`, `kode_jurusan`, `nip`, `kode_kurikulum`, `namamatapelajaran`, `namamatapelajaran_en`, `tingkat`, `kompetensi_umum`, `kompetensi_khusus`, `jumlah_jam`, `sesi`, `urutan`, `aktif`) VALUES
('MP-02', 1, 'JR-SEJ', 'guru2', 1, 'SEJARAH INDONESIA', '', 'SMA', '', '', '12', '', 0, 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_menu`
--

CREATE TABLE `rb_menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `urutan` int(3) NOT NULL,
  `status` enum('psb','journal') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_menu`
--

INSERT INTO `rb_menu` (`id_menu`, `id_parent`, `nama_menu`, `icon`, `link`, `aktif`, `urutan`, `status`) VALUES
(1, 0, 'Beranda', 'home', 'index.mu', 'Ya', 1, 'psb'),
(2, 0, 'Aturan & Prosedur', 'th-list', 'halaman-prosedur-pendaftaran-siswa-baru.mu', 'Ya', 2, 'psb'),
(3, 0, 'Jadwal Pelaksanaan', 'calendar', '#', 'Ya', 3, 'psb'),
(4, 0, 'Alur Pendaftaran', 'retweet', '#', 'Ya', 4, 'psb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_catatan_wakel`
--

CREATE TABLE `rb_nilai_catatan_wakel` (
  `id_nilai_catatan_wakel` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_catatan_wakel`
--

INSERT INTO `rb_nilai_catatan_wakel` (`id_nilai_catatan_wakel`, `id_tahun_akademik`, `nisn`, `deskripsi`, `user_akses`, `waktu`) VALUES
(1, 20181, 'siswa1', 'Tingkatkan Lagi Prestasi Mu nak....', '1', '2018-11-29 10:21:17'),
(2, 20181, 'siswa2', 'Jangan Kecewakan Orang orang Disekitarmu..!!!', '1', '2018-11-29 10:21:17'),
(3, 20181, 'siswa4', '#PAS 02 ', '1', '2019-01-10 16:45:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_extrakulikuler`
--

CREATE TABLE `rb_nilai_extrakulikuler` (
  `id_nilai_extrakulikuler` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kegiatan` text NOT NULL,
  `nilai` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_extrakulikuler`
--

INSERT INTO `rb_nilai_extrakulikuler` (`id_nilai_extrakulikuler`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `kegiatan`, `nilai`, `deskripsi`, `user_akses`, `waktu_input`) VALUES
(1, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Mandi-mandii', 87, 'Kegiatan mandi-mandi dilaksanakan di lubuak minturun bersamaan dengan perayaan ulang tahun sekolah.', '1', '2016-04-29 10:11:10'),
(2, 20161, '9991268756', 'X.MIPA.1', 'Kegiatan Bakar ayam.', 95, 'Memiliki keterampilan Mengidentifikasi, menyajikan model matematika dan menyelesaikan masalah keseharian.				', '1', '2016-04-29 07:08:28'),
(7, 20181, 'siswa1', 'KL4', 'menyanyi', 60, 'dia pemalas sangat', '1', '2018-11-26 16:51:22'),
(8, 20181, 'siswa1', 'KL4', 'berlari', 70, 'sangat rajin', '1', '2018-11-26 16:51:38'),
(9, 20181, 'siswa2', 'KL4', 'menyanyo', 70, 'sangat pintar', '1', '2018-11-26 16:52:01'),
(10, 20181, 'siswa2', 'KL4', 'main bola', 100, 'atlet dia', '1', '2018-11-26 16:52:14'),
(11, 20181, 'siswa1', 'Kelas XI', 'Futsal', 70, 'EWFKWEFNWEJVNWEN', '1', '2018-12-22 08:33:49'),
(12, 20181, 'siswa1', 'Kelas XI', 'Badminton', 50, 'fjbbbbbbbbbbbbbb', '1', '2018-12-22 08:34:35'),
(13, 20181, 'siswa1', 'Kelas XI', 'Raket', 33, 'fdkblvdfnmkblvdf', '1', '2018-12-22 08:34:47'),
(14, 20181, 'siswa2', 'Kelas XI', 'Raket', 50, 'djkvnevfner', '1', '2018-12-22 08:34:59'),
(15, 20181, 'siswa2', 'Kelas XI', 'Menyanyi', 55, 'tbtmhnjktyjty', '1', '2018-12-22 08:35:11'),
(16, 20181, 'siswa2', 'Kelas XI', 'Berlari', 80, 'fncj3egjtrnhtrhnrt', '1', '2018-12-22 08:35:23'),
(17, 20181, 'siswa4', 'Kelas XI', 'Bola kaki', 66, 'fegbntgrhtriohb', '1', '2018-12-22 08:35:38'),
(18, 20181, 'siswa4', 'Kelas XI', 'Badminton', 88, 'fggjtyjrniu76', '1', '2018-12-22 08:35:49'),
(19, 20181, 'siswa4', 'Kelas XI', 'Komputer', 56, 'vfcfrtvhgetrejhty', '1', '2018-12-22 08:35:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_keterampilan`
--

CREATE TABLE `rb_nilai_keterampilan` (
  `id_nilai_keterampilan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `nilai3` float NOT NULL,
  `nilai4` float NOT NULL,
  `nilai5` float NOT NULL,
  `nilai6` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_keterampilan`
--

INSERT INTO `rb_nilai_keterampilan` (`id_nilai_keterampilan`, `kodejdwl`, `nisn`, `kd`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `nilai6`, `deskripsi`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '4.1', 75, 70, 78, 85, 78, 72, 'Mengabstraksi teks cerita pendek, baik secara lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(2, 5, '9998218087', '1', 88, 90, 98, 96, 0, 0, '', '1', '2016-04-11 18:26:32'),
(3, 5, '9998215055', '1', 67, 98, 76, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(4, 5, '9998214335', '1', 87, 88, 0, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(5, 5, '9998214151', '1', 89, 0, 0, 90, 0, 0, '', '1', '2016-04-11 18:26:32'),
(6, 5, '9997515863', '1', 89, 80, 88, 0, 0, 0, '', '1', '2016-04-11 18:26:32'),
(7, 5, '9991268756', '4.2', 87, 90, 94, 93, 88, 83, 'Mengabstraksi teks cerita ulang, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:03:27'),
(8, 5, '9998218087', '2', 88, 93, 90, 99, 0, 0, '', '1', '2016-04-14 08:03:27'),
(9, 5, '9998215055', '2', 78, 87, 89, 79, 0, 0, '', '1', '2016-04-14 08:03:27'),
(10, 5, '9991268756', '4.3', 89, 89, 98, 95, 79, 77, 'Mengabstraksi teks pantun, baik secara lisan maupun tulisan', '1', '2016-04-14 08:03:57'),
(11, 5, '9998218087', '3', 78, 87, 89, 88, 0, 0, '', '1', '2016-04-14 08:03:57'),
(12, 5, '9998215055', '3', 70, 78, 87, 90, 0, 0, '', '1', '2016-04-14 08:03:57'),
(13, 5, '9991268756', '4.4', 90, 89, 87, 90, 85, 90, 'Menginterpretasi makna teks pantun, baik secara lisan maupun tulisan ', '1', '2016-04-14 08:04:20'),
(14, 5, '9998218087', '4', 87, 88, 83, 89, 0, 0, '', '1', '2016-04-14 08:04:20'),
(15, 5, '9991268756', '4.5', 99, 87, 98, 95, 96, 91, 'Menyunting teks cerita ulang, sesuai dengan struktur dan kaidah teks baik secara lisan maupun tulisan', '1', '2016-04-14 08:04:36'),
(17, 37, 'siswa1', '9,0', 100, 100, 100, 80, 90, 60, 'haha', 'guru1', '2018-11-26 16:46:43'),
(18, 37, 'siswa2', '9,0', 100, 100, 100, 100, 100, 100, 'wokeh', 'guru1', '2018-11-26 16:47:28'),
(19, 36, 'siswa1', '', 45, 45, 55, 77, 0, 0, '', '1', '2018-11-29 10:47:50'),
(20, 39, 'siswa1', '12', 77, 77, 77, 77, 55, 77, 'tes', '1', '2018-12-20 13:01:07'),
(21, 39, 'siswa2', '45', 77, 99, 99, 99, 99, 99, 'tesPenilaian Sosial Positif', '1', '2018-12-20 13:01:37'),
(22, 40, 'siswa1', '66', 55, 55, 44, 44, 44, 33, 'tesPenilaian Sosial Positif', '1', '2018-12-20 13:03:36'),
(23, 40, 'siswa2', '66', 55, 55, 66, 66, 77, 77, 'Penilaian Sosial Positif', '1', '2018-12-20 13:03:48'),
(24, 41, 'siswa1', '', 44, 44, 88, 66, 66, 55, 'tesPenilaian Sosial Positif', '1', '2018-12-21 20:52:25'),
(25, 41, 'siswa2', '', 12, 30, 14, 15, 16, 20, 'Penilaian Sosial Positif', '1', '2018-12-21 21:13:46'),
(26, 41, 'siswa4', '', 77, 33, 77, 90, 22, 77, 'Penilaian Sosial Positif', '1', '2018-12-21 21:16:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pengetahuan`
--

CREATE TABLE `rb_nilai_pengetahuan` (
  `id_nilai_pengetahuan` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kd` varchar(5) NOT NULL,
  `nilai1` float NOT NULL,
  `nilai2` float NOT NULL,
  `nilai3` float NOT NULL,
  `nilai4` float NOT NULL,
  `nilai5` float NOT NULL,
  `deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pengetahuan`
--

INSERT INTO `rb_nilai_pengetahuan` (`id_nilai_pengetahuan`, `kodejdwl`, `nisn`, `kd`, `nilai1`, `nilai2`, `nilai3`, `nilai4`, `nilai5`, `deskripsi`, `user_akses`, `waktu`) VALUES
(1, 5, '9991268756', '4.1', 89, 90, 89, 95, 90, 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(2, 5, '9998218087', '4.1', 90, 88, 90, 98, 96, 'Menganalisis teks cerita pendek, baik melalui lisan maupun tulisan ', '1', '2016-04-11 18:26:32'),
(3, 5, '9998215055', '', 98, 67, 98, 76, 90, '', '1', '2016-04-11 18:26:32'),
(4, 5, '9998214335', '', 88, 87, 88, 0, 0, '', '1', '2016-04-11 18:26:32'),
(5, 5, '9998214151', '', 0, 89, 0, 0, 90, '', '1', '2016-04-11 18:26:32'),
(6, 5, '9997515863', '', 80, 89, 80, 88, 0, '', '1', '2016-04-11 18:26:32'),
(7, 5, '9991268756', '4.2', 90, 87, 90, 94, 94, 'Membandingkan teks cerita pendek, baik melalui lisan maupun tulisan', '1', '2016-04-14 08:03:27'),
(8, 5, '9998218087', '4.2', 93, 88, 93, 90, 99, 'Menganalisis teks cerita ulang, baik melalui lisan maupun tulisan ', '1', '2016-04-14 08:03:27'),
(9, 5, '9998215055', '', 87, 78, 87, 89, 79, '', '1', '2016-04-14 08:03:27'),
(10, 5, '9991268756', '4.3', 89, 89, 89, 98, 95, 'Menganalisis teks pantun, baik melalui lisan maupun tulisan ', '1', '2016-04-14 08:03:57'),
(11, 5, '9998218087', '', 87, 78, 87, 89, 88, '', '1', '2016-04-14 08:03:57'),
(12, 5, '9998215055', '', 78, 70, 78, 87, 90, '', '1', '2016-04-14 08:03:57'),
(13, 5, '9991268756', '4.4', 89, 90, 89, 87, 90, 'Membandingkan teks cerita ulang, baik melalui lisan maupun tulisan', '1', '2016-04-14 08:04:20'),
(14, 5, '9998218087', '', 88, 87, 88, 83, 89, '', '1', '2016-04-14 08:04:20'),
(15, 5, '9991268756', '4.5', 87, 90, 87, 78, 90, 'Menganalisis teks cerita ulang, baik melalui lisan maupun tulisan ', '1', '2016-04-14 08:04:36'),
(16, 5, '9998218087', '', 98, 99, 98, 89, 90, 'Menganalisis teks pantun, baik melalui lisan maupun tulisan', '1', '2016-04-14 08:04:36'),
(18, 5, '9991268756', '4.6', 90, 89, 90, 98, 78, 'Memahami struktur dan kaidah teks cerita pendek, baik melalui lisan maupun tulisan', '1', '2016-04-30 10:50:43'),
(19, 33, '9991268756', '', 60, 56, 44, 66, 11, '', '1', '2018-11-20 20:29:38'),
(29, 39, 'siswa2', '11', 77, 89, 99, 88, 77, 'Cetus', '1', '2018-12-20 12:58:20'),
(28, 39, 'siswa1', '10', 55, 70, 70, 70, 80, 'Admin', '1', '2018-12-20 12:57:59'),
(27, 37, 'siswa1', '', 100, 100, 50, 40, 0, '', '1', '2018-11-26 19:28:29'),
(24, 37, 'siswa2', '5,5', 90, 90, 90, 90, 0, 'Jahat', 'guru1', '2018-11-26 16:44:52'),
(25, 37, 'siswa2', '5,5', 100, 100, 100, 100, 0, 'baik', 'guru1', '2018-11-26 16:45:09'),
(26, 37, 'siswa1', '', 100, 100, 100, 10, 0, '', '1', '2018-11-26 19:24:02'),
(30, 40, 'siswa1', '11', 22, 34, 99, 99, 99, 'Penilaian Sosial Positif', '1', '2018-12-20 13:03:00'),
(31, 40, 'siswa2', '77', 66, 77, 88, 88, 88, 'Penilaian Sosial Positif', '1', '2018-12-20 13:03:11'),
(32, 39, 'siswa4', '11', 22, 66, 77, 90, 33, '', '1', '2018-12-21 19:15:29'),
(33, 41, 'siswa1', '', 66, 44, 77, 56, 44, 'Pertahankan Prestasi Anda Ya', '1', '2018-12-21 20:50:00'),
(34, 41, 'siswa2', '', 77, 55, 88, 99, 77, 'Pertahankan Prestasi Anda', '1', '2018-12-21 20:50:34'),
(35, 41, 'siswa4', '', 88, 98, 100, 90, 77, 'Tingkat Lagi BelaJAR Mu', '1', '2018-12-21 20:51:51'),
(36, 41, 'siswa1', '1.0', 33, 44, 55, 55, 55, 'Admin', '1', '2018-12-22 10:43:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_pertanyaan_essai`
--

CREATE TABLE `rb_nilai_pertanyaan_essai` (
  `id_nilai_pertanyaan_essai` int(5) NOT NULL,
  `id_quiz_ujian` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nilai_essai` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_pertanyaan_essai`
--

INSERT INTO `rb_nilai_pertanyaan_essai` (`id_nilai_pertanyaan_essai`, `id_quiz_ujian`, `nisn`, `nilai_essai`) VALUES
(1, 1, '0000261141', 80),
(2, 4, '0000240365', 70),
(4, 4, '9991268756', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_prestasi`
--

CREATE TABLE `rb_nilai_prestasi` (
  `id_nilai_prestasi` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_prestasi`
--

INSERT INTO `rb_nilai_prestasi` (`id_nilai_prestasi`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `jenis_kegiatan`, `keterangan`, `user_akses`, `waktu_input`) VALUES
(6, 20181, 'siswa1', 'KL4', 'berlari', 'ahahahahah', '1', '2018-11-26 16:50:07'),
(7, 20181, 'siswa2', 'KL4', 'menyanyo', 'naik', '1', '2018-11-26 16:50:20'),
(8, 20181, 'siswa1', 'KL4', 'manyapu', 'bagus', '1', '2018-11-26 16:50:36'),
(9, 20181, 'siswa2', 'KL4', 'tayoo', 'hahah', '1', '2018-11-26 16:50:44'),
(10, 20181, 'siswa1', 'Kelas XI', 'TIDAK ADA ', 'TIDAK ADA ', '1', '2018-12-22 08:36:36'),
(11, 20181, 'siswa2', 'Kelas XI', 'TIDAK ADA ', 'TIDAK ADA', '1', '2018-12-22 08:36:48'),
(12, 20181, 'siswa4', 'Kelas XI', 'TIDAK ADA', 'TIDAK ADA', '1', '2018-12-22 08:37:06'),
(13, 20181, 'siswa1', 'Kelas XI', 'Nothing', 'Nothing', '1', '2018-12-22 08:37:25'),
(14, 20181, 'siswa2', 'Kelas XI', 'Nothing', 'Nothing', '1', '2018-12-22 08:37:30'),
(15, 20181, 'siswa4', 'Kelas XI', 'Nothing', 'Nothing', '1', '2018-12-22 08:37:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap`
--

CREATE TABLE `rb_nilai_sikap` (
  `id_nilai_sikap` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `positif` text NOT NULL,
  `negatif` text NOT NULL,
  `deskripsi` text NOT NULL,
  `status` enum('spiritual','sosial') NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap`
--

INSERT INTO `rb_nilai_sikap` (`id_nilai_sikap`, `kodejdwl`, `nisn`, `positif`, `negatif`, `deskripsi`, `status`, `user_akses`, `waktu`) VALUES
(1, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-18 16:38:53'),
(2, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-18 16:38:53'),
(3, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-18 16:39:53'),
(4, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', 'Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-18 16:39:53'),
(5, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:12:48'),
(6, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:12:48'),
(7, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(8, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:05'),
(9, 5, '9998218087', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:05'),
(10, 5, '9991268756', 'Nilai Positif,..', 'Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(11, 5, '0151379251', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(12, 5, '9998218087', 'Isi dengan Nilai Positif,..', 'Isi dengan Nilai Negatif,..', 'Deskripsi Nilai Sikap,..', 'spiritual', '1', '2016-04-29 20:13:34'),
(13, 5, '9999152999', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda', 'Ketaatan beribadah mulai berkembang', 'Selalu bersyukur dan selalu berdoa sebelum melakukan kegiatan serta memiliki toleran pada agama yang berbeda; ketaatan beribadah mulai berkembang', 'spiritual', '1', '2016-04-29 20:13:34'),
(14, 5, '9991268756', 'Isi dengan Nilai Sosial Posisitf 2,..', 'Isi dengan Nilai Sosial Negatif 2,..', 'Isi dengan Nilai Deskripsi Sosial 2,..', 'sosial', '1', '2016-04-29 20:14:07'),
(15, 5, '9998218087', 'Nilai Sosial Posisitf 2,..', 'Nilai Sosial Negatif 2,..', '', 'sosial', '1', '2016-04-29 20:14:07'),
(16, 5, '9999152999', 'Nilai Sosial Posisitf,..', 'Nilai Sosial Negatif,..', 'Nilai Deskripsi Sosial,..', 'sosial', '1', '2016-04-29 20:14:07'),
(17, 37, 'siswa1', 'Tulisakan Positif', 'Tuliskan Negatif', 'Tuliskan Deskripsi', 'spiritual', 'guru1', '2018-11-26 16:32:07'),
(18, 37, 'siswa2', 'Tulisakan Positif', 'Tuliskan Negatif', 'Tuliskan Deskripsi', 'spiritual', 'guru1', '2018-11-26 16:32:07'),
(19, 37, 'siswa1', 'SDA', 'SDA', 'SDA', 'sosial', 'guru1', '2018-11-26 16:32:19'),
(20, 37, 'siswa2', 'SDA', 'SDA', 'SDA', 'sosial', 'guru1', '2018-11-26 16:32:19'),
(21, 39, 'siswa1', 'Penilaian Spritual Positif', 'Penilaian Spritual Negatif', 'Penilaian Spritual Deskripsi', 'spiritual', '1', '2018-12-20 12:59:26'),
(22, 39, 'siswa2', 'Penilaian Spritual Positif', 'Penilaian Spritual Negatif', 'Penilaian Spritual Deskripsi', 'spiritual', '1', '2018-12-20 12:59:26'),
(23, 39, 'siswa1', 'Penilaian Sosial Positif', 'Penilaian Sosial Negatif', 'Penilaian Sosial Deskripsi', 'sosial', '1', '2018-12-20 13:00:23'),
(24, 39, 'siswa2', 'Penilaian Sosial Positif', 'Penilaian Sosial Negatif', 'Penilaian Sosial Deskripsi', 'sosial', '1', '2018-12-20 13:00:23'),
(25, 40, 'siswa1', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'spiritual', '1', '2018-12-20 13:02:27'),
(26, 40, 'siswa2', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'spiritual', '1', '2018-12-20 13:02:27'),
(27, 40, 'siswa1', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'sosial', '1', '2018-12-20 13:02:37'),
(28, 40, 'siswa2', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'Penilaian Sosial Positif', 'sosial', '1', '2018-12-20 13:02:37'),
(29, 41, 'siswa1', 'Tulikan Nilai Positif', 'Tuliskan Nilai Negatif', 'Tuliskan Deskripsi', 'spiritual', '1', '2018-12-21 20:46:45'),
(30, 41, 'siswa2', 'Tuliskan Nilai Positif', 'Tuliskan Nilai Negatif', 'Tuliskan Deskripsi', 'spiritual', '1', '2018-12-21 20:46:45'),
(31, 41, 'siswa4', 'Tuliskan Nilai Positif', 'Tuliskan Nilai Negatif', 'Tuliskan Deskripsi', 'spiritual', '1', '2018-12-21 20:46:45'),
(32, 41, 'siswa1', 'Tuliskan Nilai Sosial Positif', 'Tuliskan Nilai Sosial Negatif', 'Tuliskan Deskripsi Nilai Sosial', 'sosial', '1', '2018-12-21 20:48:48'),
(33, 41, 'siswa2', 'Tuliskan Nilai Sosial Positif', 'Tuliskan Nilai Sosial Negatif', 'Tuliskan Deskripsi Nilai Sosial', 'sosial', '1', '2018-12-21 20:48:48'),
(34, 41, 'siswa4', 'Tuliskan Nilai Sosial Positif', 'Tuliskan Nilai Sosial Negatif', 'Tuliskan Deskripsi Nilai Sosial', 'sosial', '1', '2018-12-21 20:48:48'),
(35, 41, 'siswa1', 'Tuliskan Nilai Sosial Positif', 'Tuliskan Nilai Sosial Negatif', 'Tuliskan Deskripsi Nilai Sosial', 'sosial', '1', '2018-12-21 20:48:56'),
(36, 41, 'siswa2', 'Tuliskan Nilai Sosial Positif', 'Tuliskan Nilai Sosial Negatif', 'Tuliskan Deskripsi Nilai Sosial', 'sosial', '1', '2018-12-21 20:48:56'),
(37, 41, 'siswa4', 'Tuliskan Nilai Sosial Positif', 'Tuliskan Nilai Sosial Negatif', 'Tuliskan Deskripsi Nilai Sosial', 'sosial', '1', '2018-12-21 20:48:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_sikap_semester`
--

CREATE TABLE `rb_nilai_sikap_semester` (
  `id_nilai_sikap_semester` int(10) NOT NULL,
  `id_tahun_akademik` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `spiritual_predikat` varchar(2) NOT NULL,
  `spiritual_deskripsi` text NOT NULL,
  `sosial_predikat` varchar(2) NOT NULL,
  `sosial_deskripsi` text NOT NULL,
  `user_akses` varchar(50) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_sikap_semester`
--

INSERT INTO `rb_nilai_sikap_semester` (`id_nilai_sikap_semester`, `id_tahun_akademik`, `nisn`, `kode_kelas`, `spiritual_predikat`, `spiritual_deskripsi`, `sosial_predikat`, `sosial_deskripsi`, `user_akses`, `waktu_input`) VALUES
(1, 20161, '9991268756', 'X.MIPA.1', 'A', 'Pertahankan Nilai anda,..', 'B', 'Tingkatkan Nilai anda,..', '1', '2016-04-28 10:10:16'),
(2, 20161, '0151379251', 'X.MIPA.1', 'C', 'Tolong Perbaiki Sikap anda,..', 'D', 'Anda Tidak Berutak,..', '1', '2016-04-28 10:10:16'),
(3, 20161, '0004107204', 'X.MIPA.1', 'A', 'Pertahankan Nilai anda,..', 'C', 'Tolong Perbaiki Sikap anda,..', '1', '2016-04-28 10:10:50'),
(4, 20181, 'siswa1', 'KL4', 'A', 'SANGAT BAGUS', 'C', 'LUMAYAN JELEK', '1', '2018-11-26 16:54:32'),
(5, 20181, 'siswa2', 'KL4', 'B', 'SANGAT BAGUS JUGA', 'D', 'SANGAT JELEK SEKLAI', '1', '2018-11-26 16:54:32'),
(6, 20181, 'siswa1', 'Kelas XI', 'A', 'Tuliskan Deskrips1', 'B', 'Tuliskan Deskrips1', '1', '2018-12-22 08:32:58'),
(7, 20181, 'siswa2', 'Kelas XI', 'A', 'Tuliskan Deskrips1', 'B', 'Tuliskan Deskrips1', '1', '2018-12-22 08:32:58'),
(8, 20181, 'siswa4', 'Kelas XI', 'A', 'Tuliskan Deskrips1', 'B', 'Tuliskan Deskrips1', '1', '2018-12-22 08:32:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_nilai_uts`
--

CREATE TABLE `rb_nilai_uts` (
  `id_nilai_uts` int(10) NOT NULL,
  `kodejdwl` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `angka_pengetahuan` float NOT NULL,
  `deskripsi_pengetahuan` text NOT NULL,
  `angka_keterampilan` float NOT NULL,
  `deskripsi_keterampilan` text NOT NULL,
  `waktu_input_uts` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_nilai_uts`
--

INSERT INTO `rb_nilai_uts` (`id_nilai_uts`, `kodejdwl`, `nisn`, `angka_pengetahuan`, `deskripsi_pengetahuan`, `angka_keterampilan`, `deskripsi_keterampilan`, `waktu_input_uts`) VALUES
(1, 5, '9991268756', 85, '', 90, '', '2016-04-15 17:54:05'),
(2, 5, '9998218087', 74, '', 83, '', '2016-04-15 17:54:05'),
(3, 13, '9999152999', 89, '', 90, '', '2016-04-21 18:52:57'),
(4, 14, '9999152999', 85, '', 79, '', '2016-04-21 18:53:14'),
(5, 33, '9991268756', 80, '', 70, '', '2018-11-20 20:31:53'),
(6, 33, '0151379251', 30, '', 30, '', '2018-11-20 20:32:05'),
(7, 33, '0004107204', 20, '', 20, '', '2018-11-20 20:32:12'),
(8, 33, '9998218087', 26, '', 22, '', '2018-11-20 20:32:22'),
(9, 37, 'siswa1', 80, '', 70, '', '2018-11-26 16:22:06'),
(10, 37, 'siswa2', 75, '', 70, '', '2018-11-26 16:22:06'),
(11, 36, 'siswa1', 55, '', 70, '', '2018-11-26 16:22:47'),
(12, 36, 'siswa2', 88, '', 70, '', '2018-11-26 16:22:47'),
(13, 38, 'siswa1', 100, '', 100, '', '2018-11-26 16:23:41'),
(14, 38, 'siswa2', 90, '', 90, '', '2018-11-26 16:23:41'),
(15, 39, 'siswa1', 90, '', 90, '', '2018-12-20 12:56:17'),
(16, 39, 'siswa2', 10, '', 50, '', '2018-12-20 12:56:17'),
(17, 40, 'siswa1', 70, '', 70, '', '2018-12-20 12:57:04'),
(18, 40, 'siswa2', 80, '', 55, '', '2018-12-20 12:57:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pengumuman_guru`
--

CREATE TABLE `rb_pengumuman_guru` (
  `kode_p_guru` int(10) NOT NULL,
  `nama_p_guru` text NOT NULL,
  `status_p_guru` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pengumuman_guru`
--

INSERT INTO `rb_pengumuman_guru` (`kode_p_guru`, `nama_p_guru`, `status_p_guru`) VALUES
(1, 'Diberitahukan Kepada Seluruh GURU Agar Dapat hadir di sekolah pada Hari sabtu, tgl 11 Februari 2019 di ruangan guru untuk mengadakan rapat bulanan...atas perhatiannya kami ucapkan terima kasih', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pengumuman_siswa`
--

CREATE TABLE `rb_pengumuman_siswa` (
  `kode_p_siswa` int(10) NOT NULL,
  `nama_p_siswa` text NOT NULL,
  `status_p` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pengumuman_siswa`
--

INSERT INTO `rb_pengumuman_siswa` (`kode_p_siswa`, `nama_p_siswa`, `status_p`) VALUES
(1, 'Diberitahukan Kepada Seluruh Siswa Agar Dapat hadir di sekolah pada Hari sabtu, tgl 11 Februari 2019 di sekolah...atas perhatiannya kami ucapkan terima kasih', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_peringkat`
--

CREATE TABLE `rb_peringkat` (
  `id_peringkat` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `kode_kelas` varchar(30) NOT NULL,
  `id_tahun_akademik` int(10) NOT NULL,
  `nilai_total` int(10) NOT NULL,
  `rank` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_peringkat`
--

INSERT INTO `rb_peringkat` (`id_peringkat`, `nisn`, `kode_kelas`, `id_tahun_akademik`, `nilai_total`, `rank`) VALUES
(4, 'siswa1', 'Kelas XI', 20181, 650, 1),
(5, 'siswa2', 'Kelas XI', 20181, 629, 2),
(6, 'siswa4', 'Kelas XI', 20181, 238, 3),
(7, '130130', 'Kelas XI', 20181, 0, 4),
(8, '02422', 'Kelas XI', 20181, 0, 5),
(9, '2420320', 'Kelas XI', 20181, 0, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_essai`
--

CREATE TABLE `rb_pertanyaan_essai` (
  `id_pertanyaan_essai` int(11) NOT NULL,
  `id_quiz_ujian` int(5) NOT NULL,
  `pertanyaan_essai` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_essai`
--

INSERT INTO `rb_pertanyaan_essai` (`id_pertanyaan_essai`, `id_quiz_ujian`, `pertanyaan_essai`) VALUES
(1, 1, 'Siapakah Nama Presiden ke 5 Indonesia ?'),
(2, 1, 'Sebutkan Nama-nama Pahlawan Revolusi ?'),
(3, 1, 'Dimanakah Terjadinya Perjanjian Linggarjati ?'),
(5, 2, 'Sebutkan Arti Sila Ke 2 ?'),
(6, 2, 'Siapa Nama Pencipta Lagu Indonesia Raya ?'),
(9, 4, 'Siapa Nama Kepa Sekolah Kita ?'),
(10, 4, 'Berapakah Hasil 234 + 125 ?'),
(11, 5, 'kbkbkjbkjbkbk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_objektif`
--

CREATE TABLE `rb_pertanyaan_objektif` (
  `id_pertanyaan_objektif` int(11) NOT NULL,
  `id_quiz_ujian` int(11) NOT NULL,
  `pertanyaan_objektif` text NOT NULL,
  `jawab_a` varchar(255) NOT NULL,
  `jawab_b` varchar(255) NOT NULL,
  `jawab_c` varchar(255) NOT NULL,
  `jawab_d` varchar(255) NOT NULL,
  `jawab_e` varchar(255) NOT NULL,
  `kunci_jawaban` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_objektif`
--

INSERT INTO `rb_pertanyaan_objektif` (`id_pertanyaan_objektif`, `id_quiz_ujian`, `pertanyaan_objektif`, `jawab_a`, `jawab_b`, `jawab_c`, `jawab_d`, `jawab_e`, `kunci_jawaban`) VALUES
(1, 1, 'Gubernur Tertua di Sumbar ?', 'Udin Sedunia', 'Saipul Jamil', 'Roma Irama', 'Fauzi Bahar', '', 'd'),
(2, 1, 'Nama-nama Pahlawan Indonesia ?', 'Robby Prihandaya', 'Taufik Hidayat', 'Ahmad Yani', 'Jokowi', '', 'c'),
(3, 1, 'Dimana Terjadinya Pembunuhan Sukarno ?', 'Padang', 'Payakumbuh', 'Bukit Tinggi', 'Semua Benar', '', 'a'),
(5, 1, 'Sebutkan Arti Sila Ke 2 ?', 'Keadilan Bagi Indonedia', 'Kerakyatan yang dipimpin Ndeso', 'Berjuang Untuk Jadi Lebih Baik', 'Kemanusiaan yang adil dan Beradap', '', 'd'),
(6, 4, 'Siapa Nama Pencipta Lagu Indonesia Raya ?', 'Dewiit Safitri', 'Ahmad Dani', 'Aura Kasih', 'Wr.Supratman', '', 'd'),
(8, 4, 'Siapakah nama Presiden ke 2 Indonesia ?', 'Joko Widodo', 'Susilo Bambang Yudoyono', 'Abdulrahman Wahid', 'Megawati', 'Soeharto', 'e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_penilaian`
--

CREATE TABLE `rb_pertanyaan_penilaian` (
  `id_pertanyaan_penilaian` int(5) NOT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_penilaian`
--

INSERT INTO `rb_pertanyaan_penilaian` (`id_pertanyaan_penilaian`, `pertanyaan`, `status`, `waktu_input`) VALUES
(1, 'Bagaimana kenyamanan anda di sekolah ini pada |namamatapelajaran| ?', 'diri', '2016-07-03 04:17:29'),
(2, 'Bagaimana kenyamanan anda tehadap teman di sekolah ini ?', 'diri', '2016-07-03 08:12:17'),
(4, 'Apa perbuatan jahat yang pernah teman anda ini lakukan ?', 'teman', '2016-07-08 05:08:10'),
(5, 'Apakah dia teman yang baik?', 'teman', '2016-07-08 08:12:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pertanyaan_penilaian_jawab`
--

CREATE TABLE `rb_pertanyaan_penilaian_jawab` (
  `id_pertanyaan_penilaian_jawab` int(10) NOT NULL,
  `id_pertanyaan_penilaian` int(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nisn_teman` varchar(20) NOT NULL,
  `jawaban` text NOT NULL,
  `status` enum('diri','teman') NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `waktu_jawab` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pertanyaan_penilaian_jawab`
--

INSERT INTO `rb_pertanyaan_penilaian_jawab` (`id_pertanyaan_penilaian_jawab`, `id_pertanyaan_penilaian`, `nisn`, `nisn_teman`, `jawaban`, `status`, `kode_kelas`, `waktu_jawab`) VALUES
(23, 2, '9991268756', '', 'jjjj', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(12, 4, '9991268756', '0151379251', 'fff', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(11, 5, '9991268756', '0151379251', 'eee', 'teman', 'X.MIPA.1', '2016-07-08 15:21:34'),
(15, 5, '9991268756', '0004107204', 'aaaa', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(16, 4, '9991268756', '0004107204', 'bbbb', 'teman', 'X.MIPA.1', '2016-07-08 15:23:05'),
(17, 5, '9991268756', '9998218087', 'ttt', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(18, 4, '9991268756', '9998218087', 'yyy', 'teman', 'X.MIPA.1', '2016-07-08 15:23:34'),
(24, 1, '9991268756', '', 'kkkk', 'diri', 'X.MIPA.1', '2016-07-08 15:57:55'),
(25, 5, '9991268756', '0007105659', 'hhh', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39'),
(26, 4, '9991268756', '0007105659', 'nnn', 'teman', 'X.MIPA.1', '2016-07-08 15:58:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_predikat`
--

CREATE TABLE `rb_predikat` (
  `id_predikat` int(5) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nilai_a` int(3) NOT NULL,
  `nilai_b` int(3) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_predikat`
--

INSERT INTO `rb_predikat` (`id_predikat`, `kode_kelas`, `nilai_a`, `nilai_b`, `grade`, `keterangan`) VALUES
(11, '0', 0, 44, 'D', 'JELEK'),
(12, '0', 45, 60, 'C', 'CUKUP'),
(13, '0', 61, 79, 'B', 'BAIK'),
(14, '0', 80, 100, 'A', 'SANGAT BAIK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_aktivasi`
--

CREATE TABLE `rb_psb_aktivasi` (
  `id_aktivasi` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `proses` int(2) NOT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_aktivasi`
--

INSERT INTO `rb_psb_aktivasi` (`id_aktivasi`, `kode_pendaftaran`, `nama_lengkap`, `status`, `proses`, `waktu_input`) VALUES
(1, 'SMA-20160701085110', 'Robby Prihandaya', 'sma', 1, '2016-06-21 12:11:45'),
(2, 'SMK-20160701085110', 'Dewiit Safitri', 'smk', 1, '2016-06-21 15:04:57'),
(3, 'SMA-20160701085111', 'Tommy Utama', 'sma', 1, '2016-07-01 03:13:12'),
(4, 'SMP-20160701094107', 'Willy Fernando', 'smp', 1, '2016-07-01 09:27:54'),
(5, 'SMA-20190110204945', 'Fadel', 'sma', 0, '2019-01-10 20:49:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_pendaftaran`
--

CREATE TABLE `rb_psb_pendaftaran` (
  `id_pendaftaran` int(10) NOT NULL,
  `kode_pendaftaran` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_panggilan` varchar(120) NOT NULL,
  `no_induk` varchar(50) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_agama` int(5) NOT NULL,
  `anak_ke` varchar(10) NOT NULL,
  `jumlah_saudara` varchar(10) NOT NULL,
  `status_dalam_keluarga` varchar(100) NOT NULL,
  `alamat_siswa` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `berat_badan` int(5) NOT NULL,
  `tinggi_badan` int(5) NOT NULL,
  `golongan_darah` varchar(5) NOT NULL,
  `penyakit_pernah_diderita` varchar(255) NOT NULL,
  `diterima_dikelas` varchar(50) NOT NULL,
  `diterima_tanggal` date NOT NULL,
  `sekolah_asal` varchar(255) NOT NULL,
  `alamat_sekolah_asal` text NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tempat_lahir_ayah` text NOT NULL,
  `tanggal_lahir_ayah` date NOT NULL,
  `agama_ayah` int(5) NOT NULL,
  `pendidikan_ayah` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `alamat_rumah_ayah` text NOT NULL,
  `telpon_rumah_ayah` varchar(15) NOT NULL,
  `alamat_kantor_ayah` text NOT NULL,
  `telpon_kantor_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tempat_lahir_ibu` text NOT NULL,
  `tanggal_lahir_ibu` date NOT NULL,
  `agama_ibu` int(5) NOT NULL,
  `pendidikan_ibu` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `alamat_rumah_ibu` text NOT NULL,
  `telpon_rumah_ibu` varchar(15) NOT NULL,
  `alamat_kantor_ibu` text NOT NULL,
  `telpon_kantor_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `alamat_wali` text NOT NULL,
  `no_telpon_wali` varchar(15) NOT NULL,
  `status` enum('sma','smk','smp') NOT NULL,
  `waktu_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_pendaftaran`
--

INSERT INTO `rb_psb_pendaftaran` (`id_pendaftaran`, `kode_pendaftaran`, `nama`, `nama_panggilan`, `no_induk`, `id_jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `id_agama`, `anak_ke`, `jumlah_saudara`, `status_dalam_keluarga`, `alamat_siswa`, `no_telpon`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `penyakit_pernah_diderita`, `diterima_dikelas`, `diterima_tanggal`, `sekolah_asal`, `alamat_sekolah_asal`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `agama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `alamat_rumah_ayah`, `telpon_rumah_ayah`, `alamat_kantor_ayah`, `telpon_kantor_ayah`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `agama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `alamat_rumah_ibu`, `telpon_rumah_ibu`, `alamat_kantor_ibu`, `telpon_kantor_ibu`, `nama_wali`, `alamat_wali`, `no_telpon_wali`, `status`, `waktu_daftar`) VALUES
(1, 'SMA-20160701085110', 'Robby Prihandaya', 'Robby', '5675345', 1, 'Padang', '1989-06-05', 1, '3', '5', 'Anak Kandung', 'Jl. Angkasa Puri, Perundam 4, Blok C No 2', '081267771344', 75, 170, 'O', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Nafnizon (Alm)', 'Payakumbuh', '1975-04-12', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461692', 'Muro Paiti, Kapur IX', '0752786512', 'Yeni Ermawaty', 'Padang', '1974-01-18', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461692', '-', '0', 'Tommy Utama', 'Jl.Ulak Karang Padang', '081266881226', 'sma', '2016-06-22 12:11:45'),
(3, 'SMK-20160701085110', 'Dewiit Safitri', 'Dewi', '5674322', 1, 'Gumarang', '1989-02-12', 1, '3', '5', 'Anak Kandung', 'Jl. Linggar Jati, Padang', '082173054501', 60, 170, 'AB', 'Tdak Pernah', '1', '2016-06-22', 'SMP N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sukarni', 'Gumarang', '1976-12-01', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0753456790', 'Muro Paiti, Kapur IX', '0753445566', 'Mama Dewi', 'Gumarang', '1973-11-11', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0753456790', '-', '0', 'Adeil Putra', 'Jl.Ulak Karang, Padang', '082190871234', 'smk', '2016-06-22 15:04:57'),
(5, 'SMA-20160701085111', 'Tommy Utama', 'Tommy', '5674327', 1, 'Padang', '1985-08-18', 1, '1', '5', 'Anak Kandung', 'Jl. Simpang DPR, Padang', '081266881226', 70, 160, 'AB', 'Tdak Pernah', '1', '2016-07-01', 'SMA N 2 Payakumbuh', 'Jl. Lingar Jati 6, No 16 C', 'Sunandar', 'Payakumbuh', '0004-12-05', 1, 'S1', 'PNS', 'Jl.Gatot Subroto 6, No 7a', '0752461645', 'Muro Paiti, Kapur IX', '0752897855', 'Yunimar', 'Padang', '0000-00-00', 1, 'S1', 'Rumah Tangga', 'Jl.Gatot Subroto 6, No 7a', '0752461645', '-', '0', 'Willy Fernando', 'Jl.Ulak Karang, Padang', '082167771233', 'sma', '2016-07-01 11:19:36'),
(6, 'SMP-20160701094107', 'Willy Fernando', 'willy', '011111111111111111', 1, 'sibarambang, kecamatan x koto diatas kabupaten solok', '2009-06-19', 1, '3', '4', 'anaka', 'pasar sibarambang jorong karimbang nagari sibarambang kecamatan x koto diatas kabupaten solok', '011111111111111', 11, 111, 'O', 'tidak ada ', '', '0000-00-00', 'SDN 02 NAGARI SIBARAMBANG KECAMATAN X KOTO DIATAS KABUPATEN SOLOK', 'nagari sibarambang kecamatan x koto diatas kabupaten solok', 'ayah', 'sibarambang', '1988-10-03', 1, 'SMA', 'SWASTA', 'nagari sibrambang kecamatan x koto diatas kabupaten solok', '132435345345345', 'solok', '01010101', 'ibu', 'sibarambang', '1979-01-01', 1, 'SMA', 'SWASTA', 'nagari sibarambang kecamatan x koto diatas kabupaten solok', '435555555555555', 'solok', '1000101010', 'gak ada ', 'jln. lubuk begalung padang sumatera barat', '011111111111111', 'sma', '2018-12-09 18:28:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_psb_pendaftaran_saudara`
--

CREATE TABLE `rb_psb_pendaftaran_saudara` (
  `id_saudara` int(10) NOT NULL,
  `id_pendaftaran` int(10) NOT NULL,
  `nama_saudara` varchar(150) NOT NULL,
  `umur_saudara` int(5) NOT NULL,
  `pendidikan_saudara` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_psb_pendaftaran_saudara`
--

INSERT INTO `rb_psb_pendaftaran_saudara` (`id_saudara`, `id_pendaftaran`, `nama_saudara`, `umur_saudara`, `pendidikan_saudara`) VALUES
(1, 1, 'Willy Fernando', 29, 'S1'),
(2, 1, 'Randy Komara', 25, 'SMA'),
(3, 1, 'Laura Hikmah Izzatin', 18, 'SMA'),
(4, 3, 'Lira Virna', 15, 'SMP'),
(5, 3, 'Airin Stewano', 13, 'SD'),
(10, 5, 'Randy Komara', 25, 'SMA'),
(9, 5, 'Willy Fernando', 28, 'S1'),
(11, 5, 'Laura Hikmah Izzatin', 19, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_quiz_ujian`
--

CREATE TABLE `rb_quiz_ujian` (
  `id_quiz_ujian` int(5) NOT NULL,
  `id_kategori_quiz_ujian` int(5) NOT NULL,
  `kodejdwl` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `batas_waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_quiz_ujian`
--

INSERT INTO `rb_quiz_ujian` (`id_quiz_ujian`, `id_kategori_quiz_ujian`, `kodejdwl`, `keterangan`, `batas_waktu`) VALUES
(4, 1, 5, 'Quiz Online Nilai Akhir Matematika', '2016-04-25 08:54:42'),
(5, 1, 5, 'hhhb', '2016-03-11 16:02:02'),
(6, 2, 35, 'Ujian Matematika', '2018-11-29 12:16:52'),
(7, 2, 39, 'Test Berita 4', '2018-12-21 08:09:21'),
(8, 2, 41, 'Nothing', '2019-01-10 18:02:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_ruangan`
--

CREATE TABLE `rb_ruangan` (
  `kode_ruangan` varchar(10) NOT NULL,
  `kode_gedung` varchar(10) NOT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `kapasitas_belajar` int(5) NOT NULL,
  `kapasitas_ujian` int(5) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_ruangan`
--

INSERT INTO `rb_ruangan` (`kode_ruangan`, `kode_gedung`, `nama_ruangan`, `kapasitas_belajar`, `kapasitas_ujian`, `keterangan`, `aktif`) VALUES
('R001', 'G001', 'A.1', 35, 30, '', ''),
('R002', 'G001', 'A.2', 40, 35, '', ''),
('R003', 'G002', 'B.1', 34, 29, '', ''),
('R004', 'G002', 'B.2', 45, 40, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sesi`
--

CREATE TABLE `rb_sesi` (
  `id_sesi` int(5) NOT NULL,
  `nama_sesi` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sesi`
--

INSERT INTO `rb_sesi` (`id_sesi`, `nama_sesi`, `keterangan`, `aktif`) VALUES
(1, 'Semester 1', '', 'Ya'),
(2, 'Semester 2', '', 'Ya'),
(3, 'Semester 3', '', 'Ya'),
(4, 'Semester 4', '', 'Ya'),
(5, 'Semester 5', '', 'Ya'),
(6, 'Semester 6', '', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_siswa`
--

CREATE TABLE `rb_siswa` (
  `id_siswa` int(10) NOT NULL,
  `nipd` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `id_jenis_kelamin` int(5) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nik` varchar(50) NOT NULL,
  `id_agama` int(5) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` varchar(50) NOT NULL,
  `penerima_kps` varchar(20) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `kebutuhan_khusus_ayah` varchar(100) NOT NULL,
  `no_telpon_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `kebutuhan_khusus_ibu` varchar(100) NOT NULL,
  `no_telpon_ibu` varchar(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `status_awal` varchar(20) NOT NULL,
  `status_siswa` enum('Aktif','Tidak Aktif') NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `kode_jurusan` varchar(10) NOT NULL,
  `id_sesi` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_siswa`
--

INSERT INTO `rb_siswa` (`id_siswa`, `nipd`, `password`, `nama`, `id_jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `id_agama`, `kebutuhan_khusus`, `alamat`, `rt`, `rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `jenis_tinggal`, `alat_transportasi`, `telepon`, `hp`, `email`, `skhun`, `penerima_kps`, `no_kps`, `foto`, `nama_ayah`, `tahun_lahir_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `kebutuhan_khusus_ayah`, `no_telpon_ayah`, `nama_ibu`, `tahun_lahir_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `kebutuhan_khusus_ibu`, `no_telpon_ibu`, `nama_wali`, `tahun_lahir_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `angkatan`, `status_awal`, `status_siswa`, `tingkat`, `kode_kelas`, `kode_jurusan`, `id_sesi`) VALUES
(1273, 'siswa1', 'siswa1', 'Anton Nurhaidi', 1, 'siswa1', '', '0000-00-00', '', 1, '', '', '00', '00', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 2010, '', 'Aktif', '', 'Kelas XI', 'JR-SEJ', 0),
(1274, 'siswa2', 'siswa2', 'Siska Mayang Sari', 2, 'siswa2', '', '0000-00-00', '', 1, '', '', '00', '00', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 2010, '', 'Aktif', '', 'Kelas XI', 'JR-MTK', 0),
(1275, 'siswa4', 'siswa4', 'alex muhammad', 1, 'siswa4', 'padang', '1994-08-20', '1302122008940006', 1, 'Tidak Ada', 'Sibarambang', '01', '02', 'karimbang', 'Sibarambang', 'X Koto Diatas', 27355, 'Dengan Ortu', 'Motor', '082285315257', '082285315257', 'fadelmuhammad114@gmail.com', '082285315257', '', '', '20190714200412-Koala.jpg', '', 0, '', '', '', '', '', '', 0, '', '', '', '', '', '', 0, '', '', '', 2010, '', 'Aktif', '', 'Kelas XI', 'JR-SEJ', 0),
(1276, '0210210', 'fadel', 'pandi juniali', 1, '02422', 'sibarambang', '0000-00-00', '0120131111112', 1, 'tidak ada ', 'padang mangateh 2', '01', '02', 'padang', 'x koto diatas', 'tanjung balit', 27888, 'ortu', 'motor', '082287950464', '010010100100', 'fadelmuhammad114@gmail.com', '999', '', '12121', '', 'fadel', 2000, 's1', 'tidak ada', '210302', 'tidak ada', '0210210', 'ani', 1100, 'padang', 'ibu rt', '2313211', 'TIDAK ADA', '0101001010010', 'ana', 2010, 's1', 'wali', '101011', 2010, 'pindaha', 'Aktif', '', 'Kelas XI', 'JR-SEJ', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms`
--

CREATE TABLE `rb_sms` (
  `id_sms` int(5) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sms`
--

INSERT INTO `rb_sms` (`id_sms`, `nohp`, `pesan`) VALUES
(6, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 26-11-2018 : Izin'),
(7, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 26-11-2018 : Izin'),
(8, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 26-11-2018 : Sakit'),
(9, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 25-11-2018 : Alpa'),
(10, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 25-11-2018 : Sakit'),
(11, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 26-11-2018 : Izin'),
(12, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 26-11-2018 : Sakit'),
(13, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 26-11-2018 : Izin'),
(14, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 26-11-2018 : Sakit'),
(15, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 26-11-2018 : Alpa'),
(16, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 26-11-2018 : Sakit'),
(17, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 26-11-2018 : Alpa'),
(18, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 26-11-2018 : Izin'),
(19, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 25-11-2018 : Sakit'),
(20, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 25-11-2018 : Izin'),
(21, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 24-11-2018 : Sakit'),
(22, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 23-11-2018 : Alpa'),
(23, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 26-11-2018 : Izin'),
(24, '111111111111111', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Julaikha ina, KELAS X absensi Hari ini Tanggal 26-11-2018 : Sakit'),
(25, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 27-11-2018 : Izin'),
(26, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 28-11-2018 : Izin'),
(27, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 29-11-2018 : Alpa'),
(28, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 17-11-2018 : Izin'),
(29, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 05-11-2018 : Izin'),
(30, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 12-11-2018 : Izin'),
(31, '000000000000000', 'Diberitahukan kepada Yth Bpk/Ibk, Bahwa anak anda Anton Julaikha, KELAS X absensi Hari ini Tanggal 02-12-2018 : Izin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_autoreply`
--

CREATE TABLE `rb_sms_autoreply` (
  `id_autoreply` int(5) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `isi_pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_sms_autoreply`
--

INSERT INTO `rb_sms_autoreply` (`id_autoreply`, `keyword`, `isi_pesan`, `waktu`) VALUES
(1, 'REG INFO', 'Diharapkan kepada semua orang tua lebih memperhatikan pergaulan anak-anaknya.', '2016-04-23 08:16:22'),
(2, 'REG KEGIATAN', 'Kegiatan Pramuka 27-04-2016, Kegiatan Paskibra 12-05-2016, Kegiatan Maraton Bersama Guru 16-05-2016.', '2016-04-23 09:23:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_inbox`
--

CREATE TABLE `rb_sms_inbox` (
  `id` int(11) NOT NULL,
  `pesan` text,
  `nohp` varchar(20) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `modem` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_sms_outbox`
--

CREATE TABLE `rb_sms_outbox` (
  `id_outbox` int(5) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_keaktifan`
--

CREATE TABLE `rb_status_keaktifan` (
  `id_status_keaktifan` int(5) NOT NULL,
  `nama_status_keaktifan` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_keaktifan`
--

INSERT INTO `rb_status_keaktifan` (`id_status_keaktifan`, `nama_status_keaktifan`, `keterangan`) VALUES
(1, 'Aktif', ''),
(2, 'Tidak Aktif', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_kepegawaian`
--

CREATE TABLE `rb_status_kepegawaian` (
  `id_status_kepegawaian` int(5) NOT NULL,
  `status_kepegawaian` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_kepegawaian`
--

INSERT INTO `rb_status_kepegawaian` (`id_status_kepegawaian`, `status_kepegawaian`, `keterangan`) VALUES
(1, 'Tenaga Honor Sekolah\n', ''),
(2, 'Guru Honor Sekolah\n', ''),
(3, 'PNS\r\n', ''),
(4, 'GTY/PTY\r\n', ''),
(5, 'CPNS\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_status_pernikahan`
--

CREATE TABLE `rb_status_pernikahan` (
  `id_status_pernikahan` int(5) NOT NULL,
  `status_pernikahan` varchar(150) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_status_pernikahan`
--

INSERT INTO `rb_status_pernikahan` (`id_status_pernikahan`, `status_pernikahan`, `keterangan`) VALUES
(1, 'Menikah', ''),
(2, 'Belum Menikah', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_tahun_akademik`
--

CREATE TABLE `rb_tahun_akademik` (
  `id_tahun_akademik` int(5) NOT NULL,
  `nama_tahun` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_tahun_akademik`
--

INSERT INTO `rb_tahun_akademik` (`id_tahun_akademik`, `nama_tahun`, `keterangan`, `aktif`) VALUES
(20181, 'Ganjil 2018-2019', '2018/2019', 'Ya'),
(20182, 'Genap 2018-2019', '2018/2019', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_users`
--

CREATE TABLE `rb_users` (
  `id_user` int(5) NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` text COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telpon` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `jabatan` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'sekolah',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `rb_users`
--

INSERT INTO `rb_users` (`id_user`, `username`, `password`, `nama_lengkap`, `email`, `no_telpon`, `jabatan`, `level`, `aktif`) VALUES
(1, 'admin', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'Administrator', 'admin@gmail.com', '', 'Kepala IT', 'superuser', 'Y'),
(2, '196209051987031007', 'a6185fdc86a220b07d055de71d74d569261a3db2c408b06955bdac382c581f08105a7205988980a5f445fe34dbe884389ed6c89674d0a05bd3c8b58c82b43746', 'Drs. Amri Jaya, M.Pd', 'amri.jaya@gmail.com', '082173054501', 'Kepala Sekolah', 'kepala', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_users_aktivitas`
--

CREATE TABLE `rb_users_aktivitas` (
  `id_users_aktivitas` int(10) NOT NULL,
  `identitas` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `status` enum('siswa','guru','superuser') NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_users_aktivitas`
--

INSERT INTO `rb_users_aktivitas` (`id_users_aktivitas`, `identitas`, `ip_address`, `browser`, `os`, `status`, `jam`, `tanggal`) VALUES
(1, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '10:59:57', '2016-04-13'),
(2, '9991268756', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:00:27', '2016-04-13'),
(3, '9994030915', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:01:44', '2016-04-14'),
(4, '9975540740', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '11:20:43', '2016-04-14'),
(5, '195901241986032002', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '11:21:04', '2016-04-14'),
(6, '0006223671', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:18:06', '2016-04-15'),
(7, '195912121986021004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:32', '2016-04-15'),
(8, '197110292005011003', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:40', '2016-04-15'),
(9, '196109191988031006', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:18:49', '2016-04-16'),
(10, '196202191990032001', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '12:19:02', '2016-04-16'),
(11, '9999344284', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:24', '2016-04-16'),
(12, '9980725248', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:32', '2016-04-16'),
(13, '0006223671', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '12:19:42', '2016-04-16'),
(14, '2', '', ' Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:13:43', '2016-04-23'),
(15, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:15:28', '2016-04-23'),
(16, '1', '', ' Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:27:20', '2016-04-23'),
(17, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:34:28', '2016-04-23'),
(18, '9980708111', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '06:36:21', '2016-04-23'),
(19, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:37:05', '2016-04-23'),
(20, '9994030915', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '06:41:40', '2016-04-23'),
(21, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '06:43:49', '2016-04-23'),
(22, '9991268756', '::1', 'Firefox 46.0', 'Windows 7', 'siswa', '06:46:06', '2016-04-23'),
(23, '1', '', ' Chrome 49.0.2623.112', 'Windows 7', 'superuser', '07:02:03', '2016-04-23'),
(24, '9980708111', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:21:03', '2016-04-23'),
(25, '9980720559', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:21:21', '2016-04-23'),
(26, '9991268756', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:22:01', '2016-04-23'),
(27, '9999152999', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'siswa', '07:29:17', '2016-04-23'),
(28, '195704111980032004', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'guru', '08:40:14', '2016-04-23'),
(29, '1', '', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '08:45:52', '2016-04-23'),
(30, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:13:18', '2016-04-16'),
(31, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '03:12:26', '2016-04-15'),
(32, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '06:13:18', '2016-04-14'),
(33, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '03:12:26', '2016-04-13'),
(34, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '07:13:18', '2016-04-14'),
(35, '1', '::1', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '05:12:26', '2016-04-13'),
(36, '1', '36.68.12.49', 'Chrome 49.0.2623.112', 'Windows 7', 'superuser', '10:32:19', '2016-04-23'),
(48, '1', '114.4.79.250', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '15:08:36', '2016-04-27'),
(47, '1', '36.84.224.134', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:17:00', '2016-04-27'),
(40, '195704111980032004', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '07:50:45', '2016-04-27'),
(41, '1', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '07:54:08', '2016-04-27'),
(42, '9980708111', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '07:55:08', '2016-04-27'),
(43, '9980722436', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '07:55:23', '2016-04-27'),
(44, '198605012009011001', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '07:55:38', '2016-04-27'),
(45, '1', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '07:55:51', '2016-04-27'),
(46, '1', '114.4.21.153', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '08:01:10', '2016-04-27'),
(49, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '20:16:59', '2016-04-27'),
(50, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '08:27:54', '2016-04-28'),
(51, '198710052010012011', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:41:56', '2016-04-28'),
(52, '195704111980032004', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:42:15', '2016-04-28'),
(53, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '13:12:06', '2016-04-28'),
(54, '9991268756', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '13:30:48', '2016-04-28'),
(55, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '19:15:10', '2016-04-28'),
(56, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:02:22', '2016-04-29'),
(57, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '22:37:57', '2016-04-29'),
(58, '9991268756', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '22:41:40', '2016-04-29'),
(59, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '23:09:20', '2016-04-29'),
(60, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '23:20:06', '2016-04-29'),
(61, '195704111980032004', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:14:36', '2016-04-30'),
(62, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '06:14:55', '2016-04-30'),
(63, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:18:35', '2016-04-30'),
(64, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '06:19:47', '2016-04-30'),
(65, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:00:28', '2016-04-30'),
(66, '9991268756', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'siswa', '10:01:25', '2016-04-30'),
(67, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:01:44', '2016-04-30'),
(68, '2', '::1', 'Chrome 50.0.2661.87', 'Windows 7', '', '10:02:29', '2016-04-30'),
(69, '196209051987031007', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:02:51', '2016-04-30'),
(70, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '10:37:52', '2016-04-30'),
(71, '195806161984000001', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'guru', '10:58:18', '2016-04-30'),
(72, '1', '::1', 'Chrome 50.0.2661.87', 'Windows 7', 'superuser', '12:57:17', '2016-04-30'),
(74, '1', '::1', 'Chrome 50.0.2661.94', 'Windows 7', 'superuser', '20:17:11', '2016-05-04'),
(75, '1', '::1', 'Chrome 50.0.2661.94', 'Windows 7', 'superuser', '22:34:59', '2016-05-11'),
(76, '1', '::1', 'Chrome 50.0.2661.102', 'Windows 7', 'superuser', '07:21:10', '2016-06-02'),
(77, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '22:52:32', '2016-06-19'),
(78, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:06:29', '2016-06-22'),
(79, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:45:59', '2016-06-22'),
(80, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '07:40:52', '2016-06-23'),
(81, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:41:34', '2016-06-23'),
(82, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '04:56:37', '2016-06-29'),
(83, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:46:48', '2016-07-01'),
(84, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:32:49', '2016-07-02'),
(85, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:37:49', '2016-07-03'),
(86, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:24:00', '2016-07-04'),
(87, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '12:24:55', '2016-07-04'),
(88, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:38:17', '2016-07-04'),
(89, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '16:41:51', '2016-07-04'),
(90, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '05:45:25', '2016-07-05'),
(91, '195704111980032004', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '09:59:50', '2016-07-05'),
(92, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:12:22', '2016-07-05'),
(93, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '10:34:34', '2016-07-05'),
(94, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '08:09:08', '2016-07-08'),
(95, '195806161984000002', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '11:15:49', '2016-07-08'),
(96, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '11:32:28', '2016-07-08'),
(97, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:30:18', '2016-07-08'),
(98, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '13:31:00', '2016-07-08'),
(99, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '13:49:22', '2016-07-08'),
(100, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '13:50:02', '2016-07-08'),
(101, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '15:27:03', '2016-07-08'),
(102, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '15:54:51', '2016-07-08'),
(103, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '05:36:38', '2016-07-09'),
(104, '9991268756', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'siswa', '06:12:14', '2016-07-09'),
(105, '2', '::1', 'Chrome 51.0.2704.103', 'Windows 7', '', '06:18:50', '2016-07-09'),
(106, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:27:53', '2016-07-09'),
(107, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '06:57:52', '2016-07-09'),
(108, '195806161984000002', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'guru', '07:01:50', '2016-07-09'),
(109, '1', '::1', 'Chrome 51.0.2704.103', 'Windows 7', 'superuser', '05:41:14', '2016-07-10'),
(110, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '07:33:25', '2018-11-21'),
(111, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '20:26:13', '2018-11-23'),
(112, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '10:21:19', '2018-11-24'),
(113, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:24:31', '2018-11-24'),
(114, '9991268756', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'siswa', '16:32:05', '2018-11-24'),
(115, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:38:41', '2018-11-24'),
(116, 'guru', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '17:09:27', '2018-11-24'),
(117, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '17:11:39', '2018-11-24'),
(118, 'aisyah', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '17:18:21', '2018-11-24'),
(119, 'siswa', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'siswa', '17:18:53', '2018-11-24'),
(120, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '17:21:26', '2018-11-24'),
(121, 'aina', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '17:24:50', '2018-11-24'),
(122, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '08:46:03', '2018-11-26'),
(123, '2', '::1', 'Chrome 70.0.3538.102', 'Windows 7', '', '09:11:46', '2018-11-26'),
(124, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '09:12:38', '2018-11-26'),
(125, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '10:41:33', '2018-11-26'),
(126, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '11:36:03', '2018-11-26'),
(127, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:03:06', '2018-11-26'),
(128, 'guru1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '16:16:04', '2018-11-26'),
(129, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:16:27', '2018-11-26'),
(130, 'guru1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '16:18:30', '2018-11-26'),
(131, 'siswa1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'siswa', '16:19:59', '2018-11-26'),
(132, 'guru1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '16:20:47', '2018-11-26'),
(133, 'siswa1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'siswa', '16:24:21', '2018-11-26'),
(134, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:25:30', '2018-11-26'),
(135, 'guru1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '16:30:50', '2018-11-26'),
(136, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:47:42', '2018-11-26'),
(137, 'guru1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '16:56:09', '2018-11-26'),
(138, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:58:49', '2018-11-26'),
(139, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '16:59:50', '2018-11-26'),
(140, 'siswa1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'siswa', '17:01:27', '2018-11-26'),
(141, 'guru1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '17:02:14', '2018-11-26'),
(142, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '17:04:15', '2018-11-26'),
(143, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '18:44:04', '2018-11-26'),
(144, 'guru1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'guru', '19:33:47', '2018-11-26'),
(145, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '19:35:21', '2018-11-26'),
(146, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '15:09:11', '2018-11-27'),
(147, '1', '::1', 'Chrome 70.0.3538.102', 'Windows 7', 'superuser', '08:09:16', '2018-11-28'),
(148, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '16:59:33', '2018-11-28'),
(149, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '07:57:40', '2018-11-29'),
(150, 'siswa1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'siswa', '10:37:16', '2018-11-29'),
(151, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '10:37:55', '2018-11-29'),
(152, 'siswa1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'siswa', '10:38:59', '2018-11-29'),
(153, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '10:39:37', '2018-11-29'),
(154, 'siswa1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'siswa', '10:40:12', '2018-11-29'),
(155, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '10:40:35', '2018-11-29'),
(156, 'guru1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'guru', '10:57:05', '2018-11-29'),
(157, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '11:33:34', '2018-11-29'),
(158, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '12:21:13', '2018-11-29'),
(159, 'siswa1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'siswa', '13:29:17', '2018-11-29'),
(160, 'siswa1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'siswa', '13:34:58', '2018-11-29'),
(161, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '13:42:56', '2018-11-29'),
(162, 'siswa1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'siswa', '13:47:39', '2018-11-29'),
(163, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '07:06:42', '2018-11-30'),
(164, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '07:24:23', '2018-11-30'),
(165, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '09:12:00', '2018-12-02'),
(166, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '19:33:14', '2018-12-02'),
(167, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '14:29:20', '2018-12-03'),
(168, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '09:20:37', '2018-12-04'),
(169, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '12:13:42', '2018-12-04'),
(170, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '18:19:33', '2018-12-09'),
(171, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '14:30:56', '2018-12-11'),
(172, 'guru4', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'guru', '14:31:50', '2018-12-11'),
(173, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '14:33:25', '2018-12-11'),
(174, 'guru4', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'guru', '14:33:41', '2018-12-11'),
(175, 'guru1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'guru', '14:35:14', '2018-12-11'),
(176, '1', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'superuser', '14:42:29', '2018-12-11'),
(177, 'guru3', '::1', 'Chrome 70.0.3538.110', 'Windows 7', 'guru', '14:43:02', '2018-12-11'),
(178, '1', '::1', 'Chrome 60.0.3112.101', 'Windows 7', 'superuser', '12:42:05', '2018-12-19'),
(179, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '07:59:44', '2018-12-20'),
(180, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '18:13:17', '2018-12-20'),
(181, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '18:25:56', '2018-12-20'),
(182, 'guru1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '18:27:28', '2018-12-20'),
(183, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '18:29:24', '2018-12-20'),
(184, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '19:03:41', '2018-12-20'),
(185, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '09:12:14', '2018-12-21'),
(186, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '09:13:28', '2018-12-21'),
(187, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '18:44:44', '2018-12-21'),
(188, 'siswa4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '20:42:54', '2018-12-21'),
(189, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '20:43:29', '2018-12-21'),
(190, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '07:25:16', '2018-12-22'),
(191, 'siswa4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '07:33:16', '2018-12-22'),
(192, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '07:34:20', '2018-12-22'),
(193, 'guru4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '07:34:49', '2018-12-22'),
(194, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '07:35:15', '2018-12-22'),
(195, 'guru2', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '07:35:28', '2018-12-22'),
(196, 'guru1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '07:35:42', '2018-12-22'),
(197, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '07:38:48', '2018-12-22'),
(198, 'siswa4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '07:40:18', '2018-12-22'),
(199, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '07:41:49', '2018-12-22'),
(200, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '07:42:26', '2018-12-22'),
(201, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '09:56:59', '2018-12-22'),
(202, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '09:57:15', '2018-12-22'),
(203, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '10:14:53', '2018-12-22'),
(204, 'guru4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '10:24:24', '2018-12-22'),
(205, 'guru1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '10:24:36', '2018-12-22'),
(206, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '10:30:52', '2018-12-22'),
(207, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '10:32:19', '2018-12-22'),
(208, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '10:41:05', '2018-12-22'),
(209, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '18:42:18', '2018-12-25'),
(210, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '13:36:59', '2018-12-31'),
(211, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '09:13:06', '2019-01-07'),
(212, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '09:14:19', '2019-01-07'),
(213, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '09:14:41', '2019-01-07'),
(214, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '09:27:02', '2019-01-07'),
(215, 'guru4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '09:27:35', '2019-01-07'),
(216, 'guru1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '09:27:50', '2019-01-07'),
(217, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '09:30:03', '2019-01-07'),
(218, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '09:57:07', '2019-01-07'),
(219, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '09:57:53', '2019-01-07'),
(220, 'guru4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '10:17:35', '2019-01-07'),
(221, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '10:17:51', '2019-01-07'),
(222, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '10:48:13', '2019-01-07'),
(223, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '11:47:12', '2019-01-07'),
(224, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '11:51:34', '2019-01-08'),
(225, 'siswa4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '12:35:04', '2019-01-08'),
(226, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '12:35:41', '2019-01-08'),
(227, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '16:10:17', '2019-01-10'),
(228, 'guru4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '16:10:43', '2019-01-10'),
(229, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '16:15:42', '2019-01-10'),
(230, 'guru4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '16:54:03', '2019-01-10'),
(231, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '16:54:19', '2019-01-10'),
(232, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '16:55:02', '2019-01-10'),
(233, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '17:02:16', '2019-01-10'),
(234, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '17:02:39', '2019-01-10'),
(235, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '17:07:49', '2019-01-10'),
(236, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '17:08:57', '2019-01-10'),
(237, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '17:09:31', '2019-01-10'),
(238, 'guru4', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '17:12:31', '2019-01-10'),
(239, 'guru1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '17:17:36', '2019-01-10'),
(240, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '20:11:56', '2019-01-10'),
(241, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '20:24:17', '2019-01-10'),
(242, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '20:27:42', '2019-01-10'),
(243, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '07:14:03', '2019-01-11'),
(244, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '11:14:20', '2019-01-12'),
(245, 'guru3', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '11:14:32', '2019-01-12'),
(246, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '19:02:53', '2019-01-21'),
(247, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '09:23:17', '2019-01-23'),
(248, '1', '::1', 'Chrome 60.0.3112.101', 'Windows 7', 'superuser', '08:29:42', '2019-02-01'),
(249, 'siswa1', '::1', 'Chrome 60.0.3112.101', 'Windows 7', 'siswa', '08:30:08', '2019-02-01'),
(250, '1', '::1', 'Chrome 60.0.3112.101', 'Windows 7', 'superuser', '08:30:19', '2019-02-01'),
(251, 'guru1', '::1', 'Chrome 60.0.3112.101', 'Windows 7', 'guru', '08:30:44', '2019-02-01'),
(252, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '08:50:07', '2019-02-04'),
(253, 'siswa1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'siswa', '08:55:51', '2019-02-04'),
(254, 'guru1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'guru', '08:57:11', '2019-02-04'),
(255, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '10:41:46', '2019-02-10'),
(256, '1', '::1', 'Chrome 71.0.3578.98', 'Windows 7', 'superuser', '11:22:14', '2019-02-10'),
(257, '1', '::1', 'Chrome 74.0.3729.131', 'Windows 7', 'superuser', '19:41:43', '2019-05-15'),
(258, '1', '::1', 'Chrome 74.0.3729.131', 'Windows 7', 'superuser', '16:06:13', '2019-05-16'),
(259, 'guru4', '::1', 'Chrome 74.0.3729.131', 'Windows 7', 'guru', '16:07:25', '2019-05-16'),
(260, '1', '::1', 'Chrome 74.0.3729.131', 'Windows 7', 'superuser', '16:07:56', '2019-05-16'),
(261, '1', '::1', 'Chrome 74.0.3729.157', 'Windows 7', 'superuser', '11:03:09', '2019-05-19'),
(262, '1', '::1', 'Chrome 74.0.3729.169', 'Windows 7', 'superuser', '23:27:10', '2019-05-29'),
(263, '1', '::1', 'Chrome 74.0.3729.169', 'Windows 7', 'superuser', '18:18:51', '2019-06-10'),
(264, '1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'superuser', '19:54:02', '2019-07-14'),
(265, 'siswa1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'siswa', '19:58:15', '2019-07-14'),
(266, '1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'superuser', '19:58:46', '2019-07-14'),
(267, 'siswa1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'siswa', '19:59:57', '2019-07-14'),
(268, 'guru1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'guru', '20:00:27', '2019-07-14'),
(269, '1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'superuser', '20:01:33', '2019-07-14'),
(270, 'siswa1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'siswa', '20:24:46', '2019-07-14'),
(271, '1', '::1', 'Chrome 75.0.3770.100', 'Windows 7', 'superuser', '20:29:42', '2019-07-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
  ADD PRIMARY KEY (`id_absensi_guru`);

--
-- Indexes for table `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
  ADD PRIMARY KEY (`id_absensi_siswa`);

--
-- Indexes for table `rb_agama`
--
ALTER TABLE `rb_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `rb_elearning`
--
ALTER TABLE `rb_elearning`
  ADD PRIMARY KEY (`id_elearning`);

--
-- Indexes for table `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
  ADD PRIMARY KEY (`id_elearning_jawab`);

--
-- Indexes for table `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
  ADD PRIMARY KEY (`id_forum_komentar`);

--
-- Indexes for table `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
  ADD PRIMARY KEY (`id_forum_topic`);

--
-- Indexes for table `rb_gedung`
--
ALTER TABLE `rb_gedung`
  ADD PRIMARY KEY (`kode_gedung`);

--
-- Indexes for table `rb_golongan`
--
ALTER TABLE `rb_golongan`
  ADD PRIMARY KEY (`id_golongan`);

--
-- Indexes for table `rb_guru`
--
ALTER TABLE `rb_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `rb_halaman`
--
ALTER TABLE `rb_halaman`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
  ADD PRIMARY KEY (`id_identitas_sekolah`);

--
-- Indexes for table `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
  ADD PRIMARY KEY (`kodejdwl`);

--
-- Indexes for table `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
  ADD PRIMARY KEY (`id_jawaban_essai`);

--
-- Indexes for table `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
  ADD PRIMARY KEY (`id_jawaban_objektif`);

--
-- Indexes for table `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
  ADD PRIMARY KEY (`id_jenis_ptk`);

--
-- Indexes for table `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
  ADD PRIMARY KEY (`id_journal`);

--
-- Indexes for table `rb_jurusan`
--
ALTER TABLE `rb_jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
  ADD PRIMARY KEY (`id_kategori_elearning`);

--
-- Indexes for table `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
  ADD PRIMARY KEY (`id_kategori_quiz_ujian`);

--
-- Indexes for table `rb_kehadiran`
--
ALTER TABLE `rb_kehadiran`
  ADD PRIMARY KEY (`kode_kehadiran`);

--
-- Indexes for table `rb_kelas`
--
ALTER TABLE `rb_kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
  ADD PRIMARY KEY (`id_kelompok_mata_pelajaran`);

--
-- Indexes for table `rb_keuangan_bayar`
--
ALTER TABLE `rb_keuangan_bayar`
  ADD PRIMARY KEY (`id_keuangan_bayar`);

--
-- Indexes for table `rb_keuangan_jenis`
--
ALTER TABLE `rb_keuangan_jenis`
  ADD PRIMARY KEY (`id_keuangan_jenis`);

--
-- Indexes for table `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
  ADD PRIMARY KEY (`id_kompetensi_dasar`);

--
-- Indexes for table `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
  ADD PRIMARY KEY (`kode_kurikulum`);

--
-- Indexes for table `rb_mata_pelajaran`
--
ALTER TABLE `rb_mata_pelajaran`
  ADD PRIMARY KEY (`kode_pelajaran`);

--
-- Indexes for table `rb_menu`
--
ALTER TABLE `rb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `rb_nilai_catatan_wakel`
--
ALTER TABLE `rb_nilai_catatan_wakel`
  ADD PRIMARY KEY (`id_nilai_catatan_wakel`);

--
-- Indexes for table `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
  ADD PRIMARY KEY (`id_nilai_extrakulikuler`);

--
-- Indexes for table `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
  ADD PRIMARY KEY (`id_nilai_keterampilan`);

--
-- Indexes for table `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
  ADD PRIMARY KEY (`id_nilai_pengetahuan`);

--
-- Indexes for table `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
  ADD PRIMARY KEY (`id_nilai_pertanyaan_essai`);

--
-- Indexes for table `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
  ADD PRIMARY KEY (`id_nilai_prestasi`);

--
-- Indexes for table `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
  ADD PRIMARY KEY (`id_nilai_sikap`);

--
-- Indexes for table `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
  ADD PRIMARY KEY (`id_nilai_sikap_semester`);

--
-- Indexes for table `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
  ADD PRIMARY KEY (`id_nilai_uts`);

--
-- Indexes for table `rb_pengumuman_guru`
--
ALTER TABLE `rb_pengumuman_guru`
  ADD PRIMARY KEY (`kode_p_guru`);

--
-- Indexes for table `rb_pengumuman_siswa`
--
ALTER TABLE `rb_pengumuman_siswa`
  ADD PRIMARY KEY (`kode_p_siswa`);

--
-- Indexes for table `rb_peringkat`
--
ALTER TABLE `rb_peringkat`
  ADD PRIMARY KEY (`id_peringkat`);

--
-- Indexes for table `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
  ADD PRIMARY KEY (`id_pertanyaan_essai`);

--
-- Indexes for table `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
  ADD PRIMARY KEY (`id_pertanyaan_objektif`);

--
-- Indexes for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  ADD PRIMARY KEY (`id_pertanyaan_penilaian`);

--
-- Indexes for table `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
  ADD PRIMARY KEY (`id_pertanyaan_penilaian_jawab`);

--
-- Indexes for table `rb_predikat`
--
ALTER TABLE `rb_predikat`
  ADD PRIMARY KEY (`id_predikat`);

--
-- Indexes for table `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
  ADD PRIMARY KEY (`id_aktivasi`);

--
-- Indexes for table `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
  ADD PRIMARY KEY (`id_saudara`);

--
-- Indexes for table `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
  ADD PRIMARY KEY (`id_quiz_ujian`);

--
-- Indexes for table `rb_ruangan`
--
ALTER TABLE `rb_ruangan`
  ADD PRIMARY KEY (`kode_ruangan`);

--
-- Indexes for table `rb_sesi`
--
ALTER TABLE `rb_sesi`
  ADD PRIMARY KEY (`id_sesi`);

--
-- Indexes for table `rb_siswa`
--
ALTER TABLE `rb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `rb_sms`
--
ALTER TABLE `rb_sms`
  ADD PRIMARY KEY (`id_sms`);

--
-- Indexes for table `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
  ADD PRIMARY KEY (`id_autoreply`);

--
-- Indexes for table `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
  ADD PRIMARY KEY (`id_outbox`);

--
-- Indexes for table `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
  ADD PRIMARY KEY (`id_status_keaktifan`);

--
-- Indexes for table `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
  ADD PRIMARY KEY (`id_status_kepegawaian`);

--
-- Indexes for table `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
  ADD PRIMARY KEY (`id_status_pernikahan`);

--
-- Indexes for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `rb_users`
--
ALTER TABLE `rb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
  ADD PRIMARY KEY (`id_users_aktivitas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rb_absensi_guru`
--
ALTER TABLE `rb_absensi_guru`
  MODIFY `id_absensi_guru` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rb_absensi_siswa`
--
ALTER TABLE `rb_absensi_siswa`
  MODIFY `id_absensi_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `rb_agama`
--
ALTER TABLE `rb_agama`
  MODIFY `id_agama` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_elearning`
--
ALTER TABLE `rb_elearning`
  MODIFY `id_elearning` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `rb_elearning_jawab`
--
ALTER TABLE `rb_elearning_jawab`
  MODIFY `id_elearning_jawab` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_forum_komentar`
--
ALTER TABLE `rb_forum_komentar`
  MODIFY `id_forum_komentar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `rb_forum_topic`
--
ALTER TABLE `rb_forum_topic`
  MODIFY `id_forum_topic` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_golongan`
--
ALTER TABLE `rb_golongan`
  MODIFY `id_golongan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rb_halaman`
--
ALTER TABLE `rb_halaman`
  MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_identitas_sekolah`
--
ALTER TABLE `rb_identitas_sekolah`
  MODIFY `id_identitas_sekolah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rb_jadwal_pelajaran`
--
ALTER TABLE `rb_jadwal_pelajaran`
  MODIFY `kodejdwl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `rb_jawaban_essai`
--
ALTER TABLE `rb_jawaban_essai`
  MODIFY `id_jawaban_essai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_jawaban_objektif`
--
ALTER TABLE `rb_jawaban_objektif`
  MODIFY `id_jawaban_objektif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `rb_jenis_kelamin`
--
ALTER TABLE `rb_jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_jenis_ptk`
--
ALTER TABLE `rb_jenis_ptk`
  MODIFY `id_jenis_ptk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_journal_list`
--
ALTER TABLE `rb_journal_list`
  MODIFY `id_journal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rb_kategori_elearning`
--
ALTER TABLE `rb_kategori_elearning`
  MODIFY `id_kategori_elearning` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_kategori_quiz_ujian`
--
ALTER TABLE `rb_kategori_quiz_ujian`
  MODIFY `id_kategori_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_kelompok_mata_pelajaran`
--
ALTER TABLE `rb_kelompok_mata_pelajaran`
  MODIFY `id_kelompok_mata_pelajaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_keuangan_bayar`
--
ALTER TABLE `rb_keuangan_bayar`
  MODIFY `id_keuangan_bayar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rb_keuangan_jenis`
--
ALTER TABLE `rb_keuangan_jenis`
  MODIFY `id_keuangan_jenis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rb_kompetensi_dasar`
--
ALTER TABLE `rb_kompetensi_dasar`
  MODIFY `id_kompetensi_dasar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rb_kurikulum`
--
ALTER TABLE `rb_kurikulum`
  MODIFY `kode_kurikulum` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rb_menu`
--
ALTER TABLE `rb_menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `rb_nilai_catatan_wakel`
--
ALTER TABLE `rb_nilai_catatan_wakel`
  MODIFY `id_nilai_catatan_wakel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rb_nilai_extrakulikuler`
--
ALTER TABLE `rb_nilai_extrakulikuler`
  MODIFY `id_nilai_extrakulikuler` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `rb_nilai_keterampilan`
--
ALTER TABLE `rb_nilai_keterampilan`
  MODIFY `id_nilai_keterampilan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `rb_nilai_pengetahuan`
--
ALTER TABLE `rb_nilai_pengetahuan`
  MODIFY `id_nilai_pengetahuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `rb_nilai_pertanyaan_essai`
--
ALTER TABLE `rb_nilai_pertanyaan_essai`
  MODIFY `id_nilai_pertanyaan_essai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rb_nilai_prestasi`
--
ALTER TABLE `rb_nilai_prestasi`
  MODIFY `id_nilai_prestasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rb_nilai_sikap`
--
ALTER TABLE `rb_nilai_sikap`
  MODIFY `id_nilai_sikap` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `rb_nilai_sikap_semester`
--
ALTER TABLE `rb_nilai_sikap_semester`
  MODIFY `id_nilai_sikap_semester` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_nilai_uts`
--
ALTER TABLE `rb_nilai_uts`
  MODIFY `id_nilai_uts` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `rb_pengumuman_guru`
--
ALTER TABLE `rb_pengumuman_guru`
  MODIFY `kode_p_guru` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rb_pengumuman_siswa`
--
ALTER TABLE `rb_pengumuman_siswa`
  MODIFY `kode_p_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rb_peringkat`
--
ALTER TABLE `rb_peringkat`
  MODIFY `id_peringkat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_essai`
--
ALTER TABLE `rb_pertanyaan_essai`
  MODIFY `id_pertanyaan_essai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_objektif`
--
ALTER TABLE `rb_pertanyaan_objektif`
  MODIFY `id_pertanyaan_objektif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_penilaian`
--
ALTER TABLE `rb_pertanyaan_penilaian`
  MODIFY `id_pertanyaan_penilaian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_pertanyaan_penilaian_jawab`
--
ALTER TABLE `rb_pertanyaan_penilaian_jawab`
  MODIFY `id_pertanyaan_penilaian_jawab` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `rb_predikat`
--
ALTER TABLE `rb_predikat`
  MODIFY `id_predikat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `rb_psb_aktivasi`
--
ALTER TABLE `rb_psb_aktivasi`
  MODIFY `id_aktivasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rb_psb_pendaftaran`
--
ALTER TABLE `rb_psb_pendaftaran`
  MODIFY `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rb_psb_pendaftaran_saudara`
--
ALTER TABLE `rb_psb_pendaftaran_saudara`
  MODIFY `id_saudara` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `rb_quiz_ujian`
--
ALTER TABLE `rb_quiz_ujian`
  MODIFY `id_quiz_ujian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `rb_sesi`
--
ALTER TABLE `rb_sesi`
  MODIFY `id_sesi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rb_siswa`
--
ALTER TABLE `rb_siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1278;
--
-- AUTO_INCREMENT for table `rb_sms`
--
ALTER TABLE `rb_sms`
  MODIFY `id_sms` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `rb_sms_autoreply`
--
ALTER TABLE `rb_sms_autoreply`
  MODIFY `id_autoreply` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_sms_inbox`
--
ALTER TABLE `rb_sms_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_sms_outbox`
--
ALTER TABLE `rb_sms_outbox`
  MODIFY `id_outbox` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rb_status_keaktifan`
--
ALTER TABLE `rb_status_keaktifan`
  MODIFY `id_status_keaktifan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_status_kepegawaian`
--
ALTER TABLE `rb_status_kepegawaian`
  MODIFY `id_status_kepegawaian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rb_status_pernikahan`
--
ALTER TABLE `rb_status_pernikahan`
  MODIFY `id_status_pernikahan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rb_tahun_akademik`
--
ALTER TABLE `rb_tahun_akademik`
  MODIFY `id_tahun_akademik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20183;
--
-- AUTO_INCREMENT for table `rb_users`
--
ALTER TABLE `rb_users`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `rb_users_aktivitas`
--
ALTER TABLE `rb_users_aktivitas`
  MODIFY `id_users_aktivitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

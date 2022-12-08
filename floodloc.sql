-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2020 pada 21.03
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `floodloc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `msadd`
--

CREATE TABLE `msadd` (
  `districtid` varchar(6) NOT NULL,
  `districtname` varchar(30) NOT NULL,
  `cityid` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `msadd`
--

INSERT INTO `msadd` (`districtid`, `districtname`, `cityid`) VALUES
('KMBGN', 'Kembangan', 'JAKBAR'),
('KMYRN', 'Kemayoran', 'JAKPUS'),
('CLNDK', 'Cilandak', 'JAKSEL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mscity`
--

CREATE TABLE `mscity` (
  `cityid` varchar(6) NOT NULL,
  `cityname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mscity`
--

INSERT INTO `mscity` (`cityid`, `cityname`) VALUES
('JAKBAR', 'Jakarta Barat'),
('JAKPUS', 'Jakarta Pusat'),
('JAKSEL', 'Jakarta Selatan'),
('JAKTIM', 'Jakarta Timur'),
('JAKUT', 'Jakarta Utara'),
('KEPBU', 'Kepulauan Seribu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msdistrict`
--

CREATE TABLE `msdistrict` (
  `districtid` varchar(6) NOT NULL,
  `districtname` varchar(30) NOT NULL,
  `cityid` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `msdistrict`
--

INSERT INTO `msdistrict` (`districtid`, `districtname`, `cityid`) VALUES
('CGKRG', 'Cengkareng', 'JAKBAR'),
('GRGPTB', 'Grogol Petamburan', 'JAKBAR'),
('KLDRS', 'Kalideres', 'JAKBAR'),
('KBJRK', 'Kebon Jeruk', 'JAKBAR'),
('KMBGN', 'Kembangan', 'JAKBAR'),
('PLMRH', 'Palmerah', 'JAKBAR'),
('TMNSR', 'Taman Sari', 'JAKBAR'),
('TMBR', 'Tambora', 'JAKBAR'),
('CMKPTH', 'Cempaka Putih', 'JAKPUS'),
('GMBR', 'Gambir', 'JAKPUS'),
('JHRBR', 'Johar Baru', 'JAKPUS'),
('KMYRN', 'Kemayoran', 'JAKPUS'),
('SWHBSR', 'Sawah Besar', 'JAKPUS'),
('SNN', 'Senen', 'JAKPUS'),
('TNHBG', 'Tanah Abang', 'JAKPUS'),
('CLNDK', 'Cilandak', 'JAKSEL'),
('JGKRS', 'Jagakarsa', 'JAKSEL'),
('KBYBR', 'Kebayoran Baru', 'JAKSEL'),
('KBYLM', 'Kebayoran Lama', 'JAKSEL'),
('MMPPRT', 'Mampang Prapatan', 'JAKSEL'),
('PNCRN', 'Pancoran', 'JAKSEL'),
('PSRMNG', 'Pasar Minggu', 'JAKSEL'),
('PSGRHN', 'Pesanggrahan', 'JAKSEL'),
('STBD', 'Setiabudi', 'JAKSEL'),
('TBT', 'Tebet', 'JAKSEL'),
('CKG', 'Cakung', 'JAKTIM'),
('CPYG', 'Cipayung', 'JAKTIM'),
('CRCS', 'Ciracas', 'JAKTIM'),
('DRNSWT', 'Duren Sawit', 'JAKTIM'),
('JTNGR', 'Jatinegara', 'JAKTIM'),
('KRMJT', 'Kramat Jati', 'JAKTIM'),
('MKSR', 'Makasar', 'JAKTIM'),
('MTRMN', 'Matraman', 'JAKTIM'),
('MNTG', 'Menteng', 'JAKTIM'),
('PSRRB', 'Pasar Rebo', 'JAKTIM'),
('PLGDG', 'Pulo Gadung', 'JAKTIM'),
('CLNCG', 'Cilincing', 'JAKUT'),
('KLPGDG', 'Kelapa Gading', 'JAKUT'),
('KJ', 'Koja', 'JAKUT'),
('PDMGN', 'Pademangan', 'JAKUT'),
('PNJRGN', 'Penjaringan', 'JAKUT'),
('TJGPRK', 'Tanjung Priok', 'JAKUT'),
('KSSEL', 'Kepulauan Seribu Selatan', 'KEPBU'),
('KSUT', 'Kepulauan Seribu Utara', 'KEPBU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sysloginadmin`
--

CREATE TABLE `sysloginadmin` (
  `uname_admin` varchar(15) NOT NULL,
  `password_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sysloginadmin`
--

INSERT INTO `sysloginadmin` (`uname_admin`, `password_admin`) VALUES
('admin', '123456'),
('administrator', 'admin098');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sysloginmember`
--

CREATE TABLE `sysloginmember` (
  `uname_member` varchar(15) NOT NULL,
  `password_member` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sysloginmember`
--

INSERT INTO `sysloginmember` (`uname_member`, `password_member`) VALUES
('check', 'try333'),
('first', 'lockon101'),
('mode', 'saferal789'),
('hide', 'undetect456'),
('complex', 'close123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

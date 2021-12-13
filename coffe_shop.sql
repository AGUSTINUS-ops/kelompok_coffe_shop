-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 07:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: "coffe_shop"
--

-- --------------------------------------------------------

--
-- Table structure for table "cart"
--

CREATE TABLE "cart" ;

--
-- Dumping data for table "cart"
--

SET IDENTITY_INSERT "cart" ON ;
INSERT INTO "cart" ("idcart", "orderid", "userid", "tglorder", "status") VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Cart'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Confirmed'),
(13, '16QafN2kVPJRY', 1, '2021-01-06 06:21:59', 'Cart');

SET IDENTITY_INSERT "cart" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "detailorder"
--

CREATE TABLE "detailorder" ;

--
-- Dumping data for table "detailorder"
--

SET IDENTITY_INSERT "detailorder" ON ;
INSERT INTO "detailorder" ("detailid", "orderid", "idproduk", "qty") VALUES
(16, '15Swf8Ye0Fm.M', 4, 1);

SET IDENTITY_INSERT "detailorder" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "kategori"
--

CREATE TABLE "kategori" ;

--
-- Dumping data for table "kategori"
--

SET IDENTITY_INSERT "kategori" ON ;
INSERT INTO "kategori" ("idkategori", "namakategori", "tgldibuat") VALUES
(4, 'Coffe', '2021-01-06 06:24:34'),
(5, 'Beer', '2021-01-06 06:36:27'),
(6, 'Coffe Local', '2021-01-06 06:48:58');

SET IDENTITY_INSERT "kategori" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "konfirmasi"
--

CREATE TABLE "konfirmasi" ;

--
-- Dumping data for table "konfirmasi"
--

SET IDENTITY_INSERT "konfirmasi" ON ;
INSERT INTO "konfirmasi" ("idkonfirmasi", "orderid", "userid", "payment", "namarekening", "tglbayar", "tglsubmit") VALUES
(1, '15PzF03ejd8W2', 1, 'Bank BCA', 'Admin', '2020-05-16', '2020-05-13 02:41:51');

SET IDENTITY_INSERT "konfirmasi" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "login"
--

CREATE TABLE "login" ;

--
-- Dumping data for table "login"
--

SET IDENTITY_INSERT "login" ON ;
INSERT INTO "login" ("userid", "namalengkap", "email", "password", "notelp", "alamat", "tgljoin", "role", "lastlogin") VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Admin', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL);

SET IDENTITY_INSERT "login" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "pembayaran"
--

CREATE TABLE "pembayaran" ;

--
-- Dumping data for table "pembayaran"
--

SET IDENTITY_INSERT "pembayaran" ON ;
INSERT INTO "pembayaran" ("no", "metode", "norek", "logo", "an") VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Tokopekita'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'Tokopekita'),
(3, 'DANA', '0882313132123', 'images/dana.png', 'Tokopekita');

SET IDENTITY_INSERT "pembayaran" OFF;

-- --------------------------------------------------------

--
-- Table structure for table "produk"
--

CREATE TABLE "produk" ;

--
-- Dumping data for table "produk"
--

SET IDENTITY_INSERT "produk" ON ;
INSERT INTO "produk" ("idproduk", "idkategori", "namaproduk", "gambar", "deskripsi", "rate", "hargabefore", "hargaafter", "tgldibuat") VALUES
(4, 4, 'Affogatto', 'produk/169uYfJg9pON2.png', 'Di Eropa biasanya kopi affogato ini digunakan sebagai pencuci mulut yang disuguhkan selama musim panas dan setelah makan malam. Affogato ini terdiri dari campuran espresso yang kuat dan pahit dengan e', 4, 40000, 35000, '2021-01-06 06:26:41'),
(5, 4, 'Americano', 'produk/16BK0kfGMY9II.png', 'Jenis minuman kopi americano dikenal juga dengan nama Long Black. Minuman ini masih mirip dengan espresso, yang membedakannya yaitu minuman ini didapat dari mengencerkan espresso. Dengan perbandingan ', 2, 50000, 40000, '2021-01-06 06:28:58'),
(6, 4, 'Arabica', 'produk/16n.jodRzbJzg.png', 'Memiliki aroma yang wangi seperti buah-buahan atau bunga-bungaan. Beberapa disertai aroma kacang-kacangan. Rasanya pun lebih halus dan penuh.Tak heran harganya juga jauh lebih mahal dibanding jenis ko', 3, 50000, 0, '2021-01-06 06:30:57'),
(7, 5, 'Coffe', 'produk/161uZRx4Ip4rc.png', 'Kamu mungkin pernah mendengar minuman khas Yogya yang bernama Saparella. Sering kali, coffee beer ini disamakan dengan Saparella. Tapi ternyata tidak sama. Coffee beer memiliki resep tersendiri yang s', 1, 35000, 29500, '2021-01-06 06:37:51'),
(8, 4, 'Cappucino', 'produk/16YyWW9etQUig.png', 'Merupakan salah satu jenis minuman kopi yang paling populer di kedai kopi. Kopi ini adalah minuman tradisional Italia, yang terkenal dengan lapisan atasnya berupa foam susu dan biasanya di hias dengan', 5, 50000, 45996, '2021-01-06 06:39:56'),
(9, 4, 'Espresso', 'produk/16U2w21reG9KU.png', 'Adalah jenis minuman kopi murni tanpa menggunakan campuran bahan apapun seperti susu dan gula. Biasanya kopi ini digemari oleh orang yang suka dengan rasa kopi yang kuat. Tekstur kopinya yang pekat da', 4, 60000, 55000, '2021-01-06 06:41:22'),
(10, 4, 'Latte', 'produk/165WO2S4L4UVk.png', 'Sebelum kamu memesan jenis minuman kopi pastikan kamu mengetahui bahwa latte dan cappucino merupakan dua racikan berbeda. Bahkan dengan komposisi dan rasio yang berbeda. Latte biasanya menggunakan per', 5, 80000, 72000, '2021-01-06 06:42:37'),
(11, 4, 'Moccacino', 'produk/16HII5kYLOzmA.png', 'Merupakan minuman yang terdiri dari bahan berupa susu, kopi dan cokelat. Kopi yang digunakan biasanya jenis espresso yaitu kopi hitam. Kemudian dikombinasikan dengan cokelat bubuk, lalu diberikan whip', 5, 70000, 65000, '2021-01-06 06:43:58'),
(12, 6, 'Robusta', 'produk/16dxmfVrCsfTI.png', 'Robusta dan Arabika adalah dua jenis biji kopi yang paling umum dikonsumsi dan diproduksi di seluruh dunia. Keduanya memiliki kualitas yang tinggi dan nikmat buat dikonsumsi sehari-hari. Tapi, rupanya', 5, 70000, 65000, '2021-01-06 06:49:44');

SET IDENTITY_INSERT "produk" OFF;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

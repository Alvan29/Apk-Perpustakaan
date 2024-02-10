# Host: 127.0.0.1  (Version 5.5.5-10.4.32-MariaDB)
# Date: 2024-02-10 17:50:44
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,NULL,'admin','admin'),(2,NULL,'admin','admin'),(3,NULL,'admin','admin'),(4,NULL,'admin','admin'),(5,NULL,'admin','45453');

#
# Structure for table "buku"
#

DROP TABLE IF EXISTS `buku`;
CREATE TABLE `buku` (
  `Id_buku` varchar(6) NOT NULL DEFAULT '',
  `isbn` varchar(30) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `id_penulis` int(11) DEFAULT NULL,
  `id_penerbit` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `tahun_terbit` varchar(4) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `foto_sampul` varchar(100) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `nama_penulis` varchar(255) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "buku"
#

INSERT INTO `buku` VALUES ('TES-01',NULL,'eeeee',NULL,NULL,1,'1456',3,'buku_indonesia - Copy.jpg','gramed','gr',NULL,NULL),('TES-02',NULL,'abc',NULL,NULL,1,'1900',1,'download.jpg','Alvan','er',NULL,NULL),('TES-03',NULL,'def',NULL,NULL,2,'2000',5,'download - Copy.jpg','Alvan','aceng',NULL,NULL),('TES-04',NULL,'rrr',NULL,NULL,2,'2000',0,'1 - Copy.jpg','Alvan','ror',NULL,NULL);

#
# Structure for table "detail_peminjaman"
#

DROP TABLE IF EXISTS `detail_peminjaman`;
CREATE TABLE `detail_peminjaman` (
  `Id_peminjaman` varchar(6) NOT NULL DEFAULT '',
  `id_buku` varchar(6) DEFAULT NULL,
  `jumlah_pinjam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "detail_peminjaman"
#


#
# Structure for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `Id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES (1,'NOVEL'),(2,'FILSAFAT');

#
# Structure for table "peminjaman"
#

DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE `peminjaman` (
  `Id_peminjaman` int(6) NOT NULL AUTO_INCREMENT,
  `nis` varchar(6) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `batas_pinjam` date DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `status_pinjam` enum('Pinjam',' Kembali') DEFAULT NULL,
  `Id_buku` varchar(6) DEFAULT NULL,
  `jumlah_pinjam` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_peminjaman`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "peminjaman"
#

INSERT INTO `peminjaman` VALUES (4,'220069','2023-12-06','2023-12-14',NULL,'Pinjam','',3),(5,'220069','2023-12-06','2023-12-14',NULL,'','TES-02',1),(6,'220078','2023-12-09','2023-12-14',NULL,'Pinjam','TES-02',3),(7,'220034','2023-12-22','2023-12-30',NULL,'Pinjam','TES-04',5);

#
# Structure for table "penerbit"
#

DROP TABLE IF EXISTS `penerbit`;
CREATE TABLE `penerbit` (
  `Id_penerbit` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penerbit` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_penerbit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "penerbit"
#


#
# Structure for table "pengadaan"
#

DROP TABLE IF EXISTS `pengadaan`;
CREATE TABLE `pengadaan` (
  `Id_pengadaan` varchar(6) NOT NULL DEFAULT '',
  `tanggal_pengadaan` date DEFAULT NULL,
  `id_buku` varchar(6) DEFAULT NULL,
  `asal_buku` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_pengadaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "pengadaan"
#


#
# Structure for table "pengembalian"
#

DROP TABLE IF EXISTS `pengembalian`;
CREATE TABLE `pengembalian` (
  `Id_kembali` varchar(6) NOT NULL DEFAULT '',
  `id_pinjam` varchar(6) DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_kembali`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "pengembalian"
#


#
# Structure for table "penulis"
#

DROP TABLE IF EXISTS `penulis`;
CREATE TABLE `penulis` (
  `Id-penulis` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penulis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id-penulis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "penulis"
#


#
# Structure for table "siswa"
#

DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `nis` varchar(6) NOT NULL DEFAULT '',
  `nama_siswa` varchar(100) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(13) DEFAULT NULL,
  `foto_siswa` varchar(100) DEFAULT NULL,
  `kelas` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "siswa"
#

INSERT INTO `siswa` VALUES ('220034','agung','L','Cianjur','2023-12-07','ad','089089007899','siswa - Copy.jpg','X-2'),('220068','agung m','L','Cianjur','2023-12-21','jihho','089089007898','download - Copy.jpg','X-20'),('220069','Muhammad Alvan Al Ghifari','L','Cianjur','2006-11-13','Gadog Farmasi','0859109742295','siswa.jpg','X-1'),('220070','agung koko','L','Cianjur','2023-12-21','kokoko','098989878','download.jpg','X-11'),('220078','Jefri','L','Cianjur','2023-12-06','kfc','089089007890','rt.jpg','X-2'),('220123','Abdul','L','Cianjur','2024-02-09','dededed','089089007896','2.PNG','X-1');

#
# Structure for table "tanggal"
#

DROP TABLE IF EXISTS `tanggal`;
CREATE TABLE `tanggal` (
  `Id_tanggal` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "tanggal"
#


#
# Structure for table "temp_peminjaman"
#

DROP TABLE IF EXISTS `temp_peminjaman`;
CREATE TABLE `temp_peminjaman` (
  `Id_temp` int(11) NOT NULL AUTO_INCREMENT,
  `id_buku` varchar(6) DEFAULT NULL,
  `jumlah_pinjam` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_temp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

#
# Data for table "temp_peminjaman"
#


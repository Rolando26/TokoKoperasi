-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Waktu pembuatan: 10. Oktober 2019 jam 19:48
-- Versi Server: 5.0.41
-- Versi PHP: 5.2.2
-- 
-- toko
-- 

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT=0;
START TRANSACTION;

-- 
-- Database: `toko`
-- 

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `detail_pesanan`
-- 

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL auto_increment,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`,`produk_id`,`pesanan_id`),
  KEY `pesanan_id` (`pesanan_id`),
  KEY `produk_id` (`produk_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- 
-- Dumping data untuk tabel `detail_pesanan`
-- 

INSERT INTO `detail_pesanan` VALUES (8, 3, 41, 17);
INSERT INTO `detail_pesanan` VALUES (9, 2, 40, 17);
INSERT INTO `detail_pesanan` VALUES (10, 3, 40, 18);
INSERT INTO `detail_pesanan` VALUES (11, 1, 40, 19);
INSERT INTO `detail_pesanan` VALUES (12, 2, 40, 20);
INSERT INTO `detail_pesanan` VALUES (15, 1, 20, 23);
INSERT INTO `detail_pesanan` VALUES (16, 1, 20, 24);
INSERT INTO `detail_pesanan` VALUES (17, 1, 20, 25);
INSERT INTO `detail_pesanan` VALUES (18, 2, 40, 25);
INSERT INTO `detail_pesanan` VALUES (19, 3, 40, 25);
INSERT INTO `detail_pesanan` VALUES (20, 1, 4, 26);
INSERT INTO `detail_pesanan` VALUES (21, 1, 1, 27);
INSERT INTO `detail_pesanan` VALUES (22, 1, 1, 28);
INSERT INTO `detail_pesanan` VALUES (23, 1, 1, 29);
INSERT INTO `detail_pesanan` VALUES (24, 1, 1, 30);
INSERT INTO `detail_pesanan` VALUES (25, 1, 3, 31);
INSERT INTO `detail_pesanan` VALUES (26, 1, 1, 32);
INSERT INTO `detail_pesanan` VALUES (27, 4, 2, 33);
INSERT INTO `detail_pesanan` VALUES (28, 3, 3, 34);
INSERT INTO `detail_pesanan` VALUES (29, 2, 2, 35);
INSERT INTO `detail_pesanan` VALUES (30, 4, 2, 36);
INSERT INTO `detail_pesanan` VALUES (31, 4, 1, 37);
INSERT INTO `detail_pesanan` VALUES (32, 3, 1, 38);
INSERT INTO `detail_pesanan` VALUES (33, 3, 1, 39);
INSERT INTO `detail_pesanan` VALUES (34, 1, 2, 40);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `info_pembayaran`
-- 

CREATE TABLE `info_pembayaran` (
  `id` int(11) NOT NULL auto_increment,
  `info` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data untuk tabel `info_pembayaran`
-- 

INSERT INTO `info_pembayaran` VALUES (1, 'Transaksi pembayaran bisa di bayar DP 50% dulu sebelum hari H.\r\njika tidak maka transaksi akan di batalkan .\r\n\r\nPembayaran Transaksi Bisa Melalui Rekening Di Bawah Ini\r\nATM => ***** a/n Ning\r\n\r\nkemudian konfirmasi pembayaran bisa di menu pembayaran');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `kategori_produk`
-- 

CREATE TABLE `kategori_produk` (
  `id` int(3) NOT NULL auto_increment,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Dumping data untuk tabel `kategori_produk`
-- 

INSERT INTO `kategori_produk` VALUES (6, 'Sticker Nama', '');
INSERT INTO `kategori_produk` VALUES (7, 'Cetak Undangan', '');
INSERT INTO `kategori_produk` VALUES (8, 'Cetak Foto', '');
INSERT INTO `kategori_produk` VALUES (9, 'Cetak Mug', '');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `kontak`
-- 

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL auto_increment,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

-- 
-- Dumping data untuk tabel `kontak`
-- 

INSERT INTO `kontak` VALUES (122, '', 'ning@gmail.com', '', '');
INSERT INTO `kontak` VALUES (121, '', 'ning@gmail.com', '', '');
INSERT INTO `kontak` VALUES (120, '', 'ning@gmail.com', '', '');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `kota`
-- 

CREATE TABLE `kota` (
  `id` int(11) NOT NULL auto_increment,
  `nama` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data untuk tabel `kota`
-- 

INSERT INTO `kota` VALUES (2, 'Jakarta', 18000);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `laporan`
-- 

CREATE TABLE `laporan` (
  `id_pengeluaran` int(11) NOT NULL auto_increment,
  `nama_barang` varchar(100) NOT NULL,
  `Tanggal_pengeluaran` date NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY  (`id_pengeluaran`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- 
-- Dumping data untuk tabel `laporan`
-- 

INSERT INTO `laporan` VALUES (39, 'knnn', '2017-12-01', '555555', 4, 500000);
INSERT INTO `laporan` VALUES (40, 'bberas', '2017-12-15', '50000', 4, 50000);
INSERT INTO `laporan` VALUES (41, 'padi', '2017-12-02', '20', 3, 60);
INSERT INTO `laporan` VALUES (42, 'gas', '2017-12-04', '25000', 5, 125000);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `pembayaran`
-- 

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL auto_increment,
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','verified','','') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

-- 
-- Dumping data untuk tabel `pembayaran`
-- 

INSERT INTO `pembayaran` VALUES (17, 40, 9, '49eb6a44db57cba8d66b3404fa9f0ad4download.jpg', 64000, 'verified', 'asdasd', '2019-10-10 18:10:47');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `pesanan`
-- 

CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL auto_increment,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_digunakan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL,
  PRIMARY KEY  (`id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

-- 
-- Dumping data untuk tabel `pesanan`
-- 

INSERT INTO `pesanan` VALUES (40, '2019-10-10 19:10:12', '2019-10-11 00:00:00', 9, 'Fernanda', 'jakarta', 'Semarang', 40000, '082213672630', '1', 'lunas');

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `produk`
-- 

CREATE TABLE `produk` (
  `id` int(4) NOT NULL auto_increment,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `kategori_produk_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`,`kategori_produk_id`),
  KEY `kategori_produk_id` (`kategori_produk_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data untuk tabel `produk`
-- 

INSERT INTO `produk` VALUES (1, 'Cetak Undangan', 'asdasdasd', '49eb6a44db57cba8d66b3404fa9f0ad4p24.jpg', 12000, 7);
INSERT INTO `produk` VALUES (2, 'Cetak Foto', 'Cetak Foto', '49eb6a44db57cba8d66b3404fa9f0ad4p29.jpg', 500, 8);
INSERT INTO `produk` VALUES (3, 'Sticker Nama', 'Fruid salad spesial ', '49eb6a44db57cba8d66b3404fa9f0ad4p30.jpg', 7500, 6);
INSERT INTO `produk` VALUES (4, 'Cetak Mug', 'asdasd', '49eb6a44db57cba8d66b3404fa9f0ad4p31.jpg', 1000, 9);
INSERT INTO `produk` VALUES (7, 'Paket 2 (3x4)', 'asdasd', '49eb6a44db57cba8d66b3404fa9f0ad4dark-anime-1.jpg', 10000, 8);

-- --------------------------------------------------------

-- 
-- Struktur dari tabel `user`
-- 

CREATE TABLE `user` (
  `id` int(5) NOT NULL auto_increment,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('user','admin') NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- 
-- Dumping data untuk tabel `user`
-- 

INSERT INTO `user` VALUES (2, 'Jokowi', 'joko@gmail.com', '08985432330', 'jakarta 1', '7d00ff54a263fe80825b9297804a982c', 'user');
INSERT INTO `user` VALUES (6, 'aku', 'aku@gmail.com', '12345678', 'jember', '89ccfac87d8d06db06bf3211cb2d69ed', 'user');
INSERT INTO `user` VALUES (7, 'Fernanda', 'fernanda@gmail.com', '082213672630', 'perum', '123321', 'admin');
INSERT INTO `user` VALUES (8, 'fernanda', 'sad@gmail.com', '081212120899', 'rusun', 'c8837b23ff8aaa8a2dde915473ce0991', 'user');
INSERT INTO `user` VALUES (9, 'ning', 'ning@gmail.com', '082213672630', 'jakarta', 'c8837b23ff8aaa8a2dde915473ce0991', 'admin');

COMMIT;

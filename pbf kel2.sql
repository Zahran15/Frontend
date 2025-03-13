/*
 Navicat Premium Dump SQL

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : pbf kel2

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 13/03/2025 10:18:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dosen_wali
-- ----------------------------
DROP TABLE IF EXISTS `dosen_wali`;
CREATE TABLE `dosen_wali`  (
  `nidn` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`nidn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dosen_wali
-- ----------------------------
INSERT INTO `dosen_wali` VALUES ('0987654321', 'Pak Abdau', 'pakabdau@gmail.com');
INSERT INTO `dosen_wali` VALUES ('0987654331', 'Pak Lutfi', 'paklutfi@gmail.com');
INSERT INTO `dosen_wali` VALUES ('0987654341', 'Pak Andes', 'pakandes@gmail.com');
INSERT INTO `dosen_wali` VALUES ('0987654351', 'Pak Annas', 'pakannas@gmail.com');
INSERT INTO `dosen_wali` VALUES ('0987654361', 'Pak Wahyu', 'pakwahyu@gmail.com');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa`  (
  `nim` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nidn` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nim`) USING BTREE,
  INDEX `mahasiswa_ibfk_1`(`nidn` ASC) USING BTREE,
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`nidn`) REFERENCES `dosen_wali` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('230302021', 'Alifia', 'fia@gmail.com', 'jalan pisang', '0987654321');
INSERT INTO `mahasiswa` VALUES ('230302022', 'Fasha', 'fasha@gmail.com', 'jalan mangga', '0987654331');
INSERT INTO `mahasiswa` VALUES ('230302023', 'Ferina', 'ferina@gmail.com', 'jalan nangka', '0987654341');
INSERT INTO `mahasiswa` VALUES ('230302024', 'Putri', 'putriaul@gmail.com', 'jalan pepaya', '0987654351');
INSERT INTO `mahasiswa` VALUES ('230302025', 'Zahran', 'zahransyah@gmail.com', 'jalan melon', '0987654361');

-- ----------------------------
-- Table structure for notifikasi
-- ----------------------------
DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE `notifikasi`  (
  `id_notifikasi` int NOT NULL AUTO_INCREMENT,
  `tipe` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_kirim` date NOT NULL,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nim` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nidn` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_notifikasi`) USING BTREE,
  INDEX `notifikasi_ibfk_1`(`nim` ASC) USING BTREE,
  INDEX `notifikasi_ibfk_2`(`nidn` ASC) USING BTREE,
  CONSTRAINT `notifikasi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `notifikasi_ibfk_2` FOREIGN KEY (`nidn`) REFERENCES `dosen_wali` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifikasi
-- ----------------------------
INSERT INTO `notifikasi` VALUES (1, 'Pengumuman', '2025-03-10', 'Jadwal pertemuan perwalian telah tersedia. Silakan cek portal akademik.', '230302021', '0987654321');
INSERT INTO `notifikasi` VALUES (2, 'Pemberitahuan', '2025-03-11', 'Harap segera menghubungi dosen wali untuk pertemuan perwalian.', '230302022', '0987654331');
INSERT INTO `notifikasi` VALUES (3, 'Informasi', '2025-03-12', 'Pengisian KRS akan dibuka setelah pertemuan perwalian.', '230302023', '0987654341');
INSERT INTO `notifikasi` VALUES (4, 'Reminder', '2025-03-13', 'Jangan lupa membawa berkas akademik saat pertemuan perwalian.', '230302024', '0987654351');
INSERT INTO `notifikasi` VALUES (5, 'Peringatan', '2025-03-14', 'Konfirmasi kehadiran perwalian sebelum batas waktu yang ditentukan.', '230302025', '0987654361');
INSERT INTO `notifikasi` VALUES (6, 'Pengumuman', '2025-03-10', 'Jadwal pertemuan perwalian telah tersedia. Silakan cek portal akademik.', '230302021', '0987654321');
INSERT INTO `notifikasi` VALUES (7, 'Pemberitahuan', '2025-03-11', 'Harap segera menghubungi dosen wali untuk pertemuan perwalian.', '230302022', '0987654331');
INSERT INTO `notifikasi` VALUES (8, 'Informasi', '2025-03-12', 'Pengisian KRS akan dibuka setelah pertemuan perwalian.', '230302023', '0987654341');
INSERT INTO `notifikasi` VALUES (9, 'Reminder', '2025-03-13', 'Jangan lupa membawa berkas akademik saat pertemuan perwalian.', '230302024', '0987654351');
INSERT INTO `notifikasi` VALUES (10, 'Peringatan', '2025-03-14', 'Konfirmasi kehadiran perwalian sebelum batas waktu yang ditentukan.', '230302025', '0987654361');
INSERT INTO `notifikasi` VALUES (11, 'Pengumuman', '2025-03-10', 'Jadwal pertemuan perwalian telah tersedia. Silakan cek portal akademik.', '230302021', '0987654321');
INSERT INTO `notifikasi` VALUES (12, 'Pemberitahuan', '2025-03-11', 'Harap segera menghubungi dosen wali untuk pertemuan perwalian.', '230302022', '0987654331');
INSERT INTO `notifikasi` VALUES (13, 'Informasi', '2025-03-12', 'Pengisian KRS akan dibuka setelah pertemuan perwalian.', '230302023', '0987654341');
INSERT INTO `notifikasi` VALUES (14, 'Reminder', '2025-03-13', 'Jangan lupa membawa berkas akademik saat pertemuan perwalian.', '230302024', '0987654351');
INSERT INTO `notifikasi` VALUES (15, 'Peringatan', '2025-03-14', 'Konfirmasi kehadiran perwalian sebelum batas waktu yang ditentukan.', '230302025', '0987654361');

-- ----------------------------
-- Table structure for pertemuan_perwalian
-- ----------------------------
DROP TABLE IF EXISTS `pertemuan_perwalian`;
CREATE TABLE `pertemuan_perwalian`  (
  `id_pertemuan` int NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `topik` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `saran_akademik` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nim` char(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nidn` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bulan_tahun` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci GENERATED ALWAYS AS (concat(year(`tanggal`),'-',lpad(month(`tanggal`),2,'0'))) STORED NULL,
  PRIMARY KEY (`id_pertemuan`) USING BTREE,
  UNIQUE INDEX `nim`(`nim` ASC, `nidn` ASC, `tanggal` ASC) USING BTREE,
  INDEX `pertemuan_ibfk_2`(`nidn` ASC) USING BTREE,
  CONSTRAINT `pertemuan_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pertemuan_ibfk_2` FOREIGN KEY (`nidn`) REFERENCES `dosen_wali` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pertemuan_perwalian
-- ----------------------------
INSERT INTO `pertemuan_perwalian` VALUES (1, '2025-03-10', 'Rencana Studi Semester Depan', 'Mahasiswa ingin mengambil 22 SKS.', 'Disarankan mengambil maksimal 20 SKS.', '230302021', '0987654321', DEFAULT);
INSERT INTO `pertemuan_perwalian` VALUES (2, '2025-03-11', 'Evaluasi Akademik', 'Mahasiswa mengalami kesulitan di mata kuliah Statistika.', 'Dianjurkan mengikuti bimbingan tambahan.', '230302022', '0987654331', DEFAULT);
INSERT INTO `pertemuan_perwalian` VALUES (3, '2025-03-12', 'Perencanaan Skripsi', 'Mahasiswa tertarik dengan topik AI.', 'Disarankan membaca jurnal terbaru terkait.', '230302023', '0987654341', DEFAULT);
INSERT INTO `pertemuan_perwalian` VALUES (4, '2025-03-13', 'Magang dan Karier', 'Mahasiswa ingin magang di perusahaan teknologi.', 'Dianjurkan membuat CV dan portofolio lebih awal.', '230302024', '0987654351', DEFAULT);
INSERT INTO `pertemuan_perwalian` VALUES (5, '2025-03-14', 'Keseimbangan Akademik dan Organisasi', 'Mahasiswa aktif di organisasi kampus.', 'Harus mengatur waktu dengan baik agar akademik tidak terganggu.', '230302025', '0987654361', DEFAULT);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Anda', 'admin@gmail.com', 'admin123', 'admin');
INSERT INTO `user` VALUES (2, 'Alifia', 'fia@gmail.com', '112233', 'dosen wali');
INSERT INTO `user` VALUES (3, 'Fasha', 'fasha@gmail.com', '223344', 'dosen wali');
INSERT INTO `user` VALUES (4, 'Ferina', 'ferina@gmail.com', '334455', 'mahasiswa');
INSERT INTO `user` VALUES (5, 'Putri', 'putri@gmail.com', '445566', 'mahasiswa');
INSERT INTO `user` VALUES (6, 'Zahran', 'zahran@gmail.com', '556677', 'mahasiswa');

-- ----------------------------
-- View structure for v_mahasiswa
-- ----------------------------
DROP VIEW IF EXISTS `v_mahasiswa`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_mahasiswa` AS select `mahasiswa`.`nama` AS `nama_mahasiswa`,`dosen_wali`.`nama` AS `nama_dosen`,`mahasiswa`.`nim` AS `nim`,`mahasiswa`.`email` AS `email`,`mahasiswa`.`alamat` AS `alamat` from (`mahasiswa` join `dosen_wali` on(`mahasiswa`.`nidn` = `dosen_wali`.`nidn`));

-- ----------------------------
-- View structure for v_notifikasi
-- ----------------------------
DROP VIEW IF EXISTS `v_notifikasi`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_notifikasi` AS select `mahasiswa`.`nama` AS `nama_mahasiswa`,`dosen_wali`.`nama` AS `nama_dosen`,`notifikasi`.`tipe` AS `tipe`,`notifikasi`.`tanggal_kirim` AS `tanggal_kirim`,`notifikasi`.`pesan` AS `pesan` from ((`notifikasi` join `mahasiswa` on(`notifikasi`.`nim` = `mahasiswa`.`nim`)) join `dosen_wali` on(`mahasiswa`.`nidn` = `dosen_wali`.`nidn` and `notifikasi`.`nidn` = `dosen_wali`.`nidn`));

-- ----------------------------
-- View structure for v_pertemuan_perwalian
-- ----------------------------
DROP VIEW IF EXISTS `v_pertemuan_perwalian`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_pertemuan_perwalian` AS select `mahasiswa`.`nama` AS `nama_mahasiswa`,`dosen_wali`.`nama` AS `nama_dosen`,`pertemuan_perwalian`.`tanggal` AS `tanggal`,`pertemuan_perwalian`.`topik` AS `topik`,`pertemuan_perwalian`.`catatan` AS `catatan`,`pertemuan_perwalian`.`saran_akademik` AS `saran_akademik`,`pertemuan_perwalian`.`bulan_tahun` AS `bulan_tahun` from ((`pertemuan_perwalian` join `dosen_wali` on(`pertemuan_perwalian`.`nidn` = `dosen_wali`.`nidn`)) join `mahasiswa` on(`dosen_wali`.`nidn` = `mahasiswa`.`nidn` and `pertemuan_perwalian`.`nim` = `mahasiswa`.`nim`));

SET FOREIGN_KEY_CHECKS = 1;

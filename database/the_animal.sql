-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2022 lúc 06:50 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `the_animal`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bao_ton`
--

CREATE TABLE `bao_ton` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loai_tt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinh_trang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinhvat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bao_ton`
--

INSERT INTO `bao_ton` (`id`, `loai_tt`, `tinh_trang`, `sinhvat_id`, `created_at`, `updated_at`) VALUES
(1, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(2, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Sắp nguy cấp', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(3, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(4, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(5, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(6, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(7, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(8, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(9, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(10, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(11, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(12, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(13, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(14, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(15, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(16, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(17, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(18, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(19, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(20, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(21, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(22, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(23, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(24, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(25, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(26, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(27, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(28, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(29, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(30, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(31, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(32, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(33, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(34, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(35, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(36, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(37, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(38, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(39, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(40, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(41, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(42, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(43, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(44, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(45, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(46, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Sắp nguy cấp', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(47, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Nhóm II: hạn chế khai thác, sử dụng vì mục đích thương mại, gồm những loài thực vật rừng, động vật rừng có giá trị về khoa học, môi trường hoặc có giá trị cao về kinh tế, số luợng quần thể còn ít trong tự nhiên hoặc có nguy cơ tuyệt chủng.', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(48, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Phụ lục 2: những loài chưa bị đe dọa nhưng có thể dẫn đến tuyệt chủng.', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(49, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(50, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(51, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(52, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(53, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(54, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(55, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(56, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'ple', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(57, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(58, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(59, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(60, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(61, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(62, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(63, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(64, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(65, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(66, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(67, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(68, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(69, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(70, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(71, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(72, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(73, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(74, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(75, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(76, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(77, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(78, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(79, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(80, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(81, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(82, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(83, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(84, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(85, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(86, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(87, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(88, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(89, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(90, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(91, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(92, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(93, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(94, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(95, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(96, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(97, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(98, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(99, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(100, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(101, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(102, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(103, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(104, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(105, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(106, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(107, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(108, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(109, 'Tình trạng bảo tồn theo IUCN', 'LC (Least concern)', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(110, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(111, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(112, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(113, 'Tình trạng bảo tồn theo IUCN', 'Không có giá trị bảo tồn', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(114, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Không có giá trị bảo tồn', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(115, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Không nằm trong danh mục bảo tồn', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(116, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Không có trong danh mục', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(117, 'Tình trạng bảo tồn theo IUCN', 'CR (Critically endangered)', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(118, 'Tình trạng bảo tồn theo sách đỏ Việt Nam', 'Sắp nguy cấp', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(119, 'Tình trạng bảo tồn theo Nghị định 32/2006/NĐCP', 'Nhóm II: hạn chế khai thác, sử dụng vì mục đích thương mại, gồm những loài thực vật rừng, động vật rừng có giá trị về khoa học, môi trường hoặc có giá trị cao về kinh tế, số luợng quần thể còn ít trong tự nhiên hoặc có nguy cơ tuyệt chủng.', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(120, 'Tình trạng bảo tồn theo CITES (40/2013/TT-BNNPTNT)', 'Phụ lục 2: những loài chưa bị đe dọa nhưng có thể dẫn đến tuyệt chủng.', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bo`
--

CREATE TABLE `bo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_bo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bo`
--

INSERT INTO `bo` (`id`, `ten_bo`, `lop_id`, `created_at`, `updated_at`) VALUES
(1, 'ANURA (Fischer, 1813)', 1, NULL, NULL),
(2, 'GYMNOPHIONA (Muller, 1832)', 1, NULL, NULL),
(3, 'SQUAMATA OPPEL, 18411', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho`
--

CREATE TABLE `ho` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_ho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ho`
--

INSERT INTO `ho` (`id`, `ten_ho`, `bo_id`, `created_at`, `updated_at`) VALUES
(1, 'Agamidae Gray, 1827', 3, NULL, NULL),
(2, 'Bufonidae Gray, 1825', 1, NULL, NULL),
(3, 'Dicroglossidae Anderson, 1871', 1, NULL, NULL),
(4, 'Gekkonidae Gray, 1825', 3, NULL, NULL),
(5, 'Ichthyophiidae Taylor, 1968', 2, NULL, NULL),
(6, 'Lacertidae Gray, 1825', 3, NULL, NULL),
(7, 'Microhylidae', 1, NULL, NULL),
(8, 'Pythonidae Fitzinger, 1826', 3, NULL, NULL),
(9, 'Ranidae Rafinesque, 1814', 1, NULL, NULL),
(10, 'Rhacophoridae Hoffman, 1932', 1, NULL, NULL),
(11, 'Scincidae Opell, 1811', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_lop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nganh_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`id`, `ten_lop`, `nganh_id`, `created_at`, `updated_at`) VALUES
(1, 'AMPHIBIA (Linnaeus, 1758)', 1, NULL, NULL),
(2, 'REPTILIA LAURENTI, 1768', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinhvat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media`
--

INSERT INTO `media` (`id`, `media_type`, `ten_media`, `sinhvat_id`, `created_at`, `updated_at`) VALUES
(1, 'image', '1. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img1.JPG', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(2, 'image', '1. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img2.JPG', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(3, 'image', '1. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img3.JPG', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(4, 'image', '1. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img4.JPG', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(5, 'image', '1. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img5.JPG', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(6, 'image', '2. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img1.JPG', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(7, 'image', '2. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img2.JPG', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(8, 'image', '2. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img3.JPG', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(9, 'image', '2. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img4.JPG', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(10, 'image', '3. Kaloula pulchra Gray, 1831-ỄN ương/img1.JPG', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(11, 'image', '3. Kaloula pulchra Gray, 1831-ỄN ương/img2.JPG', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(12, 'image', '4. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/img1.JPG', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(13, 'image', '4. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/img2.JPG', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(14, 'image', '4. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/img3.JPG', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(15, 'image', '4. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/img4.JPG', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(16, 'image', '4. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/img5.JPG', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(17, 'image', '5. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/img1.JPG', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(18, 'image', '5. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/img2.JPG', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(19, 'image', '5. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/img3.JPG', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(20, 'image', '5. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/img4.JPG', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(21, 'image', '5. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/img5.JPG', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(22, 'image', '6. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/img1.JPG', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(23, 'image', '6. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/img2.JPG', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(24, 'image', '6. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/img3.JPG', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(25, 'image', '6. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/img4.JPG', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(26, 'image', '6. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/img5.JPG', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(27, 'image', '7. Calotes versicolor (Daudin, 1802)-Nhông xanh, Nhông hàng rào, Kì nhông/img1.JPG', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(28, 'image', '7. Calotes versicolor (Daudin, 1802)-Nhông xanh, Nhông hàng rào, Kì nhông/img2.JPG', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(29, 'image', '7. Calotes versicolor (Daudin, 1802)-Nhông xanh, Nhông hàng rào, Kì nhông/img3.JPG', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(30, 'image', '7. Calotes versicolor (Daudin, 1802)-Nhông xanh, Nhông hàng rào, Kì nhông/img4.JPG', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(31, 'image', '7. Calotes versicolor (Daudin, 1802)-Nhông xanh, Nhông hàng rào, Kì nhông/img5.JPG', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(32, 'image', '8. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/img1.JPG', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(33, 'image', '8. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/img2.JPG', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(34, 'image', '8. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/img3.JPG', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(35, 'image', '8. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/img4.JPG', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(36, 'image', '8. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/img5.JPG', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(37, 'image', '9. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/img1.JPG', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(38, 'image', '9. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/img2.JPG', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(39, 'image', '9. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/img3.JPG', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(40, 'image', '9. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/img4.JPG', 9, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(41, 'image', '9. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/img5.JPG', 9, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(42, 'image', '10. Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836-Thạch sùng đuôi sần/img1.JPG', 10, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(43, 'image', '10. Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836-Thạch sùng đuôi sần/img2.JPG', 10, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(44, 'image', '10. Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836-Thạch sùng đuôi sần/img3.JPG', 10, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(45, 'image', '11. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img1.JPG', 11, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(46, 'image', '11. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img2.JPG', 11, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(47, 'image', '11. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img3.JPG', 11, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(48, 'image', '11. Duttaphrynus melanostictus (Schneider, 1799)-Cóc nhà/img4.JPG', 11, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(49, 'image', '12. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img1.JPG', 12, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(50, 'image', '12. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img2.JPG', 12, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(51, 'image', '12. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img3.JPG', 12, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(52, 'image', '12. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img4.JPG', 12, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(53, 'image', '12. Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012-Ếch giun nguyễn/img5.JPG', 12, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(54, 'image', '13. Fejervarya limnocharis (Gravenhorst, 1829)-Nhái Ngóe/img1.JPG', 13, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(55, 'image', '13. Fejervarya limnocharis (Gravenhorst, 1829)-Nhái Ngóe/img2.JPG', 13, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(56, 'image', '13. Fejervarya limnocharis (Gravenhorst, 1829)-Nhái Ngóe/img3.JPG', 13, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(57, 'image', '13. Fejervarya limnocharis (Gravenhorst, 1829)-Nhái Ngóe/img4.JPG', 13, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(58, 'image', '13. Fejervarya limnocharis (Gravenhorst, 1829)-Nhái Ngóe/img5.JPG', 13, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(59, 'image', '14. Fejervarya cancrivora (Gravenhorst, 1829)-Ếch cua/img1.JPG', 14, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(60, 'image', '14. Fejervarya cancrivora (Gravenhorst, 1829)-Ếch cua/img2.JPG', 14, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(61, 'image', '14. Fejervarya cancrivora (Gravenhorst, 1829)-Ếch cua/img3.JPG', 14, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(62, 'image', '15. Fejervarya sp-Nhái cơm/Img_1.JPG', 15, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(63, 'image', '15. Fejervarya sp-Nhái cơm/Img_2.JPG', 15, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(64, 'image', '15. Fejervarya sp-Nhái cơm/Img_3.JPG', 15, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(65, 'image', '15. Fejervarya sp-Nhái cơm/Img_4.JPG', 15, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(66, 'image', '15. Fejervarya sp-Nhái cơm/Img_5.JPG', 15, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(67, 'image', '16. Hoplobatrachus rugulosus (Wiegmann, 1834)-Ếch đồng/Img_1.JPG', 16, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(68, 'image', '16. Hoplobatrachus rugulosus (Wiegmann, 1834)-Ếch đồng/Img_2.JPG', 16, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(69, 'image', '16. Hoplobatrachus rugulosus (Wiegmann, 1834)-Ếch đồng/Img_3.JPG', 16, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(70, 'image', '16. Hoplobatrachus rugulosus (Wiegmann, 1834)-Ếch đồng/Img_4.JPG', 16, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(71, 'image', '17. Occidozyga lima (Gravenhorst, 1829)-Cóc nước sần/Img_1.JPG', 17, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(72, 'image', '17. Occidozyga lima (Gravenhorst, 1829)-Cóc nước sần/Img_2.JPG', 17, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(73, 'image', '17. Occidozyga lima (Gravenhorst, 1829)-Cóc nước sần/Img_3.JPG', 17, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(74, 'image', '18. Occidozyga martensii (Peters, 1867)-Cóc nước marten/Img_1.JPG', 18, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(75, 'image', '18. Occidozyga martensii (Peters, 1867)-Cóc nước marten/Img_2.JPG', 18, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(76, 'image', '18. Occidozyga martensii (Peters, 1867)-Cóc nước marten/Img_3.JPG', 18, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(77, 'image', '19. Kaloula pulchra Gray, 1831-Ễn ương/Img_1.JPG', 19, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(78, 'image', '19. Kaloula pulchra Gray, 1831-Ễn ương/Img_2.JPG', 19, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(79, 'image', '20. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/Img_1.JPG', 20, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(80, 'image', '20. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/Img_2.JPG', 20, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(81, 'image', '20. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/Img_3.JPG', 20, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(82, 'image', '20. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/Img_4.JPG', 20, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(83, 'image', '20. Microhyla heymonsii Vogt, 1911-Nhái bầu heymon/Img_5.JPG', 20, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(84, 'image', '21. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/Img_1.JPG', 21, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(85, 'image', '21. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/Img_2.JPG', 21, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(86, 'image', '21. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/Img_3.JPG', 21, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(87, 'image', '21. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/Img_4.JPG', 21, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(88, 'image', '21. Hylarana erythraea (Schlegel, 1837)-Chàng xanh/Img_5.JPG', 21, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(89, 'image', '22. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/Img_1.JPG', 22, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(90, 'image', '22. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/Img_2.JPG', 22, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(91, 'image', '22. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/Img_3.JPG', 22, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(92, 'image', '22. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/Img_4.JPG', 22, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(93, 'image', '22. Polypedates megacephalus Hallowell, 1861-Ếch cây mép trắng/Img_5.JPG', 22, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(94, 'image', '23. Calotes versicolor (Daudin, 1802)-Nhông hàng rào/Img_1.JPG', 23, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(95, 'image', '23. Calotes versicolor (Daudin, 1802)-Nhông hàng rào/Img_2.JPG', 23, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(96, 'image', '23. Calotes versicolor (Daudin, 1802)-Nhông hàng rào/Img_3.JPG', 23, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(97, 'image', '23. Calotes versicolor (Daudin, 1802)-Nhông hàng rào/Img_4.JPG', 23, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(98, 'image', '23. Calotes versicolor (Daudin, 1802)-Nhông hàng rào/Img_5.JPG', 23, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(99, 'image', '24. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/Img_1.JPG', 24, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(100, 'image', '24. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/Img_2.JPG', 24, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(101, 'image', '24. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/Img_3.JPG', 24, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(102, 'image', '24. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/Img_4.JPG', 24, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(103, 'image', '24. Gehyra multilata (Weigmann,1835)-Thằn lằn 4 móng/Img_5.JPG', 24, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(104, 'image', '25. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/Img_1.JPG', 25, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(105, 'image', '25. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/Img_2.JPG', 25, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(106, 'image', '25. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/Img_3.JPG', 25, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(107, 'image', '25. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/Img_4.JPG', 25, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(108, 'image', '25. Hemidactylus garnotii (Conant and Collins, 1991)-Thạch sùng garnot/Img_5.JPG', 25, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(109, 'image', '26. Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836-Thạch sùng đuôi sần/Img_1.JPG', 26, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(110, 'image', '26. Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836-Thạch sùng đuôi sần/Img_2.JPG', 26, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(111, 'image', '26. Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836-Thạch sùng đuôi sần/Img_3.JPG', 26, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(112, 'image', '27. Hemidactylus platyurus (Schneider, 1797)-Thạch sùng đuôi dẹp/Img_1.JPG', 27, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(113, 'image', '27. Hemidactylus platyurus (Schneider, 1797)-Thạch sùng đuôi dẹp/Img_2.JPG', 27, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(114, 'image', '27. Hemidactylus platyurus (Schneider, 1797)-Thạch sùng đuôi dẹp/Img_3.JPG', 27, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(115, 'image', '27. Hemidactylus platyurus (Schneider, 1797)-Thạch sùng đuôi dẹp/Img_4.JPG', 27, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(116, 'image', '28. Takydromus sexlineatus Daudin, 1802-Thằn lằn đuôi dài/Img_1.JPG', 28, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(117, 'image', '28. Takydromus sexlineatus Daudin, 1802-Thằn lằn đuôi dài/Img_2.JPG', 28, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(118, 'image', '28. Takydromus sexlineatus Daudin, 1802-Thằn lằn đuôi dài/Img_3.JPG', 28, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(119, 'image', '28. Takydromus sexlineatus Daudin, 1802-Thằn lằn đuôi dài/Img_4.JPG', 28, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(120, 'image', '28. Takydromus sexlineatus Daudin, 1802-Thằn lằn đuôi dài/Img_5.JPG', 28, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(121, 'image', '29. Eutropis multifasciata (Kuhl, 1820)-Thằn lằn bóng hoa/Img_1.JPG', 29, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(122, 'image', '29. Eutropis multifasciata (Kuhl, 1820)-Thằn lằn bóng hoa/Img_2.JPG', 29, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(123, 'image', '29. Eutropis multifasciata (Kuhl, 1820)-Thằn lằn bóng hoa/Img_3.JPG', 29, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(124, 'image', '29. Eutropis multifasciata (Kuhl, 1820)-Thằn lằn bóng hoa/Img_4.JPG', 29, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(125, 'image', '29. Eutropis multifasciata (Kuhl, 1820)-Thằn lằn bóng hoa/Img_5.JPG', 29, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(126, 'image', '30. Python molurus (Linnaeus, 1758)-Trăn lưới/Img_1.JPG', 30, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(127, 'image', '30. Python molurus (Linnaeus, 1758)-Trăn lưới/Img_2.JPG', 30, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(128, 'image', '30. Python molurus (Linnaeus, 1758)-Trăn lưới/Img_3.JPG', 30, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(129, 'image', '30. Python molurus (Linnaeus, 1758)-Trăn lưới/Img_4.JPG', 30, '2022-04-24 21:42:54', '2022-04-24 21:42:54'),
(130, 'image', '30. Python molurus (Linnaeus, 1758)-Trăn lưới/Img_5.JPG', 30, '2022-04-24 21:42:54', '2022-04-24 21:42:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(109, '2014_10_12_000000_create_users_table', 1),
(110, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(111, '2022_04_06_152521_create_nganh_table', 1),
(112, '2022_04_06_152531_create_lop_table', 1),
(113, '2022_04_06_152538_create_bo_table', 1),
(114, '2022_04_06_152546_create_ho_table', 1),
(115, '2022_04_06_152547_create_sinh_vat_table', 1),
(116, '2022_04_06_152637_create_media_table', 1),
(117, '2022_04_06_153405_create_toa_do_table', 1),
(118, '2022_04_06_153507_create_bao_ton_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nganh`
--

CREATE TABLE `nganh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_nganh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nganh`
--

INSERT INTO `nganh` (`id`, `ten_nganh`, `created_at`, `updated_at`) VALUES
(1, 'Động vật có dây sống (chordata)', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinh_vat`
--

CREATE TABLE `sinh_vat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_khoa_hoc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_tieng_viet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_dia_phuong` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta_hinh_thai` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta_sinh_thai` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_tri_su_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinh_canh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinh_vat`
--

INSERT INTO `sinh_vat` (`id`, `ten_khoa_hoc`, `ten_tieng_viet`, `ten_dia_phuong`, `mo_ta_hinh_thai`, `mo_ta_sinh_thai`, `gia_tri_su_dung`, `sinh_canh`, `ho_id`, `created_at`, `updated_at`) VALUES
(1, 'Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012', 'Ếch giun nguyễn', 'Rắn trun đĩa', 'Đặc điểm chẩn loại: cơ thể tròn, dẹt mặt bụng; chóp đuôi cùn, không có dạng mũ; không có đốm màu vàng mặt bụng; đầu rộng nhất ở góc mép miệng, hẹp dần về trước; mút mõm tròn; lỗ mũi nằm gần bờ trước mép miệng; số vòng quanh thân: 312 – 318; sọc vàng rộng chạy liên tục từ sau mắt đến huyệt (Nishikawa et al.,2012). \n	Đặc điểm hình thái: SVL 201,3 mm. Dài đuôi: 2,6 – 3,5; rộng đuôi: 2,8 – 3,5. Rộng đầu (HW: 6,6). Dài đầu hơn rộng đầu (HL/HW: 1,25-1,47). Cơ thể hơi tròn, dài, dạng rắn. Đầu dẹp, láng; rộng nhất ở mép miệng, hẹo về phía đầu. Mút mõm tròn; dài mõm bằng với ngang đầu ở vị trí mắt. Mắt nhỏ, không mi mắt, có một đôi râu (tentacle) ngắn nằm phía trước mắt. Hai bên thân có sọc  màu vàng bắt đầu từ sau mép miệng đến lỗ huyệt. Số nếp gấp quanh thân: 280 – 300; ở đuôi: 7-8. Đuôi ngắn hơi dẹt ở mặt bụng, phần đỉnh cùn, không có đốm màu cam hay vàng  ở mặt bụng. Mặt lưng có màu tím đen, bụng màu hoa cà nhạt, hai bên sườn có sọc màu vàng liên tục, không đứt quãng, chạy từ khoảng giữa hàm trên (mấu xúc - tu) đến gần mút đuôi. Mắt có viền mỏng màu trắng đục.\n	Ghi chú:  Loài Ichthyophis bannanicus phân biệt với Ichthyophis nguyenorum dựa trên các đặc điểm: số nếp vòng quanh cơ thể của I. nguyenorum (312 – 318) ít hơn so với I. bannanicus (340); sọc bên thân của I. nguyenorum kéo dài đến mút đuôi so với sọc bị đứt quãng ở phía sau đuôi của I. bannanicus Nishikawa et al. (2012).', 'Sống ở các vực nước (ao, vũng...) có nhiều bùn và lá mục, hay các khu vực đất nông nghiệp. Thức ăn gồm côn trùng, giun đất, nhện và những loài không xương sống nhỏ khác.', 'Chưa xác định', 'Rừng tràm đặc dụng,  rừng tràm trồng', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(2, 'Duttaphrynus melanostictus (Schneider, 1799)', 'Cóc nhà', 'Cóc', 'Đặc điểm chẩn loại: Kích thước cơ thể trung bình, mắt khỏe; phía trên ổ mắt, phía sau ổ mắt, phía trên màng nhĩ và phía trước mắt có nhiều gai nhọn; mõm nhọn, tuyến mang tai lớn, có chều dài hơn chiều rộng; cơ thể có nhiều nốt sần lớn và nhỏ; ngón tay thứ I dài hơn ngón tay thứ II; khớp cổ chân chạm giữa tuyến mang tai khi xếp dọc theo thân', 'Duttaphrynus melanostictus là loài phổ biến, được bắt gặp trên sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác; phân bố rộng khắp khu vực khảo sát .Là loài hoạt động về đêm, kiếm mồi trên nền rừng và trú ngụ trong các hốc cây. Đầu mùa mưa thường tập trung ở các vũng nước đọng trong khu vực và các con đực gọi bạn tình suốt từ tối đến khoảng 8 giờ sáng.', 'Làm thực phẩm', 'Rừng tràm đặc dụng, rừng tràm khai thác', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(3, 'Kaloula pulchra Gray, 1831', 'ỄN ương', 'Ễn ương', 'Đặc điểm chẩn loại: Ngón chi dẹp và đầu ngón tay mở rộng; toàn bộ mặt lưng màu nâu với 2 dãy màu vàng sáng hoặc vàng nâu chạy dọc từ giữa 2 mắt qua phía trên mắt và kéo dai đến háng; trên ngón có vết tích của màng bơi.\nĐặc điểm hình thái: Kích thước trung bình (SVL: 80.3). Cơ thể có hình tam giác khi nhìn từ bên trên, đầu ngắn so với chiều dài thân (HL/SVL: 0,24); chiều dài đầu nhỏ hơn chiều rộng đầu (HL/HW: 0,74); khóe mắt nhỏ; vùng má xiên và hướng lên; mũi tù và ngắn, lỗ mũi nằm gần chóp mỏ và hướng sang 2 bên; khoảng cách giữa hai lỗ mũi tương đương mí mắt trên; màng nhĩ không rõ ràng; nếp gấp mờ vòng qua chẩm đến sau mắt và kết thúc ở ngay trước cánh tay.\nDa trơn láng với các nốt sần rải rác trên lưng, nhiều nhất ở phần dưới của mặt lưng, phía sau đùi và một số trên cánh tay. Mặt lưng màu nâu sẫm. Hai dảy màu vàng sáng được bao bọc bởi viền màu nâu đậm hoặc đen bắt đầu từ giữa hai mắt và kéo dài đến háng; hai dảy màu liền nhau ở giữa 2 mắt, hẹp ở sau mắt và nở rộng trên mặt lưng. Một số cá thể giữa lưng có vệt đen hoặc nâu sậm kéo dài từ giữa 2 mắt đến tận xương cụt. Các nốt sần trên lưng có màu tương tự màu của hai dảy màu trên lưng. Trên các chi có màu không đều, các mảng nhỏ màu vàng sáng không đều xen lẫn trên nền màu nâu sẫm; một vệt màu sáng không liên tục phía trên mặt lưng của ống chân sau. Mặt bụng màu trắng sáng với các hoa văn xám dạng khói, phần da trên cổ họng màu đậm hơn trên bụng.\nCánh tay hơi dài; ngón tay dài và có vết tích của màng bơi; to dần từ gốc ngón đến đầu ngón, đĩa ngón rộng theo chiều ngang. Ngón thứ nhất ngắn hơn ngón thứ 2; củ bàn vừa phải; có 3 củ bàn, củ bàn ngoài dài, củ bàn giữa nhỏ nhất, bàn tay trơn và không có nốt sần phụ. Thứ tự chiều dài tương đối của các ngón tay: III>IV>II>I.\nChân ngắn, chỉ 1/3 xương đùi tự do; cổ chân chạm đến nách khi xếp song song với trục cơ thể. Hai gót chân không chạm nhau khi gập gối và xếp vuông góc trục cơ thể. Bàn chân dài hơn bàn tay nhưng các ngón chân mảnh khảnh hơn; đĩa ngón chân nhỏ tròn, không rộng theo chiều ngang như đĩa ngón tay; ngón chân có vết tích của màng bơi. Có 2 củ bàn chân; củ bàn chân trong dài, nhô cao, cạnh không rõ ràng; củ bàn chân ngoài nhỏ tròn. Thứ tự chiều dài tương đối các ngón chân: IV>III>V>II>I.', 'Một mẫu cái duy nhất của loài này được tìm thấy trên nền rừng trong khu vực rừng tràm Mỹ Phước khai thác vào mùa mưa (tháng 7). Là loài hoạt động về đêm, thường ẩn nấp trong các hốc cây, hoặc bên dưới lớp lá mục trong mùa khô. Thường ra ngoài kiếm ăn khi độ ẩm không khí cao hoặc sau cơn mưa. Sinh sản vào mùa mưa, con đực thường phát tiếng kêu đặc trưng khi đang ngâm mình trên mặt nước (Kalamadi et al. 2002).\nGhi chú: qua phỏng vấn, người dân sinh sống xung quanh khu vực nghiên cứu cho biết trước đây chưa từng tìm thấy loài này trong tự nhiên.', 'Chưa xác định', 'Rừng tràm trồng', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(4, 'Microhyla heymonsii Vogt, 1911', 'Nhái bầu heymon', 'Nhóc nhen', 'Kích thước cơ thể nhỏ; lưng phẳng, màu xám hoặc nâu ở trên, thường có đường kẻ giữa lưng và một hoặc 2 đốm đen ở ngay trung tâm của lưng. Mặt bên của đầu và thân có vệt đen kéo dài đến háng. Màng nhĩ ẩn; ba củ bàn tay lớn và rõ ràng; kích thước gần bằng nhau. Hai củ bàn chân, củ bàn ngoài lớn hơn. Màng bơi giữa các ngón nhỏ và mảnh. Đầu ngón mở rộng thành các đĩa', 'Vào mùa mưa, các các thể của Microhyla heymonsi thường được tìm thấy trên nền rừng, trên các thảm lá mục hoặc cỏ. Chúng thường tập trung nhiều ở các vũng nước đọng hoặc các khu vực ngập nước cạn vào mùa mưa. Con đực cótiếng kêu đặc trưng nhờ túi âm ở cổ họng. Các sinh cảnh trong khu vực có sự hiện diện của loài này gồm rừng tràm đặc dụng và rừng tràm khai thác.', 'Chưa xác định', 'Rừng tràm khai thác, rừng tràm trồng', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(5, 'Hylarana erythraea (Schlegel, 1837)', 'Chàng xanh', 'Bù tọt', 'Cơ thể có kích thước tương đối lớn, thường có màu xanh với nếp gấp da trên lưng rộng màu vàng, dảy màu đen ở mặt bên của đầu và cơ thể, mũi nhọn và nhô ra, ngón tay mảnh khảnh, ngón thứ nhất hơi ngắn hơn ngón thứ 2, ngón chân gần như có màng bao phủ hoàn toàn, đĩa nhỏ trên đầu ngón, cổ chân chạm chóp mũi, không có hoa văn vòng quanh chi nhưng có các dấu song song chân, có túi thanh âm, con đực có chai sinh dục trên ngón tay thứ 1.', 'Chàng xanh được tìm thấy trên các sinh cảnh rừng tràm đặc dụng, rừng dừa nước và lung ở Rừng tràm Mỹ Phước. Là loài hoạt động về đêm, chúng được tìm thấy nhiều vào mùa mưa ở ven các kênh nước, ao nước nhỏ, trên lớp thực vật nổi hoặc cả trên cành cây cách mặt đất từ 1-1,5m.', 'Chưa xác định', 'Rừng tràm đặc dụng, rừng dừa nước, lung', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(6, 'Polypedates megacephalus Hallowell, 1861', 'Ếch cây mép trắng', 'Hót cổ', 'Loài có kích thước lớn, chiều dài đầu thân lên đến 75mm (Taylor); được đặc trưng bởi phần da trên đầu dính chặt với vùng mũi và xương trán; con đực có túi thanh âm; chiều rộng gian ổ mắt rộng hơn chiều rộng mí mắt trên; màng nhĩ rõ ràng; ngón tay có màng rất ít, ngón chân có màng bao phủ 2/3 hoặc nhiều hơn; chiều rộng đĩa ngón nhỏ hơn màng nhĩ; cổ bàn chân chạm giữa mắt với lỗ mũi hoặc chóp mũi khi gập sát thân; răng lá mía phát triển; hoa văn chữ x trên vùng đầu – vai.', 'Là loài phân bố đa dạng trong các sinh cảnh từ rừng tràm đặc dụng, rừng tràm trồng, rừng dừa nước trong khu vực Rừng tràm Mỹ Phước. Các cá thể được phát hiện ở các vị trí ven các vũng nước nhỏ, trên cành cây hoặc bụi cây cách mặt đất khoảng 1m. Thường tìm thấy nhiều vào mùa mưa, có tập tính đẻ trứng vào các tổ bọt tự tạo bên trên hoặc cạnh các vũng nước.', 'Chưa xác định', 'Rừng tràm đặc dụng, rừng tràm khai thác, rừng dừa nước', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(7, 'Calotes versicolor (Daudin, 1802)', 'Nhông xanh, Nhông hàng rào, Kì nhông', 'Kì nhông', 'Chiều dài đầu thân (SVL) đến 95mm (quần thể ở Đông Nam Á); cơ thể mạnh mẽ, dẹp; đầu khá lớn (đặc biệt ở con đực trưởng thành); vảy nhọn ở phía sau và bên trên; không có nếp gấp trước cánh tay hoặc lỗ trước vai, có 2 gai khá rõ trên màng nhĩ; có 40-45 hàng vảy giữa thân. Màu sắc trên thân đa dạng, đầu màu vàng cam hoặc đỏ sáng, con đực có thêm mảng đen ở cổ, và mờ dần đến màu hơi xám ở các thời điểm khác nhau. Con cái cũng có màu vàng đến xám sau khi giao phối', 'Trong khu vực nghiên cứu, Calotes versicolor (DAUDIN, 1802) là loài phổ biến, có mặt ở các sinh cảnh rừng tràm khai thác, rừng tràm đặc dụng; hoạt động ban ngày, thường được phát hiện nhiều nhất trong khoảng thời gian từ 8 giờ sáng đến 10 giờ.  Ban đêm chúng thường ngủ trên các cành cây nhỏ cách mặt đất từ 1m - 3m. Con non được phát hiện nhiều vào đầu mùa mưa trong các tháng 7 và 8.', 'Chưa xác định', 'Rừng tràm khai thác, rừng tràm đặc dụng', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(8, 'Gehyra multilata (Weigmann,1835)', 'Thằn lằn 4 móng', 'Thằn lằn nhà', 'Vảy dưới ngón rộng, phân chia, 2 hàng vảy nhỏ hoăc nhiều hơn, màng giữa ngón rất nhỏ, màng giữa ngón chân lớn hơn, 2-3 cặp vảy sau hàm, 25-41 vảy mang lỗ feromol trước huyệt xếp hình vòng cung, giữa tạo thành góc; vảy trên mũi hơi lớn tiếp xúc với các vảy khác ở giữa; đuôi dẹp, thường phẳng ở mặt dưới, mặt bên có nhiều hoặc ít răng cưa, da dễ đứt.', 'Là loài hoạt động về đêm, được tìm thấy trên các thân gỗ lớn, trên các tường và công trình xây dựng nhân tạo trong khu rừng tràm Mỹ Phước. Chia sẻ môi trường sống với các loài Hemidactylus frenatus, Hemidactylus platyurus, Hemidactylus garnotii.', 'Chưa xác định', 'Rừng trồng', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(9, 'Hemidactylus garnotii (Conant and Collins, 1991)', 'Thạch sùng garnot', 'Thằn lằn', 'Đặc điểm chẩn loại:  mút mõm tù, dài mõm-mắt lớn hơn khoảng cách giữa mắt-tai (SnEye 5,13; EyeEar 3,66); lỗ mũi ở giữa tấm mõm.; đường kính tai không quá 1/2 lần đường kính mắt (EarL 1,87; OrbD4,28); 11 tấm mép trên, 10 tấm mép dưới; tấm cằm gấp hai lần tấm mép; tấm mõm rộng bằng cao.\n\nĐặc điểm hình thái: Đầu lớn (HL 7,91; HW 6,43; HH 4,18).  Lỗ tai bé, gần tròn, đường kính tai không quá 1/2 lần đường kính mắt. Tấm cằm có dạng hình tam giác, dài hơn 2 lần các tấm mép bên cạnh. Hai đôi tấm sau cằm, đôi I lớn hơn đôi II và  tiếp xúc nhau. Vảy vùng họng dạng hạt. Đuôi rất dẹp, sắc, có răng cưa ở hai bên, phía trên phủ các vảy nhỏ đồng dạng, mặt dưới phẳng với những vảy lớn xếp gối lên nhau và một hàng vảy ngang mở rộng ở giữa đùi. Thân màu nâu xám với các đốm hoặcvết không rõ ràng, thường có những điểm nhỏ màu trắng; có vạch tối dọc theo haibên đầu. Bụng trắng.  \n', 'Ban ngày thường trú trong các hốc cây nhỏ hoặc bên trong lớp vỏ cây mục, ban đêm kiếm mồi trên thân tràm và các thân gỗ lớn trong khu vực rừng tràm Mỹ Phước. Là loài ít gặp; chia sẻ sinh cảnh với loài Hemidactylys frenatus và Hemidactylus platyurus. ', 'Chưa xác định', 'Rừng tràm đặc dụng', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(10, 'Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836', 'Thạch sùng đuôi sần', 'Thạch sùng', 'Cơ thể được bao phủ bởi các vảy dạng hạt nhỏ lẫn với một vài vảy trơn tròn hoặc hơi có dạng sóng, nốt sần hình nón; con đực có một chuỗi liên tiếp các lỗ trước huyệt, 14-19 lỗ ở mỗi bên; 2 cặp vảy sau môi dưới, cặp bên ngoài lớn tương tự cặp bên trong, cả 2 đều chạm vảy hàm dưới; trên đuôi có các nốt sần dạng gai cao xếp theo hình xoắn ốc ', 'Là loài hoạt động về đêm, sinh sống cùng với con người, thương tìm thấy trong tường nhà hoặc các công trình nhân tạo. Trong tự nhiên, loài này kiếm ăn trên các thân cây gỗ lớn, thức ăn là các loài côn trùng sống trong khu vực. Chúng thường đẻ trứng vào các hốc cây khô, kín đáo, trứng nhỏ, màu trắng ngà và không dính.', 'Chưa xác định', 'Rừng tràm đặc dụng, rừng tràm trồng, nơi ở của con người', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(11, 'Duttaphrynus melanostictus (Schneider, 1799)', 'Cóc nhà', 'Cóc', 'Kích thước cơ thể trung bình, mắt khỏe; phía trên ổ mắt, phía sau ổ mắt, phía trên màng nhĩ và phía trước mắt có nhiều gai nhọn; mõm nhọn, tuyến mang tai lớn, có chều dài hơn chiều rộng; cơ thể có nhiều nốt sần lớn và nhỏ; ngón tay thứ I dài hơn ngón tay thứ II; khớp cổ chân chạm giữa tuyến mang tai khi xếp dọc theo thân.', 'Là loài phổ biến trong khu rừng tràm Mỹ Phước, thường được tìm thấy trong các khu vực đất cao, trên các bờ kênh nước. Cóc nhà hoạt động vào ban đêm, ăn các loài côn trùng sống trong khu vực. Xuất hiện nhiều trong các sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác vào đầu mùa mưa.', 'Làm thực phẩm', 'Rừng tràm đặc dụng, rừng tràm khai thác', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(12, 'Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012', 'Ếch giun nguyễn', 'Rắn trun đĩa', 'Đặc điểm chẩn loại: cơ thể tròn, dẹt mặt bụng; chóp đuôi cùn, không có dạng mũ; không có đốm màu vàng mặt bụng; đầu rộng nhất ở góc mép miệng, hẹp dần về trước; mút mõm tròn; lỗ mũi nằm gần bờ trước mép miệng; số vòng quanh thân: 312 – 318; sọc vàng rộng chạy liên tục từ sau mắt đến huyệt.\n	Đặc điểm hình thái: SVL 201,3 mm. Dài đuôi: 2,6 – 3,5; rộng đuôi: 2,8 – 3,5. Rộng đầu (HW: 6,6). Dài đầu hơn rộng đầu (HL/HW: 1,25-1,47). Cơ thể hơi tròn, dài, dạng rắn. Đầu dẹp, láng; rộng nhất ở mép miệng, hẹo về phía đầu. Mút mõm tròn; dài mõm bằng với ngang đầu ở vị trí mắt. Mắt nhỏ, không mi mắt, có một đôi râu (tentacle) ngắn nằm phía trước mắt. Hai bên thân có sọc  màu vàng bắt đầu từ sau mép miệng đến lỗ huyệt. Số nếp gấp quanh thân: 280 – 300; ở đuôi: 7-8. Đuôi ngắn hơi dẹt ở mặt bụng, phần đỉnh cùn, không có đốm màu cam hay vàng  ở mặt bụng. Mặt lưng có màu tím đen, bụng màu hoa cà nhạt, hai bên sườn có sọc màu vàng liên tục, không đứt quãng, chạy từ khoảng giữa hàm trên (mấu xúc - tu) đến gần mút đuôi. Mắt có viền mỏng màu trắng đục.\n	Ghi chú:  Loài Ichthyophis bannanicus phân biệt với Ichthyophis nguyenorum dựa trên các đặc điểm: số nếp vòng quanh cơ thể của I. nguyenorum (312 – 318) ít hơn so với I. bannanicus (340); sọc bên thân của I. nguyenorum kéo dài đến mút đuôi so với sọc bị đứt quãng ở phía sau đuôi của I. bannanicus Nishikawa et al. (2012).', 'Sống ở các vực nước (ao, vũng...) có nhiều bùn và lá mục, hay các khu vực đất nông nghiệp. Thức ăn gồm côn trùng, giun đất, nhện và những loài không xương sống nhỏ khác.', 'Chưa xác định', 'Rừng tràm đặc dụng, rừng tràm khai thác', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(13, 'Fejervarya limnocharis (Gravenhorst, 1829)', 'Nhái Ngóe', 'Nhái ', 'Đầu ngón hơi phồng, không hoặc hơi rộng hơn chữa số, ngón đầu tên dài hơn ngón thứ 2, ngón chân có màng bao phủ từ 1/2 tới 2/3, củ bàn chân ngoài tách biệt với màng, củ bàn chân trong dẹp và củ bàn chân ngoài nhỏ, lung có nhiều nếp gấp và nốt sần nhỏ, con đực có túi kêu màu đen', 'Là loài phổ biến trong khu vực rừng tràm Mỹ Phước, thường được tìm thấy trong sinh cảnh rừng tràm khai thác, rừng tràm đặc dụng. Nhái sọc hoạt động ban đêm, thức ăn là các loài côn trùng sống trong khu vực. Xuất hiện nhiều vào đầu mùa mưa, con đực có túi thanh âm phát tiếng kêu đặc trưng thu hút con cái. Con đực và con cái có hiện tượng \"bắt cặp\" khi giao phối; con cái đẻ trứng vào các ao hoặc vũng nước đọng trong khu vực; trứng dính vào nhau thành mảng lớn nổi trên mặt nước.', 'Làm thực phẩm', 'Rừng tràm khai thác, rừng tràm đặc dụng', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(14, 'Fejervarya cancrivora (Gravenhorst, 1829)', 'Ếch cua', 'Ếch', '	Đặc điểm chẩn loại:  lỗ mũi hướng thẳng lên, khoảng gian mắt rộng ½ độ rộng mi mắt. Lỗ mũi lệch về phía mút mõm. Vùng má lõm, xiên. Màng nhĩ rõ. Ngón tay I dài hơn ngón tay II. Khớp cổ bàn tiếp xúc mắt, hai gối chạm nhau khi gập hai chân lại. Mép ngoài các ngón chân có rìa da mỏng, nếp gấp vùng xương cổ bàn mỏng. Củ bàn trong mảnh, dài, không có củ bàn ngoài. Lưng có nhiều nếp da ngắn, gián đoạn; các nếp da ngắn hai bên lưng nối nhau thành hàng. Răng xương lá mía xiên. Màng da ¾ . Giữa vùng trán có một điểm mắt nhỏ, màu trắng. \n\nĐặc điểm hình thái: Cơ thể có kích thước trung bình, đầu hẹp.  (SVL: 48.5-57.5 mm) Dài đầu lớn hơn rộng đầu (HL/HW: 1,13-1,24 ). Mút mõm tròn.  Lỗ mũi hình oval, có van nhỏ. Dài mũi lớn hơn đường kính mắt (ED/SNL: 0,59 – 0,71 mm). Lưỡi lớn; con ngươi mắt tròn. Chủy khóe mắt tròn, vùng gian mắt- mũi lõm, vùng gian ổ mắt phẳng. chiều rộng mi mắt trên lớn hơn khoảng cách giữa 2 hốc mắt (IO/UEW: 0,53-0,64). U lồi vùng thái dương tròn. Đường kính màng nhĩ lớn hơn khoảng cách từ màng nhĩ đến mắt (E-T/TD: 0,48-0,65); đường kính màng nhĩ nhỏ hơn đường kính mắt (TD/ED: 0,7-0,72), có một nếp gấp da chạy từ sau mắt vòng lên trên màng nhĩ và kéo xuống đến trước cánh tay. \nCơ thể có màu nâu, xanh nâu, xám với những vệt đậm, không đều, nằm rải rác quanh mép miệng và chi sau. Bụng có màu trắng đôi khi có những vệt đậm màu nằm rải rác, da trơn, láng. Mặt lưng có nhiều nếp da ngắn, chạy dọc cơ thể. Hai bên đầu và phần hông sau có các mụn tuyến nhỏ. Các ngón tay dài, mút nhọn, một số ngón có rèm da. Thứ tự các ngón chi trước: III>IV>I>II.  Ngón chân dài có màng da và rèm da, độ dài các ngón theo thứ tự: IV>III>V>II>I. \n', 'F. cancrivora là loài lưỡng cư có sự thích nghi cao với nồng độ muối ổn định trong môi trường nước.  Chúng chỉ cần vài giờ để thích nghi với môi trường sống khi chuyển từ nước ngọt sang nước mặn nhờ quá trình tích lũy ure làm tăng nồng độ các chất trong tế bào. F. cancrivora có thể sống ở môi trường có nồng độ muối 650 - 950 mOsm/L trong nhiều tháng. ', 'Làm thực phẩm', 'Rừng tràm đặc dụng, rừng tràm khai thác', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(15, 'Fejervarya sp.', 'Nhái cơm', 'Nhái cơm', 'Đặc điểm chẩn loại:  Lỗ mũi hướng lên trên; khoảng gian mắt hơi rộng hơn một nữa chiều rộng mi mắt trên; lỗ mũi gần chóp mũi hơn gần mắt; vùng má phẳng, xiên; màng nhĩ rõ ràng; ngón tai thứ I dài hơn ngón thứ II; khớp xương chài chạm vùng má khi xếp chân dọc cơ thể; khi xếp chân 2 đầu gối xếp chồng nhau; có nếp gấp cổ chân mờ; có củ bàn trong chân, không có củ bàn ngoài; nhiều nếp gấp trên lưng; nếp gấp mặt bên trên lưng thấp, dài hơi các nếp gấp ở phần giữa lưng; ngón chân có màng kéo dài đến ¾ chiều dài ngón.\n	Đặc điểm hình thái: Kích thước cơ thể nhỏ (SVL: 48,5-57,5); chiều dài đầu hơi lớn hơn chiều ngang (HL/HW: 1,13 – 1,24). Mũi nhọn; lỗ mũi tròn, có viền xung quanh, gần chóp mũi hơn gần mắt; gốc mắt rõ ràng, vùng má xiên, hơi lõm với một gờ trơn; chiều rộng mi mắt lớn hơn khoảng gian mắt (IO/UEW: 0,53-0,64); nếp gấp bên trên màng nhĩ nhỏ, mở rộng về phía trên màng nhĩ và xéo xuống dưới ở phía sau; đường kính màng nhĩ không lớn hơn khoảng cách mắt tới màng nhĩ (E-T/TD: 0,48-0,65); tuyến gốc mõm dài, thấp, không chạm màng nhĩ.\nDa trên lưng nhiều gờ dạng tuyến, một vài cái có dạng gờ dài, nhiều nốt sần nhỏ; các hàng ở hai bên nhiều hoặc ít rõ ràng. Da cằm, bụng và mặt dưới của đùi trơn; thỉnh thoảng có các nốt sần nhỏ ở mặt sau của đùi; cánh tay ngắn, ngón tay không có màng, đầu ngón hơi phồng thành nốt nhỏ; ngón thứ I hơi dài hơn ngón thứ II; củ ngón rõ ràng; 2 củ bàn rõ ràng, củ dưới ngón tay cái phát triển, chai sinh dục phát triển ở con đực; ngón chân có màng ¾; củ bàn trong dài, rõ ràng, củ bàn ngoài nhỏ, tròn; củ ngón phát triển; chân ngắn, khớp chày chạm vùng má; khi xếp chân vuông góc cơ thể, hai đầu gối chồng lên nhau.\nMặt trên màu nâu đến nâu - vàng nhạt với các đốm màu xám đen; các đốm trên cánh tay và chân ít phân biệt; các vệt ở hàm trên rõ ràng; hầu hết các hàng gờ da lớn ở bên ngoài của phần phía bên lưng; cằm với các đốm đen nhạt không đều dạng lavender, mặt dưới cơ thể màu trắng xám khói; cạnh trước và mặt dưới của bàn chân màu lavender, đầu ngón tay và chân màu kem.\n', 'Chúng có sinh cảnh chung với 2 loài lưỡng cư khác là ếch cua (F. cancrivora) và nhái ngóe (F. limnocharis). Trong khu vực nghiên cứu, đây là loài phổ biến, phân bố trên các sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác. Được tìm thấy nhiều vào đầu mùa mưa trên nền rừng ẩm ướt, ven các kênh dẫn nước hoặc xung quanh các vũng nước đọng.', 'Làm thực phẩm', 'Rừng tràm đặc dụng, rừng tràm khai thác', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(16, 'Hoplobatrachus rugulosus (Wiegmann, 1834)', 'Ếch đồng', 'Ếch', 'Kích thước lớn, chân và tay tương đối ngắn, ngón chân có màng bao phủ gần như hoàn toàn, đầu ngón không có đĩa ngón, hơi phồng ở đầu ngón; không có củ bàn trong ở chân, khoảng 10 hàng nếp gấp da trên lưng, gian ổ mắt nhỏ hơn nhiều so với chiều rộng mi mắt trên.', 'Ếch đồng là loài phổ biến trong khu vực rừng tràm Mỹ Phước; được tìm thấy nhiều vào mùa mưa, đặc biệt vào đầu mùa mưa. Ếch đồng sinh sản vào đầu mùa mưa, con đực phát âm thanh to thu hút con cái. Ếch đực và ếch cái có hiện tượng \"bắt cặp\" khi giao phối. Trong khu vực rừng tràm Mỹ Phước, ếch đồng được tìm thấy trong sinh cảnh rừng tràm khai thác và rừng tràm đặc dụng.', 'Làm thực phẩm', 'Rừng tràm khai thác, rừng tràm đặc dụng', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(17, 'Occidozyga lima (Gravenhorst, 1829)', 'Cóc nước sần', 'Nhái bầu', 'Là một loài cóc nước nhỏ; lưỡi dài, tự do, đầu lưỡi tròn; ngón tay nhọn, ngón thứ nhất bằng ngón thứ 2, 2 hoặc 3 củ bàn tay; 2 củ bàn chân, và 1 nốt sần rõ ràng ở cuối xương chày; da rất nhám, có nhiều nốt sần hoặc gai nhỏ, có nhiều hàng nốt sần tạo thành các đường dọc hai bên thân, trên lưng và cằm; con đực với túi âm ở trong miệng; các vệt sẫm màu vắt ngang trên đùi và lưng; ngón tay có màng bơi nhỏ trong gốc ngón, ngón chân có màng bơi phủ hết ngón', 'Các mẫu của loài cóc nước sần được tìm thấy trong mùa mưa ở các sinh cảnh rừng tràm đặc dụng, rừng dừa nước, lung. Vào đầu mùa mưa, chúng thường tập trung trong các ao nước nhỏ vào ban đêm, các con đực phát tiếng kêu thu hút con cái. ', 'Chưa xác định', 'Rừng tràm đặc dụng, lung, rừng dừa nước', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(18, 'Occidozyga martensii (Peters, 1867)', 'Cóc nước marten', 'Nhái nhớt', 'Cơ thể có kích thước nhỏ, ngắn và mập; các chi tương đối ngắn; bàn tay không có màng; bàn chân có màng phát triển chạm 2/3 chiều dài ngón; chóp ngón mở rộng thành dạng đệm tròn. Cấu trúc da khá đa dạng từ dạng trơn đến có nhiều nốt sần trên lưng; mặt dưới luôn trơn. Đầu nhỏ, mũi hình tam giác ngắn; màng nhĩ nhỏ vừa đủ nhận biết; nếp gấp trên màng nhĩ rõ ràng. Mắt phồng lên và hướng sang 2 bên. Màu sắc mặt lưng đa dạng; phần lớn màu xám hoặc nâu, thường có sọc màu vàng hoặc cam rõ ràng trên lưng, hoặc một vệt rộng màu xám đen dọc viền đen với 2 sọc cam; phổ biến là màu đỏ - rỉ sét ở sau đầu. Mặt dưới màu trắng sáng, cổ họng có các đốm đen li ti màu xám mờ. Con ngươi hình thoi với mống mắt có các sọc màu đồng xếp đồng quy', 'Occcidozyga martensii là loài phổ biến trong rừng tràm Mỹ Phước, được tìm thấy nhiều vào đầu mùa mưa. Chúng thường được tìm thấy trên nền rừng, xung quanh các vũng nước đọng hoặc ở khu vực nước nông có lớp thực vật nổi dày, rậm rạp. Trong rừng tràm Mỹ Phước chúng phân bố trong các sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác. ', 'Chưa xác định', 'Rừng tràm đặc dụng, rừng tràm khai thác', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(19, 'Kaloula pulchra Gray, 1831', 'Ễn ương', 'Ễn ương', 'Đặc điểm chẩn loại: Ngón chi dẹp và đầu ngón tay mở rộng; toàn bộ mặt lưng màu nâu với 2 dãy màu vàng sáng hoặc vàng nâu chạy dọc từ giữa 2 mắt qua phía trên mắt và kéo dai đến háng; trên ngón có vết tích của màng bơi.\n\nĐặc điểm hình thái: Kích thước trung bình (SVL: 80.3). Cơ thể có hình tam giác khi nhìn từ bên trên, đầu ngắn so với chiều dài thân (HL/SVL: 0,24); chiều dài đầu nhỏ hơn chiều rộng đầu (HL/HW: 0,74); khóe mắt nhỏ; vùng má xiên và hướng lên; mũi tù và ngắn, lỗ mũi nằm gần chóp mỏ và hướng sang 2 bên; khoảng cách giữa hai lỗ mũi tương đương mí mắt trên; màng nhĩ không rõ ràng; nếp gấp mờ vòng qua chẩm đến sau mắt và kết thúc ở ngay trước cánh tay.\n\nDa trơn láng với các nốt sần rải rác trên lưng, nhiều nhất ở phần dưới của mặt lưng, phía sau đùi và một số trên cánh tay. Mặt lưng màu nâu sẫm. Hai dảy màu vàng sáng được bao bọc bởi viền màu nâu đậm hoặc đen bắt đầu từ giữa hai mắt và kéo dài đến háng; hai dảy màu liền nhau ở giữa 2 mắt, hẹp ở sau mắt và nở rộng trên mặt lưng. Một số cá thể giữa lưng có vệt đen hoặc nâu sậm kéo dài từ giữa 2 mắt đến tận xương cụt. Các nốt sần trên lưng có màu tương tự màu của hai dảy màu trên lưng. Trên các chi có màu không đều, các mảng nhỏ màu vàng sáng không đều xen lẫn trên nền màu nâu sẫm; một vệt màu sáng không liên tục phía trên mặt lưng của ống chân sau. Mặt bụng màu trắng sáng với các hoa văn xám dạng khói, phần da trên cổ họng màu đậm hơn trên bụng.\n\nCánh tay hơi dài; ngón tay dài và có vết tích của màng bơi; to dần từ gốc ngón đến đầu ngón, đĩa ngón rộng theo chiều ngang. Ngón thứ nhất ngắn hơn ngón thứ 2; củ bàn vừa phải; có 3 củ bàn, củ bàn ngoài dài, củ bàn giữa nhỏ nhất, bàn tay trơn và không có nốt sần phụ. Thứ tự chiều dài tương đối của các ngón tay: III>IV>II>I.\nChân ngắn, chỉ 1/3 xương đùi tự do; cổ chân chạm đến nách khi xếp song song với trục cơ thể. Hai gót chân không chạm nhau khi gập gối và xếp vuông góc trục cơ thể. Bàn chân dài hơn bàn tay nhưng các ngón chân mảnh khảnh hơn; đĩa ngón chân nhỏ tròn, không rộng theo chiều ngang như đĩa ngón tay; ngón chân có vết tích của màng bơi. Có 2 củ bàn chân; củ bàn chân trong dài, nhô cao, cạnh không rõ ràng; củ bàn chân ngoài nhỏ tròn. Thứ tự chiều dài tương đối các ngón chân: IV>III>V>II>I.', 'Một mẫu cái duy nhất của loài này được tìm thấy trên nền rừng trong khu vực rừng tràm khai thác vào mùa mưa (tháng 7). Là loài hoạt động về đêm, thường ẩn nấp trong các hốc cây, hoặc bên dưới lớp lá mục trong mùa khô. Thường ra ngoài kiếm ăn khi độ ẩm không khí cao hoặc sau cơn mưa. Sinh sản vào mùa mưa, con đực thường phát tiếng kêu đặc trưng khi đang ngâm mình trên mặt nước.', 'Chưa xác định', 'Rừng tràm khai thác', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(20, 'Microhyla heymonsii Vogt, 1911', 'Nhái bầu heymon', 'Nhái bầu đỏ', 'Kích thước cơ thể nhỏ; lưng phẳng, màu xám hoặc nâu ở trên, thường có đường kẻ giữa lưng và một hoặc 2 đốm đen ở ngay trung tâm của lưng. Mặt bên của đầu và thân có vệt đen kéo dài đến háng. Màng nhĩ ẩn; ba củ bàn tay lớn và rõ ràng; kích thước gần bằng nhau. Hai củ bàn chân, củ bàn ngoài lớn hơn. Màng bơi giữa các ngón nhỏ và mảnh. Đầu ngón mở rộng thành các đĩa', 'Nhái bầu đỏ được tìm thấy trong thời gian khảo sát mùa mưa, thường được tìm thấy trên nền rừng trong khu vực rừng tràm khai thác, quanh các vũng nước đọng hoặc gần bờ kênh. Con đực có túi kêu dưới cổ họng, ban đêm thường tập trung quanh khu vực có nước để phát tiếng kêu thu hút con cái. ', 'Chưa xác định', 'Rừng tràm khai thác', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(21, 'Hylarana erythraea (Schlegel, 1837)', 'Chàng xanh', 'Bù tọt', 'Cơ thể có kích thước tương đối lớn, thường có màu xanh với nếp gấp da trên lưng rộng màu vàng, dảy màu đen ở mặt bên của đầu và cơ thể, mũi nhọn và nhô ra, ngón tay mảnh khảnh, ngón thứ nhất hơi ngắn hơn ngón thứ 2, ngón chân gần như có màng bao phủ hoàn toàn, đĩa nhỏ trên đầu ngón, cổ chân chạm chóp mũi, không có hoa văn vòng quanh chi nhưng có các dấu song song chân, có túi thanh âm, con đực có chai sinh dục trên ngón tay thứ I.', 'Chàng xanh là loài hoạt động cả ngày và đêm, ban ngày thường bắt gặp trên các thảm thực vật nổi; ban đêm được tìm thấy trên các cành cây nhỏ, bên trên các bụi rậm. Thức ăn là các loài côn trùng nhỏ sống trong khu vực. Phân bố trên các sinh cảnh rừng tràm đặc dụng, rừng dừa nước, lung.', 'Chưa xác định', 'Rừng tràm đặc dụng, rừng dừa nước, lung.', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(22, 'Polypedates megacephalus Hallowell, 1861', 'Ếch cây mép trắng', 'Hót cổ', 'Loài có kích thước lớn, chiều dài đầu thân lên đến 75mm (Taylor); được đặc trưng bởi phần da trên đầu dính chặt với vùng mũi và xương trán; con đực có túi thanh âm; chiều rộng gian ổ mắt rộng hơn chiều rộng mí mắt trên; màng nhĩ rõ ràng; ngón tay có màng rất ít, ngón chân có màng bao phủ 2/3 hoặc nhiều hơn; chiều rộng đĩa ngón nhỏ hơn màng nhĩ; cổ bàn chân chạm giữa mắt với lỗ mũi hoặc chóp mũi khi gập sát thân; răng lá mía phát triển; hoa văn chữ x trên vùng đầu – vai.', 'Ếch cây mép trắng sống chủ yếu trên cây trong các khu vực ẩm độ cao, thức ăn là các loài côn trùng sống trong khu vực. Ếch cây mép trắng phân bố khá phổ biến trong khu vực rừng tràm Mỹ Phước, thường được tìm thấy trong các sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác, rừng dừa nước. Con đực và cái có hiện tượng \"bắt cặp\" khi giao phối. Con cái tiết ra dịch nhầy và dùng chân sau đánh lên thành đám bọt lớn; trứng được đẻ vào trong đám bọt xung quanh các vũng nước hoặc bên trên khu vực có nước.Trứng phát triển thành nòng nọc trong tổ bọt trước khi chúng cọ quậy làm mềm bọt và rơi xuống khu vực nước bên dưới. ', 'Chưa xác định', 'Rừng tràm đặc dụng, rừng dừa nước, rừng tràm khai thác', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(23, 'Calotes versicolor (Daudin, 1802)', 'Nhông hàng rào', 'Kì nhông', 'Chiều dài đầu thân (SVL) đến 95mm (quần thể ở Đông Nam Á); cơ thể mạnh mẽ, dẹp; đầu khá lớn (đặc biệt ở con đực trưởng thành); vảy nhọn ở phía sau và bên trên; không có nếp gấp trước cánh tay hoặc lỗ trước vai, có 2 gai khá rõ trên màng nhĩ; có 40-45 hàng vảy giữa thân. Màu sắc trên thân đa dạng, đầu màu vàng cam hoặc đỏ sáng, con đực có thêm mảng đen ở cổ, và mờ dần đến màu hơi xám ở các thời điểm khác nhau. Con cái cũng có màu vàng đến xám sau khi giao phối', 'Kì nhông là loài phổ biến trong rừng tràm Mỹ Phước, chúng thường được tìm thấy trong sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác, trên các nhánh cây thấp từ 1 đến 2m hoặc. Thức ăn của chúng là những loài côn trùng nhỏ sống trong khu vực. Kì nhông hoạt động ban ngày, ban đêm ngủ trên ngọn các cành cây nhỏ. ', 'Chưa xác định', 'Rừng tràm trồng, rừng tràm khai thác', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(24, 'Gehyra multilata (Weigmann,1835)', 'Thằn lằn 4 móng', 'Thằn lằn', 'Đặc điểm chẩn loại:  Tấm mõm chia;  hai tấm mũi tiếp xúc nhau;  lỗ mũi tiếp giáp tấm mõm và tấm môi trên; 8 hay 9 tấm môi trên; 7 tấm môi dưới; 52-54 hàng vảy quanh thân; ngón tay I nhỏ hơn các ngón khác, không có vuốt; 7-8 bản mỏng dưới ngón chân thứ IV; 15 -19 lỗ đùi; đuôi dẹp có răng cưa.\n	Đặc điểm hình thái: SVL 50.7-51.3 mm. Đầu dài hơn rộng (HL/SVL:  0,24 -0,25, HW/HL:  0,79-0,81). Đầu phủ vảy nhỏ hoặc nốt sần.; nếp gấp lưng bụng không rõ. Mặt lưng có màu xám xanh, vàng hay xám, thỉnh thoảng có những đốm trắng sáng và cả những đốm tối, những đốm sáng thường bao quanh những điểm tối; phía sau mắt thường có một sọc tối. Đuôi dẹp, bè rộng, có răng cưa, gốc đuôi hơi thắt eo lại (định loại theo Smith, 1935).', 'Thằn lằn 4 móng là loài phổ biến trong khu vực, thường được tìm thấy xung quanh các công trình xây dựng của con người, trên các thân gỗ lớn. Chúng chia sẻ nơi sống với các loài Hemidactylus frenatus, Hemidactylus platyurus. Là loài hoạt động về đêm, thức ăn của chúng là các loài côn trùng sống trong khu vực.', 'Chưa xác định', 'Rừng tràm khai thác', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(25, 'Hemidactylus garnotii (Conant and Collins, 1991)', 'Thạch sùng garnot', 'Thằn lằn', 'Đặc điểm chẩn loại:  mút mõm tù, dài mõm-mắt lớn hơn khoảng cách giữa mắt-tai (SnEye 5,13; EyeEar 3,66); lỗ mũi ở giữa tấm mõm.; đường kính tai không quá 1/2 lần đường kính mắt (EarL 1,87; OrbD4,28); 11 tấm mép trên, 10 tấm mép dưới; tấm cằm gấp hai lần tấm mép; tấm mõm rộng bằng cao. \n\nĐặc điểm hình thái: Đầu lớn (HL 7,91; HW 6,43; HH 4,18).  Lỗ tai bé, gần tròn, đường kính tai không quá 1/2 lần đường kính mắt. Tấm cằm có dạng hình tam giác, dài hơn 2 lần các tấm mép bên cạnh. Hai đôi tấm sau cằm, đôi I lớn hơn đôi II và  tiếp xúc nhau. Vảy vùng họng dạng hạt. Đuôi rất dẹp, sắc, có răng cưa ở hai bên, phía trên phủ các vảy nhỏ đồng dạng, mặt dưới phẳng với những vảy lớn xếp gối lên nhau và một hàng vảy ngang mở rộng ở giữa đùi. Thân màu nâu xám với các đốm hoặcvết không rõ ràng, thường có những điểm nhỏ màu trắng; có vạch tối dọc theo hai bên đầu. Bụng trắng.  \n', 'Thằn lằn garnot sinh sống trên các thân cây lớn, thân tràm trong khu vực nghiên cứu. Là loài hoạt động ban đêm, thức ăn là các loài côn trùng sinh sống trong khu vực. Trong khu vực rừng tràm Mỹ Phước, thằn lằn garnot được tìm thấy trong sinh cảnh rừng tràm đặc dụng.', 'Chưa xác định', 'Rừng tràm đặc dụng', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(26, 'Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836', 'Thạch sùng đuôi sần', 'Thằn lằn', 'Cơ thể được bao phủ bởi các vảy dạng hạt nhỏ lẫn với một vài vảy trơn tròn hoặc hơi có dạng sóng, nốt sần hình nón; con đực có một chuỗi liên tiếp các lỗ trước huyệt, 14-19 lỗ ở mỗi bên; 2 cặp vảy sau môi dưới, cặp bên ngoài lớn tương tự cặp bên trong, cả 2 đều chạm vảy hàm dưới; trên đuôi có các nốt sần dạng gai cao xếp theo hình xoắn ốc', 'Thạch sùng đuôi sần là loài phổ biến, sinh sống trong và xung quanh khu vực của con người. Trong tự nhiên, thường được tìm thấy trên các thân gỗ lớn; là loài hoạt động ban đêm; thức ăn là các loài côn trùng sống trong khu vực.', 'Chưa xác định', 'Rừng tràm khai thác, rừng tràm đặc dụng', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(27, 'Hemidactylus platyurus (Schneider, 1797)', 'Thạch sùng đuôi dẹp', 'Thằn lằn', 'Các ngón chân có màng và mở rộng; tấm dưới ngón chân không phân chia; đốt ngón xa dài, mỏng, mọc tại bên trên phần mở rộng của đầu ngón; 2 cặp vảy sau hàm mở rộng, cặp thứ 2 ở bên lớn hơn cặp thứ nhất ở trong; nếp gấp bụng rõ ràng, được vảy nhỏ bao phủ; có màng da rộng ở phía sau chân sau; 16-20 lỗ đùi mỗi bên, xếp thành hàng thẳng và tiếp xúc ở giữa thân', 'Thạch sùng đuôi dẹp là loài phổ biến sinh sống trong hoặc xung quanh khu dân cư. Trong tự nhiên, chúng thường được tìm thấy trên các thân cây gỗ lớn, kiếm ăn cả ngày và đêm; thức ăn là các loài côn trùng nhỏ sinh sống trong khu vực. Trong rừng tràm Mỹ Phước, loài này được tìm thấy trong sinh cảnh rừng tràm khai thác. ', 'Chưa xác định', 'Rừng tràm khai thác', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(28, 'Takydromus sexlineatus Daudin, 1802', 'Thằn lằn đuôi dài', 'Thằn lằn đuôi dài', 'Loài thằn lằn cỡ nhỏ, dài đuôi dài gấp sáu lần chiều dài thân. Dài thân 30 - 60mm, dài đuôi 160 - 180mm. Mõm nhọn, tấm mõm rộng. Hai tấm trán ở đỉnh tiếp xúc với nhau, rộng và ngắn hơn tấm trước trán. Tấm đỉnh lớn, cách nhau rõ bởi tấm gian đỉnh và tấm chẩm bé hơn. Có 2 - 3 tấm thái dương chạm tấm đỉnh.Các vảy vùng thái dương nổi gờ rất rõ. Có 3 cặp tấm sau cằm.\n\nThân có 6 hàng vảy dọc, rộng, nổi gờ rõ, 4 hàng vảy ở giữa tiếp tục kéo dài đến đuôi. Vảy bên thân bé, có 12 hàng vảy rộng ở bụng, các vảy này cũng nổi gờ rõ. Từ nếp gấp vai đến bẹn có 26 vảy. Tấm hậu môn lớn và có 2 vảy dài, bé hơn nằm ở hai bên.Ở con đực và con cái đều có 1 lỗ đùi ở mỗi bên. Mép trên có từ 6  -8 tấm vảy và 5 - 8 tấm ở mép dưới mỗi bên.\n\nThân màu xanh xám đến nâu xám, phần đầu có màu thẫm hơn. Cằm và cổ họng có màu trắng đục đến hơi vàng. Mặt trên của các chi và phần sau của gốc đuôi màu xám nhạt. Ở các cá thể đực có một dải hẹp màu trắng xám chạy từ góc sau tấm đỉnh đến giữa thân và mờ dần về phía đuôi. Từ vai đến bẹn là các đốm trắng xám nhỏ hình bầu dục xếp thành hàng dọc.', 'Là loài hoạt động ban ngày, thường kiếm ăn trên các tán cây thấp, thức ăn là các loài côn trùng sinh sống trong khu vực. Hoa văn trên cơ thể có khả năng ngụy trang lẫn vào môi trường xung quanh. Buổi sáng chúng thường phơi nắng hấp thu nhiệt và hoạt động nhiều khi nhiệt độ cao. Ban đêm ngủ trên các nhánh cây thấp và bụi cây.', 'Chưa xác định', 'rừng tràm trồng', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(29, 'Eutropis multifasciata (Kuhl, 1820)', 'Thằn lằn bóng hoa', 'Rắn mối', 'Vảy trên mũi chạm nhau hoặc hơi tách biệt với nhau; một vảy sau mũi; vảy trước trán tiếp xúc nhau; vảy má thứ nhất không cao hơn vảy má thứ 2; không có đĩa ở dưới mi mắt; vảy thường có 3 sóng, hiếm khi nhiều  hơn; 30-34 hàng vảy giữa thân; các đường trên lưng giữa các vảy thường mờ, tối; hai bên thân màu sậm với nhiều điểm dạng mắt.', 'Là loài phổ biến trong khu vực rừng tràm Mỹ Phước, hoạt động ban ngày, thường được tìm thấy trong sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác. Kiếm ăn trên nền rừng, thức ăn của chúng là những loài côn trùng trong khu vực. Thường có tập tính phơi nắng vào buổi sáng hoặc sau các cơn mưa lớn.', 'Làm thực phẩm', 'Rừng tràm trồng', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(30, 'Python molurus (Linnaeus, 1758)', 'Trăn lưới', 'Trăn đất', 'Đặc điểm chẩn loại:  Rắn lành cỡ rất lớn trong họ nhà Trăn Pythonidae, dài tới 8m (kích thước trung bình khoảng từ 4 - 6m). Đầu dài, nhỏ. Hai tấm vảy môi trên có trên mỗi tấm vảy một lỗ (lỗ môi là cơ quan cảm giác nhiệt). Có hai cựa nhỏ, hình móng nằm ở hai bên khe huyệt. Cựa trăn cái ngắn, ẩn sâu trong hốc bên khe huyệt. Đầu có màu nâu xám, mặt trên đầu có hoa văn hình mũi mác di từ cổ, mũi nhọn hướng về phía đầu mõm. Mặt trên lưng có màu xám nhạt hay vàng nhạt có một dãy những vết lớn dài, màu nâu đỏ viền đen. Mặt bụng màu vàng hay nâu vàng có những đốm nâu hay đen (Smith 1984).\nĐặc điểm hình thái:  Đầu hình tam giác, chiều dài gần 2 lần chiều rộng. Lỗ mũi tách biệt bởi 2 vảy mũi. Có 2 cặp vảy trước trán, cặp vảy phía sau nhỏ hơn; vảy trán phân chia. Vùng vảy chẩm và vùng vảy thái dương không đều. Có 10 – 13 vảy môi trên, vảy thứ VI hoặc thứ VII ở dưới mắt hoặc tách biệt với mắt bởi hàng vảy dưới mắt; 2 vảy môi trên đầu tiên có các hốc cảm nhiệt rõ ràng. Mắt được bao quanh bởi 2 hoặc 3 vảy trước mắt, 1 vảy trên mắt, 2 hoặc 3, hiếm khi 4 vảy sau mắt, 1, 2 hiếm khi 3 vảy dưới mắt. Các vảy bao quanh mắt, ngoại trừ vảy trên mắt thường hợp nhất hoặc được phân chia bởi đường đứt nhỏ. Vảy môi trên có 2 hố vảy sâu. 16-22 vảy hàm dưới. Vảy cằm  nhỏ và không đều. Rãnh môi dưới rõ ràng. Vảy trơn, 60-75 hàng vảy giữa thân. 256-270 vảy bụng; 65-70 vảy dưới đuôi. Vảy hậu môn phân chia.', 'Đặc điểm sinh thái học: Thường sống ở các rừng thưa, savan, cây bụi hay ven các rừng già, ở các đồi núi thấp có nhiều bụi rậm khô ráo. Chúng ưa sống gần các vực nước, đầm lầy. Có thể leo lên cây và thích cuốn mình vào những cành cây chìa ra trên mặt nước. ở đồng bằng Nam bộ, chúng ưa sống ở những nơi đầm lầy, rừng tràm, rừng sú vẹt ngập nước, đôi khi còn xâm nhập cả vào những khu vực có vườn cây. Chúng chủ yếu đi kiếm mồi vào ban đêm, nhiều nhất vào lúc xẩm tối. Trăn đất ăn những loài thú nhỏ (chủ yếu gặm nhấm, đôi khi cả hươu nai cỡ nhỏ, chim và những loài ếch nhái, bò sát). Sinh sản hàng năm. Ở khu vực Đồng Bằng Sông Cửu Long giao phối từ tháng 10 đến tháng giêng năm sau. Trăn chửa khoảng hai tháng đến ba tháng sáu ngày, đẻ từ 15 đến 60 quả trứng. Trăn mẹ ấp trứng bằng cách cuộn lấy ổ trứng. Sau khoảng hai tháng (56 - 85 ngày) thì trứng nở: Trăn sơ sinh dài khoảng 52 - 61cm và nặng khoảng 80 - 140g. Lột xác lần đầu khoảng 7 - 10 ngày sau khi nở.', 'Làm thực phẩm, đồ thời trang.', 'Rừng tràm trồng', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toa_do`
--

CREATE TABLE `toa_do` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loai_toa_do` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toa_do` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinhvat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `toa_do`
--

INSERT INTO `toa_do` (`id`, `loai_toa_do`, `toa_do`, `sinhvat_id`, `created_at`, `updated_at`) VALUES
(1, 'Tọa độ 1', '9.571639 N, 105.748757 E ', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(2, 'Tọa độ 2', '9.563858 N, 105.742898 E', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(3, 'Tọa độ 3', '9.572843 N, 105.745688 E', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(4, 'Tọa độ 4', '9.571639 N, 105.748757 E', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(5, 'Tọa độ 5', '9.571639 N, 105.748757 E', 1, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(6, 'Tọa độ 1', '9.567941 N, 105.745900 E', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(7, 'Tọa độ 2', '9.571219 N, 105.746927 E', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(8, 'Tọa độ 3', '9.570929 N, 105.744803 E', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(9, 'Tọa độ 4', '9.566659 N, 105.742109 E', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(10, 'Tọa độ 5', 'Chưa có', 2, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(11, 'Tọa độ 1', '9.572816 N, 105.747786 E', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(12, 'Tọa độ 2', 'Chưa có', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(13, 'Tọa độ 3', 'Chưa có', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(14, 'Tọa độ 4', 'Chưa có', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(15, 'Tọa độ 5', 'Chưa có', 3, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(16, 'Tọa độ 1', '9.570890 N, 105.747758 E', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(17, 'Tọa độ 2', '9.569821 N, 105.742266 E', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(18, 'Tọa độ 3', 'Chưa có', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(19, 'Tọa độ 4', 'Chưa có', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(20, 'Tọa độ 5', 'Chưa có', 4, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(21, 'Tọa độ 1', '9.563974 N, 105.742907 E', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(22, 'Tọa độ 2', '9.574045 N, 105.734023 E', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(23, 'Tọa độ 3', '9.575835 N, 105.739572 E', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(24, 'Tọa độ 4', '9.566833 N, 105.733836 E', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(25, 'Tọa độ 5', 'Chưa có', 5, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(26, 'Tọa độ 1', '9.562804 N, 105.735163 E', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(27, 'Tọa độ 2', '9.565287 N, 105.742496 E', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(28, 'Tọa độ 3', '9.568298 N, 105.743803 E', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(29, 'Tọa độ 4', '9.567662 N, 105.733728 E', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(30, 'Tọa độ 5', '9.575595 N, 105.746317 E', 6, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(31, 'Tọa độ 1', '9.575614 N, 105.749954 E', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(32, 'Tọa độ 2', '9.573805 N, 105.751692 E', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(33, 'Tọa độ 3', '9.568964 N, 105.745518 E', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(34, 'Tọa độ 4', 'Chưa có', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(35, 'Tọa độ 5', 'Chưa có', 7, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(36, 'Tọa độ 1', 'Là loài hoạt động về đêm, được tìm thấy trên các thân gỗ lớn, trên các tảng đá lớn và cả trên nền rừng. Thường xuất hiện ở các sinh cảnh vườn rừng, rừng thứ sinh, kẹt đá và ở các tảng đá lớn trong sinh cảnh ven suối.', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(37, 'Tọa độ 2', '9.572150 N; 105.749171 E', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(38, 'Tọa độ 3', '9.571834 N; 105.748832 E', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(39, 'Tọa độ 4', '9.574353 N, 105.750457 E', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(40, 'Tọa độ 5', 'Chưa có', 8, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(41, 'Tọa độ 1', '9.570530 N, 105.746281 E', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(42, 'Tọa độ 2', '9.570154 N, 105.745585 E', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(43, 'Tọa độ 3', 'Chưa có', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(44, 'Tọa độ 4', 'Chưa có', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(45, 'Tọa độ 5', 'Chưa có', 9, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(46, 'Tọa độ 1', '9.568512 N; 105.745714 E', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(47, 'Tọa độ 2', '9.565689 N; 105.746787 E', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(48, 'Tọa độ 3', '9.572158 N; 105.748482 E', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(49, 'Tọa độ 4', 'Chưa có', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(50, 'Tọa độ 5', 'Chưa có', 10, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(51, 'Tọa độ 1', '9.567941 N, 105.745900 E', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(52, 'Tọa độ 2', '9.571219 N, 105.746927 E', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(53, 'Tọa độ 3', '9.570929 N, 105.744803 E', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(54, 'Tọa độ 4', '9.566659 N, 105.742109 E', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(55, 'Tọa độ 5', 'Chưa có', 11, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(56, 'Tọa độ 1', '9.571639 N, 105.748757 E', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(57, 'Tọa độ 2', '9.563858 N, 105.742898 E', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(58, 'Tọa độ 3', '9.572843 N, 105.745688 E', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(59, 'Tọa độ 4', '9.571639 N, 105.748757 E', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(60, 'Tọa độ 5', '9.571639 N, 105.748757 E', 12, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(61, 'Tọa độ 1', '9.575814 N, 105.746348 E', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(62, 'Tọa độ 2', '9.575835 N; 105.739632 E', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(63, 'Tọa độ 3', '9.570419 N; 105.732745 E', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(64, 'Tọa độ 4', '9.564791 N; 105.737014 E', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(65, 'Tọa độ 5', '9.563098 N; 105.744053 E', 13, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(66, 'Tọa độ 1', '9.566779 N, 105.746481 E', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(67, 'Tọa độ 2', '9.567480 N, 105.740065 E', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(68, 'Tọa độ 3', '9.566335 N, 105.742257 E', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(69, 'Tọa độ 4', 'Chưa có', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(70, 'Tọa độ 5', 'Chưa có', 14, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(71, 'Tọa độ 1', '9.568883 N, 105.744345 E', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(72, 'Tọa độ 2', '9.563726 N, 105.736029 E', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(73, 'Tọa độ 3', '9.562971 N, 105.743106 E', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(74, 'Tọa độ 4', '9.569341 N, 105.745378 E', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(75, 'Tọa độ 5', '9.575449 N, 105.738078 E', 15, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(76, 'Tọa độ 1', '9.574483 N, 105.735084 E', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(77, 'Tọa độ 2', '9.563477 N, 105.735868 E', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(78, 'Tọa độ 3', 'Chưa có', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(79, 'Tọa độ 4', 'Chưa có', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(80, 'Tọa độ 5', 'Chưa có', 16, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(81, 'Tọa độ 1', '9.564849 N, 105.737191 E', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(82, 'Tọa độ 2', '9.570315 N, 105.748801 E', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(83, 'Tọa độ 3', '9.577027 N, 105.742940 E', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(84, 'Tọa độ 4', 'Chưa có', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(85, 'Tọa độ 5', 'Chưa có', 17, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(86, 'Tọa độ 1', '9.572058 N, 105.745009 E', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(87, 'Tọa độ 2', '9.568216 N, 105.741847 E', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(88, 'Tọa độ 3', '9.567883 N, 105.733726 E', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(89, 'Tọa độ 4', 'Chưa có', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(90, 'Tọa độ 5', 'Chưa có', 18, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(91, 'Tọa độ 1', '9.572816 N, 105.747786 E', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(92, 'Tọa độ 2', 'Chưa có', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(93, 'Tọa độ 3', 'Chưa có', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(94, 'Tọa độ 4', 'Chưa có', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(95, 'Tọa độ 5', 'Chưa có', 19, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(96, 'Tọa độ 1', '9.570890 N, 105.747758 E', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(97, 'Tọa độ 2', '9.569821 N, 105.742266 E', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(98, 'Tọa độ 3', 'Chưa có', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(99, 'Tọa độ 4', 'Chưa có', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(100, 'Tọa độ 5', 'Chưa có', 20, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(101, 'Tọa độ 1', '9.563974 N, 105.742907 E', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(102, 'Tọa độ 2', '9.574045 N, 105.734023 E', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(103, 'Tọa độ 3', '9.575835 N, 105.739572 E', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(104, 'Tọa độ 4', '9.566833 N, 105.733836 E', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(105, 'Tọa độ 5', 'Chưa có', 21, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(106, 'Tọa độ 1', '9.562804 N, 105.735163 E', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(107, 'Tọa độ 2', '9.565287 N, 105.742496 E', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(108, 'Tọa độ 3', '9.568298 N, 105.743803 E', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(109, 'Tọa độ 4', '9.567662 N, 105.733728 E', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(110, 'Tọa độ 5', '9.575595 N, 105.746317 E', 22, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(111, 'Tọa độ 1', '9.575614 N, 105.749954 E', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(112, 'Tọa độ 2', '9.573805 N, 105.751692 E', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(113, 'Tọa độ 3', '9.568964 N, 105.745518 E', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(114, 'Tọa độ 4', 'Chưa có', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(115, 'Tọa độ 5', 'Chưa có', 23, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(116, 'Tọa độ 1', '9.572352 N; 105.750249 E', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(117, 'Tọa độ 2', '9.572150 N; 105.749171 E', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(118, 'Tọa độ 3', '9.571834 N; 105.748832 E', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(119, 'Tọa độ 4', '9.574353 N, 105.750457 E ', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(120, 'Tọa độ 5', 'Chưa có', 24, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(121, 'Tọa độ 1', '9.570530 N, 105.746281 E', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(122, 'Tọa độ 2', '9.570154 N, 105.745585 E', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(123, 'Tọa độ 3', 'Chưa có', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(124, 'Tọa độ 4', 'Chưa có', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(125, 'Tọa độ 5', 'Chưa có', 25, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(126, 'Tọa độ 1', '9.568512 N; 105.745714 E', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(127, 'Tọa độ 2', '9.565689 N; 105.746787 E', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(128, 'Tọa độ 3', '9.572158 N; 105.748482 E', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(129, 'Tọa độ 4', 'Chưa có', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(130, 'Tọa độ 5', 'Chưa có', 26, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(131, 'Tọa độ 1', '9.573264 N, 105.747454 E', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(132, 'Tọa độ 2', '9.571806 N, 105.744368 E', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(133, 'Tọa độ 3', 'Chưa có', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(134, 'Tọa độ 4', 'Chưa có', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(135, 'Tọa độ 5', 'Chưa có', 27, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(136, 'Tọa độ 1', '9.575381 N, 105.750288 E', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(137, 'Tọa độ 2', 'Chưa có', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(138, 'Tọa độ 3', 'Chưa có', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(139, 'Tọa độ 4', 'Chưa có', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(140, 'Tọa độ 5', 'Chưa có', 28, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(141, 'Tọa độ 1', '9.574122 N, 105.751436 E', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(142, 'Tọa độ 2', 'Chưa có', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(143, 'Tọa độ 3', 'Chưa có', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(144, 'Tọa độ 4', 'Chưa có', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(145, 'Tọa độ 5', 'Chưa có', 29, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(146, 'Tọa độ 1', '9.575423 N, 105.749730 E', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(147, 'Tọa độ 2', 'Chưa có', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(148, 'Tọa độ 3', 'Chưa có', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(149, 'Tọa độ 4', 'Chưa có', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53'),
(150, 'Tọa độ 5', 'Chưa có', 30, '2022-04-24 21:42:53', '2022-04-24 21:42:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NAT', 'admin', '0941649826', '$2y$10$KdA1Evj0uZtfkm1SOOkJ1.KW6NKGhM7I56Ax4gPxw4DI/Eoe/dfbK', 'Tgf3zGprABKnNWVr42roHoIzrm3IJ0kxMQfcsF4W519NhxEWtnUGpIuXu49u', '2022-04-24 21:42:49', '2022-04-24 21:42:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bao_ton`
--
ALTER TABLE `bao_ton`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bao_ton_sinhvat_id_foreign` (`sinhvat_id`);

--
-- Chỉ mục cho bảng `bo`
--
ALTER TABLE `bo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bo_lop_id_foreign` (`lop_id`);

--
-- Chỉ mục cho bảng `ho`
--
ALTER TABLE `ho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ho_bo_id_foreign` (`bo_id`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lop_nganh_id_foreign` (`nganh_id`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_sinhvat_id_foreign` (`sinhvat_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nganh`
--
ALTER TABLE `nganh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `sinh_vat`
--
ALTER TABLE `sinh_vat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sinh_vat_ho_id_foreign` (`ho_id`);

--
-- Chỉ mục cho bảng `toa_do`
--
ALTER TABLE `toa_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toa_do_sinhvat_id_foreign` (`sinhvat_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bao_ton`
--
ALTER TABLE `bao_ton`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `bo`
--
ALTER TABLE `bo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ho`
--
ALTER TABLE `ho`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `nganh`
--
ALTER TABLE `nganh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinh_vat`
--
ALTER TABLE `sinh_vat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `toa_do`
--
ALTER TABLE `toa_do`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bao_ton`
--
ALTER TABLE `bao_ton`
  ADD CONSTRAINT `bao_ton_sinhvat_id_foreign` FOREIGN KEY (`sinhvat_id`) REFERENCES `sinh_vat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bo`
--
ALTER TABLE `bo`
  ADD CONSTRAINT `bo_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `lop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ho`
--
ALTER TABLE `ho`
  ADD CONSTRAINT `ho_bo_id_foreign` FOREIGN KEY (`bo_id`) REFERENCES `bo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_nganh_id_foreign` FOREIGN KEY (`nganh_id`) REFERENCES `nganh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_sinhvat_id_foreign` FOREIGN KEY (`sinhvat_id`) REFERENCES `sinh_vat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinh_vat`
--
ALTER TABLE `sinh_vat`
  ADD CONSTRAINT `sinh_vat_ho_id_foreign` FOREIGN KEY (`ho_id`) REFERENCES `ho` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `toa_do`
--
ALTER TABLE `toa_do`
  ADD CONSTRAINT `toa_do_sinhvat_id_foreign` FOREIGN KEY (`sinhvat_id`) REFERENCES `sinh_vat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

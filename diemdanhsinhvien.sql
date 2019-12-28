-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 28, 2019 lúc 02:27 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `diemdanhsinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `dd`
-- (See below for the actual view)
--
CREATE TABLE `dd` (
`MaLop` varchar(5)
,`MaSV` varchar(10)
,`HoVaTen` varchar(50)
,`Tong` bigint(13)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh`
--

CREATE TABLE `diemdanh` (
  `MaLop` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaSV` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoVaTen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B1` int(11) DEFAULT NULL,
  `B2` int(11) DEFAULT NULL,
  `B3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diemdanh`
--

INSERT INTO `diemdanh` (`MaLop`, `MaSV`, `HoVaTen`, `B1`, `B2`, `B3`) VALUES
('L1', '175A071301', 'Vũ Xuân Tùng', 1, 1, 1),
('L1', '175A071336', 'Phạm Đăng Nam', 0, 1, 1),
('l2', '175A071302', 'Nguyễn Văn Sơn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MaGV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenGiangVien` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TrinhDo` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`MaGV`, `TenGiangVien`, `TrinhDo`) VALUES
('GV1', 'Kiều Tuấn Dũng', NULL),
('GV2', 'Nguyễn Phương Dung ', NULL),
('GV3', 'Trần Mạnh Tuấn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MaMonHoc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaGV` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhongHoc` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`MaLop`, `MaMonHoc`, `MaGV`, `PhongHoc`) VALUES
('L1', 'MH1', 'GV1', 'P301'),
('l2', 'MH3', 'GV3', 'P310');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `MaMonHoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenMonHoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoTinChi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`MaMonHoc`, `TenMonHoc`, `SoTinChi`) VALUES
('MH1', 'Công nghệ Web', 3),
('MH2', 'Lập trình nâng cao', 3),
('MH3', 'Phân tích và thiết kế ', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `TenDangNhap` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `MaSV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `HoVaTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`MaSV`, `HoVaTen`, `NgaySinh`, `DiaChi`) VALUES
('175A071301', 'Vũ Xuân Tùng', '1999-12-10', 'Hà Nội'),
('175A071302', 'Nguyễn Văn Sơn', '1999-09-06', 'Hưng Yên'),
('175A071336', 'Phạm Đăng Nam', '1999-07-05', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `Tong` int(11) DEFAULT NULL,
  `GhiChu` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`Tong`, `GhiChu`) VALUES
(3, 'Tốt'),
(2, 'TB'),
(1, 'Kém'),
(0, 'Cấm thi');

-- --------------------------------------------------------

--
-- Cấu trúc cho view `dd`
--
DROP TABLE IF EXISTS `dd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dd`  AS  select `diemdanh`.`MaLop` AS `MaLop`,`diemdanh`.`MaSV` AS `MaSV`,`diemdanh`.`HoVaTen` AS `HoVaTen`,`diemdanh`.`B1` + `diemdanh`.`B2` + `diemdanh`.`B3` AS `Tong` from `diemdanh` ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MaGV`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `MaGV` (`MaGV`),
  ADD KEY `MaMonHoc` (`MaMonHoc`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`MaMonHoc`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`MaSV`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `diemdanh_ibfk_2` FOREIGN KEY (`MaSV`) REFERENCES `sinhvien` (`MaSV`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`),
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`MaMonHoc`) REFERENCES `monhoc` (`MaMonHoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

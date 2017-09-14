-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 08, 2017 lúc 03:23 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fw_pinoyfitness`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(5, 5, 'BẮT ĐẦU MỘT LỐI SỐNG KHỎE MẠNH VÀ NĂNG ĐỘNG NGAY HÔM NAY', 'bat-dau-mot-loi-song-khoe-manh-va-nang-dong-ngay-hom-nay', 'vl1.png', '<h2 class="home4-title" style="text-align: center;">QUYỀN LỢI KHI THAM GIA HỘI VI&Ecirc;N</h2>\r\n<div class="text-center pd-50" style="text-align: center;">Quyền hội vi&ecirc;n sẽ cho ph&eacute;p bạn c&oacute; cơ hội tham gia v&agrave;o c&aacute;c lớp Yoga, Nhảy, tập luyện theo nh&oacute;m của ch&uacute;ng t&ocirc;i kh&ocirc;ng giới hạn về thời gian v&agrave; số lượng lớp với hơn 50 chương tr&igrave;nh với c&aacute;c lớp học kh&aacute;c nhau. Ngo&agrave;i ra, bạn c&ograve;n c&oacute; thể tham gia c&aacute;c lớp học ri&ecirc;ng với HLV như Kick Fit, MMA v&agrave; Dynamic Stretching.</div>', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\r\n<p>Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\r\n<p>Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 1, NULL, NULL, NULL, 'gioi-thieu', '2017-09-07 07:21:50', '2017-09-07 00:21:50'),
(17, 5, 'BẮT ĐẦU MỘT LỐI SỐNG KHỎE MẠNH VÀ NĂNG ĐỘNG NGAY HÔM NAY', 'bat-dau-mot-loi-song-khoe-manh-va-nang-dong-ngay-hom-nay', 'vl1.png', NULL, NULL, '<h2 class="home4-title" style="text-align: center;">QUYỀN LỢI KHI THAM GIA HỘI VI&Ecirc;N</h2>\r\n<div class="text-center pd-50" style="text-align: center;">Quyền hội vi&ecirc;n sẽ cho ph&eacute;p bạn c&oacute; cơ hội tham gia v&agrave;o c&aacute;c lớp Yoga, Nhảy, tập luyện theo nh&oacute;m của ch&uacute;ng t&ocirc;i kh&ocirc;ng giới hạn về thời gian v&agrave; số lượng lớp với hơn 50 chương tr&igrave;nh với c&aacute;c lớp học kh&aacute;c nhau. Ngo&agrave;i ra, bạn c&ograve;n c&oacute; thể tham gia c&aacute;c lớp học ri&ecirc;ng với HLV như Kick Fit, MMA v&agrave; Dynamic Stretching.</div>', 1, NULL, NULL, NULL, 'hoi-vien', '2017-09-07 07:23:58', '2017-09-07 00:23:58'),
(18, 5, 'HÃY CHIA SẺ ĐẾN NHỮNG NGƯỜI THÂN YÊU', 'hay-chia-se-den-nhung-nguoi-than-yeu', NULL, NULL, NULL, '<p>Với quyền hạn của thẻ&nbsp;<strong class="main-color">VIP Guest Privileges</strong>, bạn được quyền dẫn dắt, giới thiệu một người bạn hay th&agrave;nh vi&ecirc;n trong&nbsp;<br class="hidden-xs hidden-sm" />gia đ&igrave;nh c&ugrave;ng tham gia trong mỗi lần luyện tập, c&ugrave;ng chia sẻ b&iacute; quyết c&oacute; cuộc sống tốt đẹp hơn một c&aacute;ch trọn vẹn.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 1, NULL, NULL, NULL, 'chia-se', '2017-09-07 08:52:41', '2017-09-07 01:52:41'),
(6, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'tuyen-dung', '2017-08-10 01:30:53', '2017-08-10 01:30:53'),
(7, 5, 'LIÊN HỆ VỚI CHÚNG TÔI', 'lien-he-voi-chung-toi', 'banner2.png', '<p class="text-center" style="text-align: center;">Tr&acirc;n trọng cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; quan t&acirc;m đến sản phẩm v&agrave; dịch vụ của ch&uacute;ng t&ocirc;i.</p>\r\n<p class="text-center mg-b20" style="text-align: center;">Qu&yacute; kh&aacute;ch c&oacute; thể gửi thư để li&ecirc;n hệ với ch&uacute;ng t&ocirc;i từ website n&agrave;y bằng c&aacute;ch điền th&ocirc;ng tin v&agrave;o mẫu b&ecirc;n dưới, ch&uacute;ng t&ocirc;i sẽ nhanh&nbsp;<br />ch&oacute;ng li&ecirc;n hệ với Qu&yacute; kh&aacute;ch trong thời gian sớm nhất.</p>', NULL, '<p>Tr&acirc;n trọng cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; quan t&acirc;m đến sản phẩm v&agrave; dịch vụ của ch&uacute;ng t&ocirc;i.</p>\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể gửi thư để li&ecirc;n hệ với ch&uacute;ng t&ocirc;i từ website n&agrave;y bằng c&aacute;ch điền th&ocirc;ng tin v&agrave;o mẫu b&ecirc;n dưới, ch&uacute;ng t&ocirc;i sẽ nhanh ch&oacute;ng li&ecirc;n hệ với Qu&yacute; kh&aacute;ch trong thời gian sớm nhất.</p>', 1, NULL, NULL, NULL, 'lien-he', '2017-08-29 07:02:28', '2017-08-29 00:02:28'),
(8, 5, 'Quản lý footer', 'quan-ly-footer', 'logo.png', NULL, NULL, '<h2>C&Ocirc;NG TY TNHH XUẤT NHẬP KHẨU THIẾT BỊ CHĂM S&Oacute;C SỨC KHỎE VIỆT NAM</h2>\r\n<p>H&agrave; Nội: 65 Phố Cửa Bắc, Quận Ba Đ&igrave;nh (C&oacute; b&atilde;i đỗ &Ocirc;t&ocirc;) - 123 Nguyễn Tr&atilde;i, Quận Thanh Xu&acirc;n</p>\r\n<p>Đ&agrave; Nẵng: 220A Đường Hải Ph&ograve;ng, Phường T&acirc;n Ch&iacute;nh, Quận Thanh Kh&ecirc;. Điện thoại: 0236 6517 888</p>\r\n<p>Hồ Ch&iacute; Minh: 85 Nguyễn Thị Thập (Khu d&acirc;n cư Himlam, P T&acirc;n Hưng). Ch&uacute; &Yacute;: Nguyễn Thị Thập c&oacute; 2 địa chỉ số 85, 85 Ghế massage nằm tại Ch&acirc;n cầu Himlam gần Lotte, Quận 7). Điện thoại: 08 69991101</p>', 1, NULL, NULL, NULL, 'footer', '2017-08-10 23:51:55', '2017-08-10 23:52:34'),
(9, 5, 'Chuyên Gia Ghế Massage Tokuyo - Nhật Bản - Ghế Massage Ưu Thích Nhất Thế Giới', 'chuyen-gia-ghe-massage-tokuyo-nhat-ban-ghe-massage-uu-thich-nhat-the-gioi', 'avatar.jpg', NULL, NULL, '<p>Ghế massage Tokuyo thuộc tập đo&agrave;n SANYO Nhật Bản. Ch&uacute;ng t&ocirc;i tự tin chất lượng sản phẩm ổn định qua nhiều năm, Với con lăn quang học được sản xuất độc quyền bởi tập đo&agrave;n LG Electronics n&ecirc;n d&ograve; t&igrave;m huyệt đạo ch&iacute;nh x&aacute;c tuyệt đối (Kh&ocirc;ng bỏ s&oacute;t huyệt đạo n&agrave;o tr&ecirc;n cơ thể bạn) n&ecirc;n ghế massage của ch&uacute;ng t&ocirc;i lu&ocirc;n l&agrave;m bạn phấn kh&iacute;ch v&ocirc; c&ugrave;ng khi bạn được massage đ&uacute;ng huyệt đạo.</p>\r\n<p>Dịch vụ tiện &iacute;ch: Vận chuyển miễn ph&iacute;, trả g&oacute;p l&atilde;i suất 0%, Bảo h&agrave;nh tại nh&agrave;, Mua h&agrave;ng l&agrave; c&oacute; qu&agrave; hoặc gi&aacute; tốt nhất, thử h&agrave;ng tại nh&agrave; khoảng 2-3 mẫu miễn ph&iacute;!!!</p>\r\n<p>Để trải sản phẩm, đăng k&yacute; d&ugrave;ng thử, đặt mua giao h&agrave;ng tại nh&agrave;, qu&yacute; kh&aacute;ch gọi theo Hotline: 0911.270.666</p>', 1, NULL, NULL, NULL, 'san-pham', '2017-08-16 01:40:24', '2017-08-15 18:40:24'),
(10, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'quang-cao-tin-tuc', '2017-08-14 08:42:07', '2017-08-14 08:42:07'),
(11, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'chinh-sach', '2017-08-20 20:57:44', '2017-08-20 20:57:44'),
(12, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'about', '2017-08-20 21:00:14', '2017-08-20 21:00:14'),
(13, 5, 'Gặp gỡ những chuyên gia thể hình hàng đầu', 'gap-go-nhung-chuyen-gia-the-hinh-hang-dau', 'Untitled-1-Recovered_02.png', 'Dù bạn yêu thích Yoga, đam mê bộ môn Dance đầy sôi động, hay môn võ MMA cực mạnh mẽ. Bạn sẽ luôn được hướng dẫn bởi những chuyên gia hàng đầu.', '7mWQ38SpEf8', '<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.<br /><br />Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/jpg19.jpg" alt="#" /></p>\r\n<p class="img-cap">H&igrave;nh ảnh của Nguyễn Đức trong một bản tin tr&ecirc;n truyền h&igrave;nh Nhật.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).<br /><br />Người Việt đầu ti&ecirc;n bị d&iacute;nh liền cơ thể trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Nhật Bản - Ảnh 1. H&igrave;nh ảnh của Nguyễn Đức trong một bản tin tr&ecirc;n truyền h&igrave;nh Nhật. Với vai tr&ograve; Đại sứ h&ograve;a b&igrave;nh tại Nhật Bản, nằm trong ban chấp h&agrave;nh Hội hữu Nghị Việt Nam- Nhật Bản (2016 - 2021), anh Đức đ&atilde; c&oacute; dịp đế thăm th&agrave;nh phố Hiroshima v&agrave;o th&aacute;ng 10/2016. Tại buổi gặp gỡ, anh b&agrave;y tỏ nguyện vọng được l&agrave;m việc tại Nhật Bản với b&agrave; Kubota Tomik, ph&oacute; hiệu trưởng trường Đại học.<br /><br />Người Việt đầu ti&ecirc;n bị d&iacute;nh liền cơ thể trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Nhật Bản - Ảnh 2. Nguyễn Đức (thứ 2 từ phải qua) v&agrave; những người bạn Nhật trong một sự kiện được tổ chức tại TP.HCM. Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.<br /><br />Trong chuyến thăm của Nhật Ho&agrave;ng đến Việt Nam v&agrave;o th&aacute;ng 3 vừa qua, anh Đức được vinh dự l&agrave; người tiếp đ&oacute;n v&agrave; diện kiến những nh&acirc;n vật cấp cao n&agrave;y.<br /><br />Nguyễn Đức (sinh 25/2/1981) l&agrave; em trai song sinh của Nguyễn Việt (sinh25/2/1981 mất 6/10/2007). Hai anh em Việt - Đức l&agrave; cặp sinh đ&ocirc;i đầu ti&ecirc;n d&iacute;nh liền nhau ở phần bụng - bộ phận sinh dục - hậu m&ocirc;n v&agrave; trọng lượng chỉ 2,2 kg, được sinh ra ở Sa Thầy, Kon Tum, Việt Nam.</p>', 1, NULL, NULL, NULL, 'dich-vu', '2017-09-06 08:25:38', '2017-09-06 01:25:38'),
(14, 5, 'Tin tức sự kiện', 'tin-tuc-su-kien', NULL, NULL, NULL, '<p>Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames</p>', 1, NULL, NULL, NULL, 'tin-tuc', '2017-08-30 09:21:46', '2017-08-30 02:21:46'),
(15, 5, 'MẪU THIẾT KẾ ĐẸP', 'mau-thiet-ke-dep', NULL, NULL, NULL, '<h3 class="text-right title">Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames</h3>', 1, NULL, NULL, NULL, 'mau-thiet-ke', '2017-08-30 10:01:23', '2017-08-30 03:01:23'),
(16, 5, 'GIẢI PHÁP CHO NGÔI NHÀ CỦA BẠN', 'giai-phap-cho-ngoi-nha-cua-ban', '2_02.jpg', NULL, NULL, '<p>Khởi nguồn từ 1999 với &yacute; tưởng tạo sự kh&aacute;c biệt v&agrave; gu thẩm mỹ Tinh Tế, nh&agrave; xinh đ&atilde; trưởng th&agrave;nh v&agrave; giữ vững</p>\r\n<p>vị tr&iacute; thương hiệu nội thất h&agrave;ng đầu Việt Nam.</p>', 1, NULL, NULL, NULL, 'slogan', '2017-08-31 01:53:21', '2017-08-30 18:53:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, '1502966468_noithatnhaodep4.png', 1, NULL, NULL, 0, '2017-08-17 10:41:08', '0000-00-00 00:00:00'),
(5, 1, NULL, NULL, '1503999263_sp1.png', 1, NULL, NULL, 0, '2017-08-29 09:34:23', '2017-08-29 09:34:23'),
(6, 1, NULL, NULL, '1503999263_sp2.png', 1, NULL, NULL, 0, '2017-08-29 09:34:23', '2017-08-29 09:34:23'),
(7, 1, NULL, NULL, '1503999263_sp3.png', 1, NULL, NULL, 0, '2017-08-29 09:34:23', '2017-08-29 09:34:23'),
(8, 1, NULL, NULL, '1503999263_sp4.png', 1, NULL, NULL, 0, '2017-08-29 09:34:23', '2017-08-29 09:34:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(30, 5, 'Banner hội viên', 'hoi-vien', '1504604420_dk.png', NULL, NULL, 1, 0, 'chuyen-muc', 4, '2017-09-05 09:40:20', '2017-09-05 02:40:20'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'Tiêu chí 1', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 1, '2017-09-05 03:05:01', '2017-09-05 03:05:01'),
(39, 5, 'Tiêu chí 2', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 2, '2017-09-05 03:05:10', '2017-09-05 03:05:10'),
(40, 5, 'Tiêu chí 3', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 3, '2017-09-05 03:05:22', '2017-09-05 03:05:22'),
(41, 5, 'Tiêu chí 4', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 4, '2017-09-05 03:05:31', '2017-09-05 03:05:31'),
(43, 5, 'Banner quảng cáo index', 'index', '1504688758_jpg111.jpg', NULL, NULL, 1, 0, 'chuyen-muc', 8, '2017-09-06 02:05:58', '2017-09-06 02:05:58'),
(44, 5, 'Quảng cáo tin tức', 'quang-cao', '1504759438_ads.png', NULL, NULL, 1, 0, 'chuyen-muc', 9, '2017-09-07 04:43:58', '2017-09-06 21:43:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-09-01 01:34:21', '2017-08-31 18:34:21'),
(13, 'Tin tức', 'tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-08-24 04:17:41', '2017-08-23 21:17:41'),
(14, 'Liên hệ', 'lien-he', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-08-24 04:17:32', '2017-08-23 21:17:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(2, 0, 5, 'Thế giới trẻ ngày càng phát triển', 'the-gioi-tre-ngay-cang-phat-trien', '1504688369_vl1.png', NULL, 'Tokuyo đứng đầu trong ngành sản xuất với những kỹ thuật xuất sắc nhất. Trung tâm lắp ráp MIT quản lý hiệu quả và vận hành lắp ráp máy móc, linh kiện, bảng mạch và điều khiển chính xác các sản phẩm khác để đảm bảo chất lượng và an toàn ổn định', '<p class="desc">Ghế massage Tokuyo TC 277 l&agrave; một trong số những sản phẩm mang tới nhiều t&iacute;nh năng ưu việt, gi&aacute; cả phải chăng v&agrave; được kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch nhất hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/ads1.jpg" alt="" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/iu1.jpg" alt="" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>', 1, 1, 'Title bài viết', 'Keyword bài viết', 'Decription bài viết', 'tin-tuc', 1, '2017-09-06 08:59:29', '2017-09-06 01:59:29'),
(3, 0, 5, 'Tình hình phát triển kinh tế thế giới', 'tinh-hinh-phat-trien-kinh-te-the-gioi', '1504688333_jpg7.jpg', NULL, 'Redirecting to a new URL and flashing data to the session are usually done at the same time. Typically, this is done after successfully performing an action when you flash a success message to the session', '<p>&nbsp;</p>\r\n<p class="desc">Ghế massage Tokuyo TC 277 l&agrave; một trong số những sản phẩm mang tới nhiều t&iacute;nh năng ưu việt, gi&aacute; cả phải chăng v&agrave; được kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch nhất hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/ads1.jpg" alt="" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/iu1.jpg" alt="" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p class="desc">Ghế massage Tokuyo TC 277 l&agrave; một trong số những sản phẩm mang tới nhiều t&iacute;nh năng ưu việt, gi&aacute; cả phải chăng v&agrave; được kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch nhất hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/ads1.jpg" alt="" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/iu1.jpg" alt="" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>', 1, 1, NULL, NULL, NULL, 'tin-tuc', 2, '2017-09-06 08:58:53', '2017-09-06 01:58:53'),
(9, 0, 5, 'Tokuyo đứng đầu trong ngành sản xuất với những kỹ thuật xuất sắc nhất.', 'tokuyo-dung-dau-trong-nganh-san-xuat-voi-nhung-ky-thuat-xuat-sac-nhat', '1504688344_jpg14.jpg', NULL, 'Tokuyo đứng đầu trong ngành sản xuất với những kỹ thuật xuất sắc nhất. Trung tâm lắp ráp MIT quản lý hiệu quả và vận hành lắp ráp máy móc, linh kiện, bảng mạch và điều khiển chính xác các sản phẩm khác để đảm bảo chất lượng và an toàn ổn định', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 3, '2017-09-06 08:59:04', '2017-09-06 01:59:04'),
(10, 0, 5, 'Tokuyo có hơn 500 showroom trên toàn thế giới', 'tokuyo-co-hon-500-showroom-tren-toan-the-gioi', '1504688382_dv4.png', NULL, 'Tokuyo có hơn 500 showroom trên toàn thế giới và đang làm thương hiệu bán ghế massage số 1 Châu Á, sản phẩm của chúng tôi đã xuất khẩu hơn 30 quốc gia trên thế giới. Ở Châu Âu, Nam Mỹ, Châu Á, Nam Phi Châu Úc và Trung Đông', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 4, '2017-09-06 08:59:42', '2017-09-06 01:59:42'),
(11, 13, 5, 'Hướng dẫn đặt hàng', 'huong-dan-dat-hang', '1502704122_tt.jpg', NULL, NULL, '<p>Ghế massage Tokuyo TC 277 l&agrave; một trong số những sản phẩm mang tới nhiều t&iacute;nh năng ưu việt, gi&aacute; cả phải chăng v&agrave; được kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch nhất hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/ads1.jpg" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p><img class="img-fluid" src="http://tpl.helios.vn/ghe-massage/images/iu1.jpg" /></p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>\r\n<p>Kh&ocirc;ng những mang tới những t&iacute;nh năng vượt trội, những c&ocirc;ng dụng bất ngờ v&agrave; thoải m&aacute;i cho người d&ugrave;ng, ghế massage Mini Sofa TC 277 c&ograve;n c&oacute; gi&aacute; th&agrave;nh tốt nhất tr&ecirc;n thị trường hiện nay.</p>', 1, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-22 08:53:56', '2017-08-22 01:53:56'),
(12, 13, 5, 'Hình thức thanh toán', 'hinh-thuc-thanh-toan', '1502704131_t2.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-11 18:08:06', '2017-08-14 02:48:51'),
(13, 13, 5, 'Hình thức vận chuyển', 'hinh-thuc-van-chuyen', '1502704140_t1.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 3, '2017-08-11 18:09:03', '2017-08-14 02:49:00'),
(14, 14, 5, 'Thông tin công ty', 'thong-tin-cong-ty', '1502704154_t2.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 4, '2017-08-11 18:09:22', '2017-08-14 02:49:14'),
(15, 14, 5, 'Hợp tác kinh doanh', 'hop-tac-kinh-doanh', '1502704164_tt.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 5, '2017-08-11 18:09:35', '2017-08-14 02:49:24'),
(16, 14, 5, 'Tiêu chí bán hàng', 'tieu-chi-ban-hang', '1502704174_tt.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 6, '2017-08-11 18:09:48', '2017-08-14 02:49:34'),
(17, 15, 5, 'Hỗ trợ bảo hành', 'ho-tro-bao-hanh', '1502704245_t1.jpg', NULL, 'Tôi thực sự chết lặng và đứng người chỉ sau hơn một tháng sử dụng ghế mát-xa toàn thân đứng người chỉ sau hơn một', NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 7, '2017-08-11 18:10:06', '2017-08-14 02:50:57'),
(18, 15, 5, 'Câu hỏi thường gặp', 'cau-hoi-thuong-gap', '1502704237_t2.jpg', NULL, 'Tôi thực sự chết lặng và đứng người chỉ sau hơn một tháng sử dụng ghế mát-xa toàn thân đứng người chỉ sau hơn một', NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 8, '2017-08-11 18:10:19', '2017-08-14 02:51:38'),
(19, 15, 5, 'Fuji Masage Air', 'fuji-masage-air', '1502704227_t2.jpg', NULL, 'Tôi thực sự chết lặng và đứng người chỉ sau hơn một tháng sử dụng ghế mát-xa toàn thân đứng người chỉ sau hơn một', NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 9, '2017-08-11 18:10:32', '2017-08-14 02:51:32'),
(20, 16, 5, 'Chính sách bảo hành bảo trì', 'chinh-sach-bao-hanh-bao-tri', '1502704218_t1.jpg', NULL, 'Tôi thực sự chết lặng và đứng người chỉ sau hơn một tháng sử dụng ghế mát-xa toàn thân đứng người chỉ sau hơn một', NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 10, '2017-08-11 18:10:41', '2017-08-14 02:51:27'),
(21, 16, 5, 'Chính sách đổi trả hàng', 'chinh-sach-doi-tra-hang', '1502704201_tt.jpg', NULL, 'Tôi thực sự chết lặng và đứng người chỉ sau hơn một tháng sử dụng ghế mát-xa toàn thân đứng người chỉ sau hơn một', NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 11, '2017-08-11 18:10:52', '2017-08-14 02:51:12'),
(22, 16, 5, 'Chính sách bảo mật', 'chinh-sach-bao-mat', '1502704210_t2.jpg', NULL, 'Tôi thực sự chết lặng và đứng người chỉ sau hơn một tháng sử dụng ghế mát-xa toàn thân đứng người chỉ sau hơn một', NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 12, '2017-08-11 18:11:03', '2017-08-14 02:51:05'),
(23, 0, 5, '“Hoảng hốt” khi đứng trước gương sau hơn một tháng sử dụng ghế massage', 'khi-dung-truoc-guong-sau-hon-mot-thang-su-dung-ghe-massage', '1504688356_jpg13.jpg', NULL, 'Không những mang tới những tính năng vượt trội, những công dụng bất ngờ và thoải mái cho người dùng, ghế massage Mini Sofa TC 277 còn có giá thành tốt nhất trên thị trường hiện nay.', '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 1, 0, NULL, NULL, NULL, 'tin-tuc', 5, '2017-09-06 08:59:16', '2017-09-06 01:59:16'),
(26, 0, 5, 'Dance', 'dance', '1504756222_dv1.png', '', 'Đốt cháy 650cal trong một giờ và dành thời gian riêng cho bản thân. Trong một môi trường thú vị và đầy năng lượng, các lớp Group-X được dẫn dắt bởi các HLV giàu nhiệt huyết để giúp bạn đánh bay mỡ thừa và thấy lại vóc dáng thon gọn, sức khỏe dẻo dai. Chỉ với 3 lớp mỗi tuần, bạn sẽ đạt được vóc dáng như mong muốn.', '<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>', 1, 1, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-07 05:02:37', '2017-09-06 22:02:37'),
(27, 0, 5, 'Yoga', 'yoga', '1504692356_jpg100.jpg', '1504757944_bg_den_03.png', 'Tất cả các lớp thể dục nhóm đều phù hợp cho mọi đối tượng. Luyện tập với bạn bè sẽ thú vị và mang lại hiệu quả cao hơn, đó là bí quyết của Thể dục nhóm. Các lớp được thiết kế để mang đến bạn một môi trường tập luyện đạt kết quả cao nhất.', '<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>', 1, 1, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-07 05:02:45', '2017-09-06 22:02:45'),
(28, 0, 5, 'Giảm cân', 'giam-can', '1504692373_dv2.png', '1504757508_dv3.png', 'Tất cả các lớp thể dục nhóm đều phù hợp cho mọi đối tượng. Luyện tập với bạn bè sẽ thú vị và mang lại hiệu quả cao hơn, đó là bí quyết của Thể dục nhóm. Các lớp được thiết kế để mang đến bạn một môi trường tập luyện đạt kết quả cao nhất.', '<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>', 1, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-07 05:02:53', '2017-09-06 22:02:53'),
(29, 0, 5, 'PTX', 'ptx', '1504757805_vl1.png', NULL, 'Đốt cháy 650cal trong một giờ và dành thời gian riêng cho bản thân. Trong một môi trường thú vị và đầy năng lượng, các lớp Group-X được dẫn dắt bởi các HLV giàu nhiệt huyết để giúp bạn đánh bay mỡ thừa và thấy lại vóc dáng thon gọn, sức khỏe dẻo dai. Chỉ với 3 lớp mỗi tuần, bạn sẽ đạt được vóc dáng như mong muốn.', '<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>', 1, 1, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-07 05:03:00', '2017-09-06 22:03:00'),
(30, 0, 5, 'Mẫu thiết kế nội thất châu âu mới nhất', 'mau-thiet-ke-noi-that-chau-au-moi-nhat', '1-12.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'mau-thiet-ke', 1, '2017-08-30 03:02:44', '2017-08-30 03:02:44'),
(31, 0, 5, 'Mẫu nhà hiện đại và được ưa chuộng nhất', 'mau-nha-hien-dai-va-duoc-ua-chuong-nhat', '1504087424_1-12.jpg', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'mau-thiet-ke', 2, '2017-08-30 10:03:44', '2017-08-30 03:03:44'),
(32, 20, 5, 'Không gian phòng ngủ châu âu mới nhất', 'khong-gian-phong-ngu-chau-au-moi-nhat', '1-13.jpg', NULL, 'Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar. Suspendisse tortor tellus, convallis eu pretium eu, dictum eu orci. Duis tincidunt varius leo et lobortis. Nulla hendrerit ipsum vitae sapien finibus, ut laoreet dolor elementum. Quisque egestas ex a tortor lacinia, id feugiat erat scelerisque.', '<p>Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar. Suspendisse tortor tellus, convallis eu pretium eu, dictum eu orci. Duis tincidunt varius leo et lobortis. Nulla hendrerit ipsum vitae sapien finibus, ut laoreet dolor elementum. Quisque egestas ex a tortor lacinia, id feugiat erat scelerisque.Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar. Suspendisse tortor tellus, convallis eu pretium eu, dictum eu orci. Duis tincidunt varius leo et lobortis. Nulla hendrerit ipsum vitae sapien finibus, ut laoreet dolor elementum. Quisque egestas ex a tortor lacinia, id feugiat erat scelerisque.Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar. Suspendisse tortor tellus, convallis eu pretium eu, dictum eu orci. Duis tincidunt varius leo et lobortis. Nulla hendrerit ipsum vitae sapien finibus, ut laoreet dolor elementum. Quisque egestas ex a tortor lacinia, id feugiat erat scelerisque.</p>', 1, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-31 06:52:05', '2017-08-30 23:52:05'),
(33, 20, 5, 'Không gian cafe vườn ở Tây Ninh', 'khong-gian-cafe-vuon-o-tay-ninh', '2_07.jpg', NULL, 'Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar.', '<p>Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar.Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar.</p>', 1, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-31 00:09:36', '2017-08-31 00:09:36'),
(34, 21, 5, 'Cận cảnh khu vườn như trong mơ ở Cần Thơ', 'can-canh-khu-vuon-nhu-trong-mo-o-can-tho', '4-1.jpg', NULL, 'Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar', '<p>Vestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinarVestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinarVestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinarVestibulum tincidunt ut justo quis molestie. Sed consectetur urna nibh, eu venenatis tortor hendrerit euismod. Sed ac mi suscipit, congue arcu ac, finibus leo. Duis nec turpis vel eros malesuada pulvinar</p>', 1, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-31 00:13:21', '2017-08-31 00:13:21'),
(35, 22, 5, 'Thiết kế phòng bếp phương đông mới', 'thiet-ke-phong-bep-phuong-dong-moi', '1-5.png', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-31 00:19:14', '2017-08-31 00:19:14'),
(36, 22, 5, 'Phòng bếp thế hệ mới công nghệ chuẩn chứng nhận châu âu', 'phong-bep-the-he-moi-cong-nghe-chuan-chung-nhan-chau-au', '3-7.jpg', NULL, 'Spanish Pavilion hội tụ cả sự độc đáo về kiến trúc lẫn nội thất bên trong. Được thiết kế bởi Pulgon Diseño và trưng bày tại Floriade 2012, Venlo, Hà Lan.', '<p>Spanish Pavilion hội tụ cả sự độc đ&aacute;o về kiến tr&uacute;c lẫn nội thất b&ecirc;n trong. Được thiết kế bởi Pulgon Dise&ntilde;o v&agrave; trưng b&agrave;y tại Floriade 2012, Venlo, H&agrave; Lan.Spanish Pavilion hội tụ cả sự độc đ&aacute;o về kiến tr&uacute;c lẫn nội thất b&ecirc;n trong. Được thiết kế bởi Pulgon Dise&ntilde;o v&agrave; trưng b&agrave;y tại Floriade 2012, Venlo, H&agrave; Lan.Spanish Pavilion hội tụ cả sự độc đ&aacute;o về kiến tr&uacute;c lẫn nội thất b&ecirc;n trong. Được thiết kế bởi Pulgon Dise&ntilde;o v&agrave; trưng b&agrave;y tại Floriade 2012, Venlo, H&agrave; Lan.Spanish Pavilion hội tụ cả sự độc đ&aacute;o về kiến tr&uacute;c lẫn nội thất b&ecirc;n trong. Được thiết kế bởi Pulgon Dise&ntilde;o v&agrave; trưng b&agrave;y tại Floriade 2012, Venlo, H&agrave; Lan.</p>', 1, 0, NULL, NULL, NULL, 'khong-gian', 5, '2017-08-31 00:20:11', '2017-08-31 00:20:11'),
(37, 0, 5, 'Kickfit', 'kickfit', 'jpg7.jpg', '1504757966_Untitled-1_03.png', 'Đốt cháy 650cal trong một giờ và dành thời gian riêng cho bản thân. Trong một môi trường thú vị và đầy năng lượng, các lớp Group-X được dẫn dắt bởi các HLV giàu nhiệt huyết để giúp bạn đánh bay mỡ thừa và thấy lại vóc dáng thon gọn, sức khỏe dẻo dai. Chỉ với 3 lớp mỗi tuần, bạn sẽ đạt được vóc dáng như mong muốn.', '<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>', 1, 1, NULL, NULL, NULL, 'dich-vu', 5, '2017-09-07 05:03:08', '2017-09-06 22:03:08'),
(38, 0, 5, 'Thể hình', 'the-hinh', 'jpg8.jpg', NULL, 'Đốt cháy 650cal trong một giờ và dành thời gian riêng cho bản thân. Trong một môi trường thú vị và đầy năng lượng, các lớp Group-X được dẫn dắt bởi các HLV giàu nhiệt huyết để giúp bạn đánh bay mỡ thừa và thấy lại vóc dáng thon gọn, sức khỏe dẻo dai. Chỉ với 3 lớp mỗi tuần, bạn sẽ đạt được vóc dáng như mong muốn.', '<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p>Anh Đức sẽ ch&iacute;nh thức trở th&agrave;nh gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima v&agrave;o th&aacute;ng 4 năm nay. 8X Việt sẽ giảng b&agrave;i cho sinh vi&ecirc;n về h&ograve;a b&igrave;nh v&agrave; tầm quan trọng của cuộc sống.</p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>\r\n<p><img class="img-responsive" title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/pinoy-fitness-bk/img/dvc.png" alt="" /></p>\r\n<p>Mới đ&acirc;y, trang NHK đ&atilde; đăng tải th&ocirc;ng tin Nguyễn Đức (36 tuổi), người em trong ca phẫu thuật t&aacute;ch rời cặp song sinh d&iacute;nh liền nổi tiếng lịch sử y học Việt Nam, được mời l&agrave;m gi&aacute;o sư thỉnh giảng tại Đại học Quốc tế Hiroshima (Nhật Bản).</p>', 1, 1, NULL, NULL, NULL, 'dich-vu', 6, '2017-09-07 05:03:15', '2017-09-06 22:03:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(37, 5, NULL, NULL, 'duydoan.nina@gmail.com', NULL, '', NULL, NULL, 1, 0, 'newsletter', 1, '2017-09-01 02:50:14', '2017-08-31 19:50:14'),
(38, 5, NULL, NULL, 'nguyennhan091@gmail.com', NULL, '', NULL, NULL, 1, 0, 'newsletter', 2, '2017-08-31 19:51:32', '2017-08-31 19:51:32'),
(40, 0, NULL, NULL, 'info@shoesshop.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-09-06 02:48:56', '2017-09-06 02:48:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Tin nội bộ', 'tin-noi-bo', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-08-07 21:52:19', '2017-08-08 00:13:28'),
(2, 'Tin thế giới', 'tin-the-gioi', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2017-08-07 21:36:29', '2017-08-08 00:13:31'),
(12, 'Dance', 'dance', '1504683666_dv4.png', NULL, 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-06 07:41:06', '2017-09-06 00:41:06'),
(13, 'Cách thức thanh toán', 'cach-thuc-thanh-toan', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-29 04:05:32', '2017-08-28 21:05:32'),
(14, 'Quy định mua hàng', 'quy-dinh-mua-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-29 04:05:44', '2017-08-28 21:05:44'),
(20, 'Không gian phòng ngủ', 'khong-gian-phong-ngu', '1504077747_1_19.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-30 07:48:00', '2017-08-30 00:48:00'),
(21, 'Không gian phòng khách', 'khong-gian-phong-khach', '1504078021_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-30 07:48:07', '2017-08-30 00:48:07'),
(22, 'Phòng bếp hiện đại', 'phong-bep-hien-dai', '1504078039_1_21.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-30 07:48:12', '2017-08-30 00:48:12'),
(23, 'Phòng ngủ châu âu', 'phong-ngu-chau-au', '1504078067_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-30 07:48:18', '2017-08-30 00:48:18'),
(24, 'Yoga', 'yoga', '1504683711_jpg5.jpg', NULL, 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-06 00:41:51', '2017-09-06 00:41:51'),
(25, 'Giảm cân', 'giam-can', '1504683733_xn3.png', NULL, 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-06 00:42:13', '2017-09-06 00:42:13'),
(26, 'PTX', 'ptx', '1504683749_gl-popup.png', NULL, 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-06 00:42:29', '2017-09-06 00:42:29'),
(27, 'Kickfit', 'kickfit', '1504683767_dv2.png', NULL, 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 5, '2017-09-06 00:42:47', '2017-09-06 00:42:47'),
(28, 'Thể hình', 'the-hinh', '1504683814_dv1.png', NULL, 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 6, '2017-09-06 00:43:34', '2017-09-06 00:43:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `price_old` int(11) NOT NULL DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `baohanh`, `model`, `namsanxuat`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, 1, 'Sản phẩm demo 1', 'san-pham-demo-1', '1504493930_2.jpg', 0, 0, NULL, '<h4 class="title detail-info-stitle">T&iacute;nh năng</h4>\r\n<p>Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames</p>\r\n<p>Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames</p>\r\n<p>Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames</p>\r\n<p class="text-center detail-imgwrap"><a title="" href="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/noithat-kientruc/pro-detail.html"><img title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/noithat-kientruc/img/4-1.jpg" alt="" /></a>&nbsp;<a title="" href="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/noithat-kientruc/pro-detail.html"><img title="" src="http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/noithat-kientruc/img/4-2.jpg" alt="" /></a></p>\r\n<p>Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames Fusce molestie urna eu lacus sollicitudin, ut finibus magna pharetra. Donec nec fringilla sapien. Proin volutpat lectus in l. Ut elementum quam ut vulputate molestie. Interdum et malesuada fames</p>', 'Vải len', 0, 'Vàng', NULL, NULL, 'Cavat', '<p>Ghế SG718 được thiết kế kiểu ghế xoay cao cấp bọc da c&ocirc;ng nghiệp m&agrave;u đen</p>\r\n<p>Sử dụng đệm m&uacute;t bọc da, ch&acirc;n tay ghế sử dụng th&eacute;p mạ tạo sự chắc chắn v&agrave; sang trọng, ốp tay nhựa.</p>\r\n<p>Ghế SG718 được thiết kế kiểu ghế xoay cao cấp bọc da c&ocirc;ng nghiệp m&agrave;u đen. Sử dụng đệm m&uacute;t bọc da, ch&acirc;n tay ghế sử dụng th&eacute;p mạ tạo sự chắc chắn v&agrave; sang trọng, ốp tay nhựa.</p>', 'XL, X, M', 1, 0, 1, 'Title sản phẩm', 'Keyword sản phẩm', 'Description sản phẩm', '2017-09-04 02:58:50', '2017-09-03 19:58:50'),
(2, 5, 1, NULL, 2, 'Sản phẩm demo 3', 'san-pham-demo-3', '1504493937_2.jpg', 0, 0, NULL, '<p>Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.</p>', NULL, 0, NULL, NULL, NULL, NULL, '<p>Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.</p>', NULL, 0, 0, 1, NULL, 'Key', 'Desc', '2017-09-04 02:58:57', '2017-09-03 19:58:57'),
(12, 5, 1, NULL, 3, 'Sản phẩm mẫu 2', 'san-pham-mau-2', '1504493950_3.jpg', 0, 0, NULL, '<p>Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.</p>', NULL, 0, NULL, NULL, NULL, NULL, '<p>Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.</p>', NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-04 02:59:10', '2017-09-03 19:59:10'),
(13, 5, 3, NULL, 4, 'Sản phẩm demo 4', 'san-pham-demo-4', '1504494032_2.jpg', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-04 03:00:32', '2017-09-03 20:00:32'),
(14, 5, 1, NULL, 5, 'Sản phẩm demo 5', 'san-pham-demo-5', '1504494038_3.jpg', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-04 03:00:38', '2017-09-03 20:00:38'),
(15, 5, 0, NULL, 6, 'Sản phẩm demo 6', 'san-pham-demo-6', '1504494044_3.jpg', 0, 0, NULL, '<p>Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.Ghế massage Mini Sofa Tokuyo TC 277 l&agrave; sản phẩm hiện đại với c&aacute;c con lăn di chuyển v&ocirc; c&ugrave;ng linh hoạt c&oacute; t&aacute;c dụng massage cơ thể, tăng qu&aacute; tr&igrave;nh lưu th&ocirc;ng m&aacute;u một c&aacute;ch hiệu quả, nhanh ch&oacute;ng. Từ đ&oacute; m&agrave; khiến kh&aacute;ch h&agrave;ng cảm thấy thoải m&aacute;i, khỏe khoắn v&agrave; tự tin nhất.</p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-04 03:00:44', '2017-09-03 20:00:44'),
(16, 5, 0, NULL, 7, 'ghế massage toàn thân FJ 566', 'ghe-massage-toan-than-fj-566', '1504494049_2.jpg', 0, 0, NULL, '<div class="up cont">&nbsp;</div>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-04 03:00:49', '2017-09-03 20:00:49'),
(19, 5, 6, NULL, 8, 'ghế massage toàn thân FJ 686', 'ghe-massage-toan-than-fj-686', '1504494054_3.jpg', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-09-04 03:00:54', '2017-09-03 20:00:54'),
(20, 5, 0, NULL, 9, 'Khóa việt long KM4', 'khoa-viet-long-km4', '1504494060_2.jpg', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2017-09-04 03:01:00', '2017-09-03 20:01:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Thời trang nam', 'thoi-trang-nam', '1504577383_3.jpg', 1, 0, 'Thời trang nam', 'Thời trang nam', 'Thời trang nam', '2017-09-05 02:09:43', '2017-09-04 19:09:43'),
(3, 0, 2, 'Thời trang nữ', 'thoi-trang-nu', '1504583340_1.jpg', 1, 0, NULL, NULL, NULL, '2017-09-05 03:49:00', '2017-09-04 20:49:00'),
(20, 1, 3, 'Quần jean nam', 'quan-jean-nam', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:12:30', '2017-09-04 19:12:30'),
(21, 1, 4, 'Áo thun nam', 'ao-thun-nam', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:12:42', '2017-09-04 19:12:42'),
(22, 1, 5, 'Áo sơ mi nam', 'ao-so-mi-nam', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:12:52', '2017-09-04 19:12:52'),
(23, 3, 6, 'Váy đầm nữ', 'vay-dam-nu', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:13:13', '2017-09-04 19:13:13'),
(24, 3, 7, 'Quần áo nữ', 'quan-ao-nu', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:13:23', '2017-09-04 19:13:23'),
(25, 3, 8, 'Phụ kiện nữ', 'phu-kien-nu', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:13:36', '2017-09-04 19:13:36'),
(26, 20, 9, 'Quần jean hàn quốc', 'quan-jean-han-quoc', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:14:01', '2017-09-04 19:14:01'),
(27, 20, 10, 'Quần jean ống côn', 'quan-jean-ong-con', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:14:21', '2017-09-04 19:14:21'),
(28, 20, 11, 'Quần jean nhập khẩu', 'quan-jean-nhap-khau', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:14:52', '2017-09-04 19:14:52'),
(29, 21, 12, 'Áo thun cổ tròn', 'ao-thun-co-tron', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:15:37', '2017-09-04 19:15:37'),
(30, 21, 13, 'Áo thun cổ trái tim', 'ao-thun-co-trai-tim', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:15:57', '2017-09-04 19:15:57'),
(31, 21, 14, 'Áo thun tay tài', 'ao-thun-tay-tai', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:16:20', '2017-09-04 19:16:20'),
(32, 21, 15, 'Áo ba lỗ', 'ao-ba-lo', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:16:32', '2017-09-04 19:16:32'),
(33, 23, 16, 'Váy ôm', 'vay-om', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:16:48', '2017-09-04 19:16:48'),
(34, 23, 17, 'Váy xòe', 'vay-xoe', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:17:00', '2017-09-04 19:17:00'),
(35, 23, 18, 'Váy yếm', 'vay-yem', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:17:13', '2017-09-04 19:17:13'),
(36, 24, 19, 'Áo sơ  mi', 'ao-so-mi', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:17:27', '2017-09-04 19:17:27'),
(37, 24, 20, 'Áo jean nữ', 'ao-jean-nu', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:17:46', '2017-09-04 19:17:46'),
(38, 24, 21, 'Áo khoác da', 'ao-khoac-da', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:18:11', '2017-09-04 19:18:11'),
(39, 25, 22, 'Vòng, lắc tay', 'vong-lac-tay', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:18:36', '2017-09-04 19:18:36'),
(40, 25, 23, 'Dây lưng thời trang', 'day-lung-thoi-trang', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:18:51', '2017-09-04 19:18:51'),
(41, 25, 24, 'Kính mắt', 'kinh-mat', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:19:12', '2017-09-04 19:19:12'),
(42, 25, 25, 'Phụ kiện khác', 'phu-kien-khac', '', 1, 0, NULL, NULL, NULL, '2017-09-04 19:19:28', '2017-09-04 19:19:28'),
(43, 22, 26, 'Áo sơ mi hàn quốc', 'ao-so-mi-han-quoc', '', 1, 0, NULL, NULL, NULL, '2017-09-04 20:48:14', '2017-09-04 20:48:14'),
(44, 22, 27, 'Sơ mi ngắn tay', 'so-mi-ngan-tay', '', 1, 0, NULL, NULL, NULL, '2017-09-04 20:48:27', '2017-09-04 20:48:27'),
(45, 22, 28, 'Áo sơ mi dài tay', 'ao-so-mi-dai-tay', '', 1, 0, NULL, NULL, NULL, '2017-09-04 20:48:40', '2017-09-04 20:48:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thế thới thời trang Fashion', 'Công ty thiết bị làm đẹp Pinoyfitness', 'Thế thới thời trang Fashion', 'http://gco.vn/', 'Toà Nhà 219 Trần Phú - Từ Sơn - Bắc Ninh - Việt Nam', '0985431797', '0985431797', '0985431797', 'duydoan.nina@gmail.com', '1504687303_img3.png', '1504690997_img13.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, '© GCO 2017. All rights reserved. Design by duydoan.webdesign@gmail.com.', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', NULL, NULL, 'Công ty thiết bị làm đẹp Pinoyfitness', 'Công ty thiết bị làm đẹp Pinoyfitness', '2017-09-07 09:31:45', '2017-09-07 02:31:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(26, 5, 'Giải pháp cho ngôi nhà bạn', NULL, '1504688664_jpg1.jpg', '1502510391_img-history-thumb-1954.png', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-09-06 09:04:24', '2017-09-06 02:04:24'),
(38, 5, 'Sản phẩm demo 12', NULL, '1504839494_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 8, '2017-09-08 02:59:48', '2017-09-07 19:59:48'),
(39, 5, 'Sản phẩm demo 13', NULL, '1504839505_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 7, '2017-09-08 02:59:41', '2017-09-07 19:59:41'),
(40, 5, 'Sản phẩm demo 14', NULL, '1504839600_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 9, '2017-09-07 20:00:00', '2017-09-07 20:00:00'),
(27, 5, 'Thế giới trẻ', NULL, '1504688674_jpg2.jpg', '1502510420_img-history-thumb-2013.png', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-09-06 09:04:34', '2017-09-06 02:04:34'),
(32, 5, 'Hình 1', NULL, '1504780100_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 6, '2017-09-08 02:59:34', '2017-09-07 19:59:34'),
(33, 5, 'Hình 2', NULL, '1504780109_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 5, '2017-09-08 02:59:26', '2017-09-07 19:59:26'),
(34, 5, 'Hình 3', NULL, '1504780118_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 4, '2017-09-08 02:59:18', '2017-09-07 19:59:18'),
(35, 5, 'Hình 4', NULL, '1504780134_gl-3.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 3, '2017-09-08 02:59:07', '2017-09-07 19:59:07'),
(36, 5, 'Quần jean nam', NULL, '1504780141_gl-1.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 2, '2017-09-08 02:59:00', '2017-09-07 19:59:00'),
(37, 5, 'Sản phẩm demo 1', NULL, '1504780160_gl-2.png', '', NULL, NULL, 1, 0, 'thu-vien-anh', 1, '2017-09-08 02:58:54', '2017-09-07 19:58:54'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'admin', '$2y$10$doMbg1ajBOJd0PBRr8c74.tH3skaeRa8LTHfz9Pd4Ff3Z9ZoRdGN2', 'Tuan Duy', 'duydoan.nina@gmail.com', '0985431797', 'Ngõ 215 Kim Giang, Hoàng Mai, Hà Nội', 1, '5.jpg', 1, '8lOLdNMZlE1OWQ9zXMRGgnCQfZj5ZpCEQKnBvFsxM7FmvhupG33tFjExduA9', '2017-08-31 07:11:58', '2017-08-10 18:37:41');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

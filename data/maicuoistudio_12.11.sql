-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2017 at 02:21 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maicuoistudio`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album_anh_cuoi_dep`
--

CREATE TABLE `album_anh_cuoi_dep` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image_profile` text COLLATE utf8_unicode_ci NOT NULL,
  `images_embed` text COLLATE utf8_unicode_ci NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `album_anh_cuoi_dep`
--

INSERT INTO `album_anh_cuoi_dep` (`id`, `title`, `content`, `image_profile`, `images_embed`, `updated`) VALUES
('hung-phong---thu-huong-12-23-20172017-11-12-03.14.31', 'Hùng Phong - Thu Hường 12-23-2017', '', '<img src="https://farm5.staticflickr.com/4571/37634923784_8eca22557c_n.jpg" width="320" height="213" alt="_MG_3853">', 'https://www.flickr.com/photos/157118514@N05/albums/72157690505230046/with/38348992921/', '2017-11-12 08:14:31'),
('huy-hoang---thai-thinh-20172017-11-12-03.13.02', 'Huy Hoàng - Thái Thịnh 2017', '', '<a data-flickr-embed="true"  href="https://www.flickr.com/photos/157118514@N05/38348992921/" title="_MG_3851"><img src="https://farm5.staticflickr.com/4570/38348992921_f509e6101e_n.jpg" width="320" height="213" alt="_MG_3851"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>', 'https://www.flickr.com/photos/157118514@N05/albums/72157690505230046', '2017-11-12 08:13:09'),
('huy-hoang---thai-thinh-20172017-11-12-03.13.09', 'Huy Hoàng - Thái Thịnh 2017', '', '<a data-flickr-embed="true"  href="https://www.flickr.com/photos/157118514@N05/38348992921/" title="_MG_3851"><img src="https://farm5.staticflickr.com/4570/38348992921_f509e6101e_n.jpg" width="320" height="213" alt="_MG_3851"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>', 'https://www.flickr.com/photos/157118514@N05/albums/72157690505230046', '2017-11-12 08:13:09'),
('huy-hoang---thai-thinh-20172017-11-12-03.13.10', 'Huy Hoàng - Thái Thịnh 2017', '', '<a data-flickr-embed="true"  href="https://www.flickr.com/photos/157118514@N05/38348992921/" title="_MG_3851"><img src="https://farm5.staticflickr.com/4570/38348992921_f509e6101e_n.jpg" width="320" height="213" alt="_MG_3851"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>', 'https://www.flickr.com/photos/157118514@N05/albums/72157690505230046', '2017-11-12 08:13:09'),
('huy-hoang---thai-thinh-20172017-11-12-03.13.13', 'Huy Hoàng - Thái Thịnh 2017', '', '<a data-flickr-embed="true"  href="https://www.flickr.com/photos/157118514@N05/38348992921/" title="_MG_3851"><img src="https://farm5.staticflickr.com/4570/38348992921_f509e6101e_n.jpg" width="320" height="213" alt="_MG_3851"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>', 'https://www.flickr.com/photos/157118514@N05/albums/72157690505230046', '2017-11-12 08:13:09'),
('huy-hoang---thai-thinh-20172017-11-12-03.13.14', 'Huy Hoàng - Thái Thịnh 2017', '', '<a data-flickr-embed="true"  href="https://www.flickr.com/photos/157118514@N05/38348992921/" title="_MG_3851"><img src="https://farm5.staticflickr.com/4570/38348992921_f509e6101e_n.jpg" width="320" height="213" alt="_MG_3851"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>', 'https://www.flickr.com/photos/157118514@N05/albums/72157690505230046', '2017-11-12 08:13:09'),
('huy-hoang---thai-thinh-20172017-11-12-03.13.16', 'Huy Hoàng - Thái Thịnh 2017', '', '<a data-flickr-embed="true"  href="https://www.flickr.com/photos/157118514@N05/38348992921/" title="_MG_3851"><img src="https://farm5.staticflickr.com/4570/38348992921_f509e6101e_n.jpg" width="320" height="213" alt="_MG_3851"></a><script async src="//embedr.flickr.com/assets/client-code.js" charset="utf-8"></script>', 'https://www.flickr.com/photos/157118514@N05/albums/72157690505230046', '2017-11-12 08:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `updated`, `image_3`, `image_2`, `image_1`) VALUES
(2, 'Giới thiệu', '<h2><span style="font-family:Times New Roman,Times,serif"><span style="font-size:20px"><strong><span style="color:#ff0000">VĂN PH&Ograve;NG PHẨM MINH T&Uacute; XIN K&Iacute;NH CH&Agrave;O QU&Yacute; KH&Aacute;CH</span></strong></span></span></h2>\r\n\r\n<p style="text-align:justify"><span style="font-size:16px">&nbsp;&nbsp;</span><span style="color:#000000"><strong><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif">&nbsp;&nbsp;<em> - Lời đầu ti&ecirc;n ch&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; ủng hộ cửa h&agrave;ng ch&uacute;ng t&ocirc;i trong suốt thời gian qua. Đến với cửa h&agrave;ng ch&uacute;ng t&ocirc;i, qu&yacute; kh&aacute;ch sẽ được sở hữu những sản phẩm văn ph&ograve;ng phẩm ưng &yacute;, hữu dụng nhất cho c&ocirc;ng t&aacute;c văn ph&ograve;ng của qu&yacute; vị với gi&aacute; cả hợp l&yacute; nhất m&agrave; kh&ocirc;ng phải mất c&ocirc;ng ra ngo&agrave;i chọn lựa. Tr&ecirc;n thị trường hiện nay mặt h&agrave;ng văn ph&ograve;ng phẩm kh&aacute; đa dạng về chủng loại cũng như thật giả về chất lượng dường như rất kh&oacute; ph&acirc;n biệt. Ch&iacute;nh v&igrave; thế Văn Ph&ograve;ng Phẩm Minh T&uacute; sẽ lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ tư vấn, gi&uacute;p đỡ để qu&yacute; kh&aacute;ch c&oacute; thể lựa chọn được những mặt h&agrave;ng tốt nhất v&agrave; c&oacute; gi&aacute; trị sử dụng ph&ugrave; hợp với gi&aacute; của từng sản phẩm.</em></span></span></strong></span></p>\r\n\r\n<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>GIỚI THIỆU CHUNG</em></span></span></span></strong></p>\r\n\r\n<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>&nbsp;&nbsp;&nbsp;&nbsp; - Trong bối cảnh thị trường văn ph&ograve;ng phẩm ng&agrave;y c&agrave;ng nở rộ, ph&aacute;t triển nhanh về mặt số lượng nhưng chất lượng dịch vụ ph&aacute;t triển kh&ocirc;ng đồng đều, Qu&yacute; kh&aacute;ch lu&ocirc;n cảm thấy kh&oacute; khăn trong việc lựa chọn nh&agrave; cung cấp văn ph&ograve;ng phẩm ổn định v&agrave; l&acirc;u d&agrave;i. V&igrave; vậy, Văn Ph&ograve;ng Phẩm Minh T&uacute; được x&acirc;y dựng nhằm mục đ&iacute;ch đ&aacute;p ứng nhu cầu ng&agrave;y c&agrave;ng cao của Qu&yacute; kh&aacute;ch trong việc lựa chọn nh&agrave; cung cấp văn ph&ograve;ng phẩm uy t&iacute;n nhất, gi&aacute; cạnh tranh nhất, chất lượng sản phẩm tốt nhất tại Tp.HCM v&agrave; c&aacute;c tỉnh l&acirc;n cận.</em></span></span></span></strong></p>\r\n\r\n<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>&nbsp;&nbsp;&nbsp;&nbsp; - Cửa H&agrave;ng VPP Minh T&uacute; được th&agrave;nh lập với ng&agrave;nh nghề kinh doanh ch&iacute;nh l&agrave; chuy&ecirc;n ph&acirc;n phối giấy in, giấy photocopy v&agrave; văn ph&ograve;ng phẩm ch&iacute;nh hiệu.</em></span></span></span></strong></p>\r\n\r\n<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>PHƯƠNG CH&Acirc;M HOẠT ĐỘNG</em></span></span></span></strong></p>\r\n\r\n<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>&nbsp;&nbsp;&nbsp;&nbsp; - Đối với Minh T&uacute;, sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave; điều quan trọng nhất. Sự h&agrave;i l&ograve;ng n&agrave;y đ&atilde; v&agrave; đang được thể hiện r&otilde; n&eacute;t trong từng sản phẩm, dịch vụ m&agrave; Cửa H&agrave;ng ch&uacute;ng t&ocirc;i cung cấp: chất lượng cao của sản phẩm, gi&aacute; cả cạnh tranh, giao nhận nhanh ch&oacute;ng ch&iacute;nh x&aacute;c v&agrave; điều quan trọng nhất l&agrave; mang lại hiệu quả cho kh&aacute;ch h&agrave;ng.</em></span></span></span></strong></p>\r\n\r\n<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>&nbsp;&nbsp;&nbsp;&nbsp; - Cửa H&agrave;ng Minh T&uacute; phục vụ kh&aacute;ch h&agrave;ng như sau:</em></span></span></span></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Gi&aacute; sản phẩm phải cạnh tranh nhất so với c&aacute;c nh&agrave; cung cấp kh&aacute;c.</em></span></span></span></strong></p>\r\n	</li>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Tư vấn, chọn lọc sản phẩm ph&ugrave; hợp với nhu cầu, chi ph&iacute; của Qu&yacute; kh&aacute;ch.</em></span></span></span></strong></p>\r\n	</li>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Chất lượng sản phẩm phải đạt ti&ecirc;u chuẩn theo đ&uacute;ng y&ecirc;u cầu của Nh&agrave; sản xuất.</em></span></span></span></strong></p>\r\n	</li>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Thực hiện nhiều chương tr&igrave;nh khuyến m&atilde;i định kỳ, tặng phẩm v&agrave; ch&iacute;nh s&aacute;ch giảm gi&aacute; chiết khấu hấp dẫn.</em></span></span></span></strong></p>\r\n	</li>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Đ&aacute;p ứng nhanh ch&oacute;ng, kịp thời nhu cầu sản phẩm để đảm bảo kh&ocirc;ng bị gi&aacute;n đoạn qu&aacute; tr&igrave;nh hoạt động sản xuất kinh doanh của kh&aacute;ch h&agrave;ng.</em></span></span></span></strong></p>\r\n	</li>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Phương thức thanh to&aacute;n đa dạng : tiền mặt, chuyển khoản hoặc c&ocirc;ng nợ nhiều ng&agrave;y.</em></span></span></span></strong></p>\r\n	</li>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng linh hoạt.</em></span></span></span></strong></p>\r\n	</li>\r\n	<li>\r\n	<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>Nh&acirc;n vi&ecirc;n nhiệt t&igrave;nh, chu đ&aacute;o với th&aacute;i độ nhanh nhẹn, h&ograve;a nh&atilde;.</em></span></span></span></strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><em>&nbsp;&nbsp;&nbsp;&nbsp; - Trong qu&aacute; tr&igrave;nh ph&aacute;t triển, Văn Ph&ograve;ng Phẩm Minh T&uacute; sẽ lu&ocirc;n giữ g&igrave;n gi&aacute; trị thương hiệu của m&igrave;nh đ&atilde; x&acirc;y dựng, kh&ocirc;ng ngừng ho&agrave;n thiện để Qu&yacute; kh&aacute;ch h&agrave;ng tiếp tục tin tưởng, hợp t&aacute;c l&acirc;u d&agrave;i với ch&uacute;ng t&ocirc;i v&agrave; xem Cửa h&agrave;ng ch&uacute;ng t&ocirc;i l&agrave; một cộng sự đắc lực trong những th&agrave;nh c&ocirc;ng sắp tới của Qu&yacute; vị. Xin ch&acirc;n th&agrave;nh c&aacute;m ơn.</em></span></span></span></strong></p>\r\n\r\n<p><strong><span style="color:#000000"><span style="font-size:18px"><span style="font-family:Times New Roman,Times,serif"><img alt="" src="data:image/png;base64,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" /></span></span></span></strong></p>\r\n', '2016-12-15 06:35:30', NULL, NULL, NULL),
(3, 'Tin tức', '<p>Tin tức</p>\r\n', '2016-12-15 06:36:11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pcounter_save`
--

CREATE TABLE `pcounter_save` (
  `save_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `save_value` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pcounter_save`
--

INSERT INTO `pcounter_save` (`save_name`, `save_value`) VALUES
('day_time', 2458048),
('counter', 105),
('yesterday', 0),
('max_count', 23),
('max_time', 1481864400);

-- --------------------------------------------------------

--
-- Table structure for table `pcounter_users`
--

CREATE TABLE `pcounter_users` (
  `user_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pcounter_users`
--

INSERT INTO `pcounter_users` (`user_ip`, `user_time`) VALUES
('f528764d624db129b32c21fbca0cb8d6', 1508579368);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `filename`, `created_at`) VALUES
(1, 'bangbaogia_v2.9.xlsx', '2016-09-29 15:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `shop_address`
--

CREATE TABLE `shop_address` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_address`
--

INSERT INTO `shop_address` (`id`, `firstname`, `lastname`, `street`, `zipcode`, `city`, `country`, `phone`) VALUES
(25, 'jkadhsfkkl', '', 'kjfgbls;jkfdjg', '', '', '', 0),
(26, 'jkadhsfkkl', '', 'kjfgbls;jkfdjg', '', '', '', 0),
(27, 'jkadhsfkkl', '', 'kjfgbls;jkfdjg', '', '', '', 0),
(28, 'jkadhsfkkl', '', 'kjfgbls;jkfdjg', '', '', '', 0),
(29, 'Hoa', '', '123', '', '', '', 12345674),
(30, 'Hoa', '', '123', '', '', '', 12345674),
(31, 'Hoa', '', '123', '', '', '', 12345674),
(32, 'Hòa', '', 'Cu Chi', '', '', '', 0),
(33, 'Hòa', '', 'Cu Chi', '', '', '', 0),
(34, 'Hòa', '', 'Cu Chi', '', '', '', 0),
(35, 'Hoa', '', 'cu chi', '', '', '', 0),
(36, 'Hoa', '', 'cu chi', '', '', '', 0),
(37, 'Hoa', '', 'cu chi', '', '', '', 0),
(38, 'Hoa', '', 'abc', '', '', '', 0),
(39, 'Hoa', '', 'abc', '', '', '', 0),
(40, 'Hoa', '', 'abc', '', '', '', 0),
(41, 'abc', '', 'abc', '', '', '', 0),
(42, 'abc', '', 'abc', '', '', '', 0),
(43, 'abc', '', 'abc', '', '', '', 0),
(44, 'abc', '', 'abc', '', '', '', 0),
(45, 'abc', '', '123213', '', '', '', 0),
(46, 'abc', '', '123213', '', '', '', 0),
(47, 'abc', '', '123213', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_banner`
--

CREATE TABLE `shop_banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_banner`
--

INSERT INTO `shop_banner` (`id`, `title`, `filename`) VALUES
(24, 'christmas 1', 'christmas banner 9.jpg'),
(28, 'banner 1', 'thanh-binh-vpp-.-com.jpg'),
(29, 'christmas 2', 'christmas banner 3.jpg'),
(30, 'banner 2', '5-cach-quan-ly-van-phong-pham-hieu-qua-2.png'),
(31, 'christmas 3', 'christmas banner 5.png'),
(32, 'banner 3', '308750.JPG'),
(34, 'christmas 4', 'christmas banner 2.jpg'),
(35, 'banner 4', '8342872585008774.jpg'),
(36, 'christmas 5', 'christmas banner 6.jpg'),
(37, 'banner 6', 'B3EC325DBB8243F7868AD215FCF15960.png'),
(38, 'christmas 7', 'christmas banner 8.jpg'),
(39, 'banner 8', 'images.jpg'),
(40, 'christmas 9', 'christmas banner 7.jpg'),
(41, 'christmas 10', 'christmas banner 8.jpg'),
(42, 'a', '22664428_1889859664675562_260490393_o.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `language` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`category_id`, `parent_id`, `title`, `description`, `language`) VALUES
(1, 0, 'NƯỚC SUỐI ĐÓNG CHAI', '', NULL),
(2, 0, 'GIẤY IN - GIẤY PHOTO', '', NULL),
(3, 0, 'BÌA ĐÓNG TẬP - GIẤY CÁC LOẠI', '', NULL),
(4, 0, 'DẤU HỘP - MỰC DẤU - BẢNG MICA', '', NULL),
(5, 0, 'DỤNG CỤ VĂN PHÒNG', '', NULL),
(6, 0, 'BÌA HỒ SƠ CÁC LOẠI', '', NULL),
(7, 0, 'BÚT CÁC LOẠI', '', NULL),
(8, 0, 'MỰC BÚT LÔNG', '', NULL),
(9, 0, 'TẬP VIẾT - SỔ TAY', '', NULL),
(10, 0, 'VĂN PHÒNG PHẨM KHÁC', '', NULL),
(11, 0, 'LINH KIỆN - PHỤ KIỆN MÁY TÍNH', '', NULL),
(12, 0, 'MỰC MÁY IN - MÁY PHOTO', '', NULL),
(13, 0, 'MÁY CHẤM CÔNG - NHỰA ÉP ', '', NULL),
(14, 0, 'BẢO HỘ LAO ĐỘNG', '', NULL),
(15, 0, 'DỤNG CỤ VỆ SINH NHÀ XƯỞNG', '', NULL),
(16, 0, 'TẠP PHẨM CÁC LOẠI', '', NULL),
(17, 0, 'THỨC UỐNG VĂN PHÒNG', '', NULL),
(18, 0, 'THIẾT BỊ ĐIỆN - CÂN ĐỒNG HỒ', '', NULL),
(19, 0, 'PHỤ LIỆU MAY - PHỤ LIỆU SẢN XUẤT', '', NULL),
(20, 1, 'NƯỚC BÌNH 20L', NULL, NULL),
(21, 1, 'KỆ ĐỂ NƯỚC', NULL, NULL),
(22, 1, 'NƯỚC SUỐI CHAI', NULL, NULL),
(23, 2, 'GIẤY IN', NULL, NULL),
(24, 2, 'GIẤY PHOTO', NULL, NULL),
(25, 3, 'BÌA KIẾNG', NULL, NULL),
(26, 3, 'GIẤY PHOTO MÀU (In Báo Giá - Hợp Đồng)', NULL, NULL),
(27, 3, 'BÌA THÁI - BÌA INDO - BÌA VIỆT NAM', NULL, NULL),
(28, 3, 'GIẤY CACBONLESS', NULL, NULL),
(29, 3, 'GIẤY IN HÌNH - GIẤY IN MÀU', NULL, NULL),
(30, 3, 'DECAL A4', NULL, NULL),
(31, 3, 'GIẤY CAN PHIM - VẼ SƠ ĐỒ', NULL, NULL),
(32, 3, 'NHÃN DÁN DECAL', '', NULL),
(33, 3, 'GIẤY GHI CHÚ - NOTES SIGN HERE', '', NULL),
(34, 3, 'GIẤY IN LIÊN TỤC LIÊN SƠN', '', NULL),
(35, 3, 'GIẤY IN LIÊN TỤC THIÊN LONG', '', NULL),
(36, 3, 'GIẤY THỦ CÔNG', '', NULL),
(37, 3, 'GIẤY ROKY - GIẤY A0', '', NULL),
(38, 3, 'GIẤY PERLURE', '', NULL),
(39, 3, 'GIẤY FAX NHIỆT - GIẤY CUỘN TÍNH TIỀN', '', NULL),
(40, 3, 'GIẤY THAN', '', NULL),
(41, 3, 'GIẤY KẺ NGANG - GIẤY CARO - GIẤY KIỂM TRA', '', NULL),
(42, 4, 'KHẮC DẤU', '', NULL),
(43, 4, 'DẤU HỘP CÓ SẴN HỘP MỰC ', '', NULL),
(44, 4, 'HỘP STAMPAD ĐÓNG DẤU', '', NULL),
(45, 4, 'TAMPON DẤU ', '', NULL),
(46, 4, 'MỰC ĐÓNG DẤU', '', NULL),
(47, 4, 'KỆ GÁC DẤU', '', NULL),
(48, 4, 'BẢNG HIỆU MICA', '', NULL),
(49, 4, 'BẢNG MICA ĐỂ BÀN', '', NULL),
(50, 5, 'BÀN CẮT GIẤY', '', NULL),
(51, 5, 'MIẾNG LÓT CẮT GIẤY', '', NULL),
(52, 5, 'LỊCH ĐỂ BÀN', '', NULL),
(53, 5, 'BAO THƯ - THIỆP TẾT', '', NULL),
(54, 5, 'BAO HỒ SƠ GIẤY', '', NULL),
(55, 5, 'HỒ DÁN - HỒ KHÔ - KEO 502 - KEO SỮA - RP7', '', NULL),
(56, 5, 'MÁY TÍNH TAY', '', NULL),
(57, 5, 'MÁY BẤM KIM - BẤM GỖ - THÁO KIM', '', NULL),
(58, 5, 'PHỤ KIỆN MÁY BẤM KIM', '', NULL),
(59, 5, 'MÁY BẤM THÙNG CARTON - KIM ĐỒNG ', '', NULL),
(60, 5, 'BẤM LỖ', '', NULL),
(61, 5, 'KIM BẤM - GHIM GIẤY', '', NULL),
(62, 5, 'ĐINH GHIM BẢNG - GHIM TƯỜNG', '', NULL),
(63, 5, 'CÂY GHIM GIẤY', '', NULL),
(64, 5, 'CHẶN SÁCH', '', NULL),
(65, 5, 'KẸP ACCO - KẸP BƯỚM', '', NULL),
(66, 5, 'KẸP SẮT ', '', NULL),
(67, 5, 'MÁY ĐÓNG SÁCH', '', NULL),
(68, 5, 'GÁY LÒ XO NHỰA ', '', NULL),
(69, 5, 'VÒNG GIA CỐ BÌA CÒNG', '', NULL),
(70, 5, 'ỐNG CẮM BÚT - ỐNG ĐỰNG GHIM', '', NULL),
(71, 5, 'BÓP VIẾT - HỘP ĐỰNG VIẾT', '', NULL),
(72, 5, 'HỘP ĐỰNG DANH THIẾP', '', NULL),
(73, 5, 'THƯỚC ĐO - EKE - PARABOL', '', NULL),
(74, 5, 'THƯỚC KÉO - PHỤ KIỆN CÔNG TRƯỜNG', NULL, NULL),
(75, 5, 'SÁP - MÚT ĐẾM TIỀN', NULL, NULL),
(76, 5, 'RUỘT BÚT CHÌ - GÔM - CHUỐT VIẾT CHÌ', NULL, NULL),
(77, 5, 'DAO RỌC GIẤY - LƯỠI DAO RỌC GIẤY', NULL, NULL),
(78, 5, 'LƯỠI LAM - DAO CẠO RÂU', NULL, NULL),
(79, 5, 'KÉO VĂN PHÒNG - KÉO CẮT VẢI', NULL, NULL),
(80, 5, 'BĂNG KEO TRONG - BĂNG KEO ĐỤC OPP', NULL, NULL),
(81, 5, 'BĂNG KEO 2 MẶT', NULL, NULL),
(82, 5, 'BĂNG KEO GIẤY - BĂNG KEO VẢI', NULL, NULL),
(83, 5, 'BĂNG KEO VĂN PHÒNG', NULL, NULL),
(84, 5, 'BĂNG KEO SÁP', NULL, NULL),
(85, 5, 'DỤNG CỤ CẮT KEO', NULL, NULL),
(86, 6, 'FILE RỔ ', NULL, NULL),
(87, 6, 'FILE XÉO SIMILI', NULL, NULL),
(88, 6, 'KHAY HỒ SƠ', NULL, NULL),
(89, 6, 'TỦ DỤNG CỤ', NULL, NULL),
(90, 6, 'BÌA 3 DÂY', NULL, NULL),
(91, 6, 'BÌA TREO', NULL, NULL),
(92, 6, 'BÌA CÒNG BẬT - BÌA CÒNG NHẪN', NULL, NULL),
(93, 6, 'BÌA LỖ', NULL, NULL),
(94, 6, 'BÌA 2 LÁ', NULL, NULL),
(95, 6, 'BÌA NÚT - BÌA BAO THƯ', NULL, NULL),
(96, 6, 'BÌA KÉO - BÌA CÂY', NULL, NULL),
(97, 6, 'BÌA ÉP 3 CẠNH A4', NULL, NULL),
(98, 6, 'BÌA PHÂN TRANG', NULL, NULL),
(99, 6, 'BÌA LÒ XO', NULL, NULL),
(100, 6, 'BÌA TRÌNH KÝ', NULL, NULL),
(101, 6, 'BÌA ACCO', NULL, NULL),
(102, 6, 'BÌA KẸP NHẤN - BÌA CẶP', NULL, NULL),
(103, 6, 'BÌA HỘP GIẤY', NULL, NULL),
(104, 6, 'BÌA HỘP SIMILI DÁN', NULL, NULL),
(105, 6, 'BÌA HỘP NHỰA', NULL, NULL),
(106, 6, 'BÌA LÁ', NULL, NULL),
(107, 6, 'BÌA KẸP THỐI TIỀN', NULL, NULL),
(108, 6, 'BÌA MENU', NULL, NULL),
(109, 7, 'BÚT KÝ CAO CẤP', NULL, NULL),
(110, 7, 'BÚT NƯỚC - BÚT LÔNG KIM', NULL, NULL),
(111, 7, 'BÚT MÁY - NGÒI BÚT MÁY THIÊN LONG', NULL, NULL),
(112, 7, 'BÚT LÔNG DẦU', NULL, NULL),
(113, 7, 'BÚT LÔNG BẢNG', NULL, NULL),
(114, 7, 'BÚT DẠ QUANG', NULL, NULL),
(115, 7, 'BÚT VIỀN NÉT', NULL, NULL),
(116, 7, 'BÚT XÓA', NULL, NULL),
(117, 7, 'BÚT BI THIÊN LONG', NULL, NULL),
(118, 7, 'BÚT BI FLEXOFFICE', NULL, NULL),
(119, 7, 'BÚT BI BẾN NGHÉ', NULL, NULL),
(120, 7, 'BÚT BI BẠCH NGUYÊN', NULL, NULL),
(121, 7, 'BÚT BI BẠCH KIM', NULL, NULL),
(122, 7, 'BÚT BI SIGMA', NULL, NULL),
(123, 7, 'BÚT BI G-STAR', NULL, NULL),
(124, 7, 'BÚT BI PENAC', NULL, NULL),
(125, 7, 'BÚT BI STABILO', NULL, NULL),
(126, 7, 'BÚT BI NHẬT', NULL, NULL),
(127, 7, 'BÚT BI THÁI LAN', NULL, NULL),
(128, 7, 'BÚT BI QUEEN', NULL, NULL),
(129, 7, 'BÚT BI THAY RUỘT - RUỘT BÚT - HỘP ĐỰNG BÚT', NULL, NULL),
(130, 7, 'BÚT BI NHẬT', NULL, NULL),
(131, 7, 'BÚT BI TRUNG QUỐC', NULL, NULL),
(132, 7, 'BÚT LÔNG TÔ MÀU', NULL, NULL),
(133, 7, 'BÚT SÁP MÀU', NULL, NULL),
(134, 7, 'BÚT CHÌ MÀU', NULL, NULL),
(135, 7, 'BÚT NHŨ KIM TUYẾN', NULL, NULL),
(136, 7, 'BÚT CHỈ BẢNG', NULL, NULL),
(137, 7, 'BÚT VẼ KỸ THUẬT', NULL, NULL),
(138, 7, 'BÚT THƯ PHÁP', NULL, NULL),
(139, 7, 'BÚT CHE LẤP VẾT XƯỚC TRÊN GỖ', NULL, NULL),
(140, 7, 'BÚT VẼ ÁO', NULL, NULL),
(141, 8, 'MỰC VIẾT MÁY - MỰC LÔNG DẦU - MỰC LÔNG BẢNG', NULL, NULL),
(142, 9, 'TẬP HỌC SINH - TẬP GIÁO ÁN', NULL, NULL),
(143, 9, 'TẬP HỒNG HÀ', NULL, NULL),
(144, 9, 'SỔ CARO BÌA CỨNG', NULL, NULL),
(145, 9, 'SỔ CARO BÌA SIMILI', NULL, NULL),
(146, 9, 'SỔ DA CK TIẾN PHÁT', NULL, NULL),
(147, 9, 'SỔ DA CAO CẤP FLEXOFFICE (THIÊN LONG)', NULL, NULL),
(148, 9, 'SỔ DA CAO CẤP BIZNER (THIÊN LONG)', NULL, NULL),
(149, 9, 'SỔ DA MASTER KEY (VĨNH TIẾN)', NULL, NULL),
(150, 9, 'SỔ DA TRUNG QUỐC', NULL, NULL),
(151, 9, 'SỔ LÒ XO GRAND', NULL, NULL),
(152, 9, 'SỔ LÒ XO BÌA NHỰA', NULL, NULL),
(153, 9, 'SỔ LÒ XO VĨNH TIẾN', NULL, NULL),
(154, 9, 'SỔ HANDBOOK', NULL, NULL),
(155, 9, 'SỔ DA HỒNG HÀ', NULL, NULL),
(156, 9, 'SỔ GIDOSA', NULL, NULL),
(157, 9, 'SỔ ĐIỆN THOẠI', NULL, NULL),
(158, 9, 'SỔ LỊCH', NULL, NULL),
(159, 9, 'SỔ HÌNH', NULL, NULL),
(160, 9, 'SỔ NAME CARD - HỘP ĐỰNG CARD', NULL, NULL),
(161, 9, 'BIỂU MẪU THỐNG KÊ - SỔ SÁCH KẾ TOÁN', NULL, NULL),
(162, 9, 'HÓA ĐƠN LẺ', NULL, NULL),
(163, 9, 'GIẤY GIỚI THIỆU', NULL, NULL),
(164, 9, 'BIÊN NHẬN - BIÊN LAI THU TIỀN', NULL, NULL),
(165, 9, 'PHIẾU THU - CHI', NULL, NULL),
(166, 9, 'PHIẾU XUẤT - NHẬP KHO', NULL, NULL),
(167, 9, 'CÙI XÉ - CÙI GIỮ XE', NULL, NULL),
(168, 9, 'ĐƠN XIN VIỆC', NULL, NULL),
(169, 9, 'HỢP ĐỒNG LAO ĐỘNG', NULL, NULL),
(170, 9, 'GIẤY THI', NULL, NULL),
(171, 10, 'DỤNG CỤ MỸ THUẬT', NULL, NULL),
(172, 10, 'BÚT VẼ MỸ THUẬT - QUẢNG CÁO', NULL, NULL),
(173, 10, 'DỤNG CỤ HỌC SINH', NULL, NULL),
(175, 10, 'COMPA', NULL, NULL),
(176, 10, 'MỰC TÀU', NULL, NULL),
(177, 10, 'MÓC DÁN TƯỜNG - MÓC HÍT KIẾNG', NULL, NULL),
(178, 10, 'ĐỒNG HỒ TREO TƯỜNG', NULL, NULL),
(179, 10, 'ĐỒNG HỒ ĐỂ BÀN', NULL, NULL),
(180, 10, 'ĐỒNG HỒ BẤM GIỜ', NULL, NULL),
(181, 10, 'ĐIỆN THOẠI BÀN', NULL, NULL),
(182, 10, 'CÁC LOẠI PIN - MÁY SẠC PIN', NULL, NULL),
(183, 10, 'BẢNG TÊN - KẸP BẢNG TÊN - DÂY ĐEO', NULL, NULL),
(184, 10, 'BÌA BAO TẬP - BAO SÁCH', NULL, NULL),
(185, 10, 'PHẤN VIẾT BẢNG - HỘP ĐỰNG PHẤN ', NULL, NULL),
(186, 10, 'CÁC LOẠI BẢNG - DỤNG CỤ LAU BẢNG - CHÂN BẢNG', NULL, NULL),
(187, 10, 'BẢNG PHỤ - BẢNG NHÓM', NULL, NULL),
(188, 10, 'BẢNG NỈ GHIM GIẤY', NULL, NULL),
(189, 10, 'BẢNG TỪ', NULL, NULL),
(190, 10, 'TRANH - BẢNG GIÁO DỤC', NULL, NULL),
(191, 10, 'NƯỚC LAU BẢNG', NULL, NULL),
(192, 10, 'NAM CHÂM BẢNG TỪ', NULL, NULL),
(193, 10, 'CÁC LOẠI CỜ TREO - BĂNG RÔN - CÂY CỜ', NULL, NULL),
(194, 10, 'SỔ ĐOÀN - HUY HIỆU ĐOÀN - KHĂN QUÀNG', NULL, NULL),
(195, 10, 'RUY BĂNG - HOA VẢI - VẬT DỤNG TRANG TRÍ', NULL, NULL),
(196, 10, 'ĐÈN', NULL, NULL),
(197, 10, 'VẬT DỤNG TRANG TRÍ QUÀ TẶNG - SỰ KIỆN', NULL, NULL),
(198, 10, 'CÒI THỔI', NULL, NULL),
(199, 11, 'ĐĨA CD - DVD - DECAL DÁN ĐĨA', NULL, NULL),
(200, 11, 'USB', NULL, NULL),
(201, 11, 'MIẾNG LÓT CHUỘT', NULL, NULL),
(202, 11, 'CHUỘT MÁY TÍNH - KEYBOARD', NULL, NULL),
(203, 11, 'GIÁ KẸP GIẤY ĐÁNH MÁY', NULL, NULL),
(204, 11, 'CHỔI QUÉT BÀN PHÍM', NULL, NULL),
(205, 12, 'MỰC NẠP MÁY IN', NULL, NULL),
(206, 12, 'LINH KIỆN MÁY IN', NULL, NULL),
(207, 12, 'HỘP MỰC CÁC LOẠI MÁY IN', NULL, NULL),
(208, 12, 'MỰC IN MÀU', NULL, NULL),
(209, 12, 'PHIM - MỰC MÁY FAX PANASONIC', NULL, NULL),
(210, 12, 'PHIM - MỰC MÁY FAX SHARP', NULL, NULL),
(211, 12, 'PHIM - MỰC MÁY FAX BROTHER', NULL, NULL),
(212, 12, 'PHIM - MỰC MÁY FAX CANON', NULL, NULL),
(213, 12, 'RUY BĂNG - RUỘT RUY BĂNG MÁY IN KIM EPSON', NULL, NULL),
(214, 12, 'PHIM MÁY CHIẾU', NULL, NULL),
(215, 12, 'MỰC MÁY PHOTO RICOH', NULL, NULL),
(216, 12, 'MỰC MÁY PHOTO TOSHIBA', NULL, NULL),
(217, 12, 'MỰC MÁY PHOTO CANON', NULL, NULL),
(218, 12, 'MỰC MÁY PHOTO XEROX', NULL, NULL),
(219, 12, 'MỰC MÁY PHOTO SHARP', NULL, NULL),
(220, 13, 'NHỰA ÉP THẺ - ÉP HÌNH - GIẤY TỜ', NULL, NULL),
(221, 13, 'MÁY ÉP NHỰA ', NULL, NULL),
(222, 13, 'KHUNG HÌNH - KHUNG GIẤY KHEN', NULL, NULL),
(223, 13, 'MÁY CHẤM CÔNG', NULL, NULL),
(224, 13, 'THẺ CHẤM CÔNG - KỆ GÁC THẺ', NULL, NULL),
(225, 13, 'MỰC MÁY CHẤM CÔNG', NULL, NULL),
(226, 13, 'SÚNG BẤM GIÁ - MỰC BẤM GIÁ - BĂNG KEO BẤM GIÁ', NULL, NULL),
(227, 14, 'BAO TAY', NULL, NULL),
(228, 14, 'KHẨU TRANG - NÓN BẢO HỘ', NULL, NULL),
(229, 14, 'YẾM - ÁO BLOUSE - ÁO CÔNG NHÂN', NULL, NULL),
(230, 14, 'ĐỒNG PHỤC BẢO VỆ', NULL, NULL),
(231, 14, 'GIÀY - DÉP BẢO HỘ', NULL, NULL),
(232, 14, 'ÁO MƯA', NULL, NULL),
(233, 14, 'NÚT CHỐNG ỒN', NULL, NULL),
(234, 14, 'MẮT KIẾNG ', NULL, NULL),
(235, 14, 'ỦNG - VỚ DA - ÁO PHẢN QUANG', NULL, NULL),
(236, 14, 'ĐỒ DÙNG Y TẾ', NULL, NULL),
(237, 15, 'BAO ĐỰNG RÁC', NULL, NULL),
(238, 15, 'CÁC LOẠI THÙNG RÁC', NULL, NULL),
(239, 15, 'BÌNH ĐỰNG XÀ BÔNG RỬA TAY', NULL, NULL),
(240, 15, 'CHỔI - DỤNG CỤ HỐT RÁC - BÀN CHẢI - CÂY CỌ', NULL, NULL),
(241, 15, 'THẢM LAU', NULL, NULL),
(242, 15, 'BÀN CHẢI ĐÁNH RĂNG - KEM ĐÁNH RĂNG', NULL, NULL),
(243, 15, 'XÔ NHỰA - THÙNG NHỰA - CAN NHỰA', NULL, NULL),
(244, 15, 'THAU ', NULL, NULL),
(245, 15, 'HỘP NHỰA ĐỰNG GIẤY', NULL, NULL),
(247, 15, 'GIẤY VỆ SINH', NULL, NULL),
(248, 15, 'CÁC LOẠI KHĂN GIẤY ', NULL, NULL),
(249, 15, 'NƯỚC RỬA TAY - RỬA CHÉN- LAU KÍNH ', NULL, NULL),
(250, 15, 'TẨY ĐA NĂNG', NULL, NULL),
(251, 15, 'TẨY TOILET', NULL, NULL),
(252, 15, 'BỘT THÔNG CẦU', NULL, NULL),
(253, 15, 'NƯỚC XỊT PHÒNG - SÁP THƠM - KHỬ MÙI', NULL, NULL),
(254, 15, 'NƯỚC LAU SÀN', NULL, NULL),
(255, 15, 'TẨY JAVEL', NULL, NULL),
(256, 15, 'XÀ BÔNG', NULL, NULL),
(257, 15, 'NƯỚC GIẶT', NULL, NULL),
(258, 15, 'NƯỚC XẢ VẢI', NULL, NULL),
(259, 15, 'XỊT CÔN TRÙNG', NULL, NULL),
(260, 15, 'DỤNG CỤ CHÙI RỬA', NULL, NULL),
(262, 16, 'HỘP NHỰA DỤNG CỤ', NULL, NULL),
(263, 16, 'ỐNG HÚT', NULL, NULL),
(264, 16, 'DAO THÁI LAN', NULL, NULL),
(265, 16, 'Ổ KHÓA', NULL, NULL),
(266, 16, 'MÓC KHÓA', NULL, NULL),
(267, 16, 'KỆ NHỰA - SI ĐÁNH GIÀY', NULL, NULL),
(268, 16, 'KỆ SÁCH BÁO', NULL, NULL),
(269, 16, 'MÓC INOX', NULL, NULL),
(270, 16, 'GHẾ NHỰA', NULL, NULL),
(271, 16, 'ĐƯỜNG - MÌ …', NULL, NULL),
(272, 17, 'CÀ PHÊ', NULL, NULL),
(273, 17, 'TRÀ', NULL, NULL),
(274, 17, 'NƯỚC GIẢI KHÁT', NULL, NULL),
(275, 17, 'SỮA', NULL, NULL),
(276, 17, 'BÁNH KẸO', NULL, NULL),
(277, 18, 'Ổ ĐIỆN', NULL, NULL),
(278, 18, 'ĐÈN ĐIỆN', NULL, NULL),
(279, 18, 'CÂN ĐỒNG HỒ', NULL, NULL),
(280, 19, 'GIẤY CẮT RẬP', NULL, NULL),
(281, 19, 'BÚT SÁP MAY', NULL, NULL),
(282, 19, 'BÚT BI BẠC - BÚT BAY ', NULL, NULL),
(283, 19, 'PHẦN MAY - PHẤN BAY', NULL, NULL),
(284, 19, 'KÉO BẤM CHỈ - KÉO CẮT VẢI', NULL, NULL),
(285, 19, 'TEM, NHÃN DECAL - NẸP GAI', NULL, NULL),
(286, 19, 'MÁY ĐÁNH SỐ - GIẤY ĐÁNH SỐ - MỰC MÁY ĐÁNH SỐ', NULL, NULL),
(287, 19, 'KIM MAY', NULL, NULL),
(288, 19, 'SÚNG BẮN THẺ - ĐẠN BẮN THẺ - KIM SÚNG BẮN THẺ', NULL, NULL),
(289, 19, 'TI XỎ NHÃN', NULL, NULL),
(290, 19, 'KỀM BẤM RẬP', NULL, NULL),
(291, 19, 'SÚNG BẮN KE0 - KEO SILICON', NULL, NULL),
(292, 19, 'QUẸT GA', NULL, NULL),
(293, 19, 'KEO XỊT TÓC - PHẤN EM BÉ', NULL, NULL),
(294, 19, 'CHIẾU CÓI', NULL, NULL),
(295, 19, 'CÁC LOẠI BỊCH NILON - MÀNG PE', NULL, NULL),
(296, 19, 'KỀM NIỀNG THÙNG', NULL, NULL),
(297, 19, 'GIẤY NHÁM', NULL, NULL),
(298, 19, 'RỔ NHỰA - SÓNG NHỰA - GIỎ NHỰA - PALLET', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_customer`
--

CREATE TABLE `shop_customer` (
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_customer`
--

INSERT INTO `shop_customer` (`customer_id`, `user_id`, `address_id`, `delivery_address_id`, `billing_address_id`, `email`) VALUES
(1, NULL, 11, 0, 0, 'nhoa@abc.com'),
(2, NULL, 14, 0, 0, 'nhoa@abc.com'),
(3, NULL, 17, 0, 0, 'hoa@a.com'),
(4, NULL, 20, 0, 0, 'ascb@a.com'),
(5, NULL, 21, 0, 0, 'jnguyenhoa@gmail.com'),
(6, NULL, 24, 0, 0, 'ac@a.com'),
(7, NULL, 26, 0, 0, 'vpp_minhtu@yahoo.com'),
(8, NULL, 29, 0, 0, 'nhoa@gmail.com'),
(9, NULL, 32, 0, 0, 'nhoa@gmail.com'),
(10, NULL, 35, 0, 0, 'nhoa@gmail.com'),
(11, NULL, 38, 0, 0, 'jnguyenhoa@gmail.com'),
(12, NULL, 42, 0, 0, 'abc@gmail.com'),
(13, NULL, 45, 0, 0, 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shop_image`
--

CREATE TABLE `shop_image` (
  `id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `album_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_image`
--

INSERT INTO `shop_image` (`id`, `title`, `filename`, `album_id`) VALUES
(3, 'aq350', 'AQUAFINA 350ML.jpg', 'AQ355'),
(5, '1', 'AQUAFINA 500ML.jpg', 'AQ500'),
(6, '1', 'aquafina-5l.png', 'AQ5'),
(7, 'ac', '22664428_1889859664675562_260490393_o.jpg', '1004J'),
(8, 'abc', '22664428_1889859664675562_260490393_o.jpg', '1004J'),
(9, 'abc', '22664428_1889859664675562_260490393_o.jpg', '1004J'),
(10, 'ab', '22713013_1889859718008890_174710622_o.jpg', '1004J'),
(11, 'abc', '22690321_1889859671342228_80847749_o.jpg', '1004J'),
(12, 'abc', '9854322664428_1889859664675562_260490393_o.jp', '1004J'),
(13, 'abc', '4276222690321_1889859671342228_80847749_o.jpg', '1004J'),
(14, 'abc', '4460922713013_1889859718008890_174710622_o.jp', '1004J'),
(15, 'abc', '1580322664428_1889859664675562_260490393_o.jp', '1004J'),
(16, 'abc', '4223822690321_1889859671342228_80847749_o.jpg', '1004J'),
(17, 'abc', '2226522713013_1889859718008890_174710622_o.jp', '1004J'),
(18, 'abc', '7347222690321_1889859671342228_80847749_o.jpg', '1004J');

-- --------------------------------------------------------

--
-- Table structure for table `shop_information`
--

CREATE TABLE `shop_information` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_time` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_kinhdoanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `hotline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_information`
--

INSERT INTO `shop_information` (`id`, `name`, `logo`, `working_time`, `phone`, `fax`, `email`, `email_kinhdoanh`, `address`, `map`, `description`, `hotline`, `google_plus`, `facebook`) VALUES
(1, 'CỬA HÀNG VĂN PHÒNG PHẨM MINH TÚ', 'logo3.png', '<table class="table">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thứ hai - Thứ bảy</td>\r\n			<td>từ 07h30 đến 17h00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chủ Nhật</td>\r\n			<td>Nghỉ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ng&agrave;y Lễ</td>\r\n			<td>Nghỉ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '(08) 37906 559 - (08) 37902 562', '(08) 37902 562', 'vpp_minhtu@yahoo.com', 'vpp_minhtu@yahoo.com', '204 Tỉnh lộ 8 – Khu Phố 2 – Thị Trấn Củ Chi - Huyện Củ Chi - Tp. Hồ Chí Minh', '<iframe src="https://www.google.com/maps/embed/v1/place?q=place_id:Ei0yMDQgVEw4LCBD4bunIENoaSwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0&key=..." allowfullscreen></iframe>', '<p style="text-align:justify">CỬA H&Agrave;NG VĂN PH&Ograve;NG PHẨM MINH T&Uacute;</p>\r\n\r\n<p style="text-align:justify">- Chuy&ecirc;n cung cấp nước uống tinh khiết c&aacute;c loại, sản xuất nước uống đ&oacute;ng chai hiệu MITAFINA Water.</p>\r\n\r\n<p style="text-align:justify">- Cung cấp đồ d&ugrave;ng văn ph&ograve;ng phẩm c&aacute;c loại, mực m&aacute;y in, mực m&aacute;y photo, m&aacute;y văn ph&ograve;ng, m&aacute;y chấm c&ocirc;ng v&agrave; linh phụ kiện k&egrave;m theo. Cung cấp đồ d&ugrave;ng bảo hộ lao động, gi&agrave;y, d&eacute;p, đồng phục c&ocirc;ng nh&acirc;n, bảo vệ... Cung cấp dụng cụ vệ sinh văn ph&ograve;ng, nh&agrave; xưởng...</p>\r\n', ' 0913 77 55 34 - 01234 77 55 34', 'minhtu_vn', 'minhtu_vn');

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `ordering_date` int(11) NOT NULL,
  `ordering_done` tinyint(1) DEFAULT NULL,
  `ordering_confirmed` tinyint(1) DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_order`
--

INSERT INTO `shop_order` (`order_id`, `customer_id`, `delivery_address_id`, `billing_address_id`, `ordering_date`, `ordering_done`, `ordering_confirmed`, `payment_method`, `shipping_method`, `comment`) VALUES
(1, 11, 39, 40, 1482197731, NULL, NULL, 1, 1, NULL),
(2, 12, 43, 44, 1482197849, NULL, NULL, 1, 1, NULL),
(3, 13, 46, 47, 1482197996, NULL, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_position`
--

CREATE TABLE `shop_order_position` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `amount` int(11) NOT NULL,
  `specifications` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_order_position`
--

INSERT INTO `shop_order_position` (`id`, `order_id`, `product_id`, `amount`, `specifications`) VALUES
(9, 7, 'AQ355', 1, 'null'),
(10, 8, 'AQ5', 1, 'null'),
(11, 1, '1004J', 1, 'null'),
(12, 2, 'MTFN20L', 1, 'null'),
(13, 3, '1004J', 1, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `shop_payment_method`
--

CREATE TABLE `shop_payment_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `tax_id` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_payment_method`
--

INSERT INTO `shop_payment_method` (`id`, `title`, `description`, `tax_id`, `price`) VALUES
(1, 'Tiền Mặt - Chuyển Khoản', '<p>- Thanh to&aacute;n trực tiếp: Thanh to&aacute;n bằng tiền mặt cho nh&acirc;n vi&ecirc;n giao h&agrave;ng khi nhận h&agrave;ng.</p>\r\n\r\n<p>- Thanh to&aacute;n bằng chuyển khoản: Qu&yacute; kh&aacute;ch đến bất k&igrave; ng&acirc;n h&agrave;ng n&agrave;o ở Việt Nam để chuyển tiền theo th&ocirc;ng tin b&ecirc;n dưới.</p>\r\n\r\n<p style="text-align:justify">+ NG&Acirc;N H&Agrave;NG TMCP VIỆT &Aacute; - CHI NH&Aacute;NH CỦ CHI</p>\r\n\r\n<p style="text-align:justify">T&ecirc;n t&agrave;i khoản: HỘ KINH DOANH VĂN PH&Ograve;NG PHẨM MINH T&Uacute;</p>\r\n\r\n<p style="text-align:justify">Số t&agrave;i khoản: 340 500 001 248 9000.</p>\r\n\r\n<p>- Khi chuyển tiền, qu&yacute; kh&aacute;ch vui l&ograve;ng ghi r&otilde; t&ecirc;n v&agrave; l&iacute; do chuyển tiền. Khi chuyển tiền xong, qu&yacute; kh&aacute;ch vui l&ograve;ng th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i t&ecirc;n hoặc số t&agrave;i khoản đ&atilde; chuyển v&agrave; địa chỉ nhận h&agrave;ng để ch&uacute;ng t&ocirc;i tiến h&agrave;nh kiểm tra tiền v&agrave; chuyển h&agrave;ng cho qu&yacute; kh&aacute;ch. H&agrave;ng h&oacute;a chuyển ph&aacute;t theo phương thức chuyển ph&aacute;t nhanh hoặc chậm theo y&ecirc;u cầu. Nếu ở những tỉnh th&agrave;nh lớn, qu&yacute; kh&aacute;ch c&oacute; thể thanh to&aacute;n ph&iacute; vận chuyển trực tiếp với nh&acirc;n vi&ecirc;n chuyển ph&aacute;t. C&ograve;n ở những tỉnh th&agrave;nh kh&aacute;c qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n lu&ocirc;n phần ph&iacute; vận chuyển khi chuyển tiền mua h&agrave;ng.</p>\r\n', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `product_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specifications` text COLLATE utf8_unicode_ci,
  `is_discount` tinyint(1) DEFAULT NULL,
  `is_highlight` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`product_id`, `category_id`, `tax_id`, `title`, `description`, `price`, `language`, `specifications`, `is_discount`, `is_highlight`) VALUES
('1004J', 61, 1, 'Kim bấm công nghiệp Việt Đức 1004J', '', ' 27000', 'A', 'A', 1, 1),
('1039A', 57, 1, 'Kềm tháo kim Eagle 1039A', '', ' 25000', 'A', 'A', 1, 1),
('1060', 57, 1, 'Bấm kim 10 TriO bọc nhựa 1060', '', ' 24000', 'A', 'A', 1, 1),
('145958', 79, 1, 'Kéo học sinh Elephant Gấu túi 145958', '', ' 12000', 'A', 'A', 1, 1),
('155438', 79, 1, 'Kéo học sinh Elephant Chuồn Chuồn 155438', '', '17000', 'A', 'A', 0, 1),
('1F-23', 81, 1, 'Băng keo 2 mặt 1F - 23ya', '30 cuồn/ 1 cây', ' 90000', 'A', 'A', 0, 0),
('1F2-10', 81, 1, 'Băng keo 2 mặt 1F2 - 10ya', '24 cuồn/ 1 cây', ' 33000', 'A', 'A', 0, 0),
('1F2-100', 80, 1, 'Băng keo trong, đục 1F2 - 100ya (keo 43)', '24 cuồn/1 cây', ' 63000', 'A', 'A', 0, 0),
('1F2-23', 81, 1, 'Băng keo 2 mặt 1F2 - 23ya', '24 cuồn/ 1 cây', ' 85000', 'A', 'A', 0, 0),
('1F6-10', 81, 1, 'Băng keo 2 mặt 1F6 - 10ya', '18 cuồn/ 1 cây', ' 43000', 'A', 'A', 0, 0),
('1F6-100', 80, 1, 'Băng keo trong, đục 1F6 - 100ya (keo 43)', '18 cuồn/1 cây', ' 63000', 'A', 'A', 0, 0),
('1F6-23', 81, 1, 'Băng keo 2 mặt 1F6 - 23ya', '18 cuồn/ 1 cây', ' 90000', 'A', 'A', 0, 0),
('1F6-23DV', 81, 1, 'Băng keo 2 mặt 1F6 - 23ya - keo dầu vàng', '18 cuồn/ 1 cây', ' 125000', 'A', 'A', 0, 0),
('1F6-50', 81, 1, 'Băng keo 2 mặt 1F6 - 50ya', '18 cuồn/ 1 cây', ' 198000', 'A', 'A', 0, 0),
('1F8-23', 81, 1, 'Băng keo 2 mặt 1F8 - 23ya', '16 cuồn/ 1 cây', ' 90000', 'A', 'A', 0, 0),
('2005BC', 77, 1, 'Dao rọc giấy lớn PACO 2005BC', '', ' 23000', 'A', 'A', 0, 0),
('206A', 57, 1, 'Bấm kim 3 Eagle 206A', 'Bấm 30 tờ', ' 38000', 'A', 'A', 0, 0),
('20LA', 56, 1, 'Máy tính Casio 20LA ', '11cm x 17cm', ' 90000', 'A', 'A', 0, 0),
('225B', 92, 1, 'Bìa còng nhẫn 3,5cm TOP POINT 225B', 'Bìa coøng nhaãn 3,5cm TOP POINT 225B', ' 31000', 'A', 'A', 0, 0),
('227B', 92, 1, 'Bìa còng nhẫn 3,5cm TOP POINT 227B', 'Bìa coøng nhaãn 3,5cm TOP POINT 227B', ' 31000', 'A', 'A', 0, 0),
('25002', 57, 1, 'Bấm kim 10 Mini Munix 25002', '', ' 15000', 'A', 'A', 0, 0),
('25201', 57, 1, 'Kềm bấm số 10 Munix 25201', '', ' 70000', 'A', 'A', 0, 0),
('25211', 57, 1, 'Kềm bấm số 3 Munix 25211', '', ' 103000', 'A', 'A', 0, 0),
('2F-36Y', 83, 1, 'Băng keo 2F 36Y Scotch 600 3/4 36YD BXD', '', ' 34000', 'A', 'A', 0, 0),
('2F4-100', 81, 1, 'Băng keo 2 mặt 2F4 - 10ya', '12 cuồn/ 1 cây', ' 43000', 'A', 'A', 0, 0),
('2F4-23', 81, 1, 'Băng keo 2 mặt 2F4 - 23ya', '12 cuồn/ 1 cây', ' 86000', 'A', 'A', 0, 0),
('2F4-9', 81, 1, 'Băng keo Mouse vàng 2F4 - 9ya', '', ' 10000', 'A', 'A', 0, 0),
('2M05-10', 81, 1, 'Băng keo 2 mặt 0.5cm - 10ya', '50 cuồn/ 1 cây', ' 49000', 'A', 'A', 0, 0),
('2M05-23', 81, 1, 'Băng keo 2 mặt 0.5cm- 23ya', '60 cuồn/ 1 cây', ' 110000', 'A', 'A', 0, 0),
('2M05-23DV', 81, 1, 'Băng keo 2 mặt 0.5cm- 23ya - keo dầu vàng ', '60 cuồn/ 1 cây', ' 135000', 'A', 'A', 0, 0),
('2M07-23DV', 81, 1, 'Băng keo 2 mặt 0.7cm- 23ya', '40 cuồn/ 1 cây', ' 103000', 'A', 'A', 0, 0),
('2MM1F2', 81, 1, 'Băng keo Mouse xanh 1,2cm', 'Cây/10 cuồn', ' 15000', 'A', 'A', 0, 0),
('2MM1F8', 81, 1, 'Băng keo Mouse xanh 1,8cm', '', ' 19000', 'A', 'A', 0, 0),
('2MM2F4', 81, 1, 'Băng keo Mouse xanh 2,4cm', 'Cây/10 cuồn', ' 26000', 'A', 'A', 0, 0),
('2MM2F4D', 81, 1, 'Băng keo Mouse đỏ 2,4cm', 'Cây/10 cuồn', ' 27000', 'A', 'A', 0, 0),
('2TTR', 88, 1, 'Kệ nhựa 2 tầng thanh trụ', '', ' 45000', 'A', 'A', 0, 0),
('2TTTR', 88, 1, 'Kệ nhựa 2 tầng thanh trượt', '', ' 52000', 'A', 'A', 0, 0),
('2TVN', 88, 1, 'Khay hồ sơ 2 tầng Meka - Việt Nam', 'màu trà, nâu, xanh', ' 105000', 'A', 'A', 0, 0),
('301', 57, 1, 'Bấm kim 3 DELI 0301', '', ' 37000', 'A', 'A', 0, 0),
('3018', 56, 1, 'Máy tính Casio 3018', '', ' 140000', 'A', 'A', 0, 0),
('3311', 56, 1, 'Máy tính Casio 3311', '', ' 145000', 'A', 'A', 0, 0),
('389BC', 77, 1, 'Dao rọc giấy lưỡi nhỏ PACO 389BC', '', ' 42000', 'A', 'A', 0, 0),
('3D10', 90, 1, 'Bìa 3 dây góc sắt 10cm Caro giấy', '', ' 7000', 'A', 'A', 0, 0),
('3D10DTT', 90, 1, 'Bìa 3 dây góc sắt 10cm Caro giấy DTT', 'bóng - dày', ' 8000', 'A', 'A', 0, 0),
('3D10TL', 90, 1, 'Bìa 3 dây góc sắt 10cm Caro giấy Thảo Linh', 'bóng - dày', ' 10000', 'A', 'A', 0, 0),
('3D15', 90, 1, 'Bìa 3 dây góc sắt 15cm Caro giấy', '', ' 8000', 'A', 'A', 0, 0),
('3D15DTT', 90, 1, 'Bìa 3 dây góc sắt 15cm Caro giấy DTT', 'bóng - dày', ' 8500', 'A', 'A', 0, 0),
('3D15TL', 90, 1, 'Bìa 3 dây góc sắt 15cm Caro giấy Thảo Linh', 'bóng - dày', ' 11000', 'A', 'A', 0, 0),
('3D20', 90, 1, 'Bìa 3 dây góc sắt 20cm Caro giấy', '', ' 8500', 'A', 'A', 0, 0),
('3D20DTT', 90, 1, 'Bìa 3 dây góc sắt 20cm Caro giấy DTT', 'bóng - dày', ' 9500', 'A', 'A', 0, 0),
('3D20TL', 90, 1, 'Bìa 3 dây góc sắt 20cm Caro giấy Thảo Linh', 'bóng - dày', ' 13000', 'A', 'A', 0, 0),
('3D7', 90, 1, 'Bìa 3 dây góc sắt 7cm Caro giấy', '', ' 6000', 'A', 'A', 0, 0),
('3D7DTT', 90, 1, 'Bìa 3 dây góc sắt 7cm Caro giấy DTT', 'bóng - dày', ' 7000', 'A', 'A', 0, 0),
('3D7TL', 90, 1, 'Bìa 3 dây góc sắt 7cm Caro giấy Thảo Linh', 'bóng - dày', ' 9000', 'A', 'A', 0, 0),
('3DS', 90, 1, 'Bìa 3 dây Simili', '', ' 12000', 'A', 'A', 0, 0),
('3F6-8', 83, 1, 'Băng keo Simili 3,6F - 8ya', 'nhiều màu lựa chọn', ' 6000', 'A', 'A', 0, 0),
('3M-104S', 83, 1, 'Băng keo kỳ diệu 3M SCOTCH có cắt keo 104S', '', ' 8000', 'A', 'A', 0, 0),
('3M-1296', 83, 1, 'Băng keo dán tiền 3M Scotch 810 3/4 * 1296 (36 YA)', 'Loại dày', ' 44000', 'A', 'A', 0, 0),
('3M1F2', 81, 1, 'Băng keo 2 mặt 3M 1,2cm', '', ' 26000', 'A', 'A', 0, 0),
('3PV', 77, 1, 'Dao rọc giấy lớn PACO thân Inox 3PV', '', ' 19000', 'A', 'A', 0, 0),
('3TTR', 88, 1, 'Kệ nhựa 3 tầng thanh trụ', '', ' 65000', 'A', 'A', 0, 0),
('3TTTR', 88, 1, 'Kệ nhựa 3 tầng thanh trượt', '', ' 70000', 'A', 'A', 0, 0),
('3TVN', 88, 1, 'Khay hồ sơ 3 tầng Meka - Việt Nam', 'màu trà, nâu, xanh', ' 142000', 'A', 'A', 0, 0),
('403LD-2', 56, 1, 'Máy Casio bỏ túi 403 LD(2)', '7 x 11cm', ' 60000', 'A', 'A', 0, 0),
('403TV-1', 56, 1, 'Máy Casio bỏ túi 403 TV(1)', '7 x 11cm', ' 95000', 'A', 'A', 0, 0),
('40LA', 56, 1, 'Máy tính Casio 40LA ', '11cm x 17cm', ' 110000', 'A', 'A', 0, 0),
('4588', 76, 1, 'Chuốt ruột chì 2B Stabilo Art No. 4588', '', ' 18000', 'A', 'A', 0, 0),
('4F8-10', 81, 1, 'Băng keo 2 mặt 4F8 - 10ya', '6 cuồn/ 1 cây', ' 37000', 'A', 'A', 0, 0),
('4F8-100', 80, 1, 'Băng keo trong, đục 4F8 100 ya  (lõi xanh) (Keo 43)', '6 cuồn/1 cây', ' 53000', 'A', 'A', 0, 0),
('4F8-23', 81, 1, 'Băng keo 2 mặt 4F8 - 23ya', '6 cuồn/ 1 cây', ' 80000', 'A', 'A', 0, 0),
('4F8-23DV', 81, 1, 'Băng keo 2 mặt 4F8 - 23ya - keo dầu vàng', '6 cuồn/ 1 cây', ' 119000', 'A', 'A', 0, 0),
('4F8-8', 83, 1, 'Băng keo Simili 4F8 - 8ya', 'nhiều màu lựa chọn', ' 8000', 'A', 'A', 0, 0),
('4F8-9', 81, 1, 'Băng keo Mouse vàng 4F8 - 9ya', '', ' 19000', 'A', 'A', 0, 0),
('4TTR', 88, 1, 'Kệ nhựa 4 tầng thanh trụ', '', ' 75000', 'A', 'A', 0, 0),
('502N', 55, 1, 'Keo 502 chai tròn nhỏ', '', ' 6000', 'A', 'A', 0, 0),
('502S', 55, 1, 'Keo 502 Con Voi (S)', '', ' 5000', 'A', 'A', 0, 0),
('50LA-1', 57, 1, 'Máy bấm kim 50LA TriO (1)', 'Bấm tối đa 210 tờ', ' 430000', 'A', 'A', 0, 0),
('50LA-2', 57, 1, 'Máy bấm kim 50LA TriO (2)', 'Bấm tối đa 210 tờ', ' 260000', 'A', 'A', 0, 0),
('50SA', 57, 1, 'Máy bấm kim 50SA TriO', '', ' 170000', 'A', 'A', 0, 0),
('5106', 57, 1, 'Bấm kim 10 TriO bọc nhựa 5106', '', ' 24000', 'A', 'A', 0, 0),
('570ES-1', 56, 1, 'Máy Casio Fx 570ES (1)', '', ' 330000', 'A', 'A', 0, 0),
('570ESPLUS-V', 56, 1, 'Máy Vinacal Fx 570 ES Plus (Vinacal)', '', ' 270000', 'A', 'A', 0, 0),
('570ESPLUS2-V', 56, 1, 'Máy Vinacal Fx 570 ES Plus II (Vinacal)', '', ' 395000', 'A', 'A', 0, 0),
('570MS-1', 56, 1, 'Máy Casio Fx 570 MS (1)', '', ' 285000', 'A', 'A', 0, 0),
('5835', 79, 1, 'Kéo SDI 5835', '19.1cm', ' 42000', 'A', 'A', 0, 0),
('5900', 57, 1, 'Máy bấm kim TriO khổ rộng (Bấm giữa trang - Bấm 30 tờ) - Mỹ 5900', 'Bấm giữa trang tập', ' 170000', 'A', 'A', 0, 0),
('5A4ABBA', 92, 1, 'Bìa còng 5cm A4 2 mặt Simili ABBA', 'Cứng , đẹp', ' 24000', 'A', 'A', 0, 0),
('60F-23VD', 81, 1, 'Băng keo 2 mặt 60cm - 23ya keo vàng', 'Cắt theo yêu cầu', ' 420000', 'A', 'A', 0, 0),
('685278', 60, 1, 'Kếm bấm 1 lỗ KANEX No.685278', '', ' 45000', 'A', 'A', 0, 0),
('688L', 56, 1, 'Máy tính Casio 688L', '', ' 125000', 'A', 'A', 0, 0),
('6F-100', 80, 1, 'Băng keo trong, đục 6F - 100 ya (lõi xanh) (Keo 43)', '5 cuồn/1 cây', ' 57000', 'A', 'A', 0, 0),
('7619', 60, 1, 'Bấm 2 lỗ nhỏ SUREMARK 7619 (Bấm khoảng 10 tờ)', '', ' 22000', 'A', 'A', 0, 0),
('7A3ABBA', 92, 1, 'Bìa còng 7cm A3 2 mặt Simili ABBA', 'Lưu giấy A3', ' 58000', 'A', 'A', 0, 0),
('7A4ABBA', 92, 1, 'Bìa còng 7cm A4 2 mặt Simili ABBA', 'Cứng , đẹp', ' 25000', 'A', 'A', 0, 0),
('7F2-100', 80, 1, 'Băng keo trong, đục 7F2 - 100 ya (Keo 43)', '4 cuồn/1 cây', ' 56000', 'A', 'A', 0, 0),
('8100', 76, 1, 'Chuốt bút chì hình ô tô 8100', '', ' 5000', 'A', 'A', 0, 0),
('8513', 57, 1, 'Kềm bấm gỗ KW-triO 8513', 'Dùng kim 23/6-10, 53/6-10, 13/6-10', ' 290000', 'A', 'A', 0, 0),
('9628', 57, 1, 'Bấm kim xoay Eagle số 3 - 9628', 'Bấm giữa trang tập', ' 51000', 'A', 'A', 0, 0),
('97AO', 60, 1, 'Kếm bấm 1 lỗ TriO 97AO', '', ' 28000', 'A', 'A', 0, 0),
('98036', 76, 1, 'Ruột chì 2B Stabilo Art No. 9803/6-2B', '', ' 21000', 'A', 'A', 0, 0),
('9910-V', 57, 1, 'Bấm kim 10 TTH 9910-V', '', ' 22000', 'A', 'A', 0, 0),
('A-100', 77, 1, 'Lưỡi dao rọc giấy lớn A-100', 'Hộp/10 cái', ' 7000', 'A', 'A', 0, 0),
('A-80', 77, 1, 'Lưỡi dao rọc giấy nhỏ A-80 ', 'Hộp/10 cái', ' 5000', 'A', 'A', 0, 0),
('A4-RC01', 96, 1, 'Bìa cây gáy rút Thiên Long A4-RC01', '', ' 5000', 'A', 'A', 0, 0),
('A4-RC02', 96, 1, 'Bìa cây gáy rút Thiên Long A4-RC02', '', ' 4000', 'A', 'A', 0, 0),
('A4-RC03', 96, 1, 'Bìa cây gáy rút Thiên Long A4-RC03', '', ' 4000', 'A', 'A', 0, 0),
('A4SUMO', 92, 1, 'Bìa còng 10cm A4 2 mặt Simili SUMO', '', ' 50000', 'A', 'A', 0, 0),
('A5ABBA', 92, 1, 'Bìa còng 7cm A5 2 mặt xi ABBA', 'Lưu giấy A5', ' 24000', 'A', 'A', 0, 0),
('AQ355', 22, 1, 'Nước suối Aquafina 355ml (PEPSI)', 'Thùng 24 chai', ' 85000', 'A', 'A', 0, 0),
('AQ5', 22, 1, 'Nước suối Aquafina 5L (PEPSI)', 'Thùng 4 chai', ' 87000', 'A', 'A', 0, 0),
('AQ500', 22, 1, 'Nước suối Aquafina 500ml (PEPSI)', 'Thùng 24 chai', ' 93000', 'A', 'A', 0, 0),
('ATM-A135', 55, 1, 'Keo sữa ATM NO. A135 1kg', '', ' 37000', 'A', 'A', 0, 0),
('AX-120B-1', 56, 1, 'Máy Casio AX-120B (1)', '', ' 230000', 'A', 'A', 0, 0),
('AX-12B-1', 56, 1, 'Máy Casio AX-12B (1)', '', ' 210000', 'A', 'A', 0, 0),
('B1LX', 99, 1, 'Bìa 1 lò xo 2F5', '', ' 22000', 'A', 'A', 0, 0),
('B2715', 79, 1, 'Kéo nhựa trung COMIX B2715', '', ' 14000', 'A', 'A', 0, 0),
('B2717', 79, 1, 'Kéo nhựa trung COMIX B2717', '', ' 25000', 'A', 'A', 0, 0),
('B2804', 77, 1, 'Dao rọc giấy COMIX 18mm B2804', '', ' 23000', 'A', 'A', 0, 0),
('B2LXA4', 99, 1, 'Bìa 2 lò xo nhựa trong A4 LONGDING', '', ' 23000', 'A', 'A', 0, 0),
('B2LXCS', 99, 1, 'Bìa 2 lò xo 2F5 C/S', '', ' 22000', 'A', 'A', 0, 0),
('B2LXLD', 99, 1, 'Bìa 2 lò xo 2F5 LONGDING', '', ' 23000', 'A', 'A', 0, 0),
('B2N', 95, 1, 'Bìa 2 nút A4', '', ' 7500', 'A', 'A', 0, 0),
('B8', 61, 1, 'Kim cong B8-Mỹ', '', ' 29000', 'A', 'A', 0, 0),
('BBTA4', 95, 1, 'Bìa bao thư A4', '', ' 4500', 'A', 'A', 0, 0),
('BC250A4', 27, 1, 'Bìa Cosches trắng 250 in Card', '', ' 71000', 'A', 'A', 0, 0),
('BC300A4', 27, 1, 'Bìa Cosches trắng 300 in Card', '', ' 80000', 'A', 'A', 0, 0),
('BC324', 96, 1, 'Bìa cây gáy gạt 324', '', ' 6000', 'A', 'A', 0, 0),
('BCCS', 96, 1, 'Bìa cây gáy rút nhựa đục C/S', '', ' 4000', 'A', 'A', 0, 0),
('BCF', 96, 1, 'Bìa cây FOLDER ', '', ' 4000', 'A', 'A', 0, 0),
('BCGG', 96, 1, 'Bìa cây gạt giữa', '', ' 8000', 'A', 'A', 0, 0),
('BCGG60', 50, 1, 'Bàn cắt giấy gỗ 60cm', '', ' 240000', 'A', 'A', 0, 0),
('BCGGA3', 50, 1, 'Bàn cắt giấy gỗ 50cm (dùng cho khổ khổ A3)', '', ' 217000', 'A', 'A', 0, 0),
('BCGGA4', 50, 1, 'Bàn cắt giấy gỗ 4cm (dùng cho khổ khổ A4)', '', ' 200000', 'A', 'A', 0, 0),
('BCGMK60', 50, 1, 'Bàn cắt giấy Meka 60cm Mỹ', '', ' 750000', 'A', 'A', 0, 0),
('BCGMKA3', 50, 1, 'Bàn cắt giấy Meka 50cm (dùng cho khổ khổ A3)', '', ' 230000', 'A', 'A', 0, 0),
('BCGMKA4', 50, 1, 'Bàn cắt giấy Meka 4cm (dùng cho khổ khổ A4)', '', ' 210000', 'A', 'A', 0, 0),
('BCMA4', 27, 1, 'Bìa Camay in Card', '', ' 78000', 'A', 'A', 0, 0),
('BCRH', 96, 1, 'Bìa cây gáy rút hình ', '', ' 5000', 'A', 'A', 0, 0),
('BCRL', 96, 1, 'Bìa cây gáy rút nhựa trong lớn', '', ' 4000', 'A', 'A', 0, 0),
('BCRN', 96, 1, 'Bìa cây gáy rút nhựa trong nhỏ', '', ' 2500', 'A', 'A', 0, 0),
('BDNA3', 27, 1, 'Bìa màu Đồng Nai A3 (nhiều màu lựa chọn)  ', '', ' 500', 'A', 'A', 0, 0),
('BDNA4', 27, 1, 'Bìa màu Đồng Nai A4 ', '', ' 68000', 'A', 'A', 0, 0),
('BDNF3', 27, 1, 'Bìa màu F3 Đồng Nai (nhiều màu lựa chọn)  ', '', ' 500', 'A', 'A', 0, 0),
('BDQA4', 27, 1, 'Bìa dạ quang A4', '', ' 80000', 'A', 'A', 0, 0),
('BGA4', 27, 1, 'Bìa gân A4 in Card', '', ' 73000', 'A', 'A', 0, 0),
('BGDIAO', 57, 1, 'Máy bấm kim DIAO khổ rộng (Bấm giữa trang - Bấm 30 tờ) - Trung Quốc', 'Bấm giữa trang tập', ' 150000', 'A', 'A', 0, 0),
('BGS', 57, 1, 'Bấm giữa sắt sơn', 'Bấm tối đa 150 tờ', ' 1250000', 'A', 'A', 0, 0),
('BH', 71, 1, 'Bóp hít ', '', ' 35000', 'A', 'A', 0, 0),
('BHSM', 54, 1, 'Bao Hồ Sơ xin việc đủ màu', 'Xấp/ 50 cái', ' 23000', 'A', 'A', 0, 0),
('BHST', 54, 1, 'Bao Hồ Sơ  A4 trắng', 'Xấp/ 100 cái', ' 83000', 'A', 'A', 0, 0),
('BHSV', 54, 1, 'Bao Hồ Sơ  A4 vàng', 'Xấp/ 100 cái', ' 70000', 'A', 'A', 0, 0),
('BIDA4-1', 27, 1, 'Bìa Indo A4 (1)', '', ' 75000', 'A', 'A', 0, 0),
('BIDA4-2', 27, 1, 'Bìa Indo A4 (2)', '', ' 63000', 'A', 'A', 0, 0),
('BIHA4', 27, 1, 'Bìa In Hoa', '', ' 61000', 'A', 'A', 0, 0),
('BK1,8A4', 25, 1, 'Bìa kiếng A4 Đài Loan dày 1.8zem', 'Xấp/100 tờ', ' 100000', 'A', 'A', 0, 0),
('BK1.2A4', 25, 1, 'Bìa kiếng A4 Dày 1.2zem', 'xấp/85 tờ', ' 57000', 'A', 'A', 0, 0),
('BK1.5A3', 25, 1, 'Bìa kiếng A3 1.5zem', 'Xấp/74 tờ', ' 135000', 'A', 'A', 0, 0),
('BK1.5A4', 25, 1, 'Bìa kiếng A4 Dày 1.5zem', 'xấp/72 tờ', ' 57000', 'A', 'A', 0, 0),
('BK1.5A4L', 25, 1, 'Bìa kiếng A4 Dày 1.5zem (giá lẻ)', '', ' 1000', 'A', 'A', 0, 0),
('BK10IM', 57, 1, 'Bấm kim 10 Inox Munix', '', ' 16000', 'A', 'A', 0, 0),
('BK2-80', 25, 1, 'Bìa kiếng cuồn khổ 80cm 2zem', 'Cuồn 50kg', ' 17000', 'A', 'A', 0, 0),
('BK3H', 57, 1, 'Bấm kim 3  Hand ', 'Bấm 30 tờ', ' 35000', 'A', 'A', 0, 0),
('BKA4', 96, 1, 'Bìa kéo - nhựa dẻo A4', '', ' 6000', 'A', 'A', 0, 0),
('BKA4-QX', 96, 1, 'Bìa kéo - nhựa dẻo A4 - 2 ngăn có quai xách', '', ' 11000', 'A', 'A', 0, 0),
('BKA5', 96, 1, 'Bìa kéo - nhựa dẻo A5', '', ' 4000', 'A', 'A', 0, 0),
('BKS', 84, 1, 'Băng keo sáp ', '', ' 13000', 'A', 'A', 0, 0),
('BKTA5M', 95, 1, 'Túi đựng bài kiểm tra A5 màu', '', ' 3000', 'A', 'A', 0, 0),
('BKTA5T', 95, 1, 'Túi đựng bài kiểm tra A5 trắng', '', ' 2000', 'A', 'A', 0, 0),
('BKXDELI', 57, 1, 'Bấm kim xoay DELI', 'Bấm giữa trang tập', ' 60000', 'A', 'A', 0, 0),
('BL00150', 60, 1, 'Bấm lỗ đại DELI No. 00150', '', ' 950000', 'A', 'A', 0, 0),
('BL30F', 93, 1, 'Bìa lỗ 30 lỗ dày FOLDER ', 'Xấp/100 tờ', ' 48000', 'A', 'A', 0, 0),
('BL3C', 97, 1, 'Bìa lá A4 ép 3 canh', 'Không có nắp đậy', ' 2500', 'A', 'A', 0, 0),
('BL40', 93, 1, 'Bìa lỗ 11 lỗ dày 40g', 'Xấp/100 tờ', ' 35000', 'A', 'A', 0, 0),
('BLKOKOBI', 93, 1, 'Bìa lỗ Kokobi (nilông dày, đẹp)', 'Hộp /100 cái', ' 47000', 'A', 'A', 0, 0),
('BLM', 94, 1, 'Bìa lá A4 màu', 'đủ màu', ' 2000', 'A', 'A', 0, 0),
('BLTLF4', 94, 1, 'Bìa lá F4  Thiên Long', '', ' 2500', 'A', 'A', 0, 0),
('BMF3', 27, 1, 'Bìa Mỹ F3', '', ' 170000', 'A', 'A', 0, 0),
('BNA4', 95, 1, 'Bìa nút A4', '', ' 3000', 'A', 'A', 0, 0),
('BNA5', 95, 1, 'Bìa nút A5 ', '', ' 2000', 'A', 'A', 0, 0),
('BNA5T', 95, 1, 'Bìa nút A5 có túi', '', ' 2200', 'A', 'A', 0, 0),
('BNDA4', 27, 1, 'Bìa ánh kim (nhũ) A4 đỏ', '', ' 85000', 'A', 'A', 0, 0),
('BNF4', 95, 1, 'Bìa nút F4', '', ' 3000', 'A', 'A', 0, 0),
('BNHA4', 95, 1, 'Bìa nút hình A4', '', ' 5000', 'A', 'A', 0, 0),
('BNNMA4', 27, 1, 'Bìa ánh kim (nhũ) A4 nhiều màu', '', ' 70000', 'A', 'A', 0, 0),
('BQ-388', 77, 1, 'Dao rọc giấy inox BQ-338A lớn', '', ' 15000', 'A', 'A', 0, 0),
('BQDA4', 96, 1, 'Bìa quấn dây nhựa A4', '', ' 6000', 'A', 'A', 0, 0),
('BQDDBA3', 96, 1, 'Bìa quấn dây giấy màu da bò A3', '', ' 5000', 'A', 'A', 0, 0),
('BQDDBA4', 96, 1, 'Bìa quấn dây giấy màu da bò A4', '', ' 4000', 'A', 'A', 0, 0),
('BR-80', 76, 1, 'Gôm tẩy mực G_STAR BR-80', '', ' 4000', 'A', 'A', 0, 0),
('BT-01', 53, 1, 'Bao thư viền sọc Thiên Long (keo tự dán) 11 x 19cm BT-01', '', ' 6000', 'A', 'A', 0, 0),
('BT180', 27, 1, 'Bìa Thái A4 chữ P - 180gms', '', ' 33000', 'A', 'A', 0, 0),
('BT180A3', 27, 1, 'Bìa màu A3 Thái Lan (nhiều màu lựa chọn)  ', '', ' 66000', 'A', 'A', 0, 0),
('BT180F3', 27, 1, 'Bìa màu F3 Thái Lan (nhiều màu lựa chọn)  ', '', ' 85000', 'A', 'A', 0, 0),
('BT180HMB', 27, 1, 'Bìa thơm A4 (2 mặt bông) - 180gsm', '', ' 65000', 'A', 'A', 0, 0),
('BTDBA4', 53, 1, 'Bao thư màu da bò A4 - dày cứng', 'Xấp/ 100 cái', ' 2000', 'A', 'A', 0, 0),
('BTM1222', 53, 1, 'Bao thư màu 12 x 22 cm (vàng, xanh lá, dương, hồng)', 'Xấp/ 100 cái', ' 50000', 'A', 'A', 0, 0),
('BTMT', 91, 1, 'Bìa treo bằng giấy - bóng, dày M&T', 'Hộp/25 cái', ' 10000', 'A', 'A', 0, 0),
('BTS', 91, 1, 'Bìa treo bằng giấy (nhiều màu lựa chọn) Suremark', 'Hộp/25 cái', ' 10000', 'A', 'A', 0, 0),
('BTS1222', 53, 1, 'Bao thư viền sọc dài 12x  22cm', '', ' 7000', 'A', 'A', 0, 0),
('BTSK', 53, 1, 'Bao thư viền sọc (có keo dán)', '', ' 5500', 'A', 'A', 0, 0),
('BTSMP', 53, 1, 'Bao thư viền sọc cao cấp Minh Phúc (keo tự dán) 11 x 19cm', '', ' 8000', 'A', 'A', 0, 0),
('BTST', 53, 1, 'Bao thư viền sọc loại thường nắp nhọn', '', ' 3500', 'A', 'A', 0, 0),
('BTT-VA3', 53, 1, 'Bao thư trắng - vàng A3', 'Xấp/ 100 cái', ' 150000', 'A', 'A', 0, 0),
('BTT1117', 53, 1, 'Bao thư trắng 11x17 nắp nhọn', 'Xấp/100 cái', ' 17000', 'A', 'A', 0, 0),
('BTT1218', 53, 1, 'Bao thư trắng 12x18 - keo dán', 'Xấp/ 100 cái', ' 21000', 'A', 'A', 0, 0),
('BTT1222', 53, 1, 'Bao thư trắng 12x22 - keo dán', 'Xấp/ 100 cái', ' 23000', 'A', 'A', 0, 0),
('BTT1222MP', 53, 1, 'Bao thư trắng 12x22 - cửa sổ (Minh Phúc)', 'Xấp/ 100 cái', ' 44000', 'A', 'A', 0, 0),
('BTT1420', 53, 1, 'Bao thư trắng 14x20 - keo dán', 'Xấp/ 100 cái', ' 30000', 'A', 'A', 0, 0),
('BTT9518', 53, 1, 'Bao thư trắng 9.5 x 18 (dùng phát lương nhân viên)', 'Xấp/100 cái', ' 30000', 'A', 'A', 0, 0),
('BTTA4', 53, 1, 'Bao thư trắng A4', 'Xấp/ 100 cái', ' 68000', 'A', 'A', 0, 0),
('BTTA5', 53, 1, 'Bao thư trắng A5', 'Xấp/ 100 cái', ' 45000', 'A', 'A', 0, 0),
('BTU', 91, 1, 'Bìa treo bằng giấy (nhiều màu lựa chọn) Unicorn', 'Hộp/25 cái', ' 8000', 'A', 'A', 0, 0),
('BTV1222', 53, 1, 'Bao thư vàng 12x22 ', 'Xấp/ 100 cái', ' 39000', 'A', 'A', 0, 0),
('BTVA4', 53, 1, 'Bao thư vàng A4', 'Xấp/ 100 cái', ' 66000', 'A', 'A', 0, 0),
('BTVA5', 53, 1, 'Bao thư vàng A5', 'Xấp/ 100 cái', ' 45000', 'A', 'A', 0, 0),
('BTVB5', 53, 1, 'Bao thư trắng - vàng B5', 'Xấp/ 100 cái', ' 55000', 'A', 'A', 0, 0),
('BV', 37, 1, 'Bìa vàng', 'Giấy cắt rập', ' 6000', 'A', 'A', 0, 0),
('BV013', 71, 1, 'Bóp viết vải 013', '', ' 18000', 'A', 'A', 0, 0),
('BV029', 71, 1, 'Bóp viết vải 029', '', ' 12000', 'A', 'A', 0, 0),
('BV037', 71, 1, 'Bóp viết vải 037', '', ' 18000', 'A', 'A', 0, 0),
('BV038', 71, 1, 'Bóp viết vải 037', '', ' 18000', 'A', 'A', 0, 0),
('BV043', 71, 1, 'Bóp viết vải 043', '', ' 20000', 'A', 'A', 0, 0),
('BV046', 71, 1, 'Bóp viết vải 046', '', ' 19000', 'A', 'A', 0, 0),
('BV058', 71, 1, 'Bóp viết vải 058', '', ' 24000', 'A', 'A', 0, 0),
('BV062', 71, 1, 'Bóp viết vải 062', '', ' 21000', 'A', 'A', 0, 0),
('BV064', 71, 1, 'Bóp viết vải 064', '', ' 23000', 'A', 'A', 0, 0),
('BV08', 71, 1, 'Bóp viết vải 03', '', ' 9000', 'A', 'A', 0, 0),
('BV1631', 71, 1, 'Bóp viết vải 1631', '', ' 45000', 'A', 'A', 0, 0),
('BVC019', 71, 1, 'Bóp viết vải C019', '', ' 29000', 'A', 'A', 0, 0),
('C-2004', 73, 1, 'Thước lỗ tròn WIN C-2004', '', ' 14000', 'A', 'A', 0, 0),
('C-2006', 73, 1, 'Thước hình học WIN C-2006', '', ' 10000', 'A', 'A', 0, 0),
('C101', 57, 1, 'Bấm kim STACOM C101', '', ' 27000', 'A', 'A', 0, 0),
('C102', 57, 1, 'Bấm kim số 3 Stacom C102', '', ' 55000', 'A', 'A', 0, 0),
('C108', 57, 1, 'Bấm kim số 3 Stacom C108', '', ' 55000', 'A', 'A', 0, 0),
('C110', 57, 1, 'Bấm kim xoay Stacom số 3 C110', 'Bấm giữa trang tập', ' 78000', 'A', 'A', 0, 0),
('C114', 57, 1, 'Bấm kim STACOM C114', '', ' 25000', 'A', 'A', 0, 0),
('C115', 57, 1, 'Bấm kim STACOM C115', '', ' 24000', 'A', 'A', 0, 0),
('C200', 85, 1, 'Cắt keo để bàn trung TTH C200', 'màu hồng', ' 32000', 'A', 'A', 0, 0),
('C25', 92, 1, 'Còng nhẫn 2,5cm', 'Gắn vào tường, bảng', ' 10000', 'A', 'A', 0, 0),
('C310', 61, 1, 'Kim bấm số 10 Stacom C310', 'Hộp nhỏ', ' 2500', 'A', 'A', 0, 0),
('C32', 61, 1, 'Ghim giấy C32 Inox', 'Kẹp tròn', ' 3000', 'A', 'A', 0, 0),
('C330', 85, 1, 'Cắt keo nhỏ TTH C330', '', ' 14000', 'A', 'A', 0, 0),
('C35', 92, 1, 'Còng nhẫn 3,5cm', 'Gắn vào tường, bảng', ' 11000', 'A', 'A', 0, 0),
('C62', 61, 1, 'Ghim giấy C62 Inox', 'Kẹp nhọn', ' 3000', 'A', 'A', 0, 0),
('C62TNE', 61, 1, 'Ghim giấy C62 Inox TNE', 'Kẹp nhọn', ' 3000', 'A', 'A', 0, 0),
('C7', 92, 1, 'Còng bật 7cm', 'Gắn vào tường, bảng', ' 16000', 'A', 'A', 0, 0),
('C82', 61, 1, 'Ghim giấy C82 Inox', 'Kẹp tròn dài', ' 4000', 'A', 'A', 0, 0),
('CA-911', 56, 1, 'Máy tính Casio CA-911', '', ' 90000', 'A', 'A', 0, 0),
('CAL-01S', 56, 1, 'Máy tính FLEXIO CAL-01S', '', ' 170000', 'A', 'A', 0, 0),
('CAL-02S', 56, 1, 'Máy tính FLEXIO CAL-02S', '', ' 190000', 'A', 'A', 0, 0),
('CAL-03S', 56, 1, 'Máy tính FLEXIO CAL-03S', '', ' 230000', 'A', 'A', 0, 0),
('CAL-04S', 56, 1, 'Máy tính FLEXIO CAL-04S', '', ' 225000', 'A', 'A', 0, 0),
('CAL-05P', 56, 1, 'Máy tính FLEXIO CAL-05P', '', ' 205000', 'A', 'A', 0, 0),
('CASEA4', 97, 1, 'Card Case A4 (Bìa Meka cứng - dày, ép 3 cạnh)', 'Không có nắp đậy', ' 8000', 'A', 'A', 0, 0),
('CASEA5', 97, 1, 'Card Case A5 (Bìa Meka cứng - dày, ép 3 cạnh)', 'Không có nắp đậy', ' 6500', 'A', 'A', 0, 0),
('CB1016', 70, 1, 'Cắm bút gỗ 1016', '', ' 65000', 'A', 'A', 0, 0),
('CB1023', 70, 1, 'Cắm bút gỗ 1023', '', ' 65000', 'A', 'A', 0, 0),
('CB3010', 70, 1, 'Cắm bút 3010', '', ' 37000', 'A', 'A', 0, 0),
('CB6001', 70, 1, 'Cắm bút gỗ 6001', '', ' 65000', 'A', 'A', 0, 0),
('CC999', 57, 1, 'Kềm bấm gỗ UNICORN NO.CC999', '', ' 180000', 'A', 'A', 0, 0),
('CGGI', 63, 1, 'Cây ghim giấy Inox', '', ' 15000', 'A', 'A', 0, 0),
('CGGM', 63, 1, 'Cây ghim giấy màu', '', ' 10000', 'A', 'A', 0, 0),
('CGGU', 63, 1, 'Cây ghim giấy Inox uốn', '', ' 16000', 'A', 'A', 0, 0),
('CK-051', 77, 1, 'Dao rọc giấy sắt DEARMAR CK-051', '', ' 11000', 'A', 'A', 0, 0),
('CK2001', 85, 1, 'Cắt keo để bàn mini Sunny 2001', 'Cắt keo văn phòng', ' 12000', 'A', 'A', 0, 0),
('CK2002', 85, 1, 'Cắt keo để bàn trung Sunny 2002', 'Có cắm bút', ' 36000', 'A', 'A', 0, 0),
('CK2003', 85, 1, 'Cắt keo để bàn nhỏ Sunny 2003', 'Cắt keo văn phòng', ' 17000', 'A', 'A', 0, 0),
('CK2004', 85, 1, 'Cắt keo để bàn lớn 2004', '', ' 39000', 'A', 'A', 0, 0),
('CK2005', 85, 1, 'Cắt keo để bàn trung 2005', '', ' 36000', 'A', 'A', 0, 0),
('CK5N', 85, 1, 'Cắt keo dán thùng nhựa 5cm', '', ' 15000', 'A', 'A', 0, 0),
('CK5S', 85, 1, 'Cắt keo dán thùng sắt 5cm', '', ' 16000', 'A', 'A', 0, 0),
('CK6', 85, 1, 'Cắt keo dán thùng 6cm', '', ' 20000', 'A', 'A', 0, 0),
('CK7', 85, 1, 'Cắt keo dán thùng 7cm', '', ' 23000', 'A', 'A', 0, 0),
('CK8', 85, 1, 'Cắt keo dán thùng 8cm', '', ' 29000', 'A', 'A', 0, 0),
('CL-102', 76, 1, 'Chuốt trái tim CL-102', '', ' 3500', 'A', 'A', 0, 0),
('CL-132', 76, 1, 'Chuốt trái tim CL-132', '', ' 3500', 'A', 'A', 0, 0),
('CL-GT201', 55, 1, 'Hồ khô vàng ClassMate CL-GT201', '', ' 5000', 'A', 'A', 0, 0),
('CN', 76, 1, 'Chuốt Maped nhỏ (chuốt nơ)', '', ' 3000', 'A', 'A', 0, 0),
('CQ208', 76, 1, 'Ruột chì CQ208 0,5mm', '', ' 4000', 'A', 'A', 0, 0),
('CQDELI', 76, 1, 'Chuốt quay DELI', '', ' 70000', 'A', 'A', 0, 0),
('CQL', 76, 1, 'Máy chuốt bút chì quay Maped lớn', '', ' 100000', 'A', 'A', 0, 0),
('CQN', 76, 1, 'Máy chuốt bút chì quay Maped nhỏ', '', ' 95000', 'A', 'A', 0, 0),
('CSDI', 76, 1, 'Chuốt SDI', '', ' 4000', 'A', 'A', 0, 0),
('CSMT25', 64, 1, 'Đồ chặn sách M&T - Size 25', 'Bộ/ 2 cái', ' 45000', 'A', 'A', 0, 0),
('CT', 76, 1, 'Chuốt Maped (chuốt trái tim)', '', ' 4000', 'A', 'A', 0, 0),
('CT-109', 79, 1, 'Kéo đồi mồi lớn CT-109', '', ' 15000', 'A', 'A', 0, 0),
('CX', 76, 1, 'Chuốt Maped (chuốt xuồng)', '', ' 6000', 'A', 'A', 0, 0),
('CX-A-047', 96, 1, 'Bìa cây gáy rút hình CX-A-047', '', ' 8000', 'A', 'A', 0, 0),
('D-8103', 76, 1, 'Ruột chì D-8103 lớn 2,0mm', '', ' 5000', 'A', 'A', 0, 0),
('D0549', 76, 1, 'Chuốt DELI Cá Heo No. 0549', '', ' 8000', 'A', 'A', 0, 0),
('D0557', 76, 1, 'Chuốt DELI Con heo No. 0557', '', ' 8000', 'A', 'A', 0, 0),
('D0594', 76, 1, 'Chuốt DELI No. 0594', '', ' 3000', 'A', 'A', 0, 0),
('D0599', 76, 1, 'Chuốt DELI Con chó No. 0599', '', ' 8000', 'A', 'A', 0, 0),
('D10S-5', 43, 1, 'Dấu Shiny 10 số 5mm', '', ' 180000', 'A', 'A', 0, 0),
('D10S-9', 43, 1, 'Dấu Shiny 10 số 9mm', '', ' 260000', 'A', 'A', 0, 0),
('D10S12', 43, 1, 'Dấu 10 số ghép bằng nhựa  12mm (S)', 'Nhật', ' 350000', 'A', 'A', 0, 0),
('D10S5', 43, 1, 'Dấu 10 số ghép bằng nhựa  5mm (No. 3)', 'Nhật', ' 195000', 'A', 'A', 0, 0),
('D10S8', 43, 1, 'Dấu 10 số ghép bằng nhựa  8mm (No. 1)', 'Nhật', ' 240000', 'A', 'A', 0, 0),
('D12S-5', 43, 1, 'Dấu Shiny 12 số 5mm', '', ' 180000', 'A', 'A', 0, 0),
('D20600', 43, 1, 'Dấu nhảy 6 số tự động TriO 20600', '', ' 460000', 'A', 'A', 0, 0),
('D211', 77, 1, 'Dao rọc giấy Iox 211 nhỏ', '', ' 9000', 'A', 'A', 0, 0),
('D223', 77, 1, 'Dao rọc giấy lớn Rigang 223', '', ' 13500', 'A', 'A', 0, 0),
('D24C12-8', 43, 1, 'Dấu 24 chữ cái  ghép bằng nhựa 8mm (No. 1)', 'Nhật', ' 410000', 'A', 'A', 0, 0),
('D24S5', 43, 1, 'Dấu 24 chữ cái  ghép bằng nhựa 5mm (No. 3)', 'Nhật', ' 360000', 'A', 'A', 0, 0),
('D3', 43, 1, 'Dấu ngày tháng năm Shiny 5ml - D3', '', ' 55000', 'A', 'A', 0, 0),
('D803', 77, 1, 'Dao rọc giấy lớn nhựa đục 803', '', ' 4000', 'A', 'A', 0, 0),
('D9139', 70, 1, 'Ống bút DELI No.9139', '', ' 31000', 'A', 'A', 0, 0),
('D9140', 70, 1, 'Ống bút DELI No.9140', '', ' 31000', 'A', 'A', 0, 0),
('D9143', 70, 1, 'Ống bút DELI No.9143', '', ' 47000', 'A', 'A', 0, 0),
('D9145', 70, 1, 'Ống bút DELI No.9145', '', ' 35000', 'A', 'A', 0, 0),
('D9172', 70, 1, 'Ống bút DELI lưới sắt No.9172', '', ' 27000', 'A', 'A', 0, 0),
('D9810', 70, 1, 'Ống cắm bút DELI 9810', '', ' 66000', 'A', 'A', 0, 0),
('D9881', 70, 1, 'Ống đựng kim kẹp nam châm DELI No. 9881', '', ' 20000', 'A', 'A', 0, 0),
('DA4BA', 30, 1, 'Decal A4 trắng  (Decal bể) AMAZON', 'Dùng làm tem bảo hành, niêm phong…', ' 8000', 'A', 'A', 0, 0),
('DA4V', 30, 1, 'Decal A4 trắng  (đế vàng)', 'Xấp / 100 tờ', ' 71000', 'A', 'A', 0, 0),
('DA4X', 30, 1, 'Decal A4 trắng  (đế xanh)', 'Xấp / 100 tờ', ' 68000', 'A', 'A', 0, 0),
('DBARECT', 74, 1, 'Dây Barê làm công trường', 'Cuồn ràu sọc trắng-đỏ (100m/Cuộn)', ' 49000', 'A', 'A', 0, 0),
('DCT', 74, 1, 'Đèn chớp công trường', '', ' 138000', 'A', 'A', 0, 0),
('DDBA4', 30, 1, 'Decal da bò A4 (màu thùng Carton)', 'Xấp / 100 tờ', ' 80000', 'A', 'A', 0, 0),
('DDBA4K', 30, 1, 'Decal da bò A4 KHAMISTICKER', '10 Ngôi sao', ' 90000', 'A', 'A', 0, 0),
('DDD', 62, 1, 'Đinh dù ghim bảng Dearmar', '', ' 6000', 'A', 'A', 0, 0),
('DDI', 62, 1, 'Đinh dù ghim bảng  Inox', '', ' 4000', 'A', 'A', 0, 0),
('DDK', 30, 1, 'Decal dán kiếng ', '', ' 35000', 'A', 'A', 0, 0),
('DDNO7506', 43, 1, 'Dấu nhảy 6 số tự động DELI No.7506', '', ' 200000', 'A', 'A', 0, 0),
('DDNO7507', 43, 1, 'Dấu nhảy 7 số tự động DELI No.7507', '', ' 208000', 'A', 'A', 0, 0),
('DDNO7508', 43, 1, 'Dấu nhảy 8 số tự động DELI No.7508', '', ' 255000', 'A', 'A', 0, 0),
('DDNO7509', 43, 1, 'Dấu nhảy 9 số tự động DELI No.7509', '', ' 275000', 'A', 'A', 0, 0),
('DDNO7510', 43, 1, 'Dấu nhảy 10 số tự động DELI No.7510', '', ' 290000', 'A', 'A', 0, 0),
('DELI4N', 86, 1, 'File rổ xéo 4 ngăn nhựa DELI', '', ' 85000', 'A', 'A', 0, 0),
('DELI5548', 65, 1, 'Kẹp Acco nhựa DELI No.5548 - 80mm', '50 cái / Hộp', ' 23000', 'A', 'A', 0, 0),
('DELI6026', 79, 1, 'Kéo DELI 63/4inch, 172mm No.6026', '', ' 25000', 'A', 'A', 0, 0),
('DELI6027', 79, 1, 'Kéo DELI 7inch, 175mm No.6027', '', ' 35000', 'A', 'A', 0, 0),
('DELI6445', 73, 1, 'Thước EKE DELI No. 6445', '', ' 95000', 'A', 'A', 0, 0),
('DF-120BM-1', 56, 1, 'Máy tính Casio DF-120BM (1)', '12cm x 17cm', ' 370000', 'A', 'A', 0, 0),
('DGBM', 62, 1, 'Đinh ghim bảng  màu', '', ' 4000', 'A', 'A', 0, 0),
('DGV', 78, 1, 'Dao cạo râu GILLETTE VECTOR (Lưỡi kép)', 'Dao caïo raâu GILLETTE VECTOR', ' 28000', 'A', 'A', 0, 0),
('DJ-120', 56, 1, 'Máy tính Casio DJ-120', '', ' 160000', 'A', 'A', 0, 0),
('DJ-120D-1', 56, 1, 'Máy Casio DJ-120D (1)', '', ' 210000', 'A', 'A', 0, 0),
('DJ-240D-1', 56, 1, 'Máy Casio DJ-240D (1)', '14 số', ' 425000', 'A', 'A', 0, 0),
('DL0251', 57, 1, 'Bấm kim + Kim bấm DELI 0251', '', ' 30000', 'A', 'A', 0, 0),
('DM', 30, 1, 'Decal màu', '', ' 22000', 'A', 'A', 0, 0),
('DM-1200V', 56, 1, 'Máy tính Casio DM-1200V', '', ' 140000', 'A', 'A', 0, 0),
('DMAU', 43, 1, 'Dấu mực sẵn Shiny ( BÁN HÀNG QĐT, ĐÃ THU, ĐÃ CHI …', 'xanh, đen, đỏ', ' 65000', 'A', 'A', 0, 0),
('DN10SDELI', 43, 1, 'Dấu nhảy 10 số tự động DELI', '', ' 280000', 'A', 'A', 0, 0),
('DN10SHAND', 43, 1, 'Dấu nhảy 10 số tự động HAND', '', ' 250000', 'A', 'A', 0, 0),
('DN6SHAND', 43, 1, 'Dấu nhảy 6 số tự động HAND', '', ' 175000', 'A', 'A', 0, 0),
('DN6SMAX', 43, 1, 'Dấu nhảy 6 số tự động MAX', '', ' 1500000', 'A', 'A', 0, 0),
('DN8S-HSND', 43, 1, 'Dấu nhảy 8 số tự động HAND', '', ' 250000', 'A', 'A', 0, 0),
('DP221', 63, 1, 'Kim ghim dài DP 221', '', ' 4000', 'A', 'A', 0, 0),
('DS-480', 56, 1, 'Máy Casio DS-480', '', ' 140000', 'A', 'A', 0, 0),
('DS-8818', 56, 1, 'Máy tính DS 8818', '', ' 145000', 'A', 'A', 0, 0),
('DX-120S-1', 56, 1, 'Máy Casio DX-120S (1)', '', ' 255000', 'A', 'A', 0, 0),
('DX120S-1', 56, 1, 'Máy tính Casio DX120S (1)', '', ' 240000', 'A', 'A', 0, 0),
('DY', 57, 1, 'Kềm bấmrập DY', '', ' 130000', 'A', 'A', 0, 0),
('E-011', 76, 1, 'Gôm Thiên Long đen E-011', '', ' 3500', 'A', 'A', 0, 0),
('E-05', 76, 1, 'Gôm Thiên Long E-05', '', ' 4000', 'A', 'A', 0, 0),
('E-06', 76, 1, 'Gôm Thiên Long E-06', '', ' 3500', 'A', 'A', 0, 0),
('E-08', 76, 1, 'Gôm Thiên Long E-08', '', ' 4000', 'A', 'A', 0, 0),
('E-09', 76, 1, 'Gôm Thiên Long E-09', '', ' 3000', 'A', 'A', 0, 0),
('E-606', 73, 1, 'Thước hình Ellip WIN E-606', '', ' 12000', 'A', 'A', 0, 0),
('E-6065', 76, 1, 'Gôm hình kem E-6065', '', ' 13000', 'A', 'A', 0, 0),
('E101', 77, 1, 'Dao rọc giấy nhỏ 2 lưỡi Stacom E101', '', ' 16000', 'A', 'A', 0, 0),
('E102', 77, 1, 'Dao rọc giấy lớn 2 lưỡi Stacom E102', '', ' 29000', 'A', 'A', 0, 0),
('E104', 77, 1, 'Dao rọc giấy lớn Stacom E104 - có nút chặn', '', ' 30000', 'A', 'A', 0, 0),
('E207', 57, 1, 'Bấm kim 3 Eagle 207', 'Bấm 30 tờ', ' 29000', 'A', 'A', 0, 0),
('E23/23', 57, 1, 'Máy bấm kim EAGLE 23/23', 'Bấm tối đa 200 tờ', ' 245000', 'A', 'A', 0, 0),
('E937', 60, 1, 'Bấm 2 lỗ trung Eagle 837(Bấm khoảng 30 tờ)', '', ' 35000', 'A', 'A', 0, 0),
('EGD-8', 55, 1, 'Hồ khô Artline EGD-8 (tím)', '', ' 17000', 'A', 'A', 0, 0),
('EKE200', 73, 1, 'Eke 200mm', 'Bộ/ 2 cái', ' 25000', 'A', 'A', 0, 0),
('EKE300', 73, 1, 'Eke 300mm', 'Bộ/ 2 cái', ' 38000', 'A', 'A', 0, 0),
('EKE304050', 73, 1, 'Thước Eke 30x40x50cm', '', ' 26000', 'A', 'A', 0, 0),
('EKE350', 73, 1, 'Eke 350mm', 'Bộ/ 2 cái', ' 47000', 'A', 'A', 0, 0),
('EKE400', 73, 1, 'Eke 400mm', 'Bộ/ 2 cái', ' 70000', 'A', 'A', 0, 0),
('EKE45', 73, 1, 'Thước Eke 45o', '', ' 25000', 'A', 'A', 0, 0),
('EKE450', 73, 1, 'Eke 450mm', 'Bộ/ 2 cái', ' 75000', 'A', 'A', 0, 0),
('EKE6', 73, 1, 'Thước Eke lớn _ số 6 WINQ', 'Bộ/ 2 cái (10cm, 14cm))', ' 5000', 'A', 'A', 0, 0),
('EKE60', 73, 1, 'Thước Eke 60o', '', ' 25000', 'A', 'A', 0, 0),
('ER104', 76, 1, 'Gôm tam giác Stacom ER104', '', ' 4000', 'A', 'A', 0, 0),
('ET-01', 76, 1, 'Bút gôm PENAC RUB OUT 3,8mm ET-01', 'Gôm cây bút', ' 9000', 'A', 'A', 0, 0),
('F-102', 79, 1, 'Kéo STACOM F-102', '', ' 22000', 'A', 'A', 0, 0),
('F-103', 79, 1, 'Kéo STACOM F-103', '', ' 29000', 'A', 'A', 0, 0),
('F1F8-100', 80, 1, 'Băng keo trong, đục 1F8 - 100ya(keo 43)', '16 cuồn/1 cây', ' 63000', 'A', 'A', 0, 0),
('F3N', 86, 1, 'File rổ xéo 3 ngăn nhựa', '', ' 30000', 'A', 'A', 0, 0),
('FL-028', 76, 1, 'Chuốt FULE BOY FL-028', '', ' 9000', 'A', 'A', 0, 0),
('FO CH01', 94, 1, 'Bìa lá A4 FO CH01 trong', '', ' 1800', 'A', 'A', 0, 0),
('FO CH03', 94, 1, 'Bìa lá A4 FO CH03 trong', '', ' 1800', 'A', 'A', 0, 0),
('FO CH04', 94, 1, 'Bìa lá A4 FO CH04 trong', '', ' 2000', 'A', 'A', 0, 0),
('FO-CBF01', 95, 1, 'Bìa nút F4 Thiên Long có in FO-CBF01 trong', '', ' 3500', 'A', 'A', 0, 0),
('FO-CBF02 ', 95, 1, 'Bìa nút A4 Thiên Long có in FO-CBF02 trong', '', ' 3000', 'A', 'A', 0, 0),
('FO-F4', 92, 1, 'Bìa còng 10cm F4 2 mặt Simili FlexOffice', '', ' 35000', 'A', 'A', 0, 0),
('FO-G01', 55, 1, 'Hồ khô Thiên Long FO-G01', '', ' 7000', 'A', 'A', 0, 0),
('FO-KN01', 77, 1, 'Dao rọc giấy Thiên Long FO-KN-01 (9mm)', '', ' 10000', 'A', 'A', 0, 0),
('FO-KN02', 77, 1, 'Dao rọc giấy Thiên Long FO-KN-02 (18mm)', '', ' 15000', 'A', 'A', 0, 0),
('FO-KN101', 77, 1, 'Dao rọc giấy PRO OFFICE PO-KN101 (9mm)', '', ' 10000', 'A', 'A', 0, 0),
('FO-KN102', 77, 1, 'Dao rọc giấy PRO OFFICE PO-KN102 (18mm)', '', ' 13000', 'A', 'A', 0, 0),
('FO-LAF', 92, 1, 'Bìa còng 7cm F4 1 mặt Si FlexOffice FO-LAF', 'lá, dương, hồng, biển, vàng', ' 38000', 'A', 'A', 0, 0),
('FO-LAF02', 92, 1, 'Bìa còng 7cm A4 1 mặt Si FlexOffice FO-LAF-02', 'lá, dương, hồng, biển, vàng', ' 35000', 'A', 'A', 0, 0),
('FO-LAF11', 92, 1, 'Bìa còng 5cm A4 1 mặt Si FlexOffice FO-LAF11 ', 'lá, dương, hồng, biển, vàng', ' 33000', 'A', 'A', 0, 0),
('FO-LAF12', 92, 1, 'Bìa còng  7cm A4 1 mặt Si FlexOffice FO-LAF12 ', 'lá, dương, hồng, biển, vàng', ' 33000', 'A', 'A', 0, 0),
('FO-ORB01', 92, 1, 'Bìa còng nhẫn FlexOfice A4 25mm FO-ORB01  O Ring', '', ' 20000', 'A', 'A', 0, 0),
('FO-ORB02', 92, 1, 'Bìa còng nhẫn FlexOfice A4 30mm FO-ORB02  O Ring', '', ' 21000', 'A', 'A', 0, 0),
('FO-SC01', 93, 1, 'Bìa lỗ vuông góc viền màu FlexOfice FO-SC01', 'Xấp/20 cái', ' 20000', 'A', 'A', 0, 0),
('FO-SC02', 93, 1, 'Bìa lỗ Thiên Long A4 - FO-CS-02', 'Xấp/100cái', ' 50000', 'A', 'A', 0, 0),
('FO-SC03', 79, 1, 'Kéo văn phòng 8inch FO-SC03', '13cm (5 inch)', ' 14000', 'A', 'A', 0, 0),
('FO-SC07', 79, 1, 'Kéo văn phòng 8inch FO-SC07', '8inch', ' 9000', 'A', 'A', 0, 0),
('FO-ST02', 57, 1, 'Bấm kim 10 Inox Flex Office FO- ST02', '', ' 16000', 'A', 'A', 0, 0),
('FOM70A4', 26, 1, 'Giấy Fo màu A4 - 70 (nhiều màu)', 'Giấy ngoại', ' 60000', 'A', 'A', 0, 0),
('FOM80A4', 26, 1, 'Giấy Fo màu A4 - 80 (nhiều màu)', 'Giấy ngoại', ' 68000', 'A', 'A', 0, 0),
('FOMI70', 26, 1, 'Giấy Fo màu INDO đặc biệt (nhiều màu) 70', 'Giấy ngoại', ' 170000', 'A', 'A', 0, 0),
('FOMI80', 26, 1, 'Giấy Fo màu INDO đặc biệt (nhiều màu) 80', 'Giấy ngoại', ' 170000', 'A', 'A', 0, 0),
('FOMN', 26, 1, 'Giấy Fo màu nhuộm', '', ' 120000', 'A', 'A', 0, 0),
('FOPAC01', 61, 1, 'Ghim giấy 25mm FlexOfice FO PAC01', '', ' 3000', 'A', 'A', 0, 0),
('FX-500ES-1', 56, 1, 'Máy Casio Fx 500ES (1)', '', ' 180000', 'A', 'A', 0, 0),
('FX-500MS-1', 56, 1, 'Máy Casio Fx 500MS (1)', '', ' 290000', 'A', 'A', 0, 0),
('FX500VNPLUS-1', 56, 1, 'Máy Casio Fx 500vn PLUS (1)', '', ' 295000', 'A', 'A', 0, 0),
('FX570ESPLUS-1', 56, 1, 'Máy Casio Fx 570 ES Plus (1)', '', ' 310000', 'A', 'A', 0, 0),
('FX570VNPLUS-1', 56, 1, 'Máy Casio Fx 570 vn Plus (1)', '', ' 395000', 'A', 'A', 0, 0),
('G-902', 57, 1, 'Bấm kim Inox G-Star 902', '', ' 15000', 'A', 'A', 0, 0),
('G11-DO', 55, 1, 'Hồ khô Thiên Long G-11/DO', '', ' 8000', 'A', 'A', 0, 0),
('G1F2-13', 82, 1, 'Băng keo giấy 1F2 - 13ya', '24 cuồn/ 1 cây', ' 53000', 'A', 'A', 0, 0),
('G1F2-22', 82, 1, 'Băng keo giấy 1F2 - 22ya', '24 cuồn/ 1 cây', ' 69000', 'A', 'A', 0, 0),
('G1F6', 82, 1, 'Băng keo giấy 1F6', '18 cuồn/ 1 cây', ' 59000', 'A', 'A', 0, 0),
('G1F6-22', 82, 1, 'Băng keo giấy 1F6 - 22 ya', '18 cuồn/ 1 cây', ' 73000', 'A', 'A', 0, 0),
('G1F8-22', 82, 1, 'Băng keo giấy 1F8 - 22 ya', '16 cuồn/ 1 cây', ' 70000', 'A', 'A', 0, 0),
('G1LA3', 34, 1, 'Giấy trắng 1 liên A3 (380mm*279mm)', '', ' 370000', 'A', 'A', 0, 0),
('G1LA4', 34, 1, 'Giấy trắng 1 liên A4 (210mm*279mm)', '', ' 200000', 'A', 'A', 0, 0),
('G1LA5', 34, 1, 'Giấy trắng 1 liên A5 (105mm*140mm)', '', ' 205000', 'A', 'A', 0, 0),
('G1LF4', 34, 1, 'Giấy trắng 1 liên F4 (240mm*279mm)', '', ' 220000', 'A', 'A', 0, 0),
('G2345L305', 34, 1, 'Giấy 2,3,4,5 liên (240mm*305mm) ', '', ' 425000', 'A', 'A', 0, 0),
('G2345LA3', 34, 1, 'Giấy 2,3,4,5 liên A3 (380mm*279mm)', '', ' 580000', 'A', 'A', 0, 0),
('G2345LA4-FO', 35, 1, 'Giấy 2,3,4,5 liên A4 (210mm*279mm)', '', ' 295000', 'A', 'A', 0, 0),
('G234LA4', 34, 1, 'Giấy 2,3,4 liên A4 (210mm*279mm)', '', ' 310000', 'A', 'A', 0, 0),
('G234LF4', 34, 1, 'Giấy 2,3,4,5 liên F4 (240mm*279mm)', '', ' 330000', 'A', 'A', 0, 0),
('G2F4', 82, 1, 'Băng keo giấy 2F4', '12 cuồn/ 1 cây', ' 55000', 'A', 'A', 0, 0),
('G2F4-22', 82, 1, 'Băng keo giấy 2F4 - 22ya', '12 cuồn/ 1 cây', ' 66000', 'A', 'A', 0, 0),
('G4F8-22', 82, 1, 'Băng keo giấy 4F8 - 22ya', '6 cuồn/1 cây', ' 68000', 'A', 'A', 0, 0),
('G4F8-50K', 82, 1, 'Băng keo giấy nâu 4F8-50ya - không viết đựơc', '', ' 31000', 'A', 'A', 0, 0),
('G4F8-50V', 82, 1, 'Băng keo giấy nâu 4F8-50ya - viết lên được', '', ' 35000', 'A', 'A', 0, 0),
('G5LA4', 34, 1, 'Giấy 5 liên A4 (210mm*279mm)', '', ' 310000', 'A', 'A', 0, 0),
('GA4-9', 79, 1, 'Kéo GA4-9', '', ' 22000', 'A', 'A', 0, 0),
('GABC', 76, 1, 'Gôm ABC (1)', '', ' 2000', 'A', 'A', 0, 0),
('GAC70A4', 23, 1, 'Giấy ACURA A4-70', '', ' 52000', 'A', 'A', 0, 0),
('GAL60A4', 23, 1, 'Giáy Au Lạc A4-60', '', ' 45000', 'A', 'A', 0, 0),
('GAO101085-100-3', 37, 1, 'Giấy Ao (10 x 10 x 85) - Định lượng 100 - 3kg', '', ' 130000', 'A', 'A', 0, 0),
('GAO101085-100-5', 37, 1, 'Giấy Ao (10 x 10 x 85) - Định lượng 100 - 5kg', '', ' 270000', 'A', 'A', 0, 0),
('GAO101085-80', 37, 1, 'Giấy Ao (10 x 10 x 85) - Định lượng 80', '', ' 140000', 'A', 'A', 0, 0),
('GAO105', 37, 1, 'Giấy Ao - Định lượng 105', '', ' 5500', 'A', 'A', 0, 0),
('GAO121285-100', 37, 1, 'Giấy Ao (12 x 12 x 85) - Định lượng 100', '', ' 180000', 'A', 'A', 0, 0),
('GAO1515108-100', 37, 1, 'Giấy Ao (15 x 15 x 108) - Định lượng 100 ', '', ' 305000', 'A', 'A', 0, 0),
('GAO151585-100-5', 37, 1, 'Giấy Ao (15 x 15 x 85) - Định lượng 100 - 5kg', '', ' 245000', 'A', 'A', 0, 0),
('GAO205', 37, 1, 'Giấy Ao - Định lượng 205', '', ' 6000', 'A', 'A', 0, 0),
('GAO80', 37, 1, 'Giấy Ao - Định lượng 80', '', ' 5000', 'A', 'A', 0, 0),
('GAO84120-105', 37, 1, 'Giấy Ao khổ 84cm - Dài 120m - Định lượng 105', '', ' 360000', 'A', 'A', 0, 0),
('GAP70A4', 23, 1, 'Giấy A+ Plus A4-70', '', ' 54000', 'A', 'A', 0, 0),
('GBB60A4', 23, 1, 'Giấy Bãi Bằng ngà A4-60', '', ' 47000', 'A', 'A', 0, 0),
('GBW70A4', 23, 1, 'Giấy BRIGHT WHITE A4-70', '', ' 49000', 'A', 'A', 0, 0),
('GC57', 39, 1, 'Giấy cộng 5.7cm', '', ' 8500', 'A', 'A', 0, 0),
('GC6084-150', 37, 1, 'Giấy Cosches (60 x 84) - 2 mặt trắng 150 ', '', ' 6000', 'A', 'A', 0, 0),
('GC75', 39, 1, 'Giấy cộng 7.5cm', '', ' 9000', 'A', 'A', 0, 0),
('GCA0', 37, 1, 'Giấy Cosches A0 - trắng', 'Giấy cắt rập', ' 7000', 'A', 'A', 0, 0),
('GCAMPUS', 76, 1, 'Gôm Campus ré pé té', 'Ấn Độ', ' 10000', 'A', 'A', 0, 0),
('GCAMPUSD', 76, 1, 'Gôm Campus Doraemon', 'Ấn Độ', ' 8000', 'A', 'A', 0, 0),
('GCG53A4', 31, 1, 'Giấy Can GATEWAY A4- Đlượng 53 - Anh', 'Hộp /500 tờ', ' 210000', 'A', 'A', 0, 0),
('GCG63A4', 31, 1, 'Giấy Can GATEWAY A4- Đlượng 63 - Anh', 'Hộp /500 tờ', ' 290000', 'A', 'A', 0, 0),
('GCG73A4', 31, 1, 'Giấy Can GATEWAY A4- Đlượng 73 - Anh', 'Hộp /250 tờ', ' 200000', 'A', 'A', 0, 0),
('GCG83A3', 31, 1, 'Giấy Can GATEWAY A3- Đlượng 83 - Anh', 'Hộp /250 tờ', ' 385000', 'A', 'A', 0, 0),
('GCG83A4', 31, 1, 'Giấy Can GATEWAY A4- Đlượng 83 - Anh', 'Hộp /250 tờ', ' 200000', 'A', 'A', 0, 0),
('GCG93A3', 31, 1, 'Giấy Can GATEWAY A3- Đlượng 93 - Anh', 'Hộp /250 tờ', ' 400000', 'A', 'A', 0, 0),
('GCG93A4', 31, 1, 'Giấy Can GATEWAY A4- Đlượng 93 - Anh', 'Hộp /250 tờ', ' 236000', 'A', 'A', 0, 0),
('GCLC', 28, 1, 'Giấy Cacbonles liên cuối - 210 x 279cm', '', ' 90000', 'A', 'A', 0, 0),
('GCLD', 28, 1, 'Giấy Cacbonles liên đầu - 210 x 279cm', '', ' 90000', 'A', 'A', 0, 0),
('GCLG', 28, 1, 'Giấy Cacbonles liên giữa - 210 x 279cm', '', ' 101000', 'A', 'A', 0, 0),
('GCP70A4', 23, 1, 'Giấy COPY PAPER A4-70', '', ' 51000', 'A', 'A', 0, 0),
('GCR1', 41, 1, 'Giấy Carô A4 UP', 'Giấy đẹp', ' 6000', 'A', 'A', 0, 0),
('GCR2', 41, 1, 'Giấy Carô A4 Tân Vĩnh Tiến', 'Giấy đẹp', ' 6000', 'A', 'A', 0, 0),
('GCR3', 41, 1, 'Giấy Carô A4 - thường', '', ' 5000', 'A', 'A', 0, 0),
('GD2B', 76, 1, 'Gôm đen 2B', '', ' 4500', 'A', 'A', 0, 0),
('GD70A4', 23, 1, 'Giấy DELIGHT A4-70', '', ' 51000', 'A', 'A', 0, 0),
('GDA70A4', 23, 1, 'Giấy Double A A4-70gsm ', '', ' 57000', 'A', 'A', 0, 0),
('GDA70A5', 23, 1, 'Giấy Double A A5-70', '', ' 32000', 'A', 'A', 0, 0),
('GDB70A3', 23, 1, 'Giấy Double A A3-70', '', ' 118000', 'A', 'A', 0, 0),
('GDB80A3', 23, 1, 'Giấy Double A A3-80gsm ', '', ' 160000', 'A', 'A', 0, 0),
('GDB80A4', 23, 1, 'Giấy Double A A4-80gsm ', '', ' 80000', 'A', 'A', 0, 0),
('GE65A4', 23, 1, 'Giấy Excel A4-65 (PTL)', '', ' 46000', 'A', 'A', 0, 0),
('GE70A3', 23, 1, 'Giấy EXCEL A3-70', '', ' 105000', 'A', 'A', 0, 0),
('GE70A4', 23, 1, 'Giấy Excel A4-70 (PTL)', '', ' 51000', 'A', 'A', 0, 0),
('GE70A5', 23, 1, 'Giấy Excell A5-70', '', ' 28000', 'A', 'A', 0, 0),
('GE80A3', 23, 1, 'Giấy EXCEL A3-80', '', ' 128000', 'A', 'A', 0, 0),
('GE80A4-1', 23, 1, 'Giấy Excell A4-80 (PTL) (1)', '', ' 61000', 'A', 'A', 0, 0),
('GE80A4-2', 23, 1, 'Giấy Excell A4-80 (PTL) (2)', '', ' 58000', 'A', 'A', 0, 0),
('GE80A4-PO', 23, 1, 'Giấy Excell A4-80 (PO)', '', ' 67000', 'A', 'A', 0, 0),
('GE80A5', 23, 1, 'Giấy Excell A5-80 (2)', '', ' 34000', 'A', 'A', 0, 0),
('GEP70A4', 23, 1, 'Giấy E Paper A4-70', '', ' 54000', 'A', 'A', 0, 0),
('GEP80A4', 23, 1, 'Giấy E Paper A4-80', '', ' 64000', 'A', 'A', 0, 0),
('GEX70A4', 23, 1, 'Giấy Excelent A4-70', '', ' 52000', 'A', 'A', 0, 0),
('GFO68A4', 24, 1, 'Giấy Fo A4-68 (PTL)', '', ' 45000', 'A', 'A', 0, 0),
('GFO70B5L', 24, 1, 'Giấy Fo B5-70 (khổ hộ khẩu) (PTL)', '18 x 27cm', ' 49000', 'A', 'A', 0, 0),
('GFO70B5N', 24, 1, 'Giấy Fo B5-70 (khổ hộ khẩu) (PTL)', '16 x 23,7cm', ' 33000', 'A', 'A', 0, 0),
('GFO72A3', 24, 1, 'Giấy Fo A3-72 (PTL)', '', ' 100000', 'A', 'A', 0, 0),
('GFO72A4', 24, 1, 'Giấy Fo A4-72 (PTL)', '', ' 51000', 'A', 'A', 0, 0),
('GFO80A4-1', 24, 1, 'Giấy Fo A4-80 PTL) (1)', '', ' 60000', 'A', 'A', 0, 0),
('GFO80A4-2', 24, 1, 'Giấy Fo A4-80 PTL) (2)', '', ' 57000', 'A', 'A', 0, 0),
('GFS30D', 39, 1, 'Giấy Fax Sakura 30m DAPHA', '210/216mm', ' 21000', 'A', 'A', 0, 0),
('GFS30T', 39, 1, 'Giấy Fax Sakura 30m TOYO', '210/216mm', ' 16000', 'A', 'A', 0, 0),
('GFS50', 39, 1, 'Giấy Fax Sakura 50m', '210/216mm', ' 40000', 'A', 'A', 0, 0),
('GGKH', 61, 1, 'Ghim giấy Kim Hưng', '', ' 1500', 'A', 'A', 0, 0),
('GGM', 61, 1, 'Ghim giấy màu (bịch nhựa)', 'ghim lớn,nhiều màu', ' 1500', 'A', 'A', 0, 0),
('GGMAX', 61, 1, 'Ghim giấy MAX', '', ' 3000', 'A', 'A', 0, 0),
('GGMTTH', 61, 1, 'Ghim giấy màu TTH', 'ghim lớn,nhiều màu', ' 6500', 'A', 'A', 0, 0),
('GHV', 76, 1, 'Gôm hình hoa và con vật', '', ' 9000', 'A', 'A', 0, 0),
('GI70A4', 23, 1, 'Giấy Idea A4-70', '', ' 59000', 'A', 'A', 0, 0),
('GI80A4', 23, 1, 'Giấy Idea A4-80', '', ' 70000', 'A', 'A', 0, 0),
('GICH', 27, 1, 'Hộp Giấy in Card cắt sẵn', '', ' 7000', 'A', 'A', 0, 0),
('GIH1A3', 29, 1, 'Giấy in hình A3 1 mặt', '', ' 80000', 'A', 'A', 0, 0),
('GIH1A3-180M', 29, 1, 'Giấy in hình 1 mặt A3 Morelica - 180g', '', ' 85000', 'A', 'A', 0, 0),
('GIH1A4-135BTS', 29, 1, 'Giấy in hình 1 mặt A4 135g - BTS', '', ' 71000', 'A', 'A', 0, 0),
('GIH1A4-180M', 29, 1, 'Giấy in hình 1 mặt A4 Morelica - 180g', '', ' 55000', 'A', 'A', 0, 0),
('GIH1A4-180TNE', 29, 1, 'Giấy in hình 1 mặt A4 TNE - 180g', '', ' 50000', 'A', 'A', 0, 0),
('GIH1A4-230HN', 29, 1, 'Giấy in hình 1 mặt A4 230g - HN', '', ' 65000', 'A', 'A', 0, 0),
('GIH2-260HN', 29, 1, 'Giấy in hình 2 mặt mờ 260g HN', 'Xấp/50 tờ', ' 80000', 'A', 'A', 0, 0),
('GIH2A4260HN', 29, 1, 'Giấy in hình 2 mặt bóng A4 260g HN ', 'Xấp/50 tờ', ' 79000', 'A', 'A', 0, 0),
('GIH2A4HN', 29, 1, 'Giấy in hình 2 mặt bóng dày A4 HN', 'Xấp/50 tờ', ' 85000', 'A', 'A', 0, 0),
('GIH2A4NTS', 29, 1, 'Giấy in hình 2 mặt bóng dày A4 NTS', 'Xấp/50 tờ', ' 80000', 'A', 'A', 0, 0),
('GIH2A5HN', 29, 1, 'Giấy in hình 2 mặt bóng dày A5 HN', 'Xấp/50 tờ', ' 46000', 'A', 'A', 0, 0),
('GIHE1', 29, 1, 'Giấy in hình 1 mặt EPSON', 'Xấp/20 tờ', ' 35000', 'A', 'A', 0, 0),
('GIHE2', 29, 1, 'Giấy in hình 2 mặt EPSON', 'Xấp/20 tờ', ' 53000', 'A', 'A', 0, 0),
('GIHGA4HN', 29, 1, 'Giấy in hình gân A4 HN', 'Xấp/50 tờ', ' 80000', 'A', 'A', 0, 0),
('GIHK135PTS', 29, 1, 'Giấy in hình keo dán PTS 135g', 'Xấp/50 tờ', ' 70000', 'A', 'A', 0, 0),
('GIKP70A3', 23, 1, 'Giấy IK PLUS A3-70', '', ' 115000', 'A', 'A', 0, 0),
('GIKP70A4', 23, 1, 'Giấy IK Plus A4-70', '', ' 56000', 'A', 'A', 0, 0),
('GIME', 29, 1, 'Giấy in màu EPSON', 'Xấp/100 tờ', ' 61000', 'A', 'A', 0, 0),
('GIN70A4', 23, 1, 'Giấy IK NATURAL A4-70', '', ' 53000', 'A', 'A', 0, 0),
('GK', 76, 1, 'Gôm khúc', 'Gôm cây bút', ' 6000', 'A', 'A', 0, 0),
('GKN1', 41, 1, 'Giấy kẻ ngang UP', 'Giấy đẹp', ' 6000', 'A', 'A', 0, 0),
('GKN2', 41, 1, 'Giấy kẻ ngang A4 - thường kẻ đen', '', ' 4000', 'A', 'A', 0, 0),
('GKN3', 41, 1, 'Giấy kẻ ngang A4 - Vĩnh Tiến (21 x 31cm)', 'Đường kẻ đen', ' 5500', 'A', 'A', 0, 0),
('GKN4', 41, 1, 'Giấy kẻ ngang A4 - Tân Vĩnh Tiến (Con Mèo)', 'Đường kẻ đen', ' 5500', 'A', 'A', 0, 0),
('GKN5', 41, 1, 'Giấy kẻ ngang A4 - Lê Hoàng ', 'Đường kẻ đen', ' 5000', 'A', 'A', 0, 0),
('GKT', 41, 1, 'Giấy kiểm tra Carô', '', ' 58000', 'A', 'A', 0, 0),
('GL105A3', 23, 1, 'Giấy Lucky A3-105', 'Giấy dày, đẹp', ' 240000', 'A', 'A', 0, 0),
('GL125A3', 23, 1, 'Giấy Lucky A3-125', 'Giấy dày, đẹp', ' 260000', 'A', 'A', 0, 0),
('GL70A3', 23, 1, 'Giấy Lucky A3-70', 'Giấy dày, đẹp', ' 135000', 'A', 'A', 0, 0),
('GN5750', 39, 1, 'Giấy nhiệt máy tính tiền 57mm x 50m', '', ' 7500', 'A', 'A', 0, 0),
('GN70A4', 23, 1, 'Giấy NATURAL A4-70', '', ' 51000', 'A', 'A', 0, 0),
('GN80', 39, 1, 'Giấy nhiệt máy tính tiền 80mm 60', '', ' 19000', 'A', 'A', 0, 0),
('GN8030', 39, 1, 'Giấy nhiệt máy tính tiền 80mm x 30m', '', ' 8500', 'A', 'A', 0, 0),
('GP1', 76, 1, 'Gôm Pentel nhỏ (1)', '', ' 8000', 'A', 'A', 0, 0),
('GP2', 76, 1, 'Gôm Pentel nhỏ (2)', '', ' 4000', 'A', 'A', 0, 0),
('GPA4', 38, 1, 'Giấy Perlure mỏng (dùng niêm phong)', 'Xấp / 100 tờ', ' 14000', 'A', 'A', 0, 0),
('GPO70A3', 23, 1, 'Giấy Paper One A3-70', '', ' 122000', 'A', 'A', 0, 0),
('GPO70A4', 23, 1, 'Giấy Paper One A4-70', '', ' 58000', 'A', 'A', 0, 0),
('GPO80A4', 23, 1, 'Giấy Paper One A4-80', '', ' 72000', 'A', 'A', 0, 0),
('GPO85A4', 23, 1, 'Giấy Paper One A4-85', '', ' 75000', 'A', 'A', 0, 0),
('GR250', 37, 1, 'Giấy Roky mặt trắng, mặt đen - ĐLượng 250', 'Giấy cắt rập', ' 6000', 'A', 'A', 0, 0),
('GR250PTL', 37, 1, 'Giấy Roky mặt trắng, mặt đen - ĐLượng 250 PTL', '', ' 5000', 'A', 'A', 0, 0),
('GR300', 37, 1, 'Giấy Roky mặt trắng, mặt đen - ĐLượng 300', 'Giấy cắt rập', ' 7000', 'A', 'A', 0, 0),
('GR400', 37, 1, 'Giấy Roky mặt trắng, mặt đen - ĐLượng 400', 'Giấy cắt rập', ' 8000', 'A', 'A', 0, 0),
('GRK350', 37, 1, 'Giấy Roky mặt trắng, mặt đen - ĐLượng 350 PTL', '', ' 7000', 'A', 'A', 0, 0),
('GS70A4', 23, 1, 'Giấy Supreme A4-70', '', ' 57000', 'A', 'A', 0, 0),
('GSP70A3', 23, 1, 'Giấy Supreme A3-70', '', ' 116000', 'A', 'A', 0, 0),
('GSP80A4', 23, 1, 'Giấy Supreme A4-80', '', ' 70000', 'A', 'A', 0, 0),
('GST70A4', 23, 1, 'Giấy Smartist A4-70', '', ' 49000', 'A', 'A', 0, 0),
('GT2M', 40, 1, 'Giấy than 2 mặt', '', ' 26000', 'A', 'A', 0, 0),
('GT80', 27, 1, 'Giấy thơm A4 (80Micgsm) (1 mặt bông)', '', ' 65000', 'A', 'A', 0, 0),
('GTA4KD', 40, 1, 'Giấy than Kokusai A4 đen', '', ' 62000', 'A', 'A', 0, 0),
('GTA4KX', 40, 1, 'Giấy than Kokusai A4 xanh', '', ' 60000', 'A', 'A', 0, 0),
('GTBT', 40, 1, 'Giấy than Carbonex A4 (Hiệu bàn tay)', 'Xấp/100 tờ', ' 78000', 'A', 'A', 0, 0),
('GTC3545', 36, 1, 'Giấy thủ công 35 x 45cm', 'Đủ màu', ' 1500', 'A', 'A', 0, 0),
('GTCA5K', 36, 1, 'Giấy thủ công A5 (Có keo dán)', 'Đủ màu', ' 5000', 'A', 'A', 0, 0),
('GTCA5KK', 36, 1, 'Giấy thủ công A5 (không keo dán)', 'Đủ màu', ' 2000', 'A', 'A', 0, 0),
('GTCL', 40, 1, 'Giấy than Cửu Long', '', ' 42000', 'A', 'A', 0, 0),
('GTG', 40, 1, 'Giấy than Mỹ G-star', '2 màu xanh, đen', ' 50000', 'A', 'A', 0, 0),
('GTH4400', 40, 1, 'Giấy than Horse H-4400', '2 màu xanh, đen', ' 78000', 'A', 'A', 0, 0),
('GTHCG', 40, 1, 'Giấy than Horse Cô Gái', '2 màu xanh, đen', ' 55000', 'A', 'A', 0, 0),
('GTHD', 40, 1, 'Giấy than Horse màu đen (1)', '', ' 77000', 'A', 'A', 0, 0),
('GTK085', 40, 1, 'Giấy than Kokusai khổ 0.85m - Cuồn 5kg', '', ' 1850000', 'A', 'A', 0, 0),
('GX-120B-1', 56, 1, 'Máy Casio GX-120B (1)', '', ' 380000', 'A', 'A', 0, 0),
('GX-12B-1', 56, 1, 'Máy Casio GX-12B (1)', '', ' 360000', 'A', 'A', 0, 0),
('GZ-12S-1', 56, 1, 'Máy Casio GZ-12S (1)', '', ' 290000', 'A', 'A', 0, 0),
('H3012', 61, 1, 'Kim bấm H30/12', '', ' 12500', 'A', 'A', 0, 0),
('H3K30', 55, 1, 'Hồ 3K 30ml', 'hồ lưới', ' 1700', 'A', 'A', 0, 0),
('HB3N', 71, 1, 'Hộp bút 3 ngăn', '', ' 22000', 'A', 'A', 0, 0),
('HB7082', 71, 1, 'Hộp bút la bàn 7082', '', ' 42000', 'A', 'A', 0, 0),
('HB8016', 71, 1, 'Hộp bút 8016', '', ' 25000', 'A', 'A', 0, 0),
('HD-10N', 57, 1, 'Bấm kim 10 MAX HD-10', '', ' 28000', 'A', 'A', 0, 0),
('HD-1124', 57, 1, 'Máy bấm kim đại KANEX HD1224', '', ' 650000', 'A', 'A', 0, 0),
('HD-555', 57, 1, 'Bấm kim số 3 KANEX HD-555', '', ' 45000', 'A', 'A', 0, 0),
('HD-88R', 57, 1, 'Máy bấm kim cong Max HD-88R', '', ' 190000', 'A', 'A', 0, 0),
('HDS-822', 42, 1, 'Dấu S-842 trắng', '', ' 45000', 'A', 'A', 0, 0),
('HDS-830', 42, 1, 'Dấu S-830 trắng', '', ' 190000', 'A', 'A', 0, 0),
('HDS-843', 42, 1, 'Dấu S-843 trắng', '', ' 58000', 'A', 'A', 0, 0),
('HDS-844', 42, 1, 'Dấu S-844 trắng', '', ' 70000', 'A', 'A', 0, 0),
('HF-388', 94, 1, 'Bìa lá A4 HF-388', '', ' 1700', 'A', 'A', 0, 0),
('HG03-15', 55, 1, 'Hồ dán WinQ G-03 (15ml) ', '', ' 1500', 'A', 'A', 0, 0),
('HG03-30', 55, 1, 'Hồ dán WinQ G-03 (30ml) ', '', ' 2000', 'A', 'A', 0, 0),
('HG08', 55, 1, 'Hồ dán Thiên Long G08 (30ml)', '', ' 3000', 'A', 'A', 0, 0),
('HKHQ', 55, 1, 'Hồ khô vàng Hàn Quốc', '', ' 6000', 'A', 'A', 0, 0),
('HKS', 55, 1, 'Hồ khô Stacom', '', ' 4000', 'A', 'A', 0, 0),
('HL-122TV', 56, 1, 'Máy tính Casio HL-122TV ', '', ' 100000', 'A', 'A', 0, 0),
('HL-122TV-1', 56, 1, 'Máy tính Casio HL-122TV (1)', 'máy bỏ túi', ' 240000', 'A', 'A', 0, 0),
('HL-818L', 56, 1, 'Máy Casio bỏ túi HL-818L', '7 x 11cm', ' 85000', 'A', 'A', 0, 0),
('HNO1', 44, 1, 'Stampad Horse No. 1 (mặt vải)', '', ' 52000', 'A', 'A', 0, 0),
('HNO2', 44, 1, 'Stampad Horse No. 2 (mặt vải)', '7cm x  11cm', ' 29000', 'A', 'A', 0, 0),
('HNO3', 44, 1, 'Stampad Horse No. 3 (mặt vải)', '5,4cm x 8,5cm', ' 25000', 'A', 'A', 0, 0),
('HP-88', 57, 1, 'Kềm bấm kim cong MAX HP-88', '', ' 390000', 'A', 'A', 0, 0),
('HQ30', 55, 1, 'Hồ Queen 30ml', 'hồ lưới', ' 2700', 'A', 'A', 0, 0),
('HQ674', 99, 1, 'Bìa 2 lò xo nhựa VIVIDUS HQ674', '', ' 21000', 'A', 'A', 0, 0),
('HQT30', 55, 1, 'Hồ Quốc Toàn 30ml', 'hồ lưới', ' 1700', 'A', 'A', 0, 0),
('HV181944', 71, 1, 'Hộp đựng viết xe hơi bằng sắt 181944', '', ' 30000', 'A', 'A', 0, 0),
('HY3172', 86, 1, 'File rổ xéo kim loại Top Point HY3172', '', ' 65000', 'A', 'A', 0, 0);
INSERT INTO `shop_products` (`product_id`, `category_id`, `tax_id`, `title`, `description`, `price`, `language`, `specifications`, `is_discount`, `is_highlight`) VALUES
('HY63002', 86, 1, 'File rổ xéo kim loại Top Point HY63002', '', ' 65000', 'A', 'A', 0, 0),
('HY6303-2', 88, 1, 'Khay hồ sơ 2 tầng kim loại HY6303-2', '', ' 130000', 'A', 'A', 0, 0),
('IT-938', 76, 1, 'Chuốt IT-938', '', ' 4000', 'A', 'A', 0, 0),
('J1020B', 76, 1, 'Gôm đen Hernidex J1020B', 'Hàn Quốc', ' 13000', 'A', 'A', 0, 0),
('JF-120BM-1', 56, 1, 'Máy tính Casio JF-120BM (1)', '12cm x 17cm', ' 270000', 'A', 'A', 0, 0),
('JF-120MS-1', 56, 1, 'Máy tính Casio JF-120MS (1)', '12cm x 17cm', ' 280000', 'A', 'A', 0, 0),
('JS-120L', 56, 1, 'Máy Casio JS-120L ', '11cm x 17cm', ' 90000', 'A', 'A', 0, 0),
('JS-120TV', 56, 1, 'Máy tính Casio JS-20TV', '', ' 110000', 'A', 'A', 0, 0),
('JS-212', 56, 1, 'Máy tính Casio bỏ túi JS-212', '', ' 50000', 'A', 'A', 0, 0),
('JS-40TS', 56, 1, 'Máy Casio JS-40TS', '14 số', ' 150000', 'A', 'A', 0, 0),
('JS40VW', 56, 1, 'Máy Casio JS-40V-w', '14 số', ' 135000', 'A', 'A', 0, 0),
('K1', 56, 1, 'Máy tính Casio K1', '', ' 145000', 'A', 'A', 0, 0),
('K1010', 79, 1, 'Kéo mũi tròn 1010 nhỏ', '', ' 6000', 'A', 'A', 0, 0),
('K10ND', 79, 1, 'Kéo cán nhựa 10inch Nguyễn Đình', '10 inch', ' 60000', 'A', 'A', 0, 0),
('K19', 79, 1, 'Kéo nhựa K19', 'dài 21.5cm', ' 19000', 'A', 'A', 0, 0),
('K20', 79, 1, 'Kéo nhựa K20', '', ' 23000', 'A', 'A', 0, 0),
('K3', 21, 1, 'Kệ để nước 3 chân bằng sắt', '', ' 33000', 'A', 'A', 0, 0),
('K5005A', 79, 1, 'Kéo 5005A', '', ' 6000', 'A', 'A', 0, 0),
('K538', 79, 1, 'Kéo hoa hồng 538', '', ' 14000', 'A', 'A', 0, 0),
('K715', 79, 1, 'Kéo răng cưa 715 (Zigzag, Smal-Wawe, ', '135mm', ' 24000', 'A', 'A', 0, 0),
('KACNM', 65, 1, 'Kẹp Acco nhựa nhiều màu (Kẹp 2 lỗ)', '50 cái / Hộp', ' 14000', 'A', 'A', 0, 0),
('KACNN', 65, 1, 'Kẹp Acco nhựa tiện lợi NITRASA', 'Bịch/25 cái', ' 35000', 'A', 'A', 0, 0),
('KACS', 65, 1, 'Kẹp Acco nhựa Suremark', '50 cái / Hộp', ' 23000', 'A', 'A', 0, 0),
('KACSSDI', 65, 1, 'Kẹp Acco sắt SDI (Kẹp 2 lỗ)', '50 cái / Hộp', ' 23000', 'A', 'A', 0, 0),
('KACU', 65, 1, 'Kẹp Acco nhựa Unicorn', '50 cái / Hộp', ' 15000', 'A', 'A', 0, 0),
('KB10', 57, 1, 'Kìm bấm số 10', 'Bấm khoảng 15 tờ', ' 65000', 'A', 'A', 0, 0),
('KB10D', 61, 1, 'Kim bấm số 10 DELI', 'Hộp nhỏ', ' 3000', 'A', 'A', 0, 0),
('KB10M', 61, 1, 'Kim bấm số 10 MAX', 'Hộp nhỏ', ' 3000', 'A', 'A', 0, 0),
('KB10P', 61, 1, 'Kim bấm số 10 PLUS', 'Hộp nhỏ', ' 3200', 'A', 'A', 0, 0),
('KB10S', 61, 1, 'Kim bấm số 10 Suremark', 'Hộp nhỏ', ' 3000', 'A', 'A', 0, 0),
('KB10SDI', 61, 1, 'Kim bấm số 10 SDI', 'Hộp nhỏ', ' 2400', 'A', 'A', 0, 0),
('KB10T', 61, 1, 'Kim bấm số 10 TriO', 'Hộp nhỏ', ' 2500', 'A', 'A', 0, 0),
('KB10VD', 61, 1, 'Kim bấm số 10 Việt Đức', 'Hộp nhỏ', ' 3000', 'A', 'A', 0, 0),
('KB15', 65, 1, 'Kẹp bướm ECHO 15mm - tiểu', 'Hộp /12 cái', ' 4000', 'A', 'A', 0, 0),
('KB19', 65, 1, 'Kẹp bướm ECHO 19mm - nhỏ', 'Hộp /12 cái', ' 5000', 'A', 'A', 0, 0),
('KB246', 61, 1, 'Kim bấm số 3 Việt Đức 24/6', 'Hộp nhỏ', ' 5500', 'A', 'A', 0, 0),
('KB25', 65, 1, 'Kẹp bướm ECHO 25mm - trung', 'Hộp /12 cái', ' 7000', 'A', 'A', 0, 0),
('KB3', 57, 1, 'Kìm bấm số 3', 'Bấm 30 tờ', ' 82000', 'A', 'A', 0, 0),
('KB32', 65, 1, 'Kẹp bướm ECHO 32mm - trung', 'Hộp /12 cái', ' 10000', 'A', 'A', 0, 0),
('KB3SDI', 61, 1, 'Kim bấm số 3 SDI', 'Hộp nhỏ', ' 4500', 'A', 'A', 0, 0),
('KB41', 65, 1, 'Kẹp bướm ECHO 41mm - lớn', 'Hộp /12 cái', ' 14000', 'A', 'A', 0, 0),
('KB51', 65, 1, 'Kẹp bướm ECHO 51mm - lớn', 'Hộp /12 cái', ' 23000', 'A', 'A', 0, 0),
('KBM15', 65, 1, 'Kẹp bướm màu 15mm', '', ' 35000', 'A', 'A', 0, 0),
('KBM19', 65, 1, 'Kẹp bướm màu 19mm', '', ' 35000', 'A', 'A', 0, 0),
('KBM25', 65, 1, 'Kẹp bướm màu 25mm', '', ' 51000', 'A', 'A', 0, 0),
('KBM32', 65, 1, 'Kẹp bướm màu 32mm', '', ' 49000', 'A', 'A', 0, 0),
('KBM41', 65, 1, 'Kẹp bướm màu 41mm', '', ' 51000', 'A', 'A', 0, 0),
('KBM51', 65, 1, 'Kẹp bướm màu 51mm', '', ' 51000', 'A', 'A', 0, 0),
('KBNDELI', 65, 1, 'Kẹp bướm nhựa hình táo DELI', 'Vỉ /4 cái', ' 4000', 'A', 'A', 0, 0),
('KBTQ', 61, 1, 'Kim bấm số 10 TQ hộp đỏ', 'Hộp nhỏ', ' 2000', 'A', 'A', 0, 0),
('KCPDH3', 65, 1, 'Kẹp cánh phượng Dân Hoa 3cm ', '', ' 27000', 'A', 'A', 0, 0),
('KCPDH5', 65, 1, 'Kẹp cánh phượng Dân Hoa 5cm ', '', ' 29000', 'A', 'A', 0, 0),
('KCPDH8', 65, 1, 'Kẹp cánh phượng Dân Hoa 8cm ', '', ' 33000', 'A', 'A', 0, 0),
('KDC', 83, 1, 'Băng keo điện CENTRAL', '', ' 2500', 'A', 'A', 0, 0),
('KDE', 83, 1, 'Băng keo điện ECO', '', ' 5000', 'A', 'A', 0, 0),
('KDHCG', 42, 1, 'Dấu hoàn công  cán gỗ', '', ' 300000', 'A', 'A', 0, 0),
('KDS-308', 42, 1, 'Hộp dấu Shiny S-308', '', ' 75000', 'A', 'A', 0, 0),
('KDS-822-1', 42, 1, 'Hộp dấu Shiny S-822 (Dấu tên) - 1 dòng', '', ' 65000', 'A', 'A', 0, 0),
('KDS-822-2', 42, 1, 'Hộp dấu Shiny S-822 - 2 dòng', '', ' 75000', 'A', 'A', 0, 0),
('KDS-823', 42, 1, 'Hộp dấu Shiny S-823 ', '', ' 120000', 'A', 'A', 0, 0),
('KDS-824', 42, 1, 'Hộp dấu Shiny S-824 (Dấu Cửa hàng, Công ty..)', '', ' 130000', 'A', 'A', 0, 0),
('KDS-830', 42, 1, 'Hộp dấu Shiny S-830', '', ' 320000', 'A', 'A', 0, 0),
('KDT3M', 83, 1, 'Băng keo dán tiền 3M Scotch - kèm cắt keo', '', ' 17000', 'A', 'A', 0, 0),
('KF820', 73, 1, 'Thước EKE bộ KF-820', '', ' 7000', 'A', 'A', 0, 0),
('KGD1', 47, 1, 'Kệ gác dấu 1 tầng', '', ' 17000', 'A', 'A', 0, 0),
('KGD2', 47, 1, 'Kệ gác dấu 2 tầng', '', ' 27000', 'A', 'A', 0, 0),
('KGD3', 47, 1, 'Kệ gác dấu 3 tầng', '', ' 37000', 'A', 'A', 0, 0),
('KH1F2', 83, 1, 'Băng keo hoa văn 1,2cm', 'Cây/10 cuồn', ' 20000', 'A', 'A', 0, 0),
('KKO14', 79, 1, 'Kéo len đỏ Kiều Oanh 14cm', '', ' 47000', 'A', 'A', 0, 0),
('KKO18', 79, 1, 'Kéo len đỏ Kiều Oanh 18cm', '', ' 49000', 'A', 'A', 0, 0),
('KL', 83, 1, 'Băng keo lụa', '', ' 5000', 'A', 'A', 0, 0),
('KNO.128', 79, 1, 'Kéo thước con bướm No.128', '', ' 7000', 'A', 'A', 0, 0),
('KQ', 79, 1, 'Kéo răng cưa Queen', '', ' 170000', 'A', 'A', 0, 0),
('KS10', 66, 1, 'Kẹp sắt 10cm', '', ' 10000', 'A', 'A', 0, 0),
('KS12', 66, 1, 'Kẹp sắt 12cm', 'Vỉ/2cái', ' 14000', 'A', 'A', 0, 0),
('KS20', 66, 1, 'Kẹp sắt 20cm', 'Vỉ/2cái', ' 14000', 'A', 'A', 0, 0),
('KS4', 66, 1, 'Kẹp sắt 4cm', 'Vỉ /10 cái', ' 1500', 'A', 'A', 0, 0),
('KS6', 66, 1, 'Kẹp sắt 6cm', 'Vỉ /10 cái', ' 3000', 'A', 'A', 0, 0),
('KS8', 66, 1, 'Kẹp sắt 8cm', 'Vỉ /10 cái', ' 4000', 'A', 'A', 0, 0),
('KST', 79, 1, 'Kéo sắt đen trung', '', ' 17000', 'A', 'A', 0, 0),
('KST6', 79, 1, 'Kéo Việt đen loại lớn T6', '', ' 23000', 'A', 'A', 0, 0),
('KT503', 79, 1, 'Kéo thước 503', '15cm', ' 4000', 'A', 'A', 0, 0),
('KT902', 79, 1, 'Kéo thước 902', '', ' 4000', 'A', 'A', 0, 0),
('KTQ', 79, 1, 'Kéo nhựa Trung Quốc nhỏ', '', ' 4000', 'A', 'A', 0, 0),
('KVP1F2-25', 83, 1, 'Băng keo trong văn phòng 1F2 - 25ya', 'Cây/10 cuồn', ' 18000', 'A', 'A', 0, 0),
('KVP1F8-25', 83, 1, 'Băng keo trong văn phòng 1F8 - 25ya', 'Cây/10 cuồn', ' 20000', 'A', 'A', 0, 0),
('L16/8', 57, 1, 'Kềm bấm gỗ Lion 16/8', '', ' 120000', 'A', 'A', 0, 0),
('LAF50', 92, 1, 'Bìa còng 5cm A4 2 mặt Simili FlexOfice LAF50', 'Cứng , đẹp', ' 35000', 'A', 'A', 0, 0),
('LBCAL', 52, 1, 'Lịch để bàn tháng bằng giấy (hình chữ A) lớn', '', ' 27000', 'A', 'A', 0, 0),
('LBCAN', 52, 1, 'Lịch để bàn tháng bằng giấy (hình chữ A) nhỏ', '', ' 25000', 'A', 'A', 0, 0),
('LBMK', 52, 1, 'Lịch để bàn tuần bằng Meka lò xo trên ', '', ' 32000', 'A', 'A', 0, 0),
('LDGV', 78, 1, 'Lưỡi dao cạo râu GILLETTE VECTOR (Lưỡi kép)', 'Löôõi dao caïo raâu GILLETTE VECTOR', ' 26000', 'A', 'A', 0, 0),
('LG3', 52, 1, 'Lịch để bàn gấp 3', '', ' 37000', 'A', 'A', 0, 0),
('LGBG', 59, 1, 'Kim đồng No. 3515', 'Hộp/1800 cái', ' 90000', 'A', 'A', 0, 0),
('LKOKOBI', 77, 1, 'Lưỡi dao rọc giấy lớn KOKOBI', 'Hộp/10 cái', ' 12000', 'A', 'A', 0, 0),
('LMAXPRO', 77, 1, 'Lưỡi dao lớn MAXPRO', 'Hộp/10 cái', ' 10000', 'A', 'A', 0, 0),
('LROMA', 78, 1, 'Lưỡi lam trắng ROMA', 'Hộp nhỏ', ' 15000', 'A', 'A', 0, 0),
('LST', 77, 1, 'Lưỡi dao rọc giấy lớn Sư Tử  (lưỡi cứng)', 'Hộp/10 cái', ' 10000', 'A', 'A', 0, 0),
('LV1.5', 22, 1, 'Nước khoáng Lavie 1,5L', 'Thùng 12 chai', ' 94000', 'A', 'A', 0, 0),
('LV350', 22, 1, 'Nước khoáng Lavie 350ml', 'Thùng 24 chai', ' 77000', 'A', 'A', 0, 0),
('LV5', 22, 1, 'Nước khoáng Lavie 5L', 'Thùng 4 chai', ' 75000', 'A', 'A', 0, 0),
('LV500', 22, 1, 'Nước khoáng Lavie 500ml', 'Thùng 24 chai', ' 87000', 'A', 'A', 0, 0),
('LXN10', 68, 1, 'Lò xo nhựa 10mm (Hộp/100 cái)', '65 trang', ' 1200', 'A', 'A', 0, 0),
('LXN12', 68, 1, 'Lò xo nhựa 12mm (Hộp/100 cái)', '105 trang', ' 1500', 'A', 'A', 0, 0),
('LXN14', 68, 1, 'Lò xo nhựa 14mm (Hộp/100 cái)', '125 trang', ' 1600', 'A', 'A', 0, 0),
('LXN16', 68, 1, 'Lò xo nhựa 16mm (Hộp/100 cái)', '', ' 2000', 'A', 'A', 0, 0),
('LXN18', 68, 1, 'Lò xo nhựa 18mm (Hộp/100 cái)', '165 trang', ' 2500', 'A', 'A', 0, 0),
('LXN20', 68, 1, 'Lò xo nhựa 20mm (Hộp/100 cái)', '', ' 3000', 'A', 'A', 0, 0),
('LXN22', 68, 1, 'Lò xo nhựa 22mm (Hộp/50 cái)', '', ' 4000', 'A', 'A', 0, 0),
('LXN25', 68, 1, 'Lò xo nhựa 25mm (Hộp/50 cái)', '220 trang', ' 5000', 'A', 'A', 0, 0),
('LXN32', 68, 1, 'Lò xo nhựa 32mm (Hộp/50 cái)', '300 trang', ' 5500', 'A', 'A', 0, 0),
('LXN35', 68, 1, 'Lò xo nhựa 35mm (Hộp/50 cái)', '', ' 5700', 'A', 'A', 0, 0),
('LXN38', 68, 1, 'Lò xo nhựa 38mm (Hộp/ 50 cái)', '350 trang', ' 6000', 'A', 'A', 0, 0),
('LXN45', 68, 1, 'Lò xo nhựa 45mm  (Hộp/50 cái)', '400 trang', ' 6500', 'A', 'A', 0, 0),
('LXN6', 68, 1, 'Lò xo nhựa 6mm (Hộp/100 cái)', '25 trang', ' 900', 'A', 'A', 0, 0),
('LXN8', 68, 1, 'Lò xo nhựa 8mm (Hộp/100 cái)', '25 trang', ' 1000', 'A', 'A', 0, 0),
('M28', 56, 1, 'Máy tính Casio M28', '', ' 80000', 'A', 'A', 0, 0),
('MAX12L/17', 57, 1, 'Máy bấm giữa trang 12L/17 MAX', 'Bấm giữa trang tập', ' 2950000', 'A', 'A', 0, 0),
('MAX2115', 61, 1, 'Kim cong 2115 1/4 Max', '', ' 35000', 'A', 'A', 0, 0),
('MAXHD10', 57, 1, 'Bấm kim 10 Inox MAX HD-10', '', ' 15000', 'A', 'A', 0, 0),
('MBG', 57, 1, 'Máy bo góc', '', ' 290000', 'A', 'A', 0, 0),
('MCA1030', 49, 1, 'Miếng Meka tam giác chức danh chữ A để bàn làm việc 10 x 30cm', '', ' 45000', 'A', 'A', 0, 0),
('MCD-B', 46, 1, 'Mực chuyên dụng màu bạc (dùng trong ngành may may)', '', ' 35000', 'A', 'A', 0, 0),
('MCDA', 46, 1, 'Mực chuyên dụng Artline', 'Đóng trên Nilông, Nhựa, gỗ, kim loại, giấy..', ' 32000', 'A', 'A', 0, 0),
('MCDBD', 49, 1, 'Meka chức danh bộ đội', '', ' 100000', 'A', 'A', 0, 0),
('MCDSI61-62-63', 46, 1, 'Mực chuyên dụng Shiny SI-61, SI-62, SI-63', 'xanh, đen, đỏ', ' 65000', 'A', 'A', 0, 0),
('MCDTG1224', 49, 1, 'Miếng Meka tam giác chức danh để bàn làm việc 12 x 24cm', '', ' 48000', 'A', 'A', 0, 0),
('MCDTG824', 49, 1, 'Miếng Meka tam giác chức danh để bàn làm việc 8 x 24cm', '', ' 45000', 'A', 'A', 0, 0),
('MCL10522', 49, 1, 'Miếng Meka chức danh chữ L để bàn làm việc 10,5 x 22cm', '', ' 40000', 'A', 'A', 0, 0),
('MCL10530', 49, 1, 'Miếng Meka chức danh chữ L để bàn làm việc 10,5 x 30cm', '', ' 43000', 'A', 'A', 0, 0),
('MD555-B', 46, 1, 'Mực dầu 555 màu bạc', '', ' 38000', 'A', 'A', 0, 0),
('MDA4-1', 49, 1, 'Miếng Meka trong 1 ngăn A4 đựng bảng giá, Cataloge ở quày.', '', ' 95000', 'A', 'A', 0, 0),
('MDA4-3', 49, 1, 'Miếng Meka trong 3 ngăn A4 đựng bảng giá, Cataloge ở quày.', '', ' 220000', 'A', 'A', 0, 0),
('MDD-N', 46, 1, 'Mực dấu dầu chai nhựa', '', ' 13000', 'A', 'A', 0, 0),
('MDHORSE', 46, 1, 'Mực đóng dấu Horse (1)', 'xanh, đen, đỏ', ' 10000', 'A', 'A', 0, 0),
('MDHT555-N', 46, 1, 'Mực dầu 555 (dùng đóng số nhảy) Huê Tinh - chai nhựa', '', ' 12000', 'A', 'A', 0, 0),
('MDHT555-TT', 46, 1, 'Mực dầu 555 (dùng đóng số nhảy) Huê Tinh - chai thủy tinh', '', ' 7000', 'A', 'A', 0, 0),
('MDLXDELI', 67, 1, 'Máy đóng sách lò xo DELI', 'Máy đóng lò xo', ' 2200000', 'A', 'A', 0, 0),
('MDLZSD', 46, 1, 'Mực đóng dấu Lazer Sao đỏ', 'dùng cho dấu Caosu', ' 75000', 'A', 'A', 0, 0),
('MDS-61-62-63', 46, 1, 'Mực dấu Shiny S-61, S-62, S-63', 'dương, lá, đen, đỏ, tím', ' 37000', 'A', 'A', 0, 0),
('MDSD', 46, 1, 'Mực đóng dấu Sao đỏ', 'dùng cho Tampon', ' 35000', 'A', 'A', 0, 0),
('MDST', 46, 1, 'Mực dấu Shiny màu tím', '', ' 38000', 'A', 'A', 0, 0),
('MDT', 75, 1, 'Muose đếm tiền', '', ' 5500', 'A', 'A', 0, 0),
('MEKA-1020', 48, 1, 'Bảng Meka "STOP",  "EXIT", "NO SMOKING" , TOILET NAM, NỮ…. Chữ chìm', '10 x 20cm', ' 45000', 'A', 'A', 0, 0),
('MEKA-2030', 48, 1, 'Bảng Meka "STOP",  "EXIT", "NO SMOKING" , TOILET NAM, NỮ…. Chữ chìm', '20 x 30cm', ' 90000', 'A', 'A', 0, 0),
('MGDB03', 77, 1, 'Dao rọc giấy BERRYLION MGDB03', '', ' 28000', 'A', 'A', 0, 0),
('MKDT', 72, 1, 'Hộp Meka trong đựng danh thiếp', '', ' 15000', 'A', 'A', 0, 0),
('MLCGA3', 51, 1, 'Miếng lót cắt giấy A3', '', ' 185000', 'A', 'A', 0, 0),
('MLCGA4', 51, 1, 'Miếng lót cắt giấy A4', '', ' 150000', 'A', 'A', 0, 0),
('MOAMI05', 76, 1, 'Ruột chì MoAmi 0.5mm', 'Vỉ/2 hộp', ' 14000', 'A', 'A', 0, 0),
('MOAMI07', 76, 1, 'Ruột chì MoAmi 0.7mm', 'Vỉ/2 hộp', ' 14000', 'A', 'A', 0, 0),
('MOUSE6-1', 44, 1, 'Mouse đóng số nhảy 6 số (2)', 'Vỉ/10 cái', ' 5000', 'A', 'A', 0, 0),
('MOUSE6-2', 44, 1, 'Mouse đóng số nhảy 6 số (1)', 'Vỉ/10 cái', ' 7000', 'A', 'A', 0, 0),
('MOUSE8', 44, 1, 'Mouse đóng số nhảy 8 số (1)', 'Vỉ/10 cái', ' 8000', 'A', 'A', 0, 0),
('MS-10VCYW', 56, 1, 'Máy tính Casio MS-10VCYW', '', ' 210000', 'A', 'A', 0, 0),
('MS120S', 56, 1, 'Máy tính Casio MS120S (1)', '', ' 170000', 'A', 'A', 0, 0),
('MS12PK', 56, 1, 'Máy Casio MS-12PK', '10.5cm x 14cm', ' 80000', 'A', 'A', 0, 0),
('MT2', 88, 1, 'Khay hồ sơ 2 tầng Meka M&T ', '', ' 165000', 'A', 'A', 0, 0),
('MT3', 88, 1, 'Khay hồ sơ 3 tầng Meka M&T ', '', ' 235000', 'A', 'A', 0, 0),
('MTD1013', 49, 1, 'Miếng Meka trong để thực đơn 10 x 13cm ở bàn ăn', '', ' 39000', 'A', 'A', 0, 0),
('MTD1318', 49, 1, 'Miếng Meka trong để thực đơn 13 x 18cm ở bàn ăn', '', ' 48000', 'A', 'A', 0, 0),
('MTDA4', 49, 1, 'Miếng Meka trong để thực đơn A4 ở bàn ăn', '', ' 68000', 'A', 'A', 0, 0),
('MTDX191-A4', 49, 1, 'Miếng Meka trong đựng thực đơn XUKIVA 191-A4', '', ' 68000', 'A', 'A', 0, 0),
('MTDX191-A5', 49, 1, 'Miếng Meka trong XUKIVA 191-A5 để thực đơn 150 x 210mm ở bàn ăn', '', ' 39000', 'A', 'A', 0, 0),
('MTDX191-A6', 49, 1, 'Miếng Meka trong đựng thực đơn XUKIVA 191-A6', '', ' 33000', 'A', 'A', 0, 0),
('MTDX191-A7', 49, 1, 'Miếng Meka trong đựng thực đơn XUKIVA 191-A7', '', ' 23000', 'A', 'A', 0, 0),
('MTFN20L', 20, 1, 'Bình nước 20 lít cổ nhỏ (MiTaFiNa) ', 'dùng cho máy nóng lạnh', ' 10000', 'A', 'A', 0, 0),
('MTFN20N', 20, 1, 'Bình nước 20 lít cổ lớn (MiTaFiNa) ', '', ' 10000', 'A', 'A', 0, 0),
('MTFN5L', 22, 1, 'Nước suối MiTaFiNa  500ml ', 'Lốc 24 chai', ' 48000', 'A', 'A', 0, 0),
('MTFN5T', 22, 1, 'Nước suối MiTaFiNa  500ml ', 'Thùng 24 chai', ' 55000', 'A', 'A', 0, 0),
('MTG614', 49, 1, 'Miếng Meka tam giác chức danh để bàn làm việc 6 x 14cm', '', ' 40000', 'A', 'A', 0, 0),
('MX-120B-1', 56, 1, 'Máy Casio MX-120B (1)', '', ' 185000', 'A', 'A', 0, 0),
('MX-12B-1', 56, 1, 'Máy Casio MX-12B (1)', '', ' 180000', 'A', 'A', 0, 0),
('MX193', 49, 1, 'Miếng Meka tam giác chức danh để bàn làm việc XUKIVA No-193 (7,5 x 24,5cm)', '', ' 35000', 'A', 'A', 0, 0),
('MZ-12S-1', 56, 1, 'Máy Casio MZ-12S (1)', '', ' 155000', 'A', 'A', 0, 0),
('N08', 43, 1, 'Dấu Shiny 8 số 11mm - N08', '', ' 410000', 'A', 'A', 0, 0),
('N1.5', 33, 1, 'Notes 1,5 x 2inch TTH vàng', '', ' 4000', 'A', 'A', 0, 0),
('N18', 43, 1, 'Dấu Shiny 8 số 9mm - N18', '', ' 160000', 'A', 'A', 0, 0),
('N25', 92, 1, 'Bìa còng nhẫn 2,5cm nhựa Trung Quốc', '', ' 15000', 'A', 'A', 0, 0),
('N28', 43, 1, 'Dấu Shiny 8 số 7mm - N28', '', ' 130000', 'A', 'A', 0, 0),
('N312', 43, 1, 'Dấu Shiny 12 số 6mm - N-312', '', ' 155000', 'A', 'A', 0, 0),
('N32', 33, 1, 'Notes 3 x 2inch TTH vàng', '', ' 4000', 'A', 'A', 0, 0),
('N32M', 33, 1, 'Notes 3 x 2inch màu xanh lá, xanh dương, hồng', '', ' 5000', 'A', 'A', 0, 0),
('N33', 33, 1, 'Notes 3 x 3inch TTH vàng', '', ' 6000', 'A', 'A', 0, 0),
('N33KK4M', 33, 1, 'Giấy Notes 3 x 3inch không keo 4 màu', '', ' 34000', 'A', 'A', 0, 0),
('N33M', 33, 1, 'Notes 3 x 3inch TTH xanhlá, dương, hồng', '', ' 7000', 'A', 'A', 0, 0),
('N33XH', 33, 1, 'Notes 3 x 3inch XUKIVA đựng trong hộp Meka', '', ' 31000', 'A', 'A', 0, 0),
('N34', 33, 1, 'Notes 3 x 4inch TTH vàng', '', ' 8000', 'A', 'A', 0, 0),
('N35', 33, 1, 'Notes 3 x 5inch TTH vàng', '', ' 10000', 'A', 'A', 0, 0),
('N38', 43, 1, 'Dấu Shiny 8 số 5mm - N38', '', ' 52000', 'A', 'A', 0, 0),
('N46', 33, 1, 'Notes 4 x 6inch', '', ' 17000', 'A', 'A', 0, 0),
('N48', 43, 1, 'Dấu Shiny 8 số 4mm - N48', '', ' 50000', 'A', 'A', 0, 0),
('N58', 43, 1, 'Dấu Shiny 8 số 3mm - N58', '', ' 49000', 'A', 'A', 0, 0),
('N6539', 33, 1, 'Giấy ghi chú Post-it 1.5x2 ( 6539 )', '4 xấp/ gói', ' 12000', 'A', 'A', 0, 0),
('N6548', 33, 1, 'Giấy ghi chú Post-it 3x3 3M (6548)', '300 xấp/ thng', ' 6000', 'A', 'A', 0, 0),
('N6568', 33, 1, 'Giấy ghi chú Post-it 3x2 3M (6568)', '400 xấp/ thng', ' 4500', 'A', 'A', 0, 0),
('N6569', 33, 1, 'Giấy ghi chú Post-it 3x2 (6569 )', '2 xấp/ gói', ' 12000', 'A', 'A', 0, 0),
('N6578', 33, 1, 'Giấy ghi chú Post-it 3x4 3M (6578)', '200 xấp/ thng', ' 8000', 'A', 'A', 0, 0),
('N6579', 33, 1, 'Giấy ghi chú Post-it 3x4 (6579)', '', ' 9000', 'A', 'A', 0, 0),
('NA4-35', 92, 1, 'Bìa còng nhẫn Simili A4 3.5cm 2 mặt', '', ' 20000', 'A', 'A', 0, 0),
('ND-031', 93, 1, 'Bìa lỗ NITRASA tem đỏ ND 031', '', ' 36000', 'A', 'A', 0, 0),
('ND10', 92, 1, 'Bìa còng nhẫn chữ D Simili bao kiếng 10cm', '', ' 39000', 'A', 'A', 0, 0),
('ND35', 92, 1, 'Bìa còng nhẫn chữ D Simili bao kiếng 3,5cm', '', ' 31000', 'A', 'A', 0, 0),
('ND40', 92, 1, 'Bìa còng nhẫn D Ring 40', '', ' 28000', 'A', 'A', 0, 0),
('NDQ3M688', 33, 1, 'Miếng đánh dấu 5 màu dạ quang 3M (688-5CF)', '10 xấp / bìa', ' 10000', 'A', 'A', 0, 0),
('NG3MP', 33, 1, 'Giấy Notes giấy PRONOTI 3 màu', '', ' 11000', 'A', 'A', 0, 0),
('NG4MP', 33, 1, 'Giấy Notes giấy PRONOTI 4 màu', '', ' 11500', 'A', 'A', 0, 0),
('NG5M33-3M', 33, 1, 'Giấy Notes 5 màu 3 x 3inch 3E', '', ' 12000', 'A', 'A', 0, 0),
('NG5M3M', 33, 1, 'Giấy Notes giấy 5 màu 3M', '', ' 17000', 'A', 'A', 0, 0),
('NG5MP', 33, 1, 'Giấy Notes giấy PRONOTI 5 màu', '', ' 12000', 'A', 'A', 0, 0),
('NGPSHP', 33, 1, 'Giấy Notes "Please Sign here" (Pronoti)', 'Bịch /5 xấp', ' 23000', 'A', 'A', 0, 0),
('NMT3M6885', 33, 1, 'Phân trang mũi tên 3M (6885ARR-3M)', '10 xấp / bìa', ' 9000', 'A', 'A', 0, 0),
('NN5', 33, 1, 'Notes nhựa 5 màu', '', ' 11000', 'A', 'A', 0, 0),
('NN5M', 33, 1, 'Notes nhựa 5 màu', '', ' 12000', 'A', 'A', 0, 0),
('NO.105', 57, 1, 'Bấm kim 10 MEISHU bọc nhựa No. 105', '', ' 17000', 'A', 'A', 0, 0),
('NO1623', 79, 1, 'Kéo học sinh lưỡi nhựa No.1623', '', ' 7000', 'A', 'A', 0, 0),
('NO347', 76, 1, 'Chuốt NO.347', '', ' 5000', 'A', 'A', 0, 0),
('NO94', 78, 1, 'Lưỡi lam đen TIANTIAN No. 94 (loại 1)', 'Hộp/20 hộp nhỏ', ' 59000', 'A', 'A', 0, 0),
('NSH3M', 33, 1, 'Giấy Notes "Sign here" 3M', '', ' 35000', 'A', 'A', 0, 0),
('NSH3M6809', 33, 1, 'Miếng đánh dấu Signhere (6809-3M)', '36 vĩ/ thùng', ' 28000', 'A', 'A', 0, 0),
('NTA4', 32, 1, 'Nhãn dán Tomy A4', 'Xấp/100 tờ', ' 99000', 'A', 'A', 0, 0),
('NTA5', 32, 1, 'Nhãn dán Tomy A5', 'Nhiều số lựa chọn', ' 8000', 'A', 'A', 0, 0),
('NTL35', 92, 1, 'Bìa còng nhẫn Thiên Long 3,5cm', '', ' 22000', 'A', 'A', 0, 0),
('OPP3F6-70', 84, 1, 'Băng keo màu bóng OPP 3F6 - 70ya', '', ' 9000', 'A', 'A', 0, 0),
('OPP4F8-70', 84, 1, 'Băng keo màu bóng OPP 4F8 - 70ya', 'nhiều màu lựa chọn', ' 12000', 'A', 'A', 0, 0),
('P970', 60, 1, 'Bấm lỗ trung HAND P970', '', ' 52000', 'A', 'A', 0, 0),
('PET-409', 43, 1, 'Dấu hộp Shiny 6 số PET-409', '', ' 135000', 'A', 'A', 0, 0),
('PLUS28', 61, 1, 'Ghim giấy PLUS 28mm NO.1', '', ' 4000', 'A', 'A', 0, 0),
('PN', 57, 1, 'Kềm bấm kim cong Penny', '', ' 95000', 'A', 'A', 0, 0),
('PO-SC201', 79, 1, 'Kéo PRO OFFICE PO-SC201', '18cm', ' 18000', 'A', 'A', 0, 0),
('PO-SC301', 79, 1, 'Kéo PRO OFFICE PO-SC301', '18cm', ' 23000', 'A', 'A', 0, 0),
('PO-SC302', 79, 1, 'Kéo PRO OFFICE PO-SC302', '21cm', ' 29000', 'A', 'A', 0, 0),
('PO-SC501', 79, 1, 'Kéo PRO OFFICE PO-SC501', '18cm', ' 29000', 'A', 'A', 0, 0),
('PO-SC502', 79, 1, 'Kéo PRO OFFICE PO-SC502', '21cm', ' 32000', 'A', 'A', 0, 0),
('PS-10E', 57, 1, 'Bấm kim 10 Plus bọc nhựa + 2 hộp Kim bấm PS-10E', '', ' 35000', 'A', 'A', 0, 0),
('PS104', 76, 1, 'Chuốt 3 lỗ trái tím STACOM PS104', '', ' 10000', 'A', 'A', 0, 0),
('PTG10', 98, 1, 'Bìa phân trang giấy 10 số', '', ' 10000', 'A', 'A', 0, 0),
('PTG12', 98, 1, 'Bìa phân trang giấy 12 số', '', ' 13000', 'A', 'A', 0, 0),
('PTN10', 98, 1, 'Bìa phân trang 10 số nhựa', '', ' 10000', 'A', 'A', 0, 0),
('PTN12', 98, 1, 'Bìa phân trang 12 số nhựa', '', ' 11000', 'A', 'A', 0, 0),
('PTN24', 98, 1, 'Bìa phân trang 24 số nhựa', '', ' 26000', 'A', 'A', 0, 0),
('PTN31', 98, 1, 'Bìa phân trang 31 số nhựa', '', ' 32000', 'A', 'A', 0, 0),
('PTN5M', 98, 1, 'Phân trang nhựa 5 màu', '', ' 12000', 'A', 'A', 0, 0),
('PU-01', 60, 1, 'Bấm 2 lỗ Thiên Long PU-01', '', ' 27000', 'A', 'A', 0, 0),
('QL-01', 73, 1, 'Thước Parabol WinQ QL-01', '', ' 3000', 'A', 'A', 0, 0),
('QL-130', 73, 1, 'Thước Eke lớn WINQ QL-130', 'Bộ/ 2 cái (21cm, 24cm)', ' 14000', 'A', 'A', 0, 0),
('R138', 61, 1, 'Kim bấm 13/8 Rapid', '', ' 27000', 'A', 'A', 0, 0),
('R166', 61, 1, 'Kim bấm gỗ Rapid 16/6 ', '', ' 25000', 'A', 'A', 0, 0),
('R168', 61, 1, 'Kim bấm gỗ Rapid 16/8 ', '', ' 27000', 'A', 'A', 0, 0),
('R23', 59, 1, 'Máy bấm thùng Carton Trung Quốc', '', ' 1400000', 'A', 'A', 0, 0),
('R23-1', 57, 1, 'Kềm bấm gỗ Rapid R23 (1)', 'Thụy Điển', ' 1300000', 'A', 'A', 0, 0),
('R23-2', 57, 1, 'Kềm bấm gỗ Rapid R23 (2)', 'Thụy Điển', ' 190000', 'A', 'A', 0, 0),
('RCS03', 76, 1, 'Ruột chì đen Steadler 0,3mm', '', ' 25000', 'A', 'A', 0, 0),
('RCS09', 76, 1, 'Ruột chì đen Steadler 0.9mm', '', ' 24000', 'A', 'A', 0, 0),
('RCTTH005', 76, 1, 'Ruột chì vàng 0.5mm - TTH Hipolimer', '', ' 4000', 'A', 'A', 0, 0),
('RCV2B', 76, 1, 'Ruột chì vàng 2B ', '', ' 4000', 'A', 'A', 0, 0),
('RL-005', 73, 1, 'Thước dẻo TTH 20cm RL-005 ', 'Có thể cuộn tròn)', ' 6000', 'A', 'A', 0, 0),
('RL-006', 73, 1, 'Thước dẻo TTH 30cm RL-006', 'Có thể cuộn tròn)', ' 8000', 'A', 'A', 0, 0),
('RL-007', 73, 1, 'Thước cứng TTH 20cm RL-007', '', ' 3500', 'A', 'A', 0, 0),
('RL-008', 73, 1, 'Thước cứng TTH 30cm RL-008', '', ' 4000', 'A', 'A', 0, 0),
('RP7-156', 55, 1, 'Chai xịt chống sét RP7 156g', '', ' 65000', 'A', 'A', 0, 0),
('S-009', 79, 1, 'Kéo S-009', '', ' 22000', 'A', 'A', 0, 0),
('S-01', 76, 1, 'Chuốt Thiên Long S-01', '', ' 2000', 'A', 'A', 0, 0),
('S-04', 76, 1, 'Chuốt Thiên Long S-04', '', ' 5000', 'A', 'A', 0, 0),
('S-05', 76, 1, 'Chuốt Thiên Long S-05', '', ' 7000', 'A', 'A', 0, 0),
('S-06', 76, 1, 'Chuốt Thiên Long S-06', '', ' 9000', 'A', 'A', 0, 0),
('S-1', 44, 1, 'Stampad Shiny S-1', '4.5cm x 6.5cm', ' 34000', 'A', 'A', 0, 0),
('S-100', 79, 1, 'Kéo S-100 (F-200)', 'dài 21.5cm', ' 20000', 'A', 'A', 0, 0),
('S-180', 79, 1, 'Kéo nhựa trung S-180', '', ' 12000', 'A', 'A', 0, 0),
('S-2', 44, 1, 'Stampad Shiny S-2', '5,7cm x 8,8cm', ' 40000', 'A', 'A', 0, 0),
('S-300', 43, 1, 'Dấu mực sẵn Shiny ngày tháng năm S-300', 'xanh, đen, đỏ', ' 97000', 'A', 'A', 0, 0),
('S-400', 43, 1, 'Dấu mực sẵn Shiny ngày tháng năm S-400', 'xanh, đen, đỏ', ' 150000', 'A', 'A', 0, 0),
('S-449', 43, 1, 'Dấu hộp Shiny 9 số  S-449', '', ' 200000', 'A', 'A', 0, 0),
('S-903', 57, 1, 'Bấm kim 10 Hand bọc nhựa S-903', '', ' 22000', 'A', 'A', 0, 0),
('S222', 76, 1, 'Chuốt vuông GSTAR S222', '', ' 1500', 'A', 'A', 0, 0),
('S330', 76, 1, 'Chuốt tim GSTAR S333', '', ' 1500', 'A', 'A', 0, 0),
('S444', 76, 1, 'Chuốt GSTAR S444', 'Lọ/60 cái', ' 2000', 'A', 'A', 0, 0),
('S5150B', 57, 1, 'Bấm kim 10 Mini Eagle S5150B', '', ' 11000', 'A', 'A', 0, 0),
('S555', 76, 1, 'Chuốt GSTAR S555', 'Lọ/60 cái', ' 2000', 'A', 'A', 0, 0),
('SAKER', 76, 1, 'Chuốt Maped SAKER', '', ' 7000', 'A', 'A', 0, 0),
('SC-KS7-B', 79, 1, 'Kéo KESSA KOKUYO SC-KS7-B ', '21cm', ' 27000', 'A', 'A', 0, 0),
('SDI0404', 77, 1, 'Dao rọc giấy nhỏ SDI (nhựa) 0404', '', ' 12000', 'A', 'A', 0, 0),
('SDI0423', 77, 1, 'Dao rọc giấy lớn SDI  (nhựa) 0423', '2 lưỡi', ' 18000', 'A', 'A', 0, 0),
('SDI10-1', 57, 1, 'Bấm kim 10 SDI(I)', '', ' 26000', 'A', 'A', 0, 0),
('SDI10-2', 57, 1, 'Bấm kim 10 SDI (II)', '', ' 22000', 'A', 'A', 0, 0),
('SDI1137', 57, 1, 'Bấm kim 3 SDI 1137', 'Bấm 30 tờ', ' 58000', 'A', 'A', 0, 0),
('SDI1403C1', 77, 1, 'Lưỡi dao rọc giấy SDI nhỏ 1403C (1) ', 'Hộp/10 cái', ' 16000', 'A', 'A', 0, 0),
('SDI1403C2', 77, 1, 'Lưỡi dao rọc giấy SDI nhỏ 1403C (2) ', 'Hộp/10 cái', ' 10000', 'A', 'A', 0, 0),
('SDI1404C1', 77, 1, 'Lưỡi dao rọc giấy SDI lớn 1404C (1)', 'Hộp/10 cái', ' 29000', 'A', 'A', 0, 0),
('SDI1404C2', 77, 1, 'Lưỡi dao rọc giấy SDI lớn 1404C (2)', 'Hộp/10 cái', ' 14000', 'A', 'A', 0, 0),
('SDT', 75, 1, 'Sáp đếm tiền', '', ' 5000', 'A', 'A', 0, 0),
('SI10F', 87, 1, 'File xéo Simili xanh dương 10F', '', ' 25000', 'A', 'A', 0, 0),
('SL-240-1', 56, 1, 'Máy tính Casio SL-240 (1)', '', ' 240000', 'A', 'A', 0, 0),
('SL-240-2', 56, 1, 'Máy tính Casio SL-240 (2)', '', ' 135000', 'A', 'A', 0, 0),
('SL-680', 56, 1, 'Máy tính Casio SL-680', '', ' 120000', 'A', 'A', 0, 0),
('SN-010', 98, 1, 'Phân trang mũi tên nhựa 5 màu TTH SN-010', '', ' 11000', 'A', 'A', 0, 0),
('SP3', 44, 1, 'Stampad Shiny (mặt nhung) SP3', '7cm x  11cm', ' 44000', 'A', 'A', 0, 0),
('SP3T', 44, 1, 'Stampad Shiny (mặt nhung) không có mực', '7cm x  11cm', ' 44000', 'A', 'A', 0, 0),
('SQ-5006', 93, 1, 'Bìa lỗ dày 0,06mm SUREMARK SQ-5006', 'Hộp/10 cái', ' 90000', 'A', 'A', 0, 0),
('SQ9810', 57, 1, 'Bấm kim 10 Inox Suremark SQ-9810', '', ' 17000', 'A', 'A', 0, 0),
('SR-01', 57, 1, 'Tháo kim SR-01', '', ' 15000', 'A', 'A', 0, 0),
('SR-012', 73, 1, 'Thước bộ Thiên Long SR-012', '', ' 10000', 'A', 'A', 0, 0),
('SR-016', 73, 1, 'Thước Thiên Long 15cm SR-016', '', ' 3000', 'A', 'A', 0, 0),
('SR-02', 73, 1, 'Thước Thiên Long 20cm SR-02', '', ' 3500', 'A', 'A', 0, 0),
('SR-03', 73, 1, 'Thước Thiên Long 30cm SR-03', '', ' 4000', 'A', 'A', 0, 0),
('SS01', 79, 1, 'Kéo Con Ó (vỉ) - Trần Võ SS01', '10 inch', ' 33000', 'A', 'A', 0, 0),
('ST-010XH', 57, 1, 'Bấm kim 10 Plus bọc nhựa trợ lực + 1 hộp Kim bấm ST-010XH', '', ' 36000', 'A', 'A', 0, 0),
('ST-09', 57, 1, 'Bấm kim 10 Thiên Long ST-09', '', ' 22000', 'A', 'A', 0, 0),
('ST-10E', 57, 1, 'Bấm kim 10 Plus bọc nhựa ST-10E', '', ' 28000', 'A', 'A', 0, 0),
('STAMLNO1', 44, 1, 'Stampad Lancer No.1', '9,6cm x 15cm', ' 41000', 'A', 'A', 0, 0),
('STAMSD', 44, 1, 'Stampad trắng (chưa có mực) hiệu Sao Đỏ', '7cm x  11cm', ' 17000', 'A', 'A', 0, 0),
('STS-01', 61, 1, 'Kim bấm số 3 Thiên Long STS-01', '', ' 4000', 'A', 'A', 0, 0),
('SV12003', 71, 1, 'Bóp viết vải PANDA SV-12-003', '', ' 34000', 'A', 'A', 0, 0),
('T-16', 73, 1, 'Thước cửu chương WINQ 16cm T-16', '', ' 3000', 'A', 'A', 0, 0),
('T-50', 73, 1, 'Thước dẻo WINQ 50cm T-50', '', ' 12000', 'A', 'A', 0, 0),
('T160', 73, 1, 'Thước bộ đa năng WinQ No.160', '', ' 8000', 'A', 'A', 0, 0),
('T20CC', 73, 1, 'Thước 20cm cửu chương', '', ' 2500', 'A', 'A', 0, 0),
('T20M', 73, 1, 'Thước 20cm nhiều màu', '', ' 3000', 'A', 'A', 0, 0),
('T2310', 61, 1, 'Kim bấm KW TriO 23/10', '', ' 13000', 'A', 'A', 0, 0),
('T2313', 61, 1, 'Kim bấm KW TriO 23/13', '', ' 15000', 'A', 'A', 0, 0),
('T2315', 61, 1, 'Kim bấm KW TriO 23/15', '', ' 18000', 'A', 'A', 0, 0),
('T2317', 61, 1, 'Kim bấm KW TriO 23/17', '', ' 18000', 'A', 'A', 0, 0),
('T2320', 61, 1, 'Kim bấm KW TriO 23/20', '', ' 22000', 'A', 'A', 0, 0),
('T2323', 61, 1, 'Kim bấm KW TriO 23/23', '', ' 25000', 'A', 'A', 0, 0),
('T238', 61, 1, 'Kim bấm KW TriO 23/8', '', ' 12000', 'A', 'A', 0, 0),
('T30CC', 73, 1, 'Thước 30cm cửu chương', '', ' 4000', 'A', 'A', 0, 0),
('T912', 60, 1, 'Bấm 2 lỗ trung TriO 912 (Bấm khoảng 30 tờ)', '', ' 55000', 'A', 'A', 0, 0),
('T9670', 60, 1, 'Bấm 2 lỗ đại 9670 (Bấm khoàng 100 tờ)', '', ' 240000', 'A', 'A', 0, 0),
('T978', 60, 1, 'Bấm 2 lỗ lớn TriO 978 (Bấm khoảng 50 tờ)', '', ' 75000', 'A', 'A', 0, 0),
('T999', 60, 1, 'Bấm 3 lỗ TriO 999', '', ' 125000', 'A', 'A', 0, 0),
('TAPKTVB', 41, 1, 'Tập kiểm tra Vbook 84 trang in Carô', '', ' 7000', 'A', 'A', 0, 0),
('TBTTH', 73, 1, 'Thước bộ hình TTH', '', ' 10000', 'A', 'A', 0, 0),
('TC-120', 79, 1, 'Kéo Trung Quốc đổi mồi trung TC-120', '', ' 8500', 'A', 'A', 0, 0),
('TC-121', 79, 1, 'Kéo Trung Quốc đổi mồi nhỏ TC-121', '', ' 7000', 'A', 'A', 0, 0),
('TC025', 73, 1, 'Thước chữ 0,25', '', ' 19000', 'A', 'A', 0, 0),
('TC05', 73, 1, 'Thước chữ 0,5', '', ' 22000', 'A', 'A', 0, 0),
('TC07', 73, 1, 'Thước chữ 0,7', '', ' 25000', 'A', 'A', 0, 0),
('TD15', 73, 1, 'Thước dẻo WIN 15cm', '', ' 2000', 'A', 'A', 0, 0),
('TD20', 73, 1, 'Thước dẻo WIN 20cm', '', ' 2500', 'A', 'A', 0, 0),
('TD30', 73, 1, 'Thước dẻo WIN 30cm', '', ' 3000', 'A', 'A', 0, 0),
('TD6620', 73, 1, 'Thước dẻo 20cm 6620', '', ' 5000', 'A', 'A', 0, 0),
('TD6630', 73, 1, 'Thước dẻo 30cm 6630', '', ' 6000', 'A', 'A', 0, 0),
('TDDL', 73, 1, 'Thước đo độ lớn', '', ' 25000', 'A', 'A', 0, 0),
('TDDSO3', 73, 1, 'Thước đo độ WinQ số 3', '', ' 2000', 'A', 'A', 0, 0),
('TDDSO4', 73, 1, 'Thước đo độ Win số 4', '', ' 2500', 'A', 'A', 0, 0),
('TH184', 73, 1, 'Thước hình 15F 184', '', ' 5000', 'A', 'A', 0, 0),
('TH204', 73, 1, 'Thước hình 20F 204', '', ' 6000', 'A', 'A', 0, 0),
('TH50', 57, 1, 'Máy bấm kim lớn 100 tờ TTH - TH50', 'Bấm tối đa 100 tờ', ' 210000', 'A', 'A', 0, 0),
('THHC-004', 73, 1, 'Thước hình 18F HC 004', '', ' 6000', 'A', 'A', 0, 0),
('TI15', 73, 1, 'Thước Inox 15cm', '', ' 7000', 'A', 'A', 0, 0),
('TI1M', 73, 1, 'Thước Inox 1m', '', ' 35000', 'A', 'A', 0, 0),
('TI20', 73, 1, 'Thước Inox 20cm', '', ' 9000', 'A', 'A', 0, 0),
('TI30', 73, 1, 'Thước Inox 30cm', '', ' 10000', 'A', 'A', 0, 0),
('TI50', 73, 1, 'Thước Inox 50cm', '', ' 19000', 'A', 'A', 0, 0),
('TI60', 73, 1, 'Thước Inox 60cm', '', ' 21000', 'A', 'A', 0, 0),
('TK', 57, 1, 'Dụng cụ tháo kim Eagle', '', ' 8000', 'A', 'A', 0, 0),
('TKG2M', 74, 1, 'Thước kéo G-Star 2M', 'Mỹ', ' 12000', 'A', 'A', 0, 0),
('TKG3M', 74, 1, 'Thước kéo G-Star 3M', 'Mỹ', ' 13000', 'A', 'A', 0, 0),
('TKG5M', 74, 1, 'Thước kéo G-Star 5M', 'Mỹ', ' 21000', 'A', 'A', 0, 0),
('TKG75M', 74, 1, 'Thước kéo G-Star 7.5M', 'Mỹ', ' 36000', 'A', 'A', 0, 0),
('TKM20', 73, 1, 'Thước Kim Nguyên 20cm', '', ' 3000', 'A', 'A', 0, 0),
('TKM30D', 73, 1, 'Thước Kim Nguyên 30cm dày ', '', ' 5000', 'A', 'A', 0, 0),
('TKM30M', 73, 1, 'Thước Kim Nguyên 30cm mỏng', '', ' 4000', 'A', 'A', 0, 0),
('TKM50', 73, 1, 'Thước Kim Nguyên 50cm', '', ' 11000', 'A', 'A', 0, 0),
('TL168', 61, 1, 'Kim bấm gỗ Tự Lực 16/8 ', '', ' 28000', 'A', 'A', 0, 0),
('TL2RF20', 92, 1, 'Bìa còng nhẫn Thiên Long A4 20mm - TL2RF20  2 Ring', '', ' 25000', 'A', 'A', 0, 0),
('TL2RF26', 92, 1, 'Bìa còng nhẫn Thiên Long A4 26mm - TL2RF26  2 Ring', '', ' 27000', 'A', 'A', 0, 0),
('TM', 53, 1, 'Thiệp mời', 'Xấp/10 cái', ' 4000', 'A', 'A', 0, 0),
('TMT', 32, 1, 'Tem mũi tên tròn', 'Xấp /10 tờ', ' 5000', 'A', 'A', 0, 0),
('TN-T', 53, 1, 'Thiệp Noel + Tết', '', ' 3000', 'A', 'A', 0, 0),
('TN1M', 73, 1, 'Thước nhựa 1M', '', ' 70000', 'A', 'A', 0, 0),
('TOMI3', 89, 1, 'Tủ dụng cụ TOMI nhỏ 3 tầng Duy Tân', '', ' 55000', 'A', 'A', 0, 0),
('TOMI5', 89, 1, 'Tủ dụng cụ TOMI nhỏ 5 tầng Duy Tân', '', ' 75000', 'A', 'A', 0, 0),
('TP4924', 45, 1, 'Tampon dấu tròn 4924', 'màu đỏ', ' 70000', 'A', 'A', 0, 0),
('TP6824', 45, 1, 'Tampon dấu tròn 6824', 'màu đỏ', ' 70000', 'A', 'A', 0, 0),
('TPR-538', 45, 1, 'Tampon dấu tròn Shiny R538', 'màu đỏ', ' 60000', 'A', 'A', 0, 0),
('TPR-542', 45, 1, 'Tampon dấu tròn 542', 'màu đỏ', ' 55000', 'A', 'A', 0, 0),
('TPS-300', 45, 1, 'Tampon S-300 (Tampon ngày tháng)', 'xanh, đen, đỏ', ' 47000', 'A', 'A', 0, 0),
('TPS-400', 45, 1, 'Tampon S-400 (Tampon ngày tháng)', 'xanh, đen, đỏ', ' 65000', 'A', 'A', 0, 0),
('TPS-449', 45, 1, 'Tampon S-449', 'xanh, đen, đỏ', ' 60000', 'A', 'A', 0, 0),
('TPS-820', 45, 1, 'Tampon S-820', 'xanh, đen, đỏ', ' 50000', 'A', 'A', 0, 0),
('TPS-822-842', 45, 1, 'Tampon S-822, S-842', 'xanh, đen, đỏ', ' 30000', 'A', 'A', 0, 0),
('TPS-823-843', 45, 1, 'Tampon S-823, S-843', 'xanh, đen, đỏ', ' 45000', 'A', 'A', 0, 0),
('TPS-824-844', 45, 1, 'Tampon S-824, S-844', 'xanh, đen, đỏ', ' 50000', 'A', 'A', 0, 0),
('TPS-825', 45, 1, 'Tampon S-825', 'xanh, đen, đỏ', ' 70000', 'A', 'A', 0, 0),
('TPS-827', 45, 1, 'Tampon S-827', 'xanh, đen, đỏ', ' 60000', 'A', 'A', 0, 0),
('TPS-830', 45, 1, 'Tampon S-830', 'xanh, đen, đỏ', ' 60000', 'A', 'A', 0, 0),
('TR-368', 76, 1, 'Chuốt TR-368', '', ' 4000', 'A', 'A', 0, 0),
('TS', 32, 1, 'Tem số (từ 1 - 100)', 'Xấp /10 tờ', ' 5000', 'A', 'A', 0, 0),
('TST-50011', 57, 1, 'Kềm bấm gỗ TOP TST-50011', '', ' 110000', 'A', 'A', 0, 0),
('TTH-120', 77, 1, 'Dao rọc giấy nhỏ nhựa trong 9mm TTH-120', '', ' 5000', 'A', 'A', 0, 0),
('TTH-280', 77, 1, 'Dao rọc giấy lớn nhựa trong TTH - 280', '', ' 7000', 'A', 'A', 0, 0),
('TTH-3202', 77, 1, 'Dao rọc giấy nhỏ TTH-3202', '', ' 12000', 'A', 'A', 0, 0),
('TTH-3203-V', 77, 1, 'Dao rọc giấy lớn TTH Siêu Mạnh 3203-V', '', ' 19000', 'A', 'A', 0, 0),
('TTH-3210B', 77, 1, 'Dao rọc giấy nhỏ TTH 3210-B', '', ' 10000', 'A', 'A', 0, 0),
('TTH0828', 79, 1, 'Kéo  nhựa trung TTH 0828', 'dài 16cm', ' 14000', 'A', 'A', 0, 0),
('TTH0838', 79, 1, 'Kéo TTH Handy lớn 0838', '', ' 21000', 'A', 'A', 0, 0),
('TTH0858', 79, 1, 'Kéo văn phòng 210mm TTH 0858', 'dài 21cm', ' 21000', 'A', 'A', 0, 0),
('TTH1010', 61, 1, 'Kim bấm số 10 TTH 1010', 'Hộp nhỏ', ' 2500', 'A', 'A', 0, 0),
('TTH1016', 61, 1, 'Kim bấm số 3 TTH 1016', 'Hộp nhỏ', ' 4000', 'A', 'A', 0, 0),
('TTH2010', 61, 1, 'Kim bấm số 10 TTH 2010', 'Hộp nhỏ', ' 2800', 'A', 'A', 0, 0),
('TTH2203C', 77, 1, 'Lưỡi dao nhỏ 9mm TTH 2203C', 'Hộp/10 cái', ' 10000', 'A', 'A', 0, 0),
('TTH2204C', 77, 1, 'Lưỡi dao lớn 18mm TTH 2204C', 'Hộp/10 cái', ' 12000', 'A', 'A', 0, 0),
('TTH3799', 60, 1, 'Bấm lỗ trung TTH 3799', '', ' 38000', 'A', 'A', 0, 0),
('TTH8871', 79, 1, 'Kéo đồi mồi trung TTH 8871', '', ' 17000', 'A', 'A', 0, 0),
('TTH8872-V', 79, 1, 'Kéo văn phòng Hoa Mai TTH 8872-V', '', ' 25000', 'A', 'A', 0, 0),
('TTH8874', 79, 1, 'Kéo đồi mồi trung TTH 8874', '', ' 10000', 'A', 'A', 0, 0),
('TTH9912', 57, 1, 'Bấm kim 10 TTH 9912', '', ' 18000', 'A', 'A', 0, 0),
('TTHA62', 61, 1, 'Ghim giấy TTH A62 ', '', ' 3000', 'A', 'A', 0, 0),
('TTM10F', 86, 1, 'File rổ xéo 1 ngăn nhựa 10F TTM', '', ' 13500', 'A', 'A', 0, 0),
('TTM3002', 70, 1, 'Đựng bút Meka TTM 3002', '', ' 25000', 'A', 'A', 0, 0),
('TTM3003', 70, 1, 'Đựng bút Meka TTM 3003', '', ' 22000', 'A', 'A', 0, 0),
('TTM3004', 70, 1, 'Đựng bút Meka TTM 3004', '', ' 26000', 'A', 'A', 0, 0),
('TTM3005', 70, 1, 'Đựng bút Meka TTM 3005', '', ' 34000', 'A', 'A', 0, 0),
('TTM3006', 70, 1, 'Đựng bút Meka TTM 3006', '', ' 39000', 'A', 'A', 0, 0),
('TTM3007', 70, 1, 'Đựng bút Meka TTM 3007', '', ' 41000', 'A', 'A', 0, 0),
('TTM3008', 70, 1, 'Đựng bút Meka TTM 3008', '', ' 30000', 'A', 'A', 0, 0),
('TTM3009', 70, 1, 'Đựng bút Meka TTM 3009', '', ' 35000', 'A', 'A', 0, 0),
('UC-122', 76, 1, 'Chuốt chì hình con hổ UC-122', '', ' 3000', 'A', 'A', 0, 0),
('UNICORN-L1', 77, 1, 'Lưỡi dao rọc giấy Unicoirn lớn (1)', 'Hộp/10 cái', ' 19000', 'A', 'A', 0, 0),
('UNICORN-L2', 77, 1, 'Lưỡi dao rọc giấy Unicoirn lớn (2)', 'Hộp/10 cái', ' 9000', 'A', 'A', 0, 0),
('UNICORN-N1', 77, 1, 'Lưỡi dao rọc giấy Unicoirn nhỏ (1)', 'Hộp/10 cái', ' 10000', 'A', 'A', 0, 0),
('V4F8-15', 82, 1, 'Băng keo vải 4F8-15ya', '', ' 28000', 'A', 'A', 0, 0),
('V705', 76, 1, 'Ruột chì V7 TTH 0,5mm', 'Vỉ/2 hộp', ' 13000', 'A', 'A', 0, 0),
('V707', 76, 1, 'Ruột chì V7 TTH 0,7mm', 'Vỉ/2 hộp', ' 13000', 'A', 'A', 0, 0),
('VD134', 61, 1, 'Kim bấm gỗ Việt Đức 13/4 ', '', ' 25000', 'A', 'A', 0, 0),
('VD136', 61, 1, 'Kim bấm gỗ Việt Đức 13/6 ', '', ' 23000', 'A', 'A', 0, 0),
('VD138', 61, 1, 'Kim bấm gỗ Việt Đức 13/8 ', '', ' 30000', 'A', 'A', 0, 0),
('VD166', 61, 1, 'Kim bấm Việt Đức 16/6', '', ' 26000', 'A', 'A', 0, 0),
('VD168', 61, 1, 'Kim bấm gỗ Việt Đức 16/8 ', '', ' 29000', 'A', 'A', 0, 0),
('VD2310', 61, 1, 'Kim bấm Việt Đức 23/10', '', ' 16000', 'A', 'A', 0, 0),
('VD2312', 61, 1, 'Kim bấm Việt Đức 23/12', '', ' 17000', 'A', 'A', 0, 0),
('VD2315', 61, 1, 'Kim bấm Việt Đức 23/15', '', ' 20000', 'A', 'A', 0, 0),
('VD2317', 61, 1, 'Kim bấm Việt Đức 23/17', '', ' 23000', 'A', 'A', 0, 0),
('VD236', 61, 1, 'Kim bấm Việt Đức 23/6', '', ' 13000', 'A', 'A', 0, 0),
('VD238', 61, 1, 'Kim bấm Việt Đức 23/8', '', ' 13000', 'A', 'A', 0, 0),
('VD266', 61, 1, 'Kim bấm Việt Đức 26/6', '', ' 17000', 'A', 'A', 0, 0),
('VGC3507', 69, 1, 'Vòng gia cố lỗ bìa còng 3507', '', ' 25000', 'A', 'A', 0, 0),
('VH350', 22, 1, 'Nước khoáng Vĩnh Hảo 350ml', 'Thùng 24 chai', ' 75000', 'A', 'A', 0, 0),
('VH500', 22, 1, 'Nước khoáng Vĩnh Hảo 500ml', 'Thùng 24 chai', ' 85000', 'A', 'A', 0, 0),
('VW-10E', 57, 1, 'Bấm kim 10 Max VW-10E', '', ' 19000', 'A', 'A', 0, 0),
('X170', 70, 1, 'Ống cắm bút XUKIVA 170', '', ' 38000', 'A', 'A', 0, 0),
('X172', 70, 1, 'Ống cắm bút XUKIVA 172', '', ' 38000', 'A', 'A', 0, 0),
('X176', 70, 1, 'Cắm bút dài XUKIVA 176', '', ' 40000', 'A', 'A', 0, 0),
('X179', 70, 1, 'Ống cắm bút XUKIVA 179', '', ' 37000', 'A', 'A', 0, 0),
('X183', 70, 1, 'Ống cắm bút XUKIVA 183', '', ' 32000', 'A', 'A', 0, 0),
('X184', 70, 1, 'Cắm bút dài XUKIVA 184', '', ' 40000', 'A', 'A', 0, 0),
('X192', 70, 1, 'Ống cắm bút XUKIVA 192', '', ' 32000', 'A', 'A', 0, 0),
('X199', 70, 1, 'Ống cắm bút XUKIVA 199', '', ' 44000', 'A', 'A', 0, 0),
('X201', 70, 1, 'Ống cắm bút XUKIVA 201', '', ' 38000', 'A', 'A', 0, 0),
('XNO197', 85, 1, 'Cắt keo để bàn lớn XUKIVA No.197', '', ' 40000', 'A', 'A', 0, 0),
('XU169-3', 88, 1, 'Kệ 3 tầng Meka XUKIVA thanh trượt 169-3', '', ' 135000', 'A', 'A', 0, 0),
('XU175-2', 88, 1, 'Kệ 2 tầng Meka XUKIVA thanh trụ 175-2', '', ' 115000', 'A', 'A', 0, 0),
('XU175-3', 88, 1, 'Kệ 3 tầng Meka XUKIVA thanh trụ 175-3', '', ' 155000', 'A', 'A', 0, 0),
('XU175-4', 88, 1, 'Kệ 4 tầng Meka XUKIVA thanh trụ 175-4', '', ' 210000', 'A', 'A', 0, 0),
('XU175-5', 88, 1, 'Kệ 5 tầng Meka XUKIVA thanh trụ 175-5', '', ' 250000', 'A', 'A', 0, 0),
('XU182-2', 88, 1, 'Kệ nhựa 2 tầng thanh trụ XUKIVA 182-2', '', ' 60000', 'A', 'A', 0, 0),
('XU182-3', 88, 1, 'Kệ nhựa 3 tầng thanh trụ XUKIVA 182-3', '', ' 83000', 'A', 'A', 0, 0),
('XU187', 86, 1, 'File rổ xéo 1 ngăn nhựa 10F XUKIVA 187', '', ' 14000', 'A', 'A', 0, 0),
('XU187X', 86, 1, 'File rổ xéo 1 ngăn nhựa 10F XUKIVA 187 màu xám', '', ' 16000', 'A', 'A', 0, 0),
('XU190-2', 88, 1, 'Kệ 2 tầng nhựa thanh trụ XUKIVA 190-2', '', ' 60000', 'A', 'A', 0, 0),
('XU190-3', 88, 1, 'Kệ 3 tầng nhựa thanh trụ XUKIVA 190-3', '', ' 100000', 'A', 'A', 0, 0),
('XU190-4', 88, 1, 'Kệ 4 tầng nhựa thanh trụ XUKIVA 190-4', '', ' 130000', 'A', 'A', 0, 0),
('XU190-5', 88, 1, 'Kệ 5 tầng nhựa thanh trụ XUKIVA 190-5', '', ' 180000', 'A', 'A', 0, 0),
('XU194', 86, 1, 'File rổ xéo 3 ngăn nhựa XUKIVA No.194', '', ' 37000', 'A', 'A', 0, 0),
('XU194T', 86, 1, 'File rổ xéo 3 ngăn nhựa XUKIVA tốt No.194T', '', ' 52000', 'A', 'A', 0, 0),
('YK207', 57, 1, 'Bấm kim 3 YOKO YK207', 'Bấm 30 tờ', ' 30000', 'A', 'A', 0, 0),
('ZODIAC', 76, 1, 'Gôm Campus ZODIAC', 'Ấn Độ', ' 8000', 'A', 'A', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_specification`
--

CREATE TABLE `shop_product_specification` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `is_user_input` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_variation`
--

CREATE TABLE `shop_product_variation` (
  `id` int(11) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `specification_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price_adjustion` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_shipping_method`
--

CREATE TABLE `shop_shipping_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `tax_id` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_shipping_method`
--

INSERT INTO `shop_shipping_method` (`id`, `title`, `description`, `tax_id`, `price`) VALUES
(1, 'Giao Hàng Tận Nơi', '<p>- Sau khi nhận v&agrave; x&aacute;c nhận được đơn h&agrave;ng của qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i sẽ nhanh ch&oacute;ng vận chuyển h&agrave;ng h&oacute;a đến tay kh&aacute;ch h&agrave;ng trong thời gian sớm nhất c&oacute; thể. Nhằm tạo điều kiện thuận lợi cho việc giao h&agrave;ng v&agrave; h&agrave;ng h&oacute;a được gửi đến kh&aacute;ch h&agrave;ng sớm nhất, qu&yacute; kh&aacute;ch vui l&ograve;ng cung cấp chi tiết số điện thoại li&ecirc;n hệ, số nh&agrave;, t&ecirc;n đường, phường, th&ocirc;n, ấp, tổ, khu, bản, x&atilde;, thị trấn, quận, huyện, tỉnh &hellip; một c&aacute;ch chi tiết v&agrave; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i c&oacute; quyền hủy bỏ c&aacute;c đơn đặt h&agrave;ng kh&ocirc;ng r&otilde; r&agrave;ng hoặc kh&ocirc;ng chịu tr&aacute;ch nhiệm đối với những trường hợp giao h&agrave;ng chậm trễ hay thất lạc v.v.. do Qu&yacute; kh&aacute;ch cung cấp th&ocirc;ng tin kh&ocirc;ng ch&iacute;nh x&aacute;c. Giao h&agrave;ng trực tiếp: Giao h&agrave;ng trực tiếp trong ng&agrave;y đối với c&aacute;c đơn h&agrave;ng c&oacute; địa chỉ ở trong Huyện Củ Chi. Đối với c&aacute;c đơn h&agrave;ng ngo&agrave;i khu vực Huyện Củ Chi ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng trong v&ograve;ng từ 1 &ndash; 5 ng&agrave;y. Thời gian cam kết kể tr&ecirc;n kh&ocirc;ng t&iacute;nh chủ nhật v&agrave; những ng&agrave;y lễ. Đối với những đơn h&agrave;ng cần giao gấp, qu&yacute; kh&aacute;ch vui l&ograve;ng b&aacute;o ngay cho nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng để được tư vấn cũng như thống nhất thời gian giao h&agrave;ng với bộ phận giao nhận.</p>\r\n\r\n<p>- Giao h&agrave;ng th&ocirc;ng qua bưu điện Bưu Điện cam kết giao h&agrave;ng tận nơi v&agrave; kh&aacute;c h&agrave;ng được quyền mở h&agrave;ng kiểm tra trước khi thanh to&aacute;n tiền với Bưu Điện. Vui l&ograve;ng li&ecirc;n hệ ngay cho ch&uacute;ng t&ocirc;i nếu c&oacute; trường hợp đ&ograve;i th&ecirc;m tiền v&agrave; kh&ocirc;ng giao h&agrave;ng tận nơi.</p>\r\n', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_tax`
--

CREATE TABLE `shop_tax` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album_anh_cuoi_dep`
--
ALTER TABLE `album_anh_cuoi_dep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcounter_users`
--
ALTER TABLE `pcounter_users`
  ADD PRIMARY KEY (`user_ip`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_address`
--
ALTER TABLE `shop_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_banner`
--
ALTER TABLE `shop_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `shop_image`
--
ALTER TABLE `shop_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Image_Products` (`album_id`);

--
-- Indexes for table `shop_information`
--
ALTER TABLE `shop_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_customer` (`customer_id`);

--
-- Indexes for table `shop_order_position`
--
ALTER TABLE `shop_order_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_payment_method`
--
ALTER TABLE `shop_payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_products_category` (`category_id`);

--
-- Indexes for table `shop_product_specification`
--
ALTER TABLE `shop_product_specification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_product_variation`
--
ALTER TABLE `shop_product_variation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_shipping_method`
--
ALTER TABLE `shop_shipping_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_tax`
--
ALTER TABLE `shop_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_address`
--
ALTER TABLE `shop_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `shop_banner`
--
ALTER TABLE `shop_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;
--
-- AUTO_INCREMENT for table `shop_customer`
--
ALTER TABLE `shop_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `shop_image`
--
ALTER TABLE `shop_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `shop_information`
--
ALTER TABLE `shop_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shop_order_position`
--
ALTER TABLE `shop_order_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `shop_payment_method`
--
ALTER TABLE `shop_payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shop_product_specification`
--
ALTER TABLE `shop_product_specification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_product_variation`
--
ALTER TABLE `shop_product_variation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_shipping_method`
--
ALTER TABLE `shop_shipping_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_tax`
--
ALTER TABLE `shop_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `shop_image`
--
ALTER TABLE `shop_image`
  ADD CONSTRAINT `fk_Image_Products` FOREIGN KEY (`album_id`) REFERENCES `shop_products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD CONSTRAINT `fk_order_customer1` FOREIGN KEY (`customer_id`) REFERENCES `shop_customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

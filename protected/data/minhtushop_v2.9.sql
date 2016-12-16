-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2016 at 07:48 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minhtushop_v1`
--

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

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `body`, `updated`, `phone`, `address`) VALUES
(1, 'Hòa', 'hoa@a.com', 'Cho tui hoi', 'Tai sao lai nhu vay', '2016-09-25 04:00:35', NULL, NULL),
(2, 'ab', 'ac@a.com', 'sad', 'asdasd', '2016-09-25 04:07:45', NULL, NULL),
(3, 'abc', 'abc@a.com', '23213', '213213', '2016-09-25 04:08:22', NULL, NULL),
(4, 'asdbsaa', 'ashdsa@a.com', '213213', '123213', '2016-09-25 04:09:36', NULL, NULL),
(5, 'asdbsaa', 'ashdsa@a.com', '213213', '123213', '2016-09-25 04:09:50', NULL, NULL),
(6, 'asdbsaa', 'ashdsa@a.com', '213213', '123213', '2016-09-25 04:10:18', NULL, NULL),
(7, 'asdbsaa', 'ashdsa@a.com', '213213', '123213', '2016-09-25 04:10:27', NULL, NULL),
(8, 'abc', 'abc@a.com', 'asdsad', 'asdsad', '2016-09-25 04:16:41', 131313, NULL),
(9, 'abc', 'abc@a.com', 'asdsad', 'asdsad', '2016-09-25 04:17:13', 131313, NULL),
(10, 'dsad', 'abc@a.com', '123', '123213', '2016-09-25 04:17:23', 12321, NULL);

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `content`, `updated`) VALUES
(1, 'Nhân viên giao hàng', 'Nhân viên giao hàng', '2016-09-25 06:22:49'),
(5, 'Nhân viên kinh doanh', '<h4>M&ocirc; tả c&ocirc;ng việc</h4>\r\n\r\n<p>Do nhu cầu mở rộng kinh doanh cần&nbsp; tuyển gấp 50 NVKD l&agrave;m việc tại&nbsp; Củ Chi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>Quyền lợi được hưởng</h4>\r\n\r\n<p>- Lương: 5 &ndash; 12 triệu<br />\r\n- Hỗ trợ tiền&nbsp;<a href="http://mywork.com.vn/tuyen-dung/43/marketing-pr.html">Marketing</a>&nbsp;từ 1 - 2 triệu<br />\r\n- Hoa hồng từ 25tr - 100tr/sp/Căn<br />\r\n- Chế độ thưởng n&oacute;ng 10 triệu/căn đặt cọc th&agrave;nh c&ocirc;ng<br />\r\n- Thu nhập kh&ocirc;ng giới hạn tr&ecirc;n 100 triệu/th&aacute;ng<br />\r\n- Được l&agrave;m việc trong&nbsp;<a href="http://mywork.com.vn/tuyen-dung/89/moi-truong.html">m&ocirc;i trường</a>&nbsp;năng động v&agrave; chuy&ecirc;n nghiệp<br />\r\n- Cơ hội định hướng sự nghiệp trở th&agrave;nh chuy&ecirc;n gia h&agrave;ng đầu trong lĩnh vực BĐS.<br />\r\n- Kinh doanh trực tiếp nguồn sản phẩm do c&ocirc;ng ty l&agrave;m chủ&nbsp;<a href="http://mywork.com.vn/tuyen-dung/4/dau-tu.html">đầu tư</a>&nbsp;hoặc độc quyền ph&acirc;n phối.<br />\r\n-&nbsp;<a href="http://mywork.com.vn/tuyen-dung/3/bao-hiem.html">Bảo hiểm</a>&nbsp;<a href="http://mywork.com.vn/tuyen-dung/65/y-te-duoc.html">y tế</a><br />\r\n- Thưởng tết cuối năm<br />\r\n- Lương th&aacute;ng 13 + Thưởng tết&nbsp;<br />\r\n- Thường xuy&ecirc;n được&nbsp;<a href="http://mywork.com.vn/tuyen-dung/58/giao-duc-dao-tao.html">đ&agrave;o tạo</a>&nbsp;n&acirc;ng cao kỹ năng trong c&ocirc;ng việc.<br />\r\n- Nhiều cơ hội thăng tiến do C&ocirc;ng ty đang tr&ecirc;n đ&agrave; ph&aacute;t triển, mở rộng (trưởng nh&oacute;m kinh doanh, trưởng ph&ograve;ng kinh doanh, Ph&oacute; GĐ&hellip;).<br />\r\n- C&aacute;c chế độ đ&atilde;i ngộ hấp dẫn kh&aacute;c ...</p>\r\n\r\n<h4>Y&ecirc;u cầu c&ocirc;ng việc</h4>\r\n\r\n<p>- Ưu ti&ecirc;n: c&aacute;c bạn đ&atilde; c&oacute; kinh nghiệm bất động sản,&nbsp;<a href="http://mywork.com.vn/tuyen-dung/7/ngan-hang.html">ng&acirc;n h&agrave;ng</a>, bảo hiểm.<br />\r\n- Chưa c&oacute; kinh nghiệm sẽ được đ&agrave;o tạo b&agrave;i bản.<br />\r\n- Tốt nghiệp trung học phổ th&ocirc;ng trở l&ecirc;n<br />\r\n- Ngoại h&igrave;nh: thanh lịch,dễ nh&igrave;n<br />\r\n- Th&agrave;nh thạo m&aacute;y vi t&iacute;nh, internet,&nbsp;<a href="http://mywork.com.vn/tuyen-dung/74/hanh-chinh-van-phong.html">văn ph&ograve;ng</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">- C&oacute;&nbsp;<a href="http://mywork.com.vn/tuyen-dung/21/o-to-xe-may.html">xe m&aacute;y</a>, điện thoại di động<br />\r\n- Si&ecirc;ng năng cần c&ugrave;, c&oacute; tinh thần cầu tiến, h&ograve;a đồng</p>\r\n\r\n<h4>Y&ecirc;u cầu hồ sơ</h4>\r\n\r\n<p>Li&ecirc;n hệ: Mr Long: 0908.999999</p>\r\n', '2016-12-11 04:23:28');

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
(1, 'Công ty văn phòng phẩm Minh Tú', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna.Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna.Suspendisse potenti...\r\nInteger sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna.Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Vestibulum quis convallis lorem, ac volutpat magna.Suspendisse potenti...', '2016-09-21 08:33:23', NULL, NULL, NULL);

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
('day_time', 2457734),
('counter', 13),
('yesterday', 1),
('max_count', 1),
('max_time', 1473760800);

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
('f528764d624db129b32c21fbca0cb8d6', 1481438915);

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
(1, 'bangbaogia_v1.xlsx', '2016-09-29 15:34:08');

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
(2, 'Banner 1', '1.jpg'),
(3, 'Banner 2', '2.jpg'),
(4, 'Banner 3', '3.jpg'),
(5, 'Banner 4', '4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `language` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`category_id`, `parent_id`, `title`, `description`, `language`) VALUES
(1, 0, 'GIẤY IN', NULL, NULL),
(2, 0, 'THIẾT BỊ VĂN PHÒNG', NULL, NULL),
(3, 1, 'GIẤY FAX - GIẤY LIÊN TỤC', NULL, NULL),
(4, 1, 'GIẤY A5', NULL, NULL),
(5, 1, 'GIẤY A4', NULL, NULL),
(6, 2, 'MÁY CHẤM CÔNG', NULL, NULL),
(7, 2, 'BÌNH NÓNG LẠNH', NULL, NULL),
(8, 3, 'GIẤY FAX SAHARA', NULL, NULL);

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
(6, NULL, 24, 0, 0, 'ac@a.com');

-- --------------------------------------------------------

--
-- Table structure for table `shop_image`
--

CREATE TABLE `shop_image` (
  `id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_image`
--

INSERT INTO `shop_image` (`id`, `title`, `filename`, `product_id`) VALUES
(1, 'Aquafina', 'nuoc aquafina 500L.png', 'AQ355');

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
(1, 'Văn phòng phẩm Minh Tú', 'logo3.png', '<table class="table">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thứ hai-Thứ s&aacute;u:</td>\r\n			<td>08.00 To 18.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thứ bảy:</td>\r\n			<td>09.00 To 20.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ch&uacute;a nhật:</td>\r\n			<td>10.00 To 20.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '(08) 0907123456', '123456', 'minhtu@gmail.com', 'saleminhtu@gmail.com', '204 Tỉnh lộ 8 – Khu Phố 2 – TT Củ Chi - H.Củ Chi - HCM', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1958.4544782202067!2d106.4897454109576!3d10.970244437171392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5a40c0dee1443c4d!2zTmfDom4gSMOgbmcgQ8O0bmcgVGjGsMahbmcgVmnhu4d0IE5hbSAoVmlldGluYmFuaykgLSBDbiBD4bunIENoaQ!5e0!3m2!1svi!2s!4v1474784910038" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '<p>Cung cấp nước uống tinh khiết c&aacute;c loại, sản xuất nước uống đ&oacute;ng chai hiệu MITAFINA Water. Cung cấp đồ d&ugrave;ng văn ph&ograve;ng phẩm c&aacute;c loại, mực m&aacute;y in, mực m&aacute;y photo, m&aacute;y văn ph&ograve;ng v&agrave; linh phụ kiện k&egrave;m theo. Cung cấp đồ d&ugrave;ng bảo hộ lao động, gi&agrave;y, d&eacute;p, đồng phục c&ocirc;ng nh&acirc;n, bảo vệ... Cung cấp dụng cụ vệ sinh văn ph&ograve;ng, nh&agrave; xưởng...</p>\r\n', '123456789', 'minhtu_vn', 'minhtu_vn');

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
(1, 'Tiền mặt', 'Thanh toán bằng tiền mặt khi nhận hàng', 1, 0);

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
('AQ355', 5, 1, 'Nước suối Aquafina 355ml (PEPSI)', 'Thùng 24 chai', ' 85000', 'A', 'A', 0, 0),
('AQ5', 7, 1, 'Nước suối Aquafina 5L (PEPSI)', 'Thùng 4 chai', ' 87000', 'A', 'A', 0, 0),
('AQ500', 6, 1, 'Nước suối Aquafina 500ml (PEPSI)', 'Thùng 24 chai', ' 93000', 'A', 'A', 0, 0),
('GAC70A4', 7, 1, 'Giấy ACURA A4-70', '', ' 52000', 'A', 'A', 0, 0),
('GAL60A4', 7, 1, 'Giáy Au Lạc A4-60', '', ' 45000', 'A', 'A', 0, 0),
('GAP70A4', 4, 1, 'Giấy A+ Plus A4-70', '', ' 54000', 'A', 'A', 0, 0),
('GBB60A4', 8, 1, 'Giấy Bãi Bằng ngà A4-60', '', ' 47000', 'A', 'A', 0, 0),
('GCP70A4', 7, 1, 'Giấy COPY PAPER A4-70', '', ' 51000', 'A', 'A', 0, 0),
('GD70A4', 6, 1, 'Giấy DELIGHT A4-70', '', ' 51000', 'A', 'A', 0, 0),
('GDA70A5', 6, 1, 'Giấy Double A A5-70', '', ' 32000', 'A', 'A', 0, 0),
('GE65A4', 4, 1, 'Giấy Excel A4-65 (PTL)', '', ' 46000', 'A', 'A', 0, 0),
('GE70A4', 4, 1, 'Giấy Excel A4-70 (PTL)', '', ' 51000', 'A', 'A', 0, 0),
('GE70A5', 4, 1, 'Giấy Excell A5-70', '', ' 28000', 'A', 'A', 0, 0),
('GE80A5', 5, 1, 'Giấy Excell A5-80 (2)', '', ' 34000', 'A', 'A', 0, 0),
('GEX70A4', 4, 1, 'Giấy Excelent A4-70', '', ' 52000', 'A', 'A', 0, 0),
('GIN70A4', 5, 1, 'Giấy IK NATURAL A4-70', '', ' 53000', 'A', 'A', 0, 0),
('GN70A4', 4, 1, 'Giấy NATURAL A4-70', '', ' 51000', 'A', 'A', 0, 0),
('GS70A4', 8, 1, 'Giấy Supreme A4-70', '', ' 57000', 'A', 'A', 0, 0),
('K3', 4, 1, 'Kệ để nước 3 chân bằng sắt', '', ' 33000', 'A', 'A', 0, 0),
('LV1.5', 5, 1, 'Nước khoáng Lavie 1,5L', 'Thùng 12 chai', ' 94000', 'A', 'A', 0, 0),
('LV350', 8, 1, 'Nước khoáng Lavie 350ml', 'Thùng 24 chai', ' 77000', 'A', 'A', 0, 0),
('LV5', 6, 1, 'Nước khoáng Lavie 5L', 'Thùng 4 chai', ' 75000', 'A', 'A', 0, 0),
('LV500', 4, 1, 'Nước khoáng Lavie 500ml', 'Thùng 24 chai', ' 87000', 'A', 'A', 0, 0),
('MTFN20L', 4, 1, 'Bình nước 20 lít cổ nhỏ (MiTaFiNa) ', 'dùng cho máy nóng lạnh', ' 10000', 'A', 'A', 0, 0),
('MTFN20N', 4, 1, 'Bình nước 20 lít cổ lớn (MiTaFiNa) ', '', ' 10000', 'A', 'A', 0, 0),
('MTFN5L', 4, 1, 'Nước suối MiTaFiNa  500ml ', 'Lốc 24 chai', ' 48000', 'A', 'A', 0, 0),
('MTFN5T', 4, 1, 'Nước suối MiTaFiNa  500ml ', 'Thùng 24 chai', ' 55000', 'A', 'A', 0, 0),
('VH350', 7, 1, 'Nước khoáng Vĩnh Hảo 350ml', 'Thùng 24 chai', ' 75000', 'A', 'A', 0, 0),
('VH500', 8, 1, 'Nước khoáng Vĩnh Hảo 500ml', 'Thùng 24 chai', ' 85000', 'A', 'A', 0, 0);

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
(1, 'Giao hàng tận nơi', 'Giao hàng miễn phí trong vòng 10km. Thu phí 20k trong vòng 20km', 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `shop_tax`
--

CREATE TABLE `shop_tax` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `percent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_tax`
--

INSERT INTO `shop_tax` (`id`, `title`, `percent`) VALUES
(1, 'Thuế VAT', 10),
(2, '7%', 7);

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
  ADD KEY `fk_Image_Products` (`product_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_address`
--
ALTER TABLE `shop_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `shop_banner`
--
ALTER TABLE `shop_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `shop_customer`
--
ALTER TABLE `shop_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shop_image`
--
ALTER TABLE `shop_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_information`
--
ALTER TABLE `shop_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shop_order_position`
--
ALTER TABLE `shop_order_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  ADD CONSTRAINT `fk_Image_Products` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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

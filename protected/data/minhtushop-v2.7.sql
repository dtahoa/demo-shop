-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2016 at 06:54 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minhtushop`
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
(1, 'THE NEW PRODUCT FROM APPLE COMPANY', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Suspendisse potenti...', '2016-09-25 06:22:49'),
(2, 'THE NEW PRODUCT FROM APPLE COMPANY', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Suspendisse potenti...', '2016-09-25 06:22:49'),
(3, 'THE NEW PRODUCT FROM APPLE COMPANY', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Suspendisse potenti...', '2016-09-25 06:22:49'),
(4, 'THE NEW PRODUCT FROM APPLE COMPANY', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Suspendisse potenti...', '2016-09-25 06:22:49');

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
('day_time', 2457664),
('counter', 8),
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
('f528764d624db129b32c21fbca0cb8d6', 1475426037);

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
(1, 'test - Copy.xlsx', '2016-09-29 15:34:08');

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
(1, 'acb', 'cb', 'abc', 'ba', 'a', 'ab', NULL),
(2, 'acb', 'cb', 'abc', 'ba', 'a', 'ab', NULL),
(3, '1', '2', '1', '1', '1', '1', NULL),
(4, '1', '2', '1', '1', '1', '1', NULL),
(5, '1', '2', '1', '1', '1', '1', NULL),
(6, '1', '2', '1', '1', '1', '1', NULL),
(7, 'abc', 'bac', '21312', 'eqw', 'sada', 'asdsad', NULL),
(8, 'acb', 'ac', 'asdsa', 'asd', 'q', 'asdas', NULL),
(9, 'acb', 'ac', 'asdsa', 'asd', 'q', 'asdas', NULL),
(10, 'acb', 'ac', 'asdsa', 'asd', 'q', 'asdas', NULL),
(11, 'hoa', 'hoa', 'abc', 'abc', 'acb', 'abc', NULL),
(12, 'hoa', 'hoa', 'abc', 'abc', 'acb', 'abc', NULL),
(13, 'hoa', 'hoa', 'abc', 'abc', 'acb', 'abc', NULL),
(14, 'Hoa', 'Nguyen', 'abc', '', '', '', NULL),
(15, 'Hoa', 'Nguyen', 'abc', '', '', '', NULL),
(16, 'Hoa', 'Nguyen', 'abc', '', '', '', NULL),
(17, 'Hoa', '', 'sadad', '', '', '', 12347),
(18, 'Hoa', '', 'sadad', '', '', '', 12347),
(19, 'Hoa', '', 'sadad', '', '', '', 12347),
(20, 'Hoa', '', '12345', '', '', '', 123456),
(21, 'Nguyen Hoa', '', 'Cu Chi', '', '', '', 907730305),
(22, 'Nguyen Hoa', '', 'Cu Chi', '', '', '', 907730305),
(23, 'Nguyen Hoa', '', 'Cu Chi', '', '', '', 907730305),
(24, 'sad', '', 'asdsad', '', '', '', 0);

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
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `language` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`category_id`, `parent_id`, `title`, `description`, `language`) VALUES
(1, 0, 'THIẾT BỊ VĂN PHÒNG 1', '', ''),
(2, 0, 'GIẤY IN - PHOTO', NULL, NULL),
(3, 1, 'MÁY CHẤM CÔNG', NULL, NULL),
(4, 1, 'MÁY HỦY GIẤY', NULL, NULL),
(5, 2, 'GIẤY A4', NULL, NULL),
(6, 0, 'Hàng hóa 3', 'Hàng hóa 3', NULL),
(7, 0, 'danh muc', '', NULL),
(8, 0, 'danh muc', '', NULL),
(9, 0, 'THIẾT BỊ VĂN PHÒNG 1', '', ''),
(11, 1, 'MÁY CHẤM CÔNG', NULL, NULL),
(12, 1, 'MÁY HỦY GIẤY', NULL, NULL),
(13, 2, 'GIẤY A4', NULL, NULL),
(14, 0, 'Hàng hóa 3', 'Hàng hóa 3', NULL),
(15, 0, 'danh muc', '', NULL),
(16, 0, 'danh muc', '', NULL);

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
  `product_id` VARCHAR(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'Văn phòng phẩm Minh Tú', 'computers-128.png', '<table class="table">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thứ hai-Thứ s&aacute;u:</td>\r\n			<td>08.00 To 18.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thứ bảy:</td>\r\n			<td>09.00 To 20.00</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ch&uacute;a nhật:</td>\r\n			<td>10.00 To 20.00</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '(08) 0907123456', '123456', 'minhtu@gmail.com', 'saleminhtu@gmail.com', '204 Tỉnh lộ 8 – Khu Phố 2 – TT Củ Chi - H.Củ Chi - HCM', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1958.4544782202067!2d106.4897454109576!3d10.970244437171392!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5a40c0dee1443c4d!2zTmfDom4gSMOgbmcgQ8O0bmcgVGjGsMahbmcgVmnhu4d0IE5hbSAoVmlldGluYmFuaykgLSBDbiBD4bunIENoaQ!5e0!3m2!1svi!2s!4v1474784910038" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '<p>Cung cấp nước uống tinh khiết c&aacute;c loại, sản xuất nước uống đ&oacute;ng chai hiệu MITAFINA Water. Cung cấp đồ d&ugrave;ng văn ph&ograve;ng phẩm c&aacute;c loại, mực m&aacute;y in, mực m&aacute;y photo, m&aacute;y văn ph&ograve;ng v&agrave; linh phụ kiện k&egrave;m theo. Cung cấp đồ d&ugrave;ng bảo hộ lao động, gi&agrave;y, d&eacute;p, đồng phục c&ocirc;ng nh&acirc;n, bảo vệ... Cung cấp dụng cụ vệ sinh văn ph&ograve;ng, nh&agrave; xưởng...</p>\r\n', '123456789', 'minhtu_vn', 'minhtu_vn');

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
(1, 1, 12, 13, 1472958912, 1, NULL, 1, 1, ''),
(2, 2, 15, 16, 1472984145, NULL, NULL, 1, 1, ''),
(3, 3, 18, 19, 1474779446, NULL, NULL, 1, 1, NULL),
(4, 5, 22, 23, 1475115838, NULL, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_position`
--

CREATE TABLE `shop_order_position` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` VARCHAR(45) NOT NULL,
  `amount` int(11) NOT NULL,
  `specifications` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_order_position`
--

INSERT INTO `shop_order_position` (`id`, `order_id`, `product_id`, `amount`, `specifications`) VALUES
(2, 1, 1, 1, 'null'),
(3, 1, 2, 2, 'null'),
(4, 2, 1, 2, 'null'),
(6, 3, 1, 5, 'null'),
(7, 3, 3, 1, 'null'),
(8, 4, 3, 1, 'null');

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
  `product_id` VARCHAR(45) NOT NULL,
  `category_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
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
(1, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(2, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(3, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(4, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(5, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(6, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(7, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(8, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(9, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(10, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(11, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(12, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(13, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(14, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(15, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(16, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(17, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(18, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(19, 1, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(20, 1, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(21, 1, 0, 'Sản phẩm cá kèo', 'Sản phẩm cá kèo', '', NULL, NULL, NULL, NULL),
(22, 1, 0, 'Sàn phẩm chổi quét nhà', 'Sàn phẩm chổi quét nhà', '20000', NULL, NULL, NULL, NULL),
(23, 1, 0, 'xyz', 'asdsad', '20000', NULL, NULL, NULL, NULL);

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
  `product_id` VARCHAR(45) NOT NULL,
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `product_id` VARCHAR(45) NOT NULL;
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

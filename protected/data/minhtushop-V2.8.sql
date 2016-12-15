-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2016 at 09:41 AM
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
(5, 'asdbsaa', 'ashdsa@a.com', '213213', '123213', '2016-09-25 04:09:50', NULL, NULL),
(6, 'asdbsaa', 'ashdsa@a.com', '213213', '123213', '2016-09-25 04:10:18', NULL, NULL),
(7, 'asdbsaa', 'ashdsa@a.com', '213213', '123213', '2016-09-25 04:10:27', NULL, NULL),
(8, 'abc', 'abc@a.com', 'asdsad', 'asdsad', '2016-09-25 04:16:41', 131313, NULL),
(9, 'abc', 'abc@a.com', 'asdsad', 'asdsad', '2016-09-25 04:17:13', 131313, NULL),
(10, 'dsad', 'abc@a.com', '123', '123213', '2016-09-25 04:17:23', 12321, NULL),
(11, 'Ho', 'hoa@a.com', 'Chinh sua lai thong tin di', 'Chinh sua lai trang web di', '2016-10-08 03:54:45', 145644, NULL);

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
(3, 'THE NEW PRODUCT FROM APPLE COMPANY', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Suspendisse potenti...', '2016-09-25 06:22:49'),
(4, 'THE NEW PRODUCT FROM APPLE COMPANY', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Suspendisse potenti...', '2016-09-25 06:22:49'),
(5, 'Kĩ thuật viên', '<p>Kĩ thuật vi&ecirc;n cấp 2</p>\r\n', '2016-10-08 03:32:08');

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
(1, 'Công ty văn phòng phẩm Minh Tú', 'Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna.Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna.Suspendisse potenti...\r\nInteger sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna.Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Integer sit amet commodo eros, sed dictum ipsum. Integer sit amet commodo eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibul um quis convallis lorem, ac volutpat magna. Suspendisse potenti. Sed lobortis sagittis ante, ut luctus elit pharetra nec. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis convallis lorem, ac volutpat magna. Vestibulum quis convallis lorem, ac volutpat magna.Suspendisse potenti...', '2016-09-21 08:33:23', NULL, NULL, NULL),
(2, 'Chính sách bảo mật', '<p style="text-align:start"><span style="font-family:Courier New,Courier,monospace">Bảo mật th&ocirc;ng tin kh&aacute;ch h&agrave;ng l&agrave; một trong những ưu ti&ecirc;n nhằm tạo điều kiện&nbsp;<a href="http://tiki.vn/" style="box-sizing: border-box; font-family: &quot;Noto Sans&quot;, sans-serif; background-color: transparent; color: rgb(21, 142, 194); text-decoration: none;" title="mua hàng trực tuyến">mua h&agrave;ng trực tuyến</a>&nbsp;tốt nhất cho bạn tại Vanphongphaminhtu.vn. Ch&uacute;ng t&ocirc;i hiểu sử dụng hợp l&yacute; v&agrave; bảo mật th&ocirc;ng tin sẽ thể hiện sự quan t&acirc;m của Vanphongphaminhtu.vn d&agrave;nh cho bạn. V&igrave; thế, Vanphongphaminhtu.vn cam kết việc sử dụng th&ocirc;ng tin tr&ecirc;n sẽ chỉ nhằm n&acirc;ng cao chất lượng dịch vụ kh&aacute;ch h&agrave;ng v&agrave; tạo m&ocirc;i trường&nbsp;<a href="http://tiki.vn/" style="box-sizing: border-box; font-family: &quot;Noto Sans&quot;, sans-serif; background-color: transparent; color: rgb(21, 142, 194); text-decoration: none;" title="mua sắm trực tuyến">mua sắm trực tuyến&nbsp;</a>an t&ograve;an, tiện lợi tại Vanphongphaminhtu.vn. Cụ thể, th&ocirc;ng tin của bạn chỉ d&ugrave;ng để:</span></p>\r\n\r\n<ul>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Cung cấp một số tiện &iacute;ch, n&acirc;ng cao chất lượng dịch vụ hỗ trợ kh&aacute;ch h&agrave;ng</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Giải quyết c&aacute;c vấn đề, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến việc sử dụng website Vanphongphaminhtu.vn</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Ngăn chặn những hoạt động vi phạm ph&aacute;p luật Việt Nam</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Vanphongphaminhtu.vn cam đoan sẽ kh&ocirc;ng b&aacute;n, chia sẻ dẫn đến l&agrave;m lộ th&ocirc;ng tin c&aacute; nh&acirc;n của bạn v&igrave; mục đ&iacute;ch thương mại vi phạm cam kết của ch&uacute;ng t&ocirc;i ghi trong ch&iacute;nh s&aacute;ch bảo mật n&agrave;y. Tất cả th&ocirc;ng tin giao dịch giữa bạn v&agrave; Vanphongphaminhtu.vn sẽ được bảo mật qua phần mềm Secure Sockets Layer (SSL) bằng c&aacute;ch m&atilde; h&oacute;a tất cả th&ocirc;ng tin bạn nhập v&agrave;o.</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Tuy nhi&ecirc;n, bạn kh&ocirc;ng n&ecirc;n trao đổi những th&ocirc;ng tin thanh to&aacute;n, giao nhận của m&igrave;nh cho 1 b&ecirc;n thứ 3 n&agrave;o kh&aacute;c để tr&aacute;nh r&ograve; rỉ th&ocirc;ng tin. Khi sử dụng chung m&aacute;y t&iacute;nh với nhiều người, vui l&ograve;ng tho&aacute;t khỏi t&agrave;i khoản mỗi khi kh&ocirc;ng sử dụng dịch vụ của Vanphongphaminhtu.vn nữa để tự bảo vệ th&ocirc;ng tin về mật khẩu truy cập của m&igrave;nh.</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Ngo&agrave;i ra, bạn tuyệt đối kh&ocirc;ng được sử dụng bất kỳ h&igrave;nh thức n&agrave;o để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Ch&uacute;ng t&ocirc;i nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống website. Mọi vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết. Mọi th&ocirc;ng tin của bạn tại Vanphongphaminhtu.vn sẽ được ch&uacute;ng t&ocirc;i bảo mật nhưng trong trường hợp ph&aacute;p luật y&ecirc;u cầu, ch&uacute;ng t&ocirc;i buộc phải cung cấp th&ocirc;ng tin n&agrave;y cho cơ quan ph&aacute;p luật</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Vanphongphaminhtu.vn hiểu rằng quyền lợi của bạn trong việc bảo vệ th&ocirc;ng tin c&aacute; nh&acirc;n cũng ch&iacute;nh l&agrave; tr&aacute;ch nhiệm của ch&uacute;ng t&ocirc;i n&ecirc;n trong bất kỳ trường hợp c&oacute; thắc mắc, g&oacute;p &yacute; n&agrave;o li&ecirc;n quan đến ch&iacute;nh s&aacute;ch bảo mật của Vanphongphaminhtu.vn, vui l&ograve;ng li&ecirc;n hệ qua số điện thoại:&nbsp;1900-0001 hoặc email:&nbsp;<a href="mailto:support@tiki.vn" style="box-sizing: border-box; font-family: &quot;Noto Sans&quot;, sans-serif; background-color: transparent; color: rgb(21, 142, 194); text-decoration: none;">support@vanphongphamminhtu.vn</a></span></li>\r\n</ul>\r\n', '2016-10-08 02:49:48', NULL, NULL, NULL),
(3, 'Điều Khoản Sử Dụng', '<p><span style="font-family:Courier New,Courier,monospace"><strong>1. Giới thiệu</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Ch&agrave;o mừng qu&yacute; kh&aacute;ch h&agrave;ng đến với Vanphongphamminhtu.vn.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Khi qu&yacute; kh&aacute;ch h&agrave;ng truy cập v&agrave;o trang website của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Trang web c&oacute; quyền thay đổi, chỉnh sửa, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Điều khoản mua b&aacute;n h&agrave;ng h&oacute;a n&agrave;y, v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n trang web m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi qu&yacute; kh&aacute;ch tiếp tục sử dụng trang web, sau khi c&aacute;c thay đổi về Điều khoản n&agrave;y được đăng tải, c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch chấp nhận với những thay đổi đ&oacute;.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng kiểm tra thường xuy&ecirc;n để cập nhật những thay đổi của ch&uacute;ng t&ocirc;i.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>2</strong><strong>. &Yacute; kiến của kh&aacute;ch h&agrave;ng</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Tất cả nội dung trang web v&agrave; &yacute; kiến ph&ecirc; b&igrave;nh của qu&yacute; kh&aacute;ch đều l&agrave; t&agrave;i sản của ch&uacute;ng t&ocirc;i. Nếu ch&uacute;ng t&ocirc;i ph&aacute;t hiện bất kỳ th&ocirc;ng tin giả mạo n&agrave;o, ch&uacute;ng t&ocirc;i sẽ kh&oacute;a t&agrave;i khoản của qu&yacute; kh&aacute;ch ngay lập tức hoặc &aacute;p dụng c&aacute;c biện ph&aacute;p kh&aacute;c theo quy định của ph&aacute;p luật Việt Nam.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>3. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch v&igrave; bất kỳ l&yacute; do g&igrave; li&ecirc;n quan đến lỗi kỹ thuật, hệ thống một c&aacute;ch kh&aacute;ch quan v&agrave;o bất kỳ l&uacute;c n&agrave;o. Ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ trước khi nhận đơn h&agrave;ng.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Ch&uacute;ng t&ocirc;i cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; sản phẩm kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n trang web hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy đơn h&agrave;ng đ&oacute; cho qu&yacute; kh&aacute;ch. Ch&uacute;ng t&ocirc;i cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ đơn h&agrave;ng n&agrave;o d&ugrave; đơn h&agrave;ng đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; thanh to&aacute;n.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>4. Thay đổi hoặc hủy bỏ giao dịch tại Vanphongphamminhtu.vn</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:</span></p>\r\n\r\n<ul>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Th&ocirc;ng b&aacute;o cho Vanphongphamminhtu.vn về việc hủy giao dịch qua đường d&acirc;y n&oacute;ng (hotline) 1900-6035</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Trả lại h&agrave;ng ho&aacute; đ&atilde; nhận nhưng chưa sử dụng hoặc hưởng bất kỳ lợi &iacute;ch n&agrave;o từ h&agrave;ng h&oacute;a đ&oacute;</span></li>\r\n</ul>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>5. Giải quyết hậu quả do lỗi nhập sai th&ocirc;ng tin tại Vanphongphamminhtu.vn</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm cung cấp th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c khi tham gia giao dịch tại Vanphongphamminhtu.vn. Trong trường hợp kh&aacute;ch h&agrave;ng nhập sai th&ocirc;ng tin v&agrave; gửi v&agrave;o trang TMĐT Vanphongphamminhtu.vn, Vanphongphamminhtu.vn c&oacute; quyền từ chối thực hiện giao dịch. Ngo&agrave;i ra, trong mọi trường hợp, kh&aacute;ch h&agrave;ng đều c&oacute; quyền đơn phương chấm dứt giao dịch nếu đ&atilde; thực hiện c&aacute;c biện ph&aacute;p sau đ&acirc;y:</span></p>\r\n\r\n<ul>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Th&ocirc;ng b&aacute;o cho Vanphongphamminhtu.vn qua đường d&acirc;y n&oacute;ng 1900-0001</span></li>\r\n	<li><span style="font-family:Courier New,Courier,monospace">Trả lại h&agrave;ng ho&aacute; đ&atilde; nhận nhưng chưa sử dụng hoặc hưởng bất kỳ lợi &iacute;ch n&agrave;o từ h&agrave;ng h&oacute;a đ&oacute;.</span></li>\r\n</ul>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Trong trường hợp sai th&ocirc;ng tin ph&aacute;t sinh từ ph&iacute;a Vanphongphamminhtu.vn m&agrave; Vanphongphamminhtu.vn c&oacute; thể chứng minh đ&oacute; l&agrave; lỗi của hệ thống hoặc từ b&ecirc;n thứ ba (sai gi&aacute; sản phẩm, sai xuất xứ, &hellip;), Vanphongphamminhtu.vn sẽ đền b&ugrave; cho kh&aacute;ch h&agrave;ng một m&atilde; giảm gi&aacute; cho c&aacute;c lần mua sắm tiếp theo với mệnh gi&aacute; t&ugrave;y từng trường hợp cụ thể v&agrave; c&oacute; quyền kh&ocirc;ng thực hiện giao dịch bị lỗi.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>6</strong><strong>. Thương hiệu v&agrave; bản quyền</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Mọi quyền sở hữu tr&iacute; tuệ (đ&atilde; đăng k&yacute; hoặc chưa đăng k&yacute;), nội dung th&ocirc;ng tin v&agrave; tất cả c&aacute;c thiết kế, văn bản, đồ họa, phần mềm, h&igrave;nh ảnh, video, &acirc;m nhạc, &acirc;m thanh, bi&ecirc;n dịch phần mềm, m&atilde; nguồn v&agrave; phần mềm cơ bản đều l&agrave; t&agrave;i sản của ch&uacute;ng t&ocirc;i. To&agrave;n bộ nội dung của trang web được bảo vệ bởi luật bản quyền của Việt Nam v&agrave; c&aacute;c c&ocirc;ng ước quốc tế. Bản quyền đ&atilde; được bảo lưu.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>7. Quyền ph&aacute;p l&yacute;</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">C&aacute;c điều kiện, điều khoản v&agrave; nội dung của trang web n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam v&agrave; T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>8</strong><strong>. Quy định về bảo mật</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Trang web của ch&uacute;ng t&ocirc;i coi trọng việc bảo mật th&ocirc;ng tin v&agrave; sử dụng c&aacute;c biện ph&aacute;p tốt nhất bảo vệ th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Th&ocirc;ng tin của qu&yacute; kh&aacute;ch trong qu&aacute; tr&igrave;nh thanh to&aacute;n sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Sau khi qu&yacute; kh&aacute;ch ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt h&agrave;ng, qu&yacute; kh&aacute;ch sẽ tho&aacute;t khỏi chế độ an to&agrave;n.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Qu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Trang web cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Mọi th&ocirc;ng tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>9. Thanh to&aacute;n an to&agrave;n v&agrave; tiện lợi tại Vanphongphamminhtu.vn</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Người mua c&oacute; thể tham khảo c&aacute;c phương thức thanh to&aacute;n sau đ&acirc;y v&agrave; lựa chọn &aacute;p dụng phương thức ph&ugrave; hợp:</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>C&aacute;ch 1</strong>: Thanh to&aacute;n trực tiếp (người mua nhận h&agrave;ng tại địa chỉ người b&aacute;n):</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 1: Người mua t&igrave;m hiểu th&ocirc;ng tin về sản phẩm, dịch vụ được đăng tin;</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 2: Người mua đến địa chỉ b&aacute;n h&agrave;ng</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 3: Người mua thanh to&aacute;n v&agrave; nhận h&agrave;ng;</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>C&aacute;ch 2:</strong>&nbsp;Thanh to&aacute;n sau (COD &ndash; giao h&agrave;ng v&agrave; thu tiền tận nơi):</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 1: Người mua t&igrave;m hiểu th&ocirc;ng tin về sản phẩm, dịch vụ được đăng tin;</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 2: Người mua x&aacute;c thực đơn h&agrave;ng (điện thoại, tin nhắn, email);</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 3: Người b&aacute;n x&aacute;c nhận th&ocirc;ng tin Người mua;</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 4: Người b&aacute;n chuyển h&agrave;ng;</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bước 5: Người mua nhận h&agrave;ng v&agrave; thanh to&aacute;n.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>10. Đảm bảo an to&agrave;n giao dịch tại Vanphongphamminhtu.vn</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Ch&uacute;ng t&ocirc;i sử dụng c&aacute;c dịch vụ để bảo vệ th&ocirc;ng tin về nội dung m&agrave; người b&aacute;n đăng &nbsp;sản phẩm tr&ecirc;n Vanphongphamminhtu.vn. Để đảm bảo c&aacute;c giao dịch được tiến h&agrave;nh th&agrave;nh c&ocirc;ng, hạn chế tối đa rủi ro c&oacute; thể ph&aacute;t sinh.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>11. Giải quyết tranh chấp</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Bất kỳ tranh c&atilde;i, khiếu nại hoặc tranh chấp ph&aacute;t sinh từ hoặc li&ecirc;n quan đến giao dịch tại Vanphongphamminhtu.vn hoặc c&aacute;c Quy định v&agrave; Điều kiện n&agrave;y đều sẽ được giải quyết bằng h&igrave;nh thức thương lượng, h&ograve;a giải, trọng t&agrave;i v&agrave;/hoặc T&ograve;a &aacute;n theo Luật bảo vệ Người ti&ecirc;u d&ugrave;ng Chương 4 về Giải quyết tranh chấp giữa người ti&ecirc;u d&ugrave;ng v&agrave; tổ chức, c&aacute; nh&acirc;n kinh doanh h&agrave;ng h&oacute;a, dịch vụ.</span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace"><strong>12. Luật ph&aacute;p v&agrave; thẩm quyền tại L&atilde;nh thổ Việt Nam</strong></span></p>\r\n\r\n<p><span style="font-family:Courier New,Courier,monospace">Tất cả c&aacute;c Điều Khoản v&agrave; Điều Kiện n&agrave;y v&agrave; Hợp Đồng (v&agrave; tất cả nghĩa vụ ph&aacute;t sinh ngo&agrave;i hợp đồng hoặc c&oacute; li&ecirc;n quan) sẽ bị chi phối v&agrave; được hiểu theo luật ph&aacute;p của Việt Nam. Nếu c&oacute; tranh chấp ph&aacute;t sinh bởi c&aacute;c Quy định Sử dụng n&agrave;y, qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; quyền gửi khiếu nại/khiếu kiện l&ecirc;n T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam để giải quyết.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2016-10-08 03:20:13', NULL, NULL, NULL);

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
('day_time', 2457670),
('counter', 9),
('yesterday', 0),
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
('f528764d624db129b32c21fbca0cb8d6', 1475907527);

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
(24, 'sad', '', 'asdsad', '', '', '', 0),
(25, 'Hoa Nguyen', '', '9 Duong 82, Cu Chi', '', '', '', 123456),
(26, 'Hoa Nguyen', '', '9 Duong 82, Cu Chi', '', '', '', 123456),
(27, 'Hoa Nguyen', '', '9 Duong 82, Cu Chi', '', '', '', 123456),
(28, 'Hoa Nguyen', '', '9 Duong 82, Cu Chi', '', '', '', 123456),
(29, 'Hoa Nguyen', '', '9 Duong 82, Cu Chi', '', '', '', 123456),
(30, 'Hoa Nguyen 2', '', '9 Duong 82, Cu Chi', '', '', '', 123456);

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
(6, NULL, 24, 0, 0, 'ac@a.com'),
(7, NULL, 30, 0, 0, 'nhoa@a.com');

-- --------------------------------------------------------

--
-- Table structure for table `shop_image`
--

CREATE TABLE `shop_image` (
  `id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
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
(4, 5, 22, 23, 1475115838, NULL, NULL, 1, 1, NULL),
(5, 7, 26, 27, 1475893155, NULL, NULL, 1, 1, NULL),
(6, 7, 28, 29, 1475897714, NULL, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_position`
--

CREATE TABLE `shop_order_position` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
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
(8, 4, 3, 1, 'null'),
(9, 5, 1, 2, 'null'),
(10, 6, 2, 1, 'null');

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
(1, 'Tiền mặt', 'Thanh toán bằng tiền mặt khi nhận hàng', 1, 0),
(6, 'Chuyển khoản qua ngân hàng', 'Chuyển khoản qua ngân hàng', 1, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `product_id` int(11) NOT NULL,
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
(1, 4, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(2, 4, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(3, 3, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(4, 12, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(5, 12, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(6, 12, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(7, 12, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(8, 12, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(9, 12, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(10, 11, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(11, 4, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(12, 3, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(13, 3, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(14, 3, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(15, 12, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(16, 11, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(17, 4, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(18, 3, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(19, 12, 1, 'Máy chấm công mới A', 'Máy chấm công mới', '400000', 'a', 'a', 1, 1),
(20, 11, 1, 'Máy chấm công mới', 'Máy chấm công mới', '200000', 'a', 'a', 1, 1),
(21, 4, 0, 'Sản phẩm cá kèo', 'Sản phẩm cá kèo', '', NULL, NULL, NULL, NULL),
(22, 3, 0, 'Sàn phẩm chổi quét nhà', 'Sàn phẩm chổi quét nhà', '20000', NULL, NULL, NULL, NULL),
(23, 3, 0, 'xyz', 'asdsad', '20000', NULL, NULL, NULL, NULL);

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
  `product_id` int(11) NOT NULL,
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
(1, 'Giao hàng tận nơi', 'Giao hàng miễn phí trong vòng 10km. Thu phí 20k trong vòng 20km', 1, 20000),
(2, 'Giao hàng ở nước ngoài', 'Giao hàng ở nước ngoài', 1, 500000);

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
(1, 'Thuế VAT', 10);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
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
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shop_order_position`
--
ALTER TABLE `shop_order_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `shop_payment_method`
--
ALTER TABLE `shop_payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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

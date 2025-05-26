-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2025 lúc 12:39 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopvnb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_cmt`
--
DROP
    DATABASE IF EXISTS `shopVNB`;
CREATE DATABASE IF NOT EXISTS `shopVNB` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci; USE
    `shopVNB`;

CREATE TABLE `bang_cmt` (
  `ID_tin` int(11) NOT NULL,
  `ID_cmt` int(9) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `noi_dung_cmt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_cmt` datetime NOT NULL,
  `reply_to` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `bang_cmt`
--

INSERT INTO `bang_cmt` (`ID_tin`, `ID_cmt`, `ID_user`, `noi_dung_cmt`, `time_cmt`, `reply_to`) VALUES
(21, 107547911, 1, 'còn mới lạ', '2025-05-08 02:02:37', 947612974),
(21, 137650501, 1, 'hello from the other side', '2025-05-08 00:16:05', NULL),
(18, 208835267, 1, 'ádasdasd', '2025-05-07 00:57:00', NULL),
(21, 245958343, 2, 'hello bạn', '2025-05-07 03:21:43', 357741115),
(21, 314402770, 1, 'hello', '2025-05-08 00:19:31', 357741115),
(21, 357741115, 1, 'hello bạn ơi', '2025-05-07 00:56:21', NULL),
(21, 376720290, 2, 'hay thật không bạn', '2025-05-07 03:28:55', 866971526),
(21, 491604877, 2, 'thật bạn', '2025-05-07 03:30:13', 866971526),
(21, 641355239, 2, 'khỏe', '2025-05-07 03:20:34', 973375254),
(21, 689202238, 1, 'Còn á haha', '2025-05-08 00:50:00', 947612974),
(21, 866971526, 1, 'bài viết này hay lắm', '2025-05-07 00:56:35', NULL),
(21, 947612974, 1, 'giày này còn không bạn', '2025-05-07 00:56:42', NULL),
(21, 949867465, 2, 'cám ơn bạn đã quá khen mình', '2025-05-07 03:30:51', 866971526),
(21, 973375254, 1, 'bạn có khỏe không', '2025-05-07 00:56:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_tin_tuc`
--

CREATE TABLE `bang_tin_tuc` (
  `ID_tin` int(11) NOT NULL,
  `Title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Noi_dung_tin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ngay_viet` datetime NOT NULL,
  `Nguoi_viet` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Link_anh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_nguoi_viet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `bang_tin_tuc`
--

INSERT INTO `bang_tin_tuc` (`ID_tin`, `Title`, `Noi_dung_tin`, `Ngay_viet`, `Nguoi_viet`, `Link_anh`, `ID_nguoi_viet`) VALUES
(12, 'MT09 Sân cầu lông & Pickleball Tô Ký với không gian rộng rãi, thoáng mát', '<p><em>B&agrave;i viết được&nbsp;<a href=\"https://shopvnb.com/\" target=\"_blank\" rel=\"noopener\">ShopVNB</a>&nbsp;-&nbsp;<a href=\"https://shopvnb.com/he-thong-cua-hang\" target=\"_blank\" rel=\"noopener\">Hệ thống shop cầu l&ocirc;ng</a>&nbsp;h&agrave;ng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium v&agrave; 68 chi nh&aacute;nh tr&ecirc;n to&agrave;n quốc kiểm duyệt v&agrave; chia sẻ.</em></p>\r\n<p><a href=\"https://shopvnb.com/san-cau-long-hoang-vy.html\"><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></a>&nbsp;với&nbsp;mặt s&acirc;n đẹp, c&aacute;c dịch vụ tiện &iacute;ch đầy đủ&nbsp;v&agrave; được biết đến&nbsp;l&agrave; một trong những cụm s&acirc;n&nbsp;cầu l&ocirc;ng&nbsp;chất lượng tại quận 8, TP.HCM. Nơi đ&acirc;y được trang bị đầy đủ cơ sở vật chất, đ&aacute;p ứng được hầu hết&nbsp;nhu cầu của người chơi khi đến đ&acirc;y trải nghiệm.&nbsp;H&atilde;y c&ugrave;ng&nbsp;<strong>ShopVNB</strong>&nbsp;t&igrave;m hiểu chi tiết về s&acirc;n cầu n&agrave;y&nbsp;qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DL9awSFdWxk\" width=\"800\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<h2><strong>1. Giới thiệu s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>&nbsp;tọa lạc tại số 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM, đường đi đến s&acirc;n n&agrave;y cũng kh&aacute; thuận tiện cho việc di chuyển.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-1-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n ngo&agrave;i s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-2-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;c&oacute; quy m&ocirc; gồm 3&nbsp;s&acirc;n trong nh&agrave;,&nbsp;kh&ocirc;ng gian ở đ&acirc;y&nbsp;tho&aacute;ng m&aacute;t v&agrave; dễ chịu. Hệ thống đ&egrave;n chiếu s&aacute;ng LED chống ch&oacute;i&nbsp;hiện đại được bố tr&iacute; đều tr&ecirc;n s&acirc;n, đảm bảo cung cấp đủ &aacute;nh s&aacute;ng cho việc chơi Pickleball cả ban ng&agrave;y lẫn ban đ&ecirc;m. Mặt s&acirc;n chất lượng, thảm x&aacute;m đạt chuẩn thi đấu, lu&ocirc;n được vệ sinh sạch sẽ v&agrave; đảm bảo độ b&aacute;m tốt. Khu vực nghỉ ngơi rộng r&atilde;i, được bố tr&iacute; đầy đủ ghế ngồi v&agrave; quạt m&aacute;y, gi&uacute;p người chơi thư gi&atilde;n sau khi vận động.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-3-1742240019.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-4-1742240019.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n c&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.&nbsp;C&oacute; tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, phục vụ cho người chơi nạp lại năng lượng. B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.&nbsp;Trang thiết bị tại s&acirc;n đều mới, sạch sẽ v&agrave; hiện đại. Những người chơi tại đ&acirc;y đều rất h&ograve;a đồng, th&acirc;n thiện v&agrave; tỏ ra h&agrave;i l&ograve;ng khi trải nghiệm s&acirc;n n&agrave;y.</p>\r\n<p>- Địa chỉ: 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM<br>- Link Map:&nbsp;<a href=\"https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7\">https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7</a><br>- Quy m&ocirc;: 3&nbsp;s&acirc;n<br>- Thời gian hoạt động: Cả ng&agrave;y</p>\r\n<h2><strong>2. Gi&aacute; thu&ecirc; s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-5-1742240020.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>Gi&aacute; thu&ecirc;&nbsp;s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;sẽ&nbsp;dao động&nbsp;từ&nbsp;<strong>70.000đ - 120.000đ/giờ&nbsp;</strong>tuỳ theo giờ chơi. Gi&aacute; c&oacute; thể thay đổi theo t&igrave;nh h&igrave;nh giờ giấc thực tế, nếu bạn muốn biết th&ecirc;m chi tiết gi&aacute; đặt s&acirc;n, c&aacute;c bạn&nbsp;c&oacute; thể li&ecirc;n hệ qua hotline hoặc Zalo của s&acirc;n để được tư vấn nh&eacute;.</p>\r\n<h2><strong>3. C&aacute;c dịch vụ tiện &iacute;ch của s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-6-1742240023.webp\" alt=\"Gian h&agrave;ng vợt tại s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy cung cấp nhiều dịch vụ tiện &iacute;ch để đảm bảo cho người chơi&nbsp;c&oacute; được trải nghiệm tốt nhất:</p>\r\n<p>- Tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, sẵn s&agrave;ng phục vụ cho người chơi nạp lại năng lượng.<br>-&nbsp;B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.<br>-&nbsp;C&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-7-1742240026.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>Tr&ecirc;n đ&acirc;y,&nbsp;<strong>ShopVNB</strong>&nbsp;đ&atilde; chia sẻ đầy đủ&nbsp;th&ocirc;ng tin về địa chỉ, giờ giấc hoạt động cũng như c&aacute;c tiện &iacute;ch của&nbsp;<strong>s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>.&nbsp;C&oacute; thể thấy&nbsp;đ&acirc;y l&agrave; một s&acirc;n chơi&nbsp;chất lượng, đầy đủ c&aacute;c tiện &iacute;ch c&oacute; thể đ&aacute;p ứng hầu hết c&aacute;c nhu cầu của người d&acirc;n&nbsp;tại quận 8, TP.HCM&nbsp;v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận, mang đến&nbsp;những&nbsp;trải nghiệm tốt nhất để&nbsp;tận hưởng niềm đam m&ecirc; với bộ m&ocirc;n cầu l&ocirc;ng. Ngo&agrave;i s&acirc;n n&agrave;y ra, th&igrave; tại quận 8 c&ograve;n c&oacute; nhiều&nbsp;s&acirc;n cầu l&ocirc;ng&nbsp;kh&aacute;c cũng chất lượng kh&ocirc;ng k&eacute;m, c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m qua b&agrave;i viết \"<a href=\"https://shopvnb.com/danh-sach-cac-san-cau-long-quan-8-danh-cho-cac-long-thu.html\">Danh s&aacute;ch c&aacute;c s&acirc;n cầu l&ocirc;ng quận 8 chất lượng d&agrave;nh cho c&aacute;c l&ocirc;ng thủ</a>\" để c&oacute; được sự lựa chọn ph&ugrave; hợp nhất nh&eacute;.</p>', '2025-05-05 00:00:00', '', 'image/428613872_2204287163236290_1377508932156888239_n_953505.jpg', 5),
(13, 'MT09 Sân cầu lông & Pickleball Tô Ký với không gian rộng rãi, thoáng mát', '<p><em>B&agrave;i viết được&nbsp;<a href=\"https://shopvnb.com/\" target=\"_blank\" rel=\"noopener\">ShopVNB</a>&nbsp;-&nbsp;<a href=\"https://shopvnb.com/he-thong-cua-hang\" target=\"_blank\" rel=\"noopener\">Hệ thống shop cầu l&ocirc;ng</a>&nbsp;h&agrave;ng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium v&agrave; 68 chi nh&aacute;nh tr&ecirc;n to&agrave;n quốc kiểm duyệt v&agrave; chia sẻ.</em></p>\r\n<p><a href=\"https://shopvnb.com/san-cau-long-hoang-vy.html\"><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></a>&nbsp;với&nbsp;mặt s&acirc;n đẹp, c&aacute;c dịch vụ tiện &iacute;ch đầy đủ&nbsp;v&agrave; được biết đến&nbsp;l&agrave; một trong những cụm s&acirc;n&nbsp;cầu l&ocirc;ng&nbsp;chất lượng tại quận 8, TP.HCM. Nơi đ&acirc;y được trang bị đầy đủ cơ sở vật chất, đ&aacute;p ứng được hầu hết&nbsp;nhu cầu của người chơi khi đến đ&acirc;y trải nghiệm.&nbsp;H&atilde;y c&ugrave;ng&nbsp;<strong>ShopVNB</strong>&nbsp;t&igrave;m hiểu chi tiết về s&acirc;n cầu n&agrave;y&nbsp;qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DL9awSFdWxk\" width=\"800\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<h2><strong>1. Giới thiệu s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>&nbsp;tọa lạc tại số 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM, đường đi đến s&acirc;n n&agrave;y cũng kh&aacute; thuận tiện cho việc di chuyển.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-1-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n ngo&agrave;i s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-2-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;c&oacute; quy m&ocirc; gồm 3&nbsp;s&acirc;n trong nh&agrave;,&nbsp;kh&ocirc;ng gian ở đ&acirc;y&nbsp;tho&aacute;ng m&aacute;t v&agrave; dễ chịu. Hệ thống đ&egrave;n chiếu s&aacute;ng LED chống ch&oacute;i&nbsp;hiện đại được bố tr&iacute; đều tr&ecirc;n s&acirc;n, đảm bảo cung cấp đủ &aacute;nh s&aacute;ng cho việc chơi Pickleball cả ban ng&agrave;y lẫn ban đ&ecirc;m. Mặt s&acirc;n chất lượng, thảm x&aacute;m đạt chuẩn thi đấu, lu&ocirc;n được vệ sinh sạch sẽ v&agrave; đảm bảo độ b&aacute;m tốt. Khu vực nghỉ ngơi rộng r&atilde;i, được bố tr&iacute; đầy đủ ghế ngồi v&agrave; quạt m&aacute;y, gi&uacute;p người chơi thư gi&atilde;n sau khi vận động.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-3-1742240019.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-4-1742240019.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n c&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.&nbsp;C&oacute; tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, phục vụ cho người chơi nạp lại năng lượng. B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.&nbsp;Trang thiết bị tại s&acirc;n đều mới, sạch sẽ v&agrave; hiện đại. Những người chơi tại đ&acirc;y đều rất h&ograve;a đồng, th&acirc;n thiện v&agrave; tỏ ra h&agrave;i l&ograve;ng khi trải nghiệm s&acirc;n n&agrave;y.</p>\r\n<p>- Địa chỉ: 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM<br>- Link Map:&nbsp;<a href=\"https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7\">https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7</a><br>- Quy m&ocirc;: 3&nbsp;s&acirc;n<br>- Thời gian hoạt động: Cả ng&agrave;y</p>\r\n<h2><strong>2. Gi&aacute; thu&ecirc; s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-5-1742240020.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>Gi&aacute; thu&ecirc;&nbsp;s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;sẽ&nbsp;dao động&nbsp;từ&nbsp;<strong>70.000đ - 120.000đ/giờ&nbsp;</strong>tuỳ theo giờ chơi. Gi&aacute; c&oacute; thể thay đổi theo t&igrave;nh h&igrave;nh giờ giấc thực tế, nếu bạn muốn biết th&ecirc;m chi tiết gi&aacute; đặt s&acirc;n, c&aacute;c bạn&nbsp;c&oacute; thể li&ecirc;n hệ qua hotline hoặc Zalo của s&acirc;n để được tư vấn nh&eacute;.</p>\r\n<h2><strong>3. C&aacute;c dịch vụ tiện &iacute;ch của s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-6-1742240023.webp\" alt=\"Gian h&agrave;ng vợt tại s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy cung cấp nhiều dịch vụ tiện &iacute;ch để đảm bảo cho người chơi&nbsp;c&oacute; được trải nghiệm tốt nhất:</p>\r\n<p>- Tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, sẵn s&agrave;ng phục vụ cho người chơi nạp lại năng lượng.<br>-&nbsp;B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.<br>-&nbsp;C&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-7-1742240026.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>Tr&ecirc;n đ&acirc;y,&nbsp;<strong>ShopVNB</strong>&nbsp;đ&atilde; chia sẻ đầy đủ&nbsp;th&ocirc;ng tin về địa chỉ, giờ giấc hoạt động cũng như c&aacute;c tiện &iacute;ch của&nbsp;<strong>s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>.&nbsp;C&oacute; thể thấy&nbsp;đ&acirc;y l&agrave; một s&acirc;n chơi&nbsp;chất lượng, đầy đủ c&aacute;c tiện &iacute;ch c&oacute; thể đ&aacute;p ứng hầu hết c&aacute;c nhu cầu của người d&acirc;n&nbsp;tại quận 8, TP.HCM&nbsp;v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận, mang đến&nbsp;những&nbsp;trải nghiệm tốt nhất để&nbsp;tận hưởng niềm đam m&ecirc; với bộ m&ocirc;n cầu l&ocirc;ng. Ngo&agrave;i s&acirc;n n&agrave;y ra, th&igrave; tại quận 8 c&ograve;n c&oacute; nhiều&nbsp;s&acirc;n cầu l&ocirc;ng&nbsp;kh&aacute;c cũng chất lượng kh&ocirc;ng k&eacute;m, c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m qua b&agrave;i viết \"<a href=\"https://shopvnb.com/danh-sach-cac-san-cau-long-quan-8-danh-cho-cac-long-thu.html\">Danh s&aacute;ch c&aacute;c s&acirc;n cầu l&ocirc;ng quận 8 chất lượng d&agrave;nh cho c&aacute;c l&ocirc;ng thủ</a>\" để c&oacute; được sự lựa chọn ph&ugrave; hợp nhất nh&eacute;.</p>', '2025-05-05 10:46:04', '', 'image/428613872_2204287163236290_1377508932156888239_n_222634.jpg', 5),
(14, 'MT09 Sân cầu lông & Pickleball Tô Ký với không gian rộng rãi, thoáng mát', '<p><em>B&agrave;i viết được&nbsp;<a href=\"https://shopvnb.com/\" target=\"_blank\" rel=\"noopener\">ShopVNB</a>&nbsp;-&nbsp;<a href=\"https://shopvnb.com/he-thong-cua-hang\" target=\"_blank\" rel=\"noopener\">Hệ thống shop cầu l&ocirc;ng</a>&nbsp;h&agrave;ng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium v&agrave; 68 chi nh&aacute;nh tr&ecirc;n to&agrave;n quốc kiểm duyệt v&agrave; chia sẻ.</em></p>\r\n<p><a href=\"https://shopvnb.com/san-cau-long-hoang-vy.html\"><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></a>&nbsp;với&nbsp;mặt s&acirc;n đẹp, c&aacute;c dịch vụ tiện &iacute;ch đầy đủ&nbsp;v&agrave; được biết đến&nbsp;l&agrave; một trong những cụm s&acirc;n&nbsp;cầu l&ocirc;ng&nbsp;chất lượng tại quận 8, TP.HCM. Nơi đ&acirc;y được trang bị đầy đủ cơ sở vật chất, đ&aacute;p ứng được hầu hết&nbsp;nhu cầu của người chơi khi đến đ&acirc;y trải nghiệm.&nbsp;H&atilde;y c&ugrave;ng&nbsp;<strong>ShopVNB</strong>&nbsp;t&igrave;m hiểu chi tiết về s&acirc;n cầu n&agrave;y&nbsp;qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DL9awSFdWxk\" width=\"800\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<h2><strong>1. Giới thiệu s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>&nbsp;tọa lạc tại số 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM, đường đi đến s&acirc;n n&agrave;y cũng kh&aacute; thuận tiện cho việc di chuyển.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-1-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n ngo&agrave;i s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-2-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;c&oacute; quy m&ocirc; gồm 3&nbsp;s&acirc;n trong nh&agrave;,&nbsp;kh&ocirc;ng gian ở đ&acirc;y&nbsp;tho&aacute;ng m&aacute;t v&agrave; dễ chịu. Hệ thống đ&egrave;n chiếu s&aacute;ng LED chống ch&oacute;i&nbsp;hiện đại được bố tr&iacute; đều tr&ecirc;n s&acirc;n, đảm bảo cung cấp đủ &aacute;nh s&aacute;ng cho việc chơi Pickleball cả ban ng&agrave;y lẫn ban đ&ecirc;m. Mặt s&acirc;n chất lượng, thảm x&aacute;m đạt chuẩn thi đấu, lu&ocirc;n được vệ sinh sạch sẽ v&agrave; đảm bảo độ b&aacute;m tốt. Khu vực nghỉ ngơi rộng r&atilde;i, được bố tr&iacute; đầy đủ ghế ngồi v&agrave; quạt m&aacute;y, gi&uacute;p người chơi thư gi&atilde;n sau khi vận động.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-3-1742240019.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-4-1742240019.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n c&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.&nbsp;C&oacute; tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, phục vụ cho người chơi nạp lại năng lượng. B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.&nbsp;Trang thiết bị tại s&acirc;n đều mới, sạch sẽ v&agrave; hiện đại. Những người chơi tại đ&acirc;y đều rất h&ograve;a đồng, th&acirc;n thiện v&agrave; tỏ ra h&agrave;i l&ograve;ng khi trải nghiệm s&acirc;n n&agrave;y.</p>\r\n<p>- Địa chỉ: 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM<br>- Link Map:&nbsp;<a href=\"https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7\">https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7</a><br>- Quy m&ocirc;: 3&nbsp;s&acirc;n<br>- Thời gian hoạt động: Cả ng&agrave;y</p>\r\n<h2><strong>2. Gi&aacute; thu&ecirc; s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-5-1742240020.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>Gi&aacute; thu&ecirc;&nbsp;s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;sẽ&nbsp;dao động&nbsp;từ&nbsp;<strong>70.000đ - 120.000đ/giờ&nbsp;</strong>tuỳ theo giờ chơi. Gi&aacute; c&oacute; thể thay đổi theo t&igrave;nh h&igrave;nh giờ giấc thực tế, nếu bạn muốn biết th&ecirc;m chi tiết gi&aacute; đặt s&acirc;n, c&aacute;c bạn&nbsp;c&oacute; thể li&ecirc;n hệ qua hotline hoặc Zalo của s&acirc;n để được tư vấn nh&eacute;.</p>\r\n<h2><strong>3. C&aacute;c dịch vụ tiện &iacute;ch của s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-6-1742240023.webp\" alt=\"Gian h&agrave;ng vợt tại s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy cung cấp nhiều dịch vụ tiện &iacute;ch để đảm bảo cho người chơi&nbsp;c&oacute; được trải nghiệm tốt nhất:</p>\r\n<p>- Tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, sẵn s&agrave;ng phục vụ cho người chơi nạp lại năng lượng.<br>-&nbsp;B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.<br>-&nbsp;C&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-7-1742240026.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>Tr&ecirc;n đ&acirc;y,&nbsp;<strong>ShopVNB</strong>&nbsp;đ&atilde; chia sẻ đầy đủ&nbsp;th&ocirc;ng tin về địa chỉ, giờ giấc hoạt động cũng như c&aacute;c tiện &iacute;ch của&nbsp;<strong>s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>.&nbsp;C&oacute; thể thấy&nbsp;đ&acirc;y l&agrave; một s&acirc;n chơi&nbsp;chất lượng, đầy đủ c&aacute;c tiện &iacute;ch c&oacute; thể đ&aacute;p ứng hầu hết c&aacute;c nhu cầu của người d&acirc;n&nbsp;tại quận 8, TP.HCM&nbsp;v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận, mang đến&nbsp;những&nbsp;trải nghiệm tốt nhất để&nbsp;tận hưởng niềm đam m&ecirc; với bộ m&ocirc;n cầu l&ocirc;ng. Ngo&agrave;i s&acirc;n n&agrave;y ra, th&igrave; tại quận 8 c&ograve;n c&oacute; nhiều&nbsp;s&acirc;n cầu l&ocirc;ng&nbsp;kh&aacute;c cũng chất lượng kh&ocirc;ng k&eacute;m, c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m qua b&agrave;i viết \"<a href=\"https://shopvnb.com/danh-sach-cac-san-cau-long-quan-8-danh-cho-cac-long-thu.html\">Danh s&aacute;ch c&aacute;c s&acirc;n cầu l&ocirc;ng quận 8 chất lượng d&agrave;nh cho c&aacute;c l&ocirc;ng thủ</a>\" để c&oacute; được sự lựa chọn ph&ugrave; hợp nhất nh&eacute;.</p>', '2025-05-05 10:46:09', '', 'image/428613872_2204287163236290_1377508932156888239_n_836026.jpg', 5),
(15, 'MT09 Sân cầu lông & Pickleball Tô Ký với không gian rộng rãi, thoáng mát', '<p><em>B&agrave;i viết được&nbsp;<a href=\"https://shopvnb.com/\" target=\"_blank\" rel=\"noopener\">ShopVNB</a>&nbsp;-&nbsp;<a href=\"https://shopvnb.com/he-thong-cua-hang\" target=\"_blank\" rel=\"noopener\">Hệ thống shop cầu l&ocirc;ng</a>&nbsp;h&agrave;ng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium v&agrave; 68 chi nh&aacute;nh tr&ecirc;n to&agrave;n quốc kiểm duyệt v&agrave; chia sẻ.</em></p>\r\n<p><a href=\"https://shopvnb.com/san-cau-long-hoang-vy.html\"><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></a>&nbsp;với&nbsp;mặt s&acirc;n đẹp, c&aacute;c dịch vụ tiện &iacute;ch đầy đủ&nbsp;v&agrave; được biết đến&nbsp;l&agrave; một trong những cụm s&acirc;n&nbsp;cầu l&ocirc;ng&nbsp;chất lượng tại quận 8, TP.HCM. Nơi đ&acirc;y được trang bị đầy đủ cơ sở vật chất, đ&aacute;p ứng được hầu hết&nbsp;nhu cầu của người chơi khi đến đ&acirc;y trải nghiệm.&nbsp;H&atilde;y c&ugrave;ng&nbsp;<strong>ShopVNB</strong>&nbsp;t&igrave;m hiểu chi tiết về s&acirc;n cầu n&agrave;y&nbsp;qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DL9awSFdWxk\" width=\"800\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<h2><strong>1. Giới thiệu s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>&nbsp;tọa lạc tại số 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM, đường đi đến s&acirc;n n&agrave;y cũng kh&aacute; thuận tiện cho việc di chuyển.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-1-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n ngo&agrave;i s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-2-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;c&oacute; quy m&ocirc; gồm 3&nbsp;s&acirc;n trong nh&agrave;,&nbsp;kh&ocirc;ng gian ở đ&acirc;y&nbsp;tho&aacute;ng m&aacute;t v&agrave; dễ chịu. Hệ thống đ&egrave;n chiếu s&aacute;ng LED chống ch&oacute;i&nbsp;hiện đại được bố tr&iacute; đều tr&ecirc;n s&acirc;n, đảm bảo cung cấp đủ &aacute;nh s&aacute;ng cho việc chơi Pickleball cả ban ng&agrave;y lẫn ban đ&ecirc;m. Mặt s&acirc;n chất lượng, thảm x&aacute;m đạt chuẩn thi đấu, lu&ocirc;n được vệ sinh sạch sẽ v&agrave; đảm bảo độ b&aacute;m tốt. Khu vực nghỉ ngơi rộng r&atilde;i, được bố tr&iacute; đầy đủ ghế ngồi v&agrave; quạt m&aacute;y, gi&uacute;p người chơi thư gi&atilde;n sau khi vận động.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-3-1742240019.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-4-1742240019.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n c&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.&nbsp;C&oacute; tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, phục vụ cho người chơi nạp lại năng lượng. B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.&nbsp;Trang thiết bị tại s&acirc;n đều mới, sạch sẽ v&agrave; hiện đại. Những người chơi tại đ&acirc;y đều rất h&ograve;a đồng, th&acirc;n thiện v&agrave; tỏ ra h&agrave;i l&ograve;ng khi trải nghiệm s&acirc;n n&agrave;y.</p>\r\n<p>- Địa chỉ: 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM<br>- Link Map:&nbsp;<a href=\"https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7\">https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7</a><br>- Quy m&ocirc;: 3&nbsp;s&acirc;n<br>- Thời gian hoạt động: Cả ng&agrave;y</p>\r\n<h2><strong>2. Gi&aacute; thu&ecirc; s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-5-1742240020.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>Gi&aacute; thu&ecirc;&nbsp;s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;sẽ&nbsp;dao động&nbsp;từ&nbsp;<strong>70.000đ - 120.000đ/giờ&nbsp;</strong>tuỳ theo giờ chơi. Gi&aacute; c&oacute; thể thay đổi theo t&igrave;nh h&igrave;nh giờ giấc thực tế, nếu bạn muốn biết th&ecirc;m chi tiết gi&aacute; đặt s&acirc;n, c&aacute;c bạn&nbsp;c&oacute; thể li&ecirc;n hệ qua hotline hoặc Zalo của s&acirc;n để được tư vấn nh&eacute;.</p>\r\n<h2><strong>3. C&aacute;c dịch vụ tiện &iacute;ch của s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-6-1742240023.webp\" alt=\"Gian h&agrave;ng vợt tại s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy cung cấp nhiều dịch vụ tiện &iacute;ch để đảm bảo cho người chơi&nbsp;c&oacute; được trải nghiệm tốt nhất:</p>\r\n<p>- Tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, sẵn s&agrave;ng phục vụ cho người chơi nạp lại năng lượng.<br>-&nbsp;B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.<br>-&nbsp;C&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-7-1742240026.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>Tr&ecirc;n đ&acirc;y,&nbsp;<strong>ShopVNB</strong>&nbsp;đ&atilde; chia sẻ đầy đủ&nbsp;th&ocirc;ng tin về địa chỉ, giờ giấc hoạt động cũng như c&aacute;c tiện &iacute;ch của&nbsp;<strong>s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>.&nbsp;C&oacute; thể thấy&nbsp;đ&acirc;y l&agrave; một s&acirc;n chơi&nbsp;chất lượng, đầy đủ c&aacute;c tiện &iacute;ch c&oacute; thể đ&aacute;p ứng hầu hết c&aacute;c nhu cầu của người d&acirc;n&nbsp;tại quận 8, TP.HCM&nbsp;v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận, mang đến&nbsp;những&nbsp;trải nghiệm tốt nhất để&nbsp;tận hưởng niềm đam m&ecirc; với bộ m&ocirc;n cầu l&ocirc;ng. Ngo&agrave;i s&acirc;n n&agrave;y ra, th&igrave; tại quận 8 c&ograve;n c&oacute; nhiều&nbsp;s&acirc;n cầu l&ocirc;ng&nbsp;kh&aacute;c cũng chất lượng kh&ocirc;ng k&eacute;m, c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m qua b&agrave;i viết \"<a href=\"https://shopvnb.com/danh-sach-cac-san-cau-long-quan-8-danh-cho-cac-long-thu.html\">Danh s&aacute;ch c&aacute;c s&acirc;n cầu l&ocirc;ng quận 8 chất lượng d&agrave;nh cho c&aacute;c l&ocirc;ng thủ</a>\" để c&oacute; được sự lựa chọn ph&ugrave; hợp nhất nh&eacute;.</p>', '2025-05-05 10:46:12', '', 'image/428613872_2204287163236290_1377508932156888239_n_241709.jpg', 5),
(18, ' Sân cầu lông & Pickleball Tô Ký với không gian rộng rãi, thoáng mát', '<p>B&agrave;i viết được ShopVNB - Hệ thống shop cầu l&ocirc;ng h&agrave;ng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium v&agrave; 68 chi nh&aacute;nh tr&ecirc;n to&agrave;n quốc kiểm duyệt v&agrave; chia sẻ.&nbsp;S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy với mặt s&acirc;n đẹp, c&aacute;c dịch vụ tiện &iacute;ch đầy đủ v&agrave; được biết đến l&agrave; một trong những cụm s&acirc;n cầu l&ocirc;ng chất lượng tại quận 8, TP.HCM. Nơi đ&acirc;y được trang bị đầy đủ cơ sở vật chất, đ&aacute;p ứng được hầu hết nhu cầu của người chơi khi đến đ&acirc;y trải nghiệm. H&atilde;y c&ugrave;ng ShopVNB t&igrave;m hiểu chi tiết về s&acirc;n cầu n&agrave;y qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/DL9awSFdWxk\" width=\"800\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<h2><strong>1. Giới thiệu s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>&nbsp;tọa lạc tại số 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM, đường đi đến s&acirc;n n&agrave;y cũng kh&aacute; thuận tiện cho việc di chuyển.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-1-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n ngo&agrave;i s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-2-1742240016.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;c&oacute; quy m&ocirc; gồm 3&nbsp;s&acirc;n trong nh&agrave;,&nbsp;kh&ocirc;ng gian ở đ&acirc;y&nbsp;tho&aacute;ng m&aacute;t v&agrave; dễ chịu. Hệ thống đ&egrave;n chiếu s&aacute;ng LED chống ch&oacute;i&nbsp;hiện đại được bố tr&iacute; đều tr&ecirc;n s&acirc;n, đảm bảo cung cấp đủ &aacute;nh s&aacute;ng cho việc chơi Pickleball cả ban ng&agrave;y lẫn ban đ&ecirc;m. Mặt s&acirc;n chất lượng, thảm x&aacute;m đạt chuẩn thi đấu, lu&ocirc;n được vệ sinh sạch sẽ v&agrave; đảm bảo độ b&aacute;m tốt. Khu vực nghỉ ngơi rộng r&atilde;i, được bố tr&iacute; đầy đủ ghế ngồi v&agrave; quạt m&aacute;y, gi&uacute;p người chơi thư gi&atilde;n sau khi vận động.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-3-1742240019.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-4-1742240019.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>S&acirc;n c&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.&nbsp;C&oacute; tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, phục vụ cho người chơi nạp lại năng lượng. B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.&nbsp;Trang thiết bị tại s&acirc;n đều mới, sạch sẽ v&agrave; hiện đại. Những người chơi tại đ&acirc;y đều rất h&ograve;a đồng, th&acirc;n thiện v&agrave; tỏ ra h&agrave;i l&ograve;ng khi trải nghiệm s&acirc;n n&agrave;y.</p>\r\n<p>- Địa chỉ: 218/6 An Dương Vương, Phường 16, Quận 8, TP.HCM<br>- Link Map:&nbsp;<a href=\"https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7\">https://maps.app.goo.gl/wgyvDpyxtaUXihUJ7</a><br>- Quy m&ocirc;: 3&nbsp;s&acirc;n<br>- Thời gian hoạt động: Cả ng&agrave;y</p>\r\n<h2><strong>2. Gi&aacute; thu&ecirc; s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-5-1742240020.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>Gi&aacute; thu&ecirc;&nbsp;s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy&nbsp;sẽ&nbsp;dao động&nbsp;từ&nbsp;<strong>70.000đ - 120.000đ/giờ&nbsp;</strong>tuỳ theo giờ chơi. Gi&aacute; c&oacute; thể thay đổi theo t&igrave;nh h&igrave;nh giờ giấc thực tế, nếu bạn muốn biết th&ecirc;m chi tiết gi&aacute; đặt s&acirc;n, c&aacute;c bạn&nbsp;c&oacute; thể li&ecirc;n hệ qua hotline hoặc Zalo của s&acirc;n để được tư vấn nh&eacute;.</p>\r\n<h2><strong>3. C&aacute;c dịch vụ tiện &iacute;ch của s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-6-1742240023.webp\" alt=\"Gian h&agrave;ng vợt tại s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></strong></p>\r\n<p>S&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy cung cấp nhiều dịch vụ tiện &iacute;ch để đảm bảo cho người chơi&nbsp;c&oacute; được trải nghiệm tốt nhất:</p>\r\n<p>- Tủ lạnh đựng nước giải kh&aacute;t v&ocirc; c&ugrave;ng tiện lợi, sẵn s&agrave;ng phục vụ cho người chơi nạp lại năng lượng.<br>-&nbsp;B&atilde;i giữ xe rộng r&atilde;i, c&oacute; thể chứa&nbsp;được trăm chiếc&nbsp;xe m&aacute;y.<br>-&nbsp;C&oacute; cho thu&ecirc; vợt để đ&aacute;nh v&agrave; b&aacute;n c&aacute;c phụ kiện cầu l&ocirc;ng như quấn c&aacute;n, vớ, ống cầu.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-hoang-vy-7-1742240026.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy\"></p>\r\n<p>Tr&ecirc;n đ&acirc;y,&nbsp;<strong>ShopVNB</strong>&nbsp;đ&atilde; chia sẻ đầy đủ&nbsp;th&ocirc;ng tin về địa chỉ, giờ giấc hoạt động cũng như c&aacute;c tiện &iacute;ch của&nbsp;<strong>s&acirc;n cầu l&ocirc;ng Ho&agrave;ng Vy</strong>.&nbsp;C&oacute; thể thấy&nbsp;đ&acirc;y l&agrave; một s&acirc;n chơi&nbsp;chất lượng, đầy đủ c&aacute;c tiện &iacute;ch c&oacute; thể đ&aacute;p ứng hầu hết c&aacute;c nhu cầu của người d&acirc;n&nbsp;tại quận 8, TP.HCM&nbsp;v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận, mang đến&nbsp;những&nbsp;trải nghiệm tốt nhất để&nbsp;tận hưởng niềm đam m&ecirc; với bộ m&ocirc;n cầu l&ocirc;ng. Ngo&agrave;i s&acirc;n n&agrave;y ra, th&igrave; tại quận 8 c&ograve;n c&oacute; nhiều&nbsp;s&acirc;n cầu l&ocirc;ng&nbsp;kh&aacute;c cũng chất lượng kh&ocirc;ng k&eacute;m, c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m qua b&agrave;i viết \"<a href=\"https://shopvnb.com/danh-sach-cac-san-cau-long-quan-8-danh-cho-cac-long-thu.html\">Danh s&aacute;ch c&aacute;c s&acirc;n cầu l&ocirc;ng quận 8 chất lượng d&agrave;nh cho c&aacute;c l&ocirc;ng thủ</a>\" để c&oacute; được sự lựa chọn ph&ugrave; hợp nhất nh&eacute;.</p>', '2025-05-05 12:29:36', '', 'image/z6547713729296_816fff92302924ebaa185220d596b18c_969519.jpg', 0),
(20, 'Hình nền Lining là lựa chọn lý tưởng cho những ai yêu thích thể thao và muốn thể hiện cá tính', '<p><em>Bài viết được <a href=\"https://shopvnb.com/\" target=\"_blank\" rel=\"noopener\">ShopVNB</a> - <a href=\"https://shopvnb.com/he-thong-cua-hang\" target=\"_blank\" rel=\"noopener\">Hệ thống shop cầu lông</a> hàng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium và 68 chi nhánh trên toàn quốc kiểm duyệt và chia sẻ.</em></p>\r\n<p>Lining là một thương hiệu thể thao nổi tiếng, đặc biệt trong lĩnh vực cầu lông, với những sản phẩm được người dùng yêu thích nhờ chất lượng vượt trội và thiết kế tinh tế. Việc lựa chọn hình nền Lining không chỉ bày tỏ sự hâm mộ mà còn thể hiện nét thẩm mỹ đầy mạnh mẽ, phản ánh niềm đam mê và sự nhiệt huyết. Chính vì vậy, <a href=\"https://shopvnb.com/hinh-nen-lining.html\">hình nền Lining</a> trở thành lựa chọn hoàn hảo cho những ai muốn thể hiện phong cách thể thao, cá tính trên thiết bị của mình.</p>\r\n<h2><strong>1. Những loại hình nền Lining phổ biến</strong></h2>\r\n<p style=\"text-align: center;\"><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/hinh-nen-lining-1-1737492880.webp\" alt=\"Những loại hình nền Lining phổ biến\"></strong></p>\r\n<p>- Hình khoảng khắc trong các trận đấu cầu lông: Những bức ảnh ghi lại khoảnh khắc trong các trận đấu hấp dẫn luôn là lựa chọn phổ biến. Hình ảnh các vận động viên đỉnh cao với những cú đánh mạnh mẽ, không khí căng thẳng của các giải đấu quốc tế… Tất cả đều được tái hiện sinh động.</p>\r\n<p>- Logo Lining: Với thiết kế đơn giản nhưng mạnh mẽ, cũng là một lựa chọn tuyệt vời cho những ai yêu thích sự tối giản và phong cách. Hình nền này giúp bạn khẳng định sự gắn kết với thương hiệu thể thao nổi tiếng này.</p>\r\n<p>- Vận động viên nổi tiếng: Các hình ảnh về các vận động viên cầu lông nổi tiếng, những người đồng hành với Lining trong các giải đấu quốc tế, cũng là lựa chọn được nhiều người ưa chuộng. Những bức ảnh này mang đến cảm hứng và thể hiện sự kết nối với những thần tượng trong lĩnh vực thể thao.</p>\r\n<p>- Sản phẩm Lining: Bên cạnh những hình ảnh về vận động viên, hình nền Lining còn có những bức ảnh về các sản phẩm thể thao của hãng, như vợt cầu lông, giày thể thao, trang phục thi đấu. Điều này giúp người dùng thể hiện niềm đam mê với các sản phẩm chất lượng của thương hiệu.</p>\r\n<h2><strong>2. Lưu ý khi chọn hình nền Lining cho thiết bị cá nhân</strong></h2>\r\n<p>- Đảm bảo bạn tải ảnh có độ phân giải cao để đảm bảo hình ảnh rõ nét khi sử dụng làm màn hình nền.</p>\r\n<p>- Tương thích với màn hình: Kiểm tra kích thước và tỷ lệ hình ảnh để phù hợp với màn hình thiết bị của bạn.</p>\r\n<h2><strong>3. Tổng hợp bộ hình nền Lining dành cho thiết bị của bạn</strong></h2>\r\n<p style=\"text-align: center;\"><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/hinh-nen-lining-2-1737492881.webp\" alt=\"Hình nền Lining\"></p>\r\n<p style=\"text-align: center;\"><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/hinh-nen-lining-3-1737492881.webp\" alt=\"Hình nền Lining\"></p>\r\n<p style=\"text-align: center;\"><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/hinh-nen-lining-4-1737492881.webp\" alt=\"Hình nền Lining\"></p>\r\n<p style=\"text-align: center;\"><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/hinh-nen-lining-5-1737492881.webp\" alt=\"Hình nền Lining\"></p>\r\n<p style=\"text-align: center;\"><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/hinh-nen-lining-6-1737492881.webp\" alt=\"Hình nền Lining\"></p>\r\n<p>Hình nền Lining là lựa chọn lý tưởng cho những ai yêu thích thể thao và muốn thể hiện cá tính, phong cách của mình. Những hình ảnh đẹp mắt, mạnh mẽ và chất lượng cao chắc chắn sẽ mang đến cho bạn một không gian sống động và đầy cảm hứng.</p>\r\n<p><strong>Xem thêm:</strong> <a href=\"https://shopvnb.com/hinh-nen-cau-long-yonex.html\">Top hình nền cầu lông Yonex được tải nhiều nhất</a></p>', '2025-05-05 17:51:15', '', 'image/487128625_3028458447307252_6739059441355781543_n_469192.jpg', 0),
(21, 'Hellooo Tìm hiểu về giày Lightning và những thương hiệu giày cầu lông hàng đầu trên thị trường', '<p><em>B&agrave;i viết được&nbsp;<a href=\"https://shopvnb.com/\" target=\"_blank\" rel=\"noopener\">ShopVNB</a>&nbsp;-&nbsp;<a href=\"https://shopvnb.com/he-thong-cua-hang\" target=\"_blank\" rel=\"noopener\">Hệ thống shop cầu l&ocirc;ng</a>&nbsp;h&agrave;ng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium v&agrave; 68 chi nh&aacute;nh tr&ecirc;n to&agrave;n quốc kiểm duyệt v&agrave; chia sẻ.</em></p>\r\n<p>Gi&agrave;y l&agrave; một trong những phụ kiện kh&ocirc;ng thể thiếu trong bộ m&ocirc;n cầu l&ocirc;ng, việc lựa chọn một đ&ocirc;i gi&agrave;y đạt chuẩn kh&ocirc;ng chỉ đảm bảo t&iacute;nh thẩm mỹ m&agrave; c&ograve;n gi&uacute;p n&acirc;ng cao hiệu suất thi đấu. Trong đ&oacute;, gi&agrave;y Lightning đang được nhiều người chơi quan t&acirc;m. B&agrave;i viết n&agrave;y sẽ gi&uacute;p bạn t&igrave;m hiểu về&nbsp;<a href=\"https://shopvnb.com/giay-lightning.html\">gi&agrave;y Lightning</a>&nbsp;v&agrave; những thương hiệu gi&agrave;y cầu l&ocirc;ng h&agrave;ng đầu hiện nay.</p>\r\n<h2><strong>1. Gi&agrave;y Lightning l&agrave; g&igrave;?</strong></h2>\r\n<p>Gi&agrave;y Lightning l&agrave; t&ecirc;n gọi của một d&ograve;ng sản phẩm gi&agrave;y cầu l&ocirc;ng của một thương hiệu, được thiết kế tập trung v&agrave;o t&iacute;nh linh hoạt, độ b&aacute;m s&acirc;n v&agrave; khả năng hấp thụ lực khi bật nhảy, di chuyển. Gi&agrave;y c&oacute; một số đặc điểm nổi bật như trọng lượng nhẹ gi&uacute;p người chơi di chuyển nhanh v&agrave; nhẹ nh&agrave;ng. Được thiết kế c&ocirc;ng nghệ đệm gi&uacute;p bảo vệ khớp gối v&agrave; cổ ch&acirc;n, đế cao su chống trơn trượt hiệu qua. Ngo&agrave;i ra, gi&agrave;y c&ograve;n c&oacute; thiết kế&nbsp;ngoại h&igrave;nh đẹp mắt, thời trang v&agrave; hiện đại.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/giay-lightning-1-1737490164.webp\" alt=\"Gi&agrave;y Lightning\"></p>\r\n<h2><strong>2. L&yacute; do n&ecirc;n chọn gi&agrave;y Lightning</strong></h2>\r\n<p>Gi&agrave;y Lightning kh&ocirc;ng chỉ gi&uacute;p n&acirc;ng cao t&iacute;nh thẩm mỹ nhờ ngoại h&igrave;nh đẹp mắt m&agrave; c&ograve;n gi&uacute;p n&acirc;ng cao hiệu suất nhờ thiết kế c&oacute; t&iacute;nh linh hoạt, gi&uacute;p người chơi c&oacute; thể di chuyển nhanh nhẹn, thoải m&aacute;i v&agrave; bảo vệ khỏi c&aacute;c chấn thương khi tham gia c&aacute;c bộ m&ocirc;n thể thao c&oacute; cường độ cao như cầu l&ocirc;ng.</p>\r\n<h2><strong>3. Những thương hiệu gi&agrave;y cầu l&ocirc;ng h&agrave;ng đầu hiện nay</strong></h2>\r\n<p>Hiện nay, tr&ecirc;n thị trường c&ograve;n rất nhiều thương hiệu gi&agrave;y cầu l&ocirc;ng chất lượng được nhiều l&ocirc;ng thủ từ người mới đến chuy&ecirc;n nghiệp tin d&ugrave;ng như:</p>\r\n<h3><strong>3.1 Thương hiệu gi&agrave;y cầu l&ocirc;ng Yonex</strong></h3>\r\n<p>Yonex l&agrave; một trong những thương hiệu h&agrave;ng đầu v&agrave; kh&ocirc;ng hề xa lạ với c&aacute;c l&ocirc;ng thủ. Nổi tiếng với việc ph&aacute;t triển v&agrave; ứng dụng những c&ocirc;ng nghệ hiện đại, mang đến sự hỗ trợ tối ưu cho người chơi như c&ocirc;ng nghệ Power Cushion gi&uacute;p hấp thụ lực t&aacute;c động, thiết kế giảm bớt trọng lượng, đảm bảo độ nhẹ nh&agrave;ng, linh hoạt v&agrave; sử dụng chất liệu cao cấp đảm bảo độ bền cao. Yonex c&ograve;n cung cấp nhiều d&ograve;ng sản phẩm ph&ugrave; hợp với nhiều h&igrave;nh d&aacute;ng ch&acirc;n như thon, b&egrave; v&agrave; tr&igrave;nh độ từ mới đến chuy&ecirc;n nghiệp.</p>\r\n<p>C&aacute;c bạn c&oacute; thể tham khảo c&aacute;c phẩm gi&agrave;y cầu l&ocirc;ng Yonex&nbsp;<a href=\"https://shopvnb.com/giay-cau-long-yonex.html\">tại đ&acirc;y</a>.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/giay-lightning-2-1737490164.webp\" alt=\"Thương hiệu gi&agrave;y cầu l&ocirc;ng Yonex\"></p>\r\n<h3><strong>3.2 Thương hiệu gi&agrave;y cầu l&ocirc;ng Lining</strong></h3>\r\n<p>Thương hiệu h&agrave;ng đầu tiếp theo ch&iacute;nh l&agrave; h&atilde;ng Lining. Đ&acirc;y l&agrave; h&atilde;ng gi&agrave;y cũng được nhiều l&ocirc;ng thủ tin d&ugrave;ng với đa dạng mẫu m&atilde;, thiết kế đẹp mắt c&ugrave;ng với c&aacute;c c&ocirc;ng nghệ hiện đại hỗ trợ giảm t&aacute;c động lực khi di chuyển, trơn trượt v&agrave; mang lại độ &ecirc;m &aacute;i, gi&aacute; cả đa dạng, ph&ugrave; hợp với nhiều đối tượng.</p>\r\n<p>Xem th&ecirc;m c&aacute;c mẫu gi&agrave;y cầu l&ocirc;ng Lining&nbsp;<a href=\"https://shopvnb.com/giay-cau-long-lining.html\">tại đ&acirc;y</a>.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/giay-lightning-3-1737490179.jpg\" alt=\"Thương hiệu gi&agrave;y cầu l&ocirc;ng Lining\"></p>\r\n<h3><strong>3.3 Thương hiệu gi&agrave;y cầu l&ocirc;ng Victor</strong></h3>\r\n<p>Victor l&agrave; thương hiệu nổi tiếng của Đ&agrave;i Loan trong việc sản xuất dụng cụ cầu l&ocirc;ng. Gi&agrave;y của thương hiệu n&agrave;y lu&ocirc;n mang kiểu d&aacute;ng hiện đại, bền bỉ v&agrave; hỗ trợ gia tăng hiệu suất hoạt động nhờ c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến. Ngo&agrave;i ra, h&atilde;ng cũng c&oacute; nhiều sản phẩm kết hợp với nhiều nh&acirc;n vật hoạt h&igrave;nh nổi tiếng như Doraemon, Marvel, Dragon Ball... nhằm tăng sự hứng th&uacute; cho c&aacute;c l&ocirc;ng thủ.</p>\r\n<p>Xem nhiều mẫu gi&agrave;y cầu l&ocirc;ng Victor tại link:&nbsp;<a href=\"https://shopvnb.com/giay-cau-long-victor.html\">https://shopvnb.com/giay-cau-long-victor.html</a></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/giay-lightning-4-1737490179.jpg\" alt=\"Thương hiệu gi&agrave;y cầu l&ocirc;ng Victor\"></p>\r\n<h3><strong>3.4 Thương hiệu gi&agrave;y cầu l&ocirc;ng Mizuno</strong></h3>\r\n<p>Mizuno l&agrave; một trong những thương hiệu nổi tiếng với những sản phẩm cao cấp. Nhờ v&agrave;o thiết kế đẹp mắt, c&ocirc;ng nghệ ti&ecirc;n tiến như c&ocirc;ng nghệ hấp thụ lực t&aacute;c động, độ b&aacute;m s&acirc;n chắc chắn, độ &ecirc;m &aacute;i khi mang...chất liệu bền bỉ c&ugrave;ng với kh&acirc;u sản xuất nghi&ecirc;m ngặt gi&uacute;p tạo ra những sản phẩm chất lượng m&agrave; c&aacute;c l&ocirc;ng thủ kh&ocirc;ng thể bỏ qua.</p>\r\n<p>Xem c&aacute;c mẫu gi&agrave;y cầu l&ocirc;ng Mizuno ch&iacute;nh h&atilde;ng&nbsp;<a href=\"https://shopvnb.com/giay-cau-long-mizuno.html\">tại đ&acirc;y</a>.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/giay-lightning-5-1737490164.webp\" alt=\"Thương hiệu gi&agrave;y cầu l&ocirc;ng Mizuno\"></p>\r\n<p>B&agrave;i viết vừa qua, shop VNB đ&atilde; giới thiệu với c&aacute;c bạn về gi&agrave;y Lightning v&agrave; những thương hiệu gi&agrave;y cầu l&ocirc;ng nổi tiếng hiện nay. Mong b&agrave;i viết sẽ gi&uacute;p c&aacute;c bạn biết được th&ecirc;m th&ocirc;ng tin về c&aacute;c h&atilde;ng gi&agrave;y v&agrave; c&oacute; thể t&igrave;m được sản phẩm ưng &yacute; cho bản th&acirc;n.</p>\r\n<p><strong>Xem th&ecirc;m:&nbsp;</strong><a href=\"https://shopvnb.com/giay-cau-long-nut-van.html\">Những mẫu gi&agrave;y cầu l&ocirc;ng n&uacute;t vặn hot nhất tr&ecirc;n thị trường</a></p>', '2025-05-05 20:42:15', '', 'image/310554923_1516009352246507_3043287323475767684_n_287191.jpg', 5);
INSERT INTO `bang_tin_tuc` (`ID_tin`, `Title`, `Noi_dung_tin`, `Ngay_viet`, `Nguoi_viet`, `Link_anh`, `ID_nguoi_viet`) VALUES
(23, 'Khai trương cửa hàng thể thao VNB Super Center với nhiều ưu đãi hấp dẫn', '<p><strong>Cửa h&agrave;ng&nbsp;VNB Super Center</strong>&nbsp;kh&ocirc;ng chỉ l&agrave; nơi mua sắm c&aacute;c sản phẩm thể thao từ gi&aacute; rẻ đến cao cấp, m&agrave; c&ograve;n l&agrave; nơi mang đến&nbsp;nhiều&nbsp;dịch vụ&nbsp;tiện &iacute;ch độc đ&aacute;o, đ&aacute;p ứng được mọi nhu cầu của kh&aacute;ch h&agrave;ng.&nbsp;V&agrave;o ng&agrave;y 15/02/2025<strong>&nbsp;</strong>sẽ tổ chức sự kiện&nbsp;<a href=\"https://shopvnb.com/khai-truong-cua-hang-the-thao-vnb-super-center.html\">khai trương&nbsp;cửa h&agrave;ng thể thao VNB Super Center</a>&nbsp;với nhiều ưu đ&atilde;i hấp dẫn tại&nbsp;<strong>390/2 H&agrave; Huy Gi&aacute;p, Quận 12, Phường Thạnh Lộc, TP. Hồ Ch&iacute; Minh</strong>.&nbsp;V&igrave; vậy, h&atilde;y nhanh ch&acirc;n đến tham gia&nbsp;ng&agrave;y khai trương cửa h&agrave;ng quy m&ocirc; lớn nhất VNB Sports&nbsp;v&agrave; trải nghiệm sự độc đ&aacute;o m&agrave; ch&uacute;ng t&ocirc;i mang lại nh&eacute;.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/cua-hang-the-thao-vnb-super-center-1-1736801008.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n ngo&agrave;i cửa h&agrave;ng thể thao VNB Super Center\"></p>\r\n<h2><strong>1. Chương tr&igrave;nh khuyến m&atilde;i tại&nbsp;cửa h&agrave;ng thể thao VNB Super Center</strong></h2>\r\n<p>Xin mời qu&yacute; kh&aacute;ch đến tham dự&nbsp;sự kiện khai trương cửa h&agrave;ng thể thao VNB Super Center để nhận được&nbsp;nhiều ưu đ&atilde;i đặc biệt. Đ&acirc;y l&agrave; cơ hội lớn cho những người đam m&ecirc; thể thao, đặc biệt l&agrave; c&aacute;c anh em l&ocirc;ng thủ c&oacute; thể&nbsp;mua sắm c&aacute;c&nbsp;phụ kiện,&nbsp;trang phục cầu l&ocirc;ng với gi&aacute; ưu đ&atilde;i hấp dẫn v&agrave; c&ograve;n c&oacute; nhiều phần qu&agrave; kh&aacute;c. Đồng thời, c&aacute;c bạn c&ograve;n được&nbsp;giao lưu c&ugrave;ng với c&aacute;c Idol của VNB nữa nh&eacute;.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/J9MTUSLhlnY\" width=\"800\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p><strong>????TƯNG BỪNG KHAI TRƯƠNG VNB SUPER CENTER????</strong></p>\r\n<p>✅DIỆN MẠO MỚI - DỊCH VỤ MỚI - TRẢI NGHIỆM MỚI<br>✅IDOL XUẤT HIỆN MANG ĐẾN SI&Ecirc;U ƯU Đ&Atilde;I HẤP DẪN C&Ugrave;NG NHIỀU QU&Agrave; TẶNG V&Agrave;O NG&Agrave;Y 15-02</p>\r\n<p>????Vợt cầu l&ocirc;ng Lining giảm sốc l&ecirc;n đến 30%<br>????Vợt cầu l&ocirc;ng Felet giảm sốc l&ecirc;n đến 30%<br>????Vợt Kumpoo K520 - K520Pro - K520S - R89 giảm đồng gi&aacute; 399k.<br>????Vợt ch&iacute;nh h&atilde;ng Yonex gi&aacute; chỉ c&ograve;n 599k.<br>????Vợt cầu l&ocirc;ng Mizuno, Kumpoo, Victor, Apacs giảm l&ecirc;n đến 15%<br>????Gi&agrave;y cầu l&ocirc;ng Lining, Mizuno, Kumpoo, Victor giảm l&ecirc;n đến 15%.<br>????Gi&agrave;y cầu l&ocirc;ng Kawasaki giảm 5%.<br>????Gi&agrave;y cầu l&ocirc;ng Lefus giảm 10%.<br>????T&uacute;i v&agrave; Balo giảm l&ecirc;n đến 20%.<br>????Vợt Pickleball giảm l&ecirc;n đến 10%.</p>\r\n<p>Đặc biệt<br>???????? &Aacute;o quần cầu l&ocirc;ng giảm l&ecirc;n đến 30%<br>????️Thời gian diễn ra chương tr&igrave;nh từ 15/2/2025 cho đến hết ng&agrave;y 17/2/2025.<br>✅Ngo&agrave;i ra, khi kh&aacute;ch h&agrave;ng checkin tại shop đều được nhận qu&agrave; miễn ph&iacute; v&agrave; giao lưu c&ugrave;ng c&aacute;c idol VNB<br>????Địa chỉ: 390/2 H&agrave; Huy Gi&aacute;p, Phường Thạnh Lộc, Quận 12, TP.HCM</p>\r\n<p><strong>*Hướng dẫn đường đi&nbsp;đến VNB Super Center:</strong>&nbsp;<a href=\"https://maps.app.goo.gl/Q4RgjqCJ1Gmy2LPa9\">https://maps.app.goo.gl/Q4RgjqCJ1Gmy2LPa9</a></p>\r\n<h2><strong>2. Giới thiệu đ&ocirc;i n&eacute;t về cửa h&agrave;ng thể thao VNB Super Center</strong></h2>\r\n<p><strong>VNB Super Center</strong>&nbsp;l&agrave; cửa h&agrave;ng thể thao uy t&iacute;n&nbsp;với nhiều sản phẩm&nbsp;đa dạng, chất lượng&nbsp;từ vợt cầu l&ocirc;ng, gi&agrave;y cầu l&ocirc;ng, t&uacute;i cầu l&ocirc;ng đến những m&oacute;n phụ kiện từ c&aacute;c thương hiệu h&agrave;ng đầu như Yonex, Lining, Victor, Mizuno... B&ecirc;n cạnh đ&oacute;,&nbsp;VNB Super Center cũng mang đến c&aacute;c sản phẩm Tennis v&agrave; Pickleball, tha hồ để c&aacute;c bạn lựa chọn.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/cua-hang-the-thao-vnb-super-center-2-1736801627.webp\" alt=\"Vợt cầu l&ocirc;ng tại cửa h&agrave;ng thể thao VNB Super Center\"></p>\r\n<p>Xem th&ecirc;m chi tiết về cửa h&agrave;ng thể thao VNB Super Center tại đ&acirc;y:&nbsp;<a href=\"https://shopvnb.com/khai-truong-cua-hang-the-thao-vnb-super-center.html\">https://shopvnb.com/cua-hang-the-thao-vnb-super-center.html</a></p>', '2025-05-05 20:57:06', '', 'image/400039939_1105589264190279_6384798308118782910_n_371699.jpg', 0),
(25, 'Hình nền Lining là lựa chọn lý tưởng cho những ai yêu thích thể thao và muốn thể hiện cá tính', '<p><a href=\"https://shopvnb.com/san-cau-long-pickleball-to-ky.html\"><strong>S&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;</strong></a>&nbsp;với kh&ocirc;ng gian&nbsp;rộng r&atilde;i, tho&aacute;ng m&aacute;t,&nbsp;được biết đến&nbsp;l&agrave; một trong những&nbsp;s&acirc;n cầu l&ocirc;ng&nbsp;chất lượng&nbsp;tại huyện H&oacute;c M&ocirc;n, TP.HCM. Với&nbsp;cơ sở vật chất sạch đẹp v&agrave; đầy đủ c&aacute;c dịch vụ tiện &iacute;ch, s&acirc;n thu h&uacute;t được nhiều người chơi từ khắp mọi nơi đến đ&acirc;y để trải nghiệm. H&atilde;y c&ugrave;ng&nbsp;<strong>ShopVNB</strong>&nbsp;t&igrave;m hiểu th&ocirc;ng tin chi tiết về s&acirc;n&nbsp;n&agrave;y qua b&agrave;i viết dưới đ&acirc;y nh&eacute;.</p>\r\n<p><iframe src=\"https://www.youtube.com/embed/CMxpmxAhJQA\" width=\"800\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<h2><strong>1. Giới thiệu s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;</strong></h2>\r\n<p><strong>S&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;</strong>&nbsp;nằm tại số 186/43 T&ocirc; K&yacute;, Ấp 12, X&atilde; Thới Tam Th&ocirc;n, Huyện H&oacute;c M&ocirc;n, TP.HCM. Vị tr&iacute; s&acirc;n nằm&nbsp;gần&nbsp;ng&atilde; ba ch&ugrave;a, đường đi đến đ&acirc;y cũng rất thuận tiện, c&aacute;c bạn đi theo đường T&ocirc; K&yacute; hướng về H&oacute;c M&ocirc;n, đến hẻm 186 c&aacute;c bạn quẹo v&agrave;o, đi theo bảng chỉ dẫn l&agrave; c&aacute;c bạn sẽ thấy được cụm s&acirc;n.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-pickleball-to-ky-1-1739821289.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;\"></p>\r\n<p>S&acirc;n cầu l&ocirc;ng&nbsp;&amp; Pickleball T&ocirc; K&yacute;&nbsp;c&oacute;&nbsp;quy m&ocirc; gồm 9&nbsp;s&acirc;n cầu l&ocirc;ng, trong đ&oacute; c&oacute; 6 s&acirc;n thảm xanh truyền thống v&agrave; 3 s&acirc;n thảm đỏ. Ở&nbsp;ngo&agrave;i c&oacute; th&ecirc;m 3 s&acirc;n Pickleball c&oacute; m&aacute;i che, nằm kế b&ecirc;n lối v&agrave;o s&acirc;n. Mặt s&acirc;n cầu l&ocirc;ng đẹp,&nbsp;chất lượng,&nbsp;thảm b&aacute;m, kh&ocirc;ng trơn trượt v&agrave;&nbsp;đảm bảo an to&agrave;n cho người chơi. Hệ thống đ&egrave;n chiếu s&aacute;ng LED Panel chống ch&oacute;i&nbsp;hiện đại&nbsp;được lắp đặt đồng đều, cung cấp đủ &aacute;nh s&aacute;ng cho c&aacute;c hoạt động thể thao diễn ra cả ng&agrave;y lẫn đ&ecirc;m. Kh&ocirc;ng gian s&acirc;n rộng r&atilde;i, tho&aacute;ng m&aacute;t, tạo cảm gi&aacute;c thoải m&aacute;i cho người chơi.&nbsp;Khu vực nghỉ ngơi c&oacute; đầy đủ b&agrave;n ghế v&agrave; quạt m&aacute;y,&nbsp;gi&uacute;p người chơi thư gi&atilde;n sau khi chơi.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-pickleball-to-ky-2-1739821289.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-pickleball-to-ky-3-1739821290.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong shop thể thao của s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;\"></p>\r\n<p>Ngo&agrave;i ra, s&acirc;n c&oacute; căn tin được thiết kế hiện đại, phục vụ&nbsp;c&aacute;c loại nước giải kh&aacute;t v&agrave; đồ ăn nhẹ&nbsp;cho người chơi nạp năng lượng trước v&agrave; sau khi vận động. S&acirc;n c&ograve;n được trang bị đầy đủ tiện &iacute;ch kh&aacute;c như&nbsp;ph&ograve;ng tắm, thay đồ v&agrave; nh&agrave; vệ sinh nam nữ ri&ecirc;ng biệt,&nbsp;sạch sẽ, an to&agrave;n&nbsp;v&agrave; tiện lợi. B&atilde;i giữ xe ở đ&acirc;y rộng r&atilde;i, đ&aacute;p ứng được cả &ocirc; t&ocirc; v&agrave; xe m&aacute;y. S&acirc;n&nbsp;c&oacute;&nbsp;hẵn một shop ri&ecirc;ng để b&aacute;n v&agrave; cho thu&ecirc; c&aacute;c dụng cụ thể thao như vợt cầu l&ocirc;ng, vợt Pickleball, gi&agrave;y, quần &aacute;o...&nbsp;Những người chơi tại đ&acirc;y đều&nbsp;tỏ ra h&agrave;i l&ograve;ng với chất lượng&nbsp;v&agrave; dịch vụ&nbsp;m&agrave; s&acirc;n mang lại.</p>\r\n<p>- Địa chỉ:&nbsp;186/43 T&ocirc; K&yacute;, Ấp 12, X&atilde; Thới Tam Th&ocirc;n, Huyện H&oacute;c M&ocirc;n, TP.HCM<br>- Link Map:&nbsp;<a href=\"https://maps.app.goo.gl/52virSJTqmpQzJAt6\">https://maps.app.goo.gl/52virSJTqmpQzJAt6</a><br>- Quy m&ocirc;: 9&nbsp;s&acirc;n &nbsp;<br>- Thời gian hoạt động:&nbsp;5h - 24h &nbsp;</p>\r\n<h2><strong>2. Gi&aacute; thu&ecirc; s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;</strong></h2>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-pickleball-to-ky-4-1739821290.webp\" alt=\"H&igrave;nh ảnh b&ecirc;n trong s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;\"></p>\r\n<p>Gi&aacute; thu&ecirc;&nbsp;s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;&nbsp;nằm ở&nbsp;mức&nbsp;kh&aacute; rẻ, ph&ugrave; hợp cho cả những&nbsp;bạn học sinh, sinh vi&ecirc;n&nbsp;c&oacute; thể đến đ&acirc;y để trải nghiệm. Tuy nhi&ecirc;n, gi&aacute; c&oacute; thể thay đổi theo t&igrave;nh h&igrave;nh giờ giấc thực tế. V&igrave; vậy,&nbsp;nếu bạn muốn biết th&ecirc;m&nbsp;chi tiết gi&aacute; đặt s&acirc;n, c&aacute;c bạn&nbsp;c&oacute; thể li&ecirc;n hệ qua hotline hoặc Zalo của s&acirc;n để được tư vấn nh&eacute;.</p>\r\n<h2><strong>3. C&aacute;c dịch vụ tiện &iacute;ch của s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;</strong></h2>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-pickleball-to-ky-5-1739821290.webp\" alt=\"H&igrave;nh ảnh khu căn tin của s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;\"></strong></p>\r\n<p>S&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute; cung cấp nhiều dịch vụ tiện &iacute;ch để đảm bảo mang lại trải nghiệm tốt nhất cho người chơi:&nbsp;</p>\r\n<p>- Ph&ograve;ng tắm, thay đồ&nbsp;v&agrave; nh&agrave; vệ sinh nam nữ ri&ecirc;ng biệt,&nbsp;sạch sẽ v&agrave; tiện nghi.<br>- Căn tin b&aacute;n nước giải kh&aacute;t v&agrave; đồ ăn nhẹ, phục vụ người chơi nạp lại năng lượng sau khi vận động.<br>-&nbsp;Shop thể thao chuy&ecirc;n b&aacute;n,&nbsp;cho thu&ecirc; c&aacute;c dụng cụ chơi cầu l&ocirc;ng v&agrave; Pickleball.<br>-&nbsp;B&atilde;i giữ xe&nbsp;rộng r&atilde;i, đ&aacute;p ứng được cả &ocirc; t&ocirc; v&agrave; xe m&aacute;y.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/san-cau-long-pickleball-to-ky-6-1739821290.webp\" alt=\"H&igrave;nh ảnh s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;\"></p>\r\n<p>Qua b&agrave;i viết n&agrave;y, c&aacute;c bạn c&oacute; thể thấy&nbsp;<strong>s&acirc;n cầu l&ocirc;ng &amp; Pickleball T&ocirc; K&yacute;</strong>&nbsp;thực sự l&agrave; địa điểm l&yacute; tưởng cho những ai y&ecirc;u th&iacute;ch,&nbsp;muốn trải nghiệm cả bộ m&ocirc;n cầu l&ocirc;ng v&agrave; Pickleball tại huyện H&oacute;c M&ocirc;n, TP.HCM. Với cơ sở vật chất sạch đẹp, gi&aacute; cả hợp l&yacute; v&agrave; dịch vụ tiện &iacute;ch đầy đủ, s&acirc;n hứa hẹn mang lại những trải nghiệm tuyệt vời cho người chơi. Nếu c&aacute;c bạn ở khu vực huyện H&oacute;c M&ocirc;n, TP.HCM&nbsp;hoặc ở c&aacute;c khu vực l&acirc;n cận th&igrave; đ&acirc;y l&agrave; một sự lựa chọn đ&aacute;ng để c&acirc;n nhắc nh&eacute;. Ngo&agrave;i s&acirc;n n&agrave;y ra, tại huyện H&oacute;c M&ocirc;n&nbsp;c&ograve;n c&oacute; nhiều&nbsp;s&acirc;n cầu l&ocirc;ng&nbsp;kh&aacute;c cũng chất lượng kh&ocirc;ng k&eacute;m, c&aacute;c bạn c&oacute; thể tham khảo th&ecirc;m qua b&agrave;i viết \"<a href=\"https://shopvnb.com/danh-cach-cac-san-cau-long-hoc-mon-uy-tin-chat-luong-gia-re-cap-nhat-moi-nhat-2021.html\">Danh s&aacute;ch c&aacute;c s&acirc;n cầu l&ocirc;ng H&Oacute;C M&Ocirc;N uy t&iacute;n, chất lượng v&agrave; gi&aacute; rẻ được cập nhật mới nhất</a>\" để c&oacute; được sự lựa chọn ph&ugrave; hợp nhất nh&eacute;.</p>', '2025-05-05 21:00:36', '', 'image/386428822_720854116285988_6838841118740701340_n_231217.jpg', 5),
(248097, 'Quên Yonex Astrox 99 đi, vợt cầu lông Victor khuyến mãi lớn nhất 2018 tới rồi', '<p><a href=\"https://shopvnb.com/vot-cau-long-yonex-astrox-99-2.html\" target=\"_blank\" rel=\"noopener\">Vợt cầu l&ocirc;ng Yonex Astrox 99</a>&nbsp;chuẩn bị ra khiến giới cầu l&ocirc;ng tr&ecirc;n to&agrave;n thế giới h&aacute;o hức chờ đợi từng ng&agrave;y. Đ&ugrave;a vậy th&ocirc;i chứ m&igrave;nh cũng đang chờ đợi vợt cầu l&ocirc;ng Astrox 99 từng ng&agrave;y, từng giờ... từng ph&uacute;t...</p>\r\n<p>Tuy nhi&ecirc;n, đ&acirc;y l&agrave; d&ograve;ng vợt tấn c&ocirc;ng cực kỳ mạnh mẽ nhưng cũng b&agrave;o m&ograve;n sức lực của bạn kh&ocirc;ng k&eacute;m, do vậy nếu lưc tay của bạn kh&ocirc;ng đủ khỏe, kh&ocirc;ng đủ sức bền th&igrave; n&ecirc;n qu&ecirc;n việc chờ đợi m&agrave; n&ecirc;n sắm ngay cho m&igrave;nh combo trong chương tr&igrave;nh khuyến m&atilde;i vợt cầu l&ocirc;ng Victor cực kỳ hấp dẫn trong th&aacute;ng 8 n&agrave;y nh&eacute;.</p>\r\n<p>Trong năm 2018, chương tr&igrave;nh vợt cầu l&ocirc;ng Victor khuyến m&atilde;i li&ecirc;n tục được tung ra gi&uacute;p người chơi cầu l&ocirc;ng cả nước c&oacute; những lựa chọn cực kỳ tốt với mức gi&aacute; kh&ocirc;ng tưởng. Bỏ qua những chương tr&igrave;nh khuyến m&atilde;i vợt cầu l&ocirc;ng trước, lần n&agrave;y Victor lại tiếp tục \"chơi lớn\" với rất nhiều chương tr&igrave;nh cực kỳ \"b&aacute; đạo\", trong đ&oacute; ch&uacute; &yacute; nhất l&agrave;&nbsp;<a href=\"https://shopvnb.com/vot-cau-long-victor-jetspeed-s-10-2017.html\" target=\"_blank\" rel=\"noopener\">vợt cầu l&ocirc;ng Victor JETSPEED 10</a>&nbsp;v&agrave; js12. Ngo&agrave;i ra, với những d&ograve;ng vợt thấp khoảng 1t2 - 1t5, bạn được lựa chọn hoặc vợt hoặc gi&agrave;y tặng k&egrave;m theo. T&iacute;nh ra, bạn chỉ cần bỏ với khoảng 600k - 700k cho một c&acirc;y vợt chất lượng của Victor. Chương tr&igrave;nh cụ thể như sau:</p>\r\n<p><strong>C&aacute;c d&ograve;ng vợt cầu l&ocirc;ng Victor khuyến m&atilde;i gi&aacute; rẻ:</strong></p>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/vot-cau-long-victor-khuyen-mai-1.webp\" alt=\"\"></strong></p>\r\n<p>Vợt DF008 tặng ngay vợt Kawasaki 160. Ảnh: Internet.</p>\r\n<p>➡️ Mua vợt Victor BRS1500&nbsp;=1.210.000, tặng ngay vợt Kawasaki 160 (hoặc bao đựng vợt Victor Victor 511).<br>➡️ Mua vợt BRS1900 =1.250.000, tặng ngay vợt Kawasaki 160 (hoặc bao đựng vợt Victor Victor 511).<br>➡️ Mua vợt TK110 =1.220.000, tặng ngay vợt Kawasaki 160 (hoặc bao đựng vợt Victor Victor 511).<br>➡️ Mua vợt DF70 =1.350.000, tặng ngay vợt Kawasaki 160 (hoặc bao đựng vợt Victor Victor 511).<br>➡️ Mua vợt DF008 =1.400.000 tặng ngay vợt Kawasaki 160 (hoặc bao đựng vợt Victor Victor 511).</p>\r\n<p><strong>C&aacute;c d&ograve;ng vợt cầu l&ocirc;ng Victor khuyến m&atilde;i tầm trung:</strong></p>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/vot-cau-long-victor-khuyen-mai-2.webp\" alt=\"\"></strong></p>\r\n<p>Vợt cầu l&ocirc;ng Victor Tk770HT. Ảnh: Internet</p>\r\n<p>➡️ Mua vợt JS01 =2.200.000, tặng vợt HX020 + gi&agrave;y Kawasaki 054D (hoặc Kawasaki 151G) + cước VS 66 + 5 quấn c&aacute;n.<br>➡️ Mua vợt Tk220 =2.280.000, tặng vợt HX020 + gi&agrave;y Kawasaki 054D (hoặc Kawasaki 151G) + cước VS 66 + 5 quấn c&aacute;n.<br>➡️ Mua vợt JS03= 2.400.000, tặng vợt HX020 + gi&agrave;y Kawasaki 054D (hoặc Kawasaki 151G) + cước VS 66 + 5 quấn c&aacute;n.<br>➡️ Mua vợt HX20H =2.450.000, tặng vợt HX020 + gi&agrave;y Kawasaki 054D (hoặc Kawasaki 151G) + cước VS 66 + 5 quấn c&aacute;n.<br>➡️ Mua vợt HX60 =2.400.000, tặng vợt HX020 + gi&agrave;y Kawasaki 054D (hoặc Kawasaki 151G) + cước VS 66 + 5 quấn c&aacute;n.<br>➡️ Mua vợt JS010 =2.220.000, tặng vợt CHA 9500 + Gi&agrave;y Kawasaki 137.<br>➡️ Mua vợt HX020 =2.170.000, tặng vợt CHA 9500 + Gi&agrave;y Kawasaki 137.<br>➡️ Mua Vợt Tk770HT =2.650.000, tặng vợt HX020 + vợt Ka*1 + Cước VS66 + 5 quấn c&aacute;n.<br>➡️ Mua Vợt Tk15 =2.800.000, tặng vợt HX020 + vợt Ka*1 + Cước VS66 + 5 quấn c&aacute;n.<br>➡️ Mua Vợt JS2SP =3.350.000, tặng vợt HX020 + vợt Ka*1 + Cước VS66 + 5 quấn c&aacute;n.<br>➡️ Mua Vợt CL-VI tặng vợt HX020 + vợt Ka*1 + Cước VS66 + 5 quấn c&aacute;n.</p>\r\n<p><strong>C&aacute;c d&ograve;ng vợt cầu l&ocirc;ng Victor khuyến m&atilde;i cao cấp:</strong></p>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/vot-cau-long-victor-khuyen-mai-3.webp\" alt=\"\"></strong></p>\r\n<p>Vợt cầu l&ocirc;ng Victor JETSPEED S10 trong chương tr&igrave;nh khuyến m&atilde;i. Ảnh: Internet.</p>\r\n<p>➡️ Mua vợt Victor MX 80B =4.450.000 tặng ch&iacute;nh vợt Victor MX 80B.<br>➡️ Mua vợt Victor&nbsp;JETSPEED 10 =4.150.000, tặng vợt hx020 trị gi&aacute; 2170k + vợt k300 + baok8632 +vs66 + quấn c&aacute;n.<br>➡️ Mua vợt Victor JETSPEED 12 =4.100.000, tặng vợt hx020 trị gi&aacute; 2170k + vợt k300 + baok8632 +vs66 + quấn c&aacute;n.<br>➡️ Mua vợt Victor HX9000 =4.230.000, tặng vợt hx020 trị gi&aacute; 2170k + vợt k300 + baok8632 +vs66 + quấn c&aacute;n.<br>➡️ Mua vợt TK9900 =4.230.000, tặng vợt hx020 trị gi&aacute; 2170k + vợt k300 + baok8632 +vs66 + quấn c&aacute;n.</p>\r\n<p>Truy cập v&agrave;o&nbsp;<a href=\"https://shopvnb.com/\">https://shopvnb.com/</a> thường xuy&ecirc;n để theo d&otilde;i chương tr&igrave;nh vợt khuyến m&atilde;i mới nhất.</p>', '2025-05-08 05:02:44', '', 'image/vot-cau-long-victor-khuyen-mai-2_186752.jpg', 0),
(267060, 'Tưng bừng khai trương Shop cầu lông VNB Long Xuyên với nhiều ưu đãi cực hấp dẫn', '<p><strong>Ng&agrave;y 09/09/2023, Shop cầu l&ocirc;ng VNB Long Xuy&ecirc;n ch&iacute;nh thức đi v&agrave;o hoạt động. Địa điểm mới hứa hẹn mang đến kh&ocirc;ng gian mua sắm sản phẩm cầu l&ocirc;ng ch&iacute;nh h&atilde;ng của những thương hiệu nổi tiếng. Đồng thời ho&agrave;n thiện &ldquo;bản đồ&rdquo; ShopVNB tại khu vực An Giang n&oacute;i ri&ecirc;ng v&agrave; tr&ecirc;n to&agrave;n quốc n&oacute;i chung.</strong></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/khai-truong-shop-cau-long-vnb-long-xuyen-1-1724614629.webp\" alt=\"\"></p>\r\n<h2><strong>1. Giới thiệu Shop cầu l&ocirc;ng&nbsp;VNB Sports Long Xuy&ecirc;n</strong></h2>\r\n<p>Hiện nay, c&aacute;c sản phẩm cầu l&ocirc;ng k&eacute;m chất lượng tr&agrave;n ngập thị trường, việc lựa chọn một shop cầu l&ocirc;ng uy t&iacute;n c&oacute; &yacute; nghĩa rất lớn đối với người chơi. V&igrave; thế, Shop VNB sẽ l&agrave; địa điểm uy t&iacute;n,&nbsp;chất lượng h&agrave;ng đầu cho c&aacute;c t&iacute;n đồ cầu l&ocirc;ng tin d&ugrave;ng với c&aacute;c sản phẩm c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng, h&oacute;a đơn, chứng từ đầy đủ, c&ugrave;ng c&aacute;c ch&iacute;nh s&aacute;ch bảo h&agrave;nh, hậu m&atilde;i, chăm s&oacute;c kh&aacute;ch h&agrave;ng chuy&ecirc;n nghiệp.</p>\r\n<p>Shop cầu l&ocirc;ng VNB Long Xuy&ecirc;n nằm trong hệ thống cửa h&agrave;ng cầu l&ocirc;ng VNB tự h&agrave;o l&agrave; một trong những shop cầu l&ocirc;ng uy t&iacute;n chất lượng h&agrave;ng đầu cầu l&ocirc;ng Việt Nam.</p>\r\n<p><strong>Hotline</strong>: 0928999902<br><strong>Địa chỉ</strong>: 1408 Trần Hưng Đạo, P. Mỹ Xuy&ecirc;n, TP.Long Xuy&ecirc;n, An Giang.</p>\r\n<p>Shop cầu l&ocirc;ng VNB Long Xuy&ecirc;n chuy&ecirc;n cung cấp&nbsp;c&aacute;c sản phẩm&nbsp;cầu l&ocirc;ng ch&iacute;nh h&atilde;ng như:&nbsp;<a href=\"https://shopvnb.com/vot-cau-long.html\">Vợt cầu l&ocirc;ng</a>, gi&agrave;y cầu l&ocirc;ng, bao vợt&nbsp;cầu l&ocirc;ng&nbsp;cũng như c&aacute;c phụ kiện cầu l&ocirc;ng đến từ c&aacute;c thương hiệu đ&igrave;nh đ&aacute;m như Yonex, Lining, Mizuno, Victor, Kawasaki, Adidas v&agrave; đặc biệt l&agrave; thương hiệu mang t&ecirc;n VNB.&nbsp;</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/khai-truong-shop-cau-long-vnb-long-xuyen-2-1724614629.webp\" alt=\"\"></p>\r\n<p>B&ecirc;n cạnh việc ph&aacute;t triển về quy m&ocirc; v&agrave; cơ sở vật chất, ShopVNB Long Xuy&ecirc;n c&ograve;n ch&uacute; trọng về nguồn nh&acirc;n lực chất lượng. Chi nh&aacute;nh đ&agrave;o tạo đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n s&acirc;u về kiến thức cầu l&ocirc;ng v&agrave; kỹ thuật đan vợt. C&aacute;c nh&acirc;n vi&ecirc;n ở shop đều c&oacute; chuy&ecirc;n m&ocirc;n cao, tay nghề giỏi v&agrave; thực hiện đan lưới h&agrave;ng ng&agrave;n c&acirc;y vợt mỗi năm. Từ đ&oacute; mang đến kh&aacute;ch những sản phẩm chất lượng tốt nhất.</p>\r\n<p>Kh&ocirc;ng gian của Shop cầu l&ocirc;ng&nbsp;Long Xuy&ecirc;n&nbsp;kh&aacute; rộng r&atilde;i v&agrave;&nbsp;tho&aacute;ng m&aacute;t&nbsp;cho c&aacute;i nh&igrave;n hiện đại. Thiết kế b&ecirc;n trong shop kh&aacute;&nbsp;bắt mắt&nbsp;được chia ra từng gian ri&ecirc;ng biệt dễ d&agrave;ng cho kh&aacute;ch h&agrave;ng lựa chọn gồm: khu vực&nbsp;trưng b&agrave;y vợt, khu vực&nbsp;gi&agrave;y,&nbsp;balo t&uacute;i, gian phụ kiện cầu l&ocirc;ng v&agrave;&nbsp;quần &aacute;o cầu l&ocirc;ng...</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/khai-truong-shop-cau-long-vnb-long-xuyen-3-1724614630.webp\" alt=\"\"></p>\r\n<p>Với sứ mệnh mang lại những sản phẩm chất lượng với gi&aacute; tốt&nbsp;nhất thị trường, cửa h&agrave;ng cầu l&ocirc;ng&nbsp;Long Xuy&ecirc;n&nbsp;-&nbsp;VNB Sports&nbsp;mong muốn rằng mỗi kh&aacute;ch h&agrave;ng khi ra về đều c&oacute; những trải nghiệm tuyệt vời khi mua sắm tại đ&acirc;y. Cửa h&agrave;ng mua vợt, b&aacute;n vợt cầu l&ocirc;ng, gi&agrave;y cầu l&ocirc;ng&nbsp;ở Long Xuy&ecirc;n&nbsp;uy t&iacute;n chất lượng -&nbsp;lu&ocirc;n mong muốn kh&aacute;ch h&agrave;ng trao niềm tin v&agrave; nhận về&nbsp;chất lượng v&agrave; sự h&agrave;i l&ograve;ng.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/bai_viet/khai-truong-shop-cau-long-vnb-long-xuyen-4-1724614631.webp\" alt=\"\"></p>\r\n<p><strong>Chỉ đường đến shop cầu l&ocirc;ng VNB Long Xuy&ecirc;n, An Giang:</strong></p>\r\n<p>Địa chỉ<strong>:&nbsp;</strong>1408 Trần Hưng Đạo, P. Mỹ Xuy&ecirc;n, TP.Long Xuy&ecirc;n, An Giang.<br>Link Map:&nbsp;<a href=\"https://maps.app.goo.gl/nfhrAHJFB1yLfCuW6\">https://maps.app.goo.gl/nfhrAHJFB1yLfCuW6</a></p>', '2025-05-08 05:00:53', '', 'image/khai-truong-shop-cau-long-vnb-long-xuyen-1-1724614629_150654.jpg', 0),
(274823, 'Các lớp học cầu lông \"chất\" mà bạn nên theo để phát triển nhanh nhất', '<p>Nếu bạn đang đặt ra c&acirc;u hỏi&nbsp;<a href=\"https://shopvnb.com/hoc-cau-long.html\" target=\"_blank\" rel=\"noopener\">học cầu l&ocirc;ng</a>&nbsp;ở đ&acirc;u? th&igrave; b&agrave;i viết n&agrave;y ch&iacute;nh d&agrave;nh cho bạn. Đ&acirc;y l&agrave; danh s&aacute;ch c&aacute;c lớp dạy đ&aacute;nh cầu l&ocirc;ng kh&aacute; chất lượng hiện c&oacute;, nếu c&oacute; nhu cầu, bạn n&ecirc;n li&ecirc;n hệ để n&acirc;ng cao kỹ năng của m&igrave;nh nh&eacute;!</p>\r\n<p><strong>1. Lớp học đ&aacute;nh cầu l&ocirc;ng Quận 11. Thầy Th&agrave;nh - 090.998.2629.</strong></p>\r\n<p>Tối 2-4-6, thời gian 18h-20h. 4 th&agrave;nh vi&ecirc;n, học ph&iacute;: 700.000/th&aacute;ng.<br>Tối 3-5-7 (ca 1), thời gian 18h-20h. 4 th&agrave;nh vi&ecirc;n, học ph&iacute;: 700.000/th&aacute;ng.<br>Tối 3-5-7 (ca 2), thời gian 20h-22h. 4 th&agrave;nh vi&ecirc;n, học ph&iacute;: 700.000/th&aacute;ng.<br>Chiều T7-CN, thời gian 16h-18h. 4 th&agrave;nh vi&ecirc;n, học ph&iacute;: 700.000/th&aacute;ng.<br>Địa chỉ: Nh&agrave; thi đấu Ph&uacute; Thọ. Quận 1.<br>&gt;&gt; Lưu &yacute;: Khi đăng k&yacute; học, học vi&ecirc;n sẽ được học thử 1 buổi.</p>\r\n<p><strong><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/hoc-cau-long-1.webp\" alt=\"học cầu l&ocirc;ng\"></strong></p>\r\n<p><strong>2. Lớp học đ&aacute;nh cầu l&ocirc;ng cơ bản đến n&acirc;ng cao Quận 11 - Thầy B&ugrave;i Văn Mạnh - 0938.123.918</strong></p>\r\n<p>Tối 3-5-7, thời gian 20h-22h, s&acirc;n số 7, học ph&iacute;: 650.000đ (gồm s&acirc;n, cầu)<br>Địa chi: Nh&agrave; thi đấu Ph&uacute; Thọ, 221 L&yacute; Thường Kiệt, Quận 11.<br>Nhận dạy cầu l&ocirc;ng cho mọi lứa tuổi với c&aacute;c tr&igrave;nh độ kh&aacute;c nhau, từ l&agrave;m quen cơ bản đến n&acirc;ng cao.<br>Nhận dạy k&egrave;m ri&ecirc;ng c&aacute; nh&acirc;n, gia đ&igrave;nh, tập thể c&ocirc;ng ty, huấn luyện cho c&aacute;c c&ocirc;ng ty đi thi đấu, tổ chức Giải.<br>Hiện tại Thầy B&ugrave;i Văn Mạnh đang dạy c&aacute;c lớp Cầu L&ocirc;ng căn bản v&agrave; n&acirc;ng cao khu vực T&Acirc;N B&Igrave;NH - Q. B&igrave;nh Thạnh - G&ograve; Vấp - Quận 11- Quận 1. Với kinh nghiệm nhiều năm th&igrave; đấu v&agrave; huấn luyện Cầu L&ocirc;ng tại th&agrave;nh phố Hồ Ch&iacute; Minh. Đ&atilde; tốt nghiệp chuy&ecirc;n ng&agrave;nh huấn luyện cầu l&ocirc;ng, Thạc Sỹ TDTT TP.HCM. Hiện đang l&agrave; Giảng vi&ecirc;n trường ĐẠI HỌC FPT. Tham gia huấn luyện từ năm 2008, 2 năm Huấn Luyện Vi&ecirc;n Quận 11 - 6 năm Huấn Luyện Vi&ecirc;n Quận 4.</p>\r\n<p><strong>Xem th&ecirc;m:</strong>&nbsp;<a href=\"https://shopvnb.com/huong-dan-cach-danh-cau-long-don-tot.html\" target=\"_blank\" rel=\"noopener\">Hướng dẫn c&aacute;ch đ&aacute;nh cầu l&ocirc;ng đơn tốt như chuy&ecirc;n nghiệp</a>&nbsp;</p>\r\n<p><strong>3. Lớp học đ&aacute;nh cầu l&ocirc;ng cơ bản đến n&acirc;ng cao T&acirc;n B&igrave;nh - Thầy Quang - 090.1399.388</strong></p>\r\n<p>Thứ 2-4-6, thời gian 17h-20h, S&acirc;n số 10 v&agrave; 11, học ph&iacute;: 550.000/th&aacute;ng.<br>Địa điểm: s&acirc;n cầu l&ocirc;ng Viettel Ho&agrave;ng Hoa Th&aacute;m T&acirc;n B&igrave;nh.<br>Kĩ Thuật Cầu L&ocirc;ng từ cơ bản đến n&acirc;ng cao.<br>Hướng dẫn phương ph&aacute;p tập luyện Thể Thao đ&uacute;ng phương ph&aacute;p khoa học nhằm tr&aacute;nh tai nạn chấn thương v&agrave; mang hiệu quả đến việc ph&aacute;t triển thể chất con người.<br>Tư Duy Chiến Thuật đ&aacute;nh đơn, đ&aacute;nh đ&ocirc;i trong thi đấu Cầu L&ocirc;ng.<br>Thường xuy&ecirc;n n&acirc;ng cao, phổ cập c&aacute;c kĩ thuật cầu l&ocirc;ng hiện đại bằng c&aacute;c phương ph&aacute;p ti&ecirc;n tiến : quay camera, video, clip&hellip;<br>Tăng sức mạnh, sức bền, vận tốc, độ kh&eacute;o l&eacute;o trong thi đấu cầu l&ocirc;ng.<br>Những kiến thức, kinh nghiệm tập luyện v&agrave; thi đấu Cầu L&ocirc;ng kh&aacute;c.<br>Mở rộng th&ecirc;m dạy v&agrave;o thứ 3, 5, 7 cho c&aacute;c học vi&ecirc;n c&oacute; nhu cầu, hoặc dạy theo nh&oacute;m.</p>\r\n<p><strong>4. Lớp học đ&aacute;nh cầu l&ocirc;ng T&acirc;n B&igrave;nh - Thầy Lộc - 0917.233.968.</strong></p>\r\n<p>Thứ 2-4-6, thời gian 20h-22h, học ph&iacute;: LH.<br>Thứ 3-5, thời gian 18h-20h, học ph&iacute;: LH.<br>Địa điểm: S&acirc;n cầu l&ocirc;ng Ga Trực Thăng - Đường Ho&agrave;ng Hoa Th&aacute;m - P13 - Q.T&acirc;n B&igrave;nh.</p>\r\n<p><strong>5. Lớp học đ&aacute;nh cầu l&ocirc;ng - Thầy Phụng (Gi&aacute;o vi&ecirc;n cấp 3) - 0939149029.</strong></p>\r\n<p>Tối 2-4-6, thời gian 18h-21h, học ph&iacute;: LH.<br>Chiều T7-CN, thời gian 15h-17h, học ph&iacute;: LH.<br>Tối thứ 3,5, thời gian v&agrave; học ph&iacute;: LH.</p>\r\n<p>Thầy Phụng GV cấp 3 nhiều năm kinh nghiệm trong giảng dạy cầu l&ocirc;ng cho mọi lứa tuổi, nay tuyển học vi&ecirc;n c&oacute; nhu cầu học cầu l&ocirc;ng, k&egrave;m ri&ecirc;ng theo khung giờ của học vi&ecirc;n rảnh. Nhận dạy c&aacute;c nh&oacute;m, Cty c&oacute; nhu cầu học chung 1 lớp (ưu ti&ecirc;n giảm học ph&iacute; cho lớp n&agrave;y). Hiện l&agrave; GV THPT n&ecirc;n c&oacute; phương ph&aacute;p sư phạm trong việc giảng dạy, nắm bắt t&acirc;m l&yacute; học vi&ecirc;n tốt gi&uacute;p học vi&ecirc;n thoải m&aacute;i trong việc học tập cũng như giao tiếp nhằm tiếp thu hết những kỹ thuật trong cầu l&ocirc;ng. Mối quan hệ giao lưu rộng, tr&igrave;nh độ học vi&ecirc;n đang học ở tầm kh&aacute; n&ecirc;n thuận lợi trong việc giao lưu cọ s&aacute;t n&acirc;ng cao t&acirc;m l&yacute; chiến v&agrave; r&egrave;n luyện kỹ năng thi đấu.</p>\r\n<p><strong>6. Lớp học đ&aacute;nh cầu l&ocirc;ng T&acirc;n Binh, Ph&uacute; Nhuận - Thầy Tuấn - 0904.652.639.</strong></p>\r\n<p>Thứ 2-4-6: thời gian: 17h-19h v&agrave; 19h-21h (lớp n&acirc;ng cao).<br>Thứ 3-5-7: thời gian: 18h-20h v&agrave; 20h-22h (lớp n&acirc;ng cao).<br>Thứ 7-CN: Thời gian: 08h-10h, 10h-12h, 15h-17h v&agrave; 17h-19h.<br>S&aacute;ng CN 10h sẽ được giao lưu giữa c&aacute;c học vi&ecirc;n với nhau v&agrave; c&oacute; thể giao lưu với đội tuyển quận Ph&uacute; Nhận.</p>\r\n<p><strong>7. Lớp dạy cầu l&ocirc;ng cơ bản T&acirc;n B&igrave;nh - Thầy Khoa - 0975.834.196.</strong></p>\r\n<p>Thời gian: thứ 7-chủ nhật ( giờ giấc học vi&ecirc;n r&atilde;nh giờ n&agrave;o th&igrave; học giờ đ&oacute;)<br>Sau giờ học ai muốn ở lại giao lưu.<br>Địa chỉ:S&acirc;n Ga Trực Thăng, Đường Ho&agrave;ng Hoa Th&aacute;m, Quận T&acirc;n B&igrave;nh.<br>M&igrave;nh c&oacute; nhận dạy k&egrave;m ri&ecirc;ng cho c&ocirc;ng ty hoặc c&aacute; nh&acirc;n.</p>\r\n<p>Nếu đ&atilde; chuẩn bị cho m&igrave;nh lớp học cầu l&ocirc;ng th&iacute;ch hợp, nhiệm vụ đầu ti&ecirc;n của bạn l&agrave; cần sắm những sản phẩm như&nbsp;<a href=\"https://shopvnb.com/vot-cau-long.html\" target=\"_blank\" rel=\"noopener\">vợt cầu l&ocirc;ng</a>, gi&agrave;y, quần &aacute;o, phụ kiện để chuẩn bị cho h&agrave;nh tr&igrave;nh \"ph&aacute; đảo\" m&ocirc;n cầu l&ocirc;ng của m&igrave;nh. Ch&uacute;c bạn ng&agrave;y một đ&aacute;nh tốt hơn.</p>', '2025-05-08 04:58:40', '', 'image/hoc-cau-long-1_862018.jpg', 5),
(370943, 'Các bạn đang tìm thầy dạy đánh cầu lông ?', '<p>Hiện tại c&aacute;c bạn đang c&oacute; nhu cầu học&nbsp;<a href=\"https://shopvnb.com/kien-thuc-cau-long.html\">cầu l&ocirc;ng</a>&nbsp;từ căn bản tới n&acirc;ng cao, nhưng chưa t&igrave;m được thầy dạy đ&aacute;nh cầu l&ocirc;ng, h&ocirc;m nay Shopvnb xin giới thiệu đến c&aacute;c bạn lớp học cầu l&ocirc;ng của thầy B&ugrave;i Văn Mạnh.</p>\r\n<p>Hiện tại thầy B&ugrave;i Văn Mạnh đang dạy c&aacute;c lớp Cầu L&ocirc;ng căn bản v&agrave; n&acirc;ng cao khu vực Q. T&acirc;n B&igrave;nh, với kinh nghiệm nhiều năm th&igrave; đấu v&agrave; huấn luyện Cầu L&ocirc;ng tại Tphcm. Tốt nghiệp chuy&ecirc;n ng&agrave;nh huấn luyện cầu l&ocirc;ng, thạc Sỹ TDTT TP.HCM. Hiện đang l&agrave; giảng vi&ecirc;n trường đại học&nbsp;FPT.....</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://cdn.shopvnb.com/img/full/content/images/uploaded/B%E1%BA%A3o/19146093_1139658276139549_4917471834416387934_n.jpg\" alt=\"Thầy dạy đ&aacute;nh cầu l&ocirc;ng\" width=\"600\" height=\"800\"></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Bắt đầu huấn luyện từ năm 2008. C&oacute; 2 năm huấn luyện vi&ecirc;n Quận 11 v&agrave; 6 năm huấn luyện vi&ecirc;n Q. 4. Hiện tại thầy dạy đ&aacute;nh cầu l&ocirc;ng B&ugrave;i Văn Mạnh nhận dạy cầu l&ocirc;ng cho mọi lứa tuổi với c&aacute;c tr&igrave;nh độ kh&aacute;c nhau, từ l&agrave;m quen cơ bản đến n&acirc;ng cao. Đặc biệt nhận dạy k&egrave;m ri&ecirc;ng c&aacute; nh&acirc;n, gia đ&igrave;nh, tập thể c&ocirc;ng ty, huấn luyện cho c&aacute;c c&ocirc;ng ty đi thi đấu, tổ chức giải cầu cầu l&ocirc;ng. V&agrave; hiện tại thầy đang giảng dạy c&aacute;c lớp buổi Tối thứ 2 - thứ 4 - thứ 6 v&agrave; tối thứ 3 - thứ 4 - thứ 7.</p>\r\n<p>Thời gian như sau: Ca 1 từ 18h00- 20h00 Ca 2 từ 20h00 đến 22g00 HỌC PH&Iacute; : 600.000 VND / 1 TH&Aacute;NG ( Bao s&acirc;n - cầu ) Địa điểm :&nbsp;<a href=\"https://shopvnb.com/san-cau-long.html\">S&acirc;n cầu l&ocirc;ng</a>&nbsp;&nbsp;HẢI HIỀN SỐ 147 Nguyễn Đức Thuận -T&Acirc;N B&Igrave;NH Li&ecirc;n hệ tập : 0938 123 918 Thầy Mạnh S&acirc;n CẦU L&Ocirc;NG HẢI HIỀN 147 Nguyễn Đức Thuận Quận T&acirc;n B&igrave;nh.</p>\r\n<p>Thầy dạy đ&aacute;nh cầu l&ocirc;ng B.V.Mạnh với nhiều năm kinh nghiệm về giảng dạy tại c&aacute;c trường đại học cũng như hội nh&oacute;m cho đến dạy k&egrave;m c&aacute; nh&acirc;n, mang lại cảm gi&aacute;c hứng th&uacute; cho học vi&ecirc;n, dễ hiểu. Đối với những bạn đang cần t&igrave;m 1 lớp học cầu l&ocirc;ng từ cơ bản đến n&acirc;ng cao th&igrave; đ&acirc;y l&agrave; sự lựa chọn h&agrave;ng đầu d&agrave;nh cho c&aacute;c bạn.</p>\r\n<p>&nbsp;</p>\r\n<p>Nguồn:&nbsp;<a href=\"https://shopvnb.com/\">shopvnb.com</a></p>', '2025-05-08 04:59:33', '', 'image/19146093_1139658276139549_4917471834416387934_n_478007.jpg', 0),
(422850, 'CTY VNB SPORTS TUYỂN DỤNG NHÂN VIÊN XUẤT NHẬP HÀNG HÓA, NHÂN VIÊN KHO', '<p><em>Nổi trội l&agrave; hệ thống chuỗi cửa h&agrave;ng chuy&ecirc;n b&aacute;n lẻ c&aacute;c mặt h&agrave;ng cầu l&ocirc;ng số 1 ở Việt Nam. CTY VNB SPORTS hiện đang tuyển dụng nh&acirc;n vi&ecirc;n xuất nhập h&agrave;ng h&oacute;a, nh&acirc;n vi&ecirc;n kho với mức lương cực k&igrave; hấp dẫn, m&ocirc;i trường l&agrave;m việc khoa học, năng động, vui vẻ, cơ hội thăng tiến, tiềm năng ph&aacute;t triển bản th&acirc;n, khẳng định khả năng ch&iacute;nh m&igrave;nh.</em></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/cty-vnb-sports-tuyen-dung-nhan-vien-xuat-nhap-hang-hoa-nhan-vien-kho-1.webp\" alt=\"\"></p>\r\n<h2><strong>1. NH&Acirc;N VI&Ecirc;N XUẤT NHẬP H&Agrave;NG H&Oacute;A</strong></h2>\r\n<p>-&nbsp;V&iacute; tr&iacute; Nh&acirc;n vi&ecirc;n Fulltime xuất nhập h&agrave;ng h&oacute;a: 2 nh&acirc;n vi&ecirc;n.</p>\r\n<p>- Thời gian l&agrave;m việc:&nbsp;08h00 đến 17h00 từ thứ 2 đến thứ 7,&nbsp;nghỉ trưa 1 tiếng.</p>\r\n<p>- Địa chỉ&nbsp;l&agrave;m việc:&nbsp;114/19 đường Vườn L&agrave;i, Phường An Ph&uacute; Đ&ocirc;ng, Quận 12, Tp HCM.</p>\r\n<p>- M&ocirc; tả c&ocirc;ng việc:<br>+ Đặt h&agrave;ng.<br>+ Xuất nhập h&agrave;ng h&oacute;a.<br>+ Một số c&ocirc;ng việc kh&aacute;c được ph&acirc;n c&ocirc;ng.</p>\r\n<p>- Y&ecirc;u cầu:<br>+ Tốt nghiệp trung cấp trở l&ecirc;n.<br>+ Th&agrave;nh thạo excel.</p>\r\n<p>- Quyền lợi:<br>+ Lương th&aacute;ng 13.<br>+ Được nghỉ lễ theo quy định.<br>+ Được đi du lịch hằng năm.<br>+ C&oacute; cơ hội thăng tiến trong c&ocirc;ng việc.<br>+ C&oacute; chổ ở lại cho nh&acirc;n vi&ecirc;n tại c&ocirc;ng ty.<br>+ C&oacute; s&acirc;n cầu l&ocirc;ng chơi miễn ph&iacute; ngo&agrave;i giờ l&agrave;m.</p>\r\n<p>- Mức lương: từ 7.000.000 đến 10.000.0000 đồng.</p>\r\n<p>- Li&ecirc;n hệ: 0947342259 (Ms Thảo)&nbsp;hoặc nộp CV qua email: info@shopvnb.com</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/cty-vnb-sports-tuyen-dung-nhan-vien-xuat-nhap-hang-hoa-nhan-vien-kho-2.webp\" alt=\"\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/cty-vnb-sports-tuyen-dung-nhan-vien-xuat-nhap-hang-hoa-nhan-vien-kho-3.webp\" alt=\"\"></p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/cty-vnb-sports-tuyen-dung-nhan-vien-xuat-nhap-hang-hoa-nhan-vien-kho-4.webp\" alt=\"\"></p>\r\n<h2><strong>2. NH&Acirc;N VI&Ecirc;N KHO H&Agrave;NG</strong></h2>\r\n<p>-&nbsp;V&iacute; tr&iacute; Nh&acirc;n vi&ecirc;n Fulltime vận h&agrave;nh kho h&agrave;ng: 3 nh&acirc;n vi&ecirc;n.</p>\r\n<p>- Thời gian l&agrave;m việc:&nbsp;08h00 đến 17h00 từ thứ 2 đến thứ 7,&nbsp;nghỉ trưa 1 tiếng.</p>\r\n<p>- Địa chỉ&nbsp;l&agrave;m việc:&nbsp;114/19 đường Vườn L&agrave;i, Phường An Ph&uacute; Đ&ocirc;ng, Quận 12, Tp HCM.</p>\r\n<p>- M&ocirc; tả c&ocirc;ng việc:<br>+ Kiểm đếm, đ&oacute;ng g&oacute;i h&agrave;ng ho&aacute;.<br>+ Sắp xếp h&agrave;ng ho&aacute; trong kho.<br>+ Một số c&ocirc;ng việc kh&aacute;c được ph&acirc;n c&ocirc;ng.</p>\r\n<p>- Y&ecirc;u cầu:<br>+ Tốt nghiệp THPT.<br>+ Sức khỏe tốt.</p>\r\n<p>- Quyền lợi:<br>+ Lương th&aacute;ng 13.<br>+ Được nghỉ lễ theo quy định.<br>+ Được đi du lịch hằng năm.<br>+ C&oacute; cơ hội thăng tiến trong c&ocirc;ng việc.<br>+ C&oacute; chổ ở lại cho nh&acirc;n vi&ecirc;n tại c&ocirc;ng ty.<br>+ C&oacute; s&acirc;n cầu l&ocirc;ng chơi miễn ph&iacute; ngo&agrave;i giờ l&agrave;m.</p>\r\n<p>- Mức lương: từ 7.000.000 đến 9.000.0000 đồng.</p>\r\n<p>- Li&ecirc;n hệ: 0947342259 (Ms Thảo)</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/cty-vnb-sports-tuyen-dung-nhan-vien-xuat-nhap-hang-hoa-nhan-vien-kho-5.webp\" alt=\"\"></p>', '2025-05-08 05:01:59', '', 'image/cty-vnb-sports-tuyen-dung-nhan-vien-xuat-nhap-hang-hoa-nhan-vien-kho-1_282838.jpg', 0),
(988584, 'Lớp dạy cầu lông ở Hà Nội: Bạn nên theo học nếu muốn chơi giỏi', '<p>Lớp dạy c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i là tương đ&ocirc;́i ít so với Tp H&ocirc;̀ Chí Minh. Tuy nhi&ecirc;n, bạn v&acirc;̃n có th&ecirc;̉ d&ecirc;̃ dàng ki&ecirc;́m được m&ocirc;̣t lớp học c&acirc;̀u l&ocirc;ng ưng ý và ch&acirc;́t lượng. Đ&ocirc;́i với những bạn mới chơi cầu l&ocirc;ng, chưa biết phải bắt đầu từ đ&acirc;u thì vi&ecirc;̣c tìm ki&ecirc;́m m&ocirc;̣t lớp học ch&acirc;́t lượng là r&acirc;́t t&ocirc;́t. Với m&ocirc;̣t lớp học đào tạo kỹ thu&acirc;̣t từ cơ bản đ&ecirc;́n n&acirc;ng cao sẽ giúp cho bạn có được sự ti&ecirc;́n b&ocirc;̣ nhanh nh&acirc;́t và đúng nh&acirc;́t. Tại Hà N&ocirc;̣i thì cũng có tương đ&ocirc;́i nhi&ecirc;̀u lớp dạy c&acirc;̀u l&ocirc;ng nhưng n&ocirc;̉i tr&ocirc;̣i hơi cả là&nbsp;<a href=\"https://shopvnb.com/lop-day-cau-long-o-ha-noi.html\">lớp d&acirc;̣y c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i</a>: Thắng Lợi d&acirc;̣y c&acirc;̀u l&ocirc;ng.</p>\r\n<h2><strong>1. Lớp dạy c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i: Thắng Lợi d&acirc;̣y c&acirc;̀u l&ocirc;ng</strong></h2>\r\n<p>Với đội ngũ gi&aacute;o vi&ecirc;n, huấn luyện vi&ecirc;n c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n cao từ lớp dạy c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i: Th&acirc;̀y Thắng và th&acirc;̀y Lợi, học vi&ecirc;n sẽ được đ&agrave;o tạo b&agrave;i bản mang những kỹ thu&acirc;̣t c&acirc;̀u l&ocirc;ng cơ bản đ&ecirc;́n n&acirc;ng cao. B&ecirc;n cạnh đó c&ograve;n trang bị về nền tảng thể lực cũng như chi&ecirc;́n thu&acirc;̣t c&acirc;̀u l&ocirc;ng thi đ&acirc;́u, kiến thức về vận động, về ph&ograve;ng tr&aacute;nh chấn thương trong tập luyện v&agrave; thi đấu c&acirc;̀u l&ocirc;ng để mang lại sức khỏe to&agrave;n diện cho học vi&ecirc;n.</p>\r\n<p><strong>Lớp dạy c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i</strong>: Thắng Lợi d&acirc;̣y c&acirc;̀u l&ocirc;ng nhận giảng dạy huấn luyện cho c&aacute;c c&aacute; nh&acirc;n v&agrave; tập thể theo y&ecirc;u cầu, tại CLB hoặc tại c&aacute;c cơ sở khác theo thỏa thu&acirc;̣n. B&ecirc;n cạnh đó có mở các lớp cơ bản d&agrave;nh cho c&aacute;c em học sinh, sinh vi&ecirc;n và lớp tập n&acirc;ng cao, cho mọi đối tượng c&aacute; nh&acirc;n, tập thể.</p>\r\n<p><strong>Địa chỉ</strong>:</p>\r\n<p>&ndash; Nh&agrave; văn h&oacute;a Khương Đ&igrave;nh ng&otilde; 108 Phố B&ugrave;i Xương Trạch, Thanh Xu&acirc;n H&agrave; Nội</p>\r\n<p>&ndash; S&acirc;n cầu trường cấp 3 Quang Trung số 178 đường L&aacute;ng.</p>\r\n<p>Với hơn 10 năm kinh nghi&ecirc;̣m huy&ecirc;́n luy&ecirc;̣n và giảng dạy v&ecirc;̀ b&ocirc;̣ m&ocirc;n c&acirc;̀u l&ocirc;ng của th&acirc;̀y Thắng và trình đ&ocirc;̣ cao của th&acirc;̀y Lợi là giảng vi&ecirc;n m&ocirc;n Cầu L&ocirc;ng Trường ĐHSP TDTT H&agrave; Nội. Đảm bảo các học vi&ecirc;n sẽ được truy&ecirc;̀n đạt những ki&ecirc;́n thức c&acirc;̀u l&ocirc;ng đúng nh&acirc;́t, nhanh nh&acirc;́t và mới nh&acirc;́t. Các bạn có th&ecirc;̉ li&ecirc;n h&ecirc;̣ qua 2 s&ocirc;́ điện thoại: 0986241217 &ndash; 0963219465 đ&ecirc;̉ tìm hi&ecirc;̉u th&ecirc;m v&ecirc;̀ lớp học nhé.</p>\r\n<p><strong>Xem th&ecirc;m</strong>:&nbsp;<a href=\"https://shopvnb.com/mau-bien-ban-thi-dau-cau-long.html\">M&acirc;̃u bi&ecirc;n bản thi đ&acirc;́u c&acirc;̀u l&ocirc;ng</a>&nbsp;chu&acirc;̉n - Li&ecirc;n Đoàn c&acirc;̀u l&ocirc;ng VN.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/lop-day-cau-long-o-ha-noi-1.webp\" alt=\"\" width=\"600\" height=\"383\"></p>\r\n<h2><strong>2. Địa chỉ mua vợt c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i</strong></h2>\r\n<p>Nếu đ&atilde; chuẩn bị cho m&igrave;nh lớp dạy c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i th&iacute;ch hợp, nhiệm vụ đầu ti&ecirc;n của bạn l&agrave; cần sắm những sản phẩm như vợt cầu l&ocirc;ng, gi&agrave;y, quần &aacute;o, phụ kiện để chuẩn bị cho h&agrave;nh tr&igrave;nh chinh phục &nbsp;m&ocirc;n cầu l&ocirc;ng của m&igrave;nh. Và đ&ecirc;̉ sắm được những dụng cụ đó bạn c&acirc;̀n phải đ&ecirc;́n m&ocirc;̣t địa chỉ mua vợt c&acirc;̀u l&ocirc;ng ở Hà N&ocirc;̣i uy tín và ch&acirc;́t lượng.</p>\r\n<p>Nói v&ecirc;̀ uy tín, ch&acirc;́t lượng phải k&ecirc;̉ đ&ecirc;́n shop c&acirc;̀u l&ocirc;ng VNB, m&ocirc;̣t h&ecirc;̣ th&ocirc;́ng shop c&acirc;̀u l&ocirc;ng lớn nh&acirc;́t nhì cả nước với 10 chi nhánh trải dài toàn qu&ocirc;́c. Shop c&acirc;̀u l&ocirc;ng VNB là m&ocirc;̣t thương hi&ecirc;̣u khả n&ocirc;̉i ti&ecirc;́ng ở khu vực TP H&ocirc;̀ Chí Minh. Ở Hà N&ocirc;̣i, ShopVNB còn khá mới mẻ và còn nhi&ecirc;̀u người chưa bi&ecirc;́t đ&ecirc;́n. Các bạn có th&ecirc;̉ ghé shop VNB chi nhánh Hà N&ocirc;̣i tại địa chỉ 14 Giảng V&otilde;, Q. Đống Đa.</p>\r\n<p><img src=\"https://cdn.shopvnb.com/uploads/images/tin_tuc/lop-day-cau-long-o-ha-noi-2.webp\" alt=\"\" width=\"600\" height=\"528\"></p>\r\n<p>Shop VNB l&agrave; địa chỉ b&aacute;n vợt cầu l&ocirc;ng, gi&agrave;y cầu l&ocirc;ng, quần &aacute;o v&agrave; phụ kiện cầu l&ocirc;ng..vv. với mẫu m&atilde; đa dạng c&ugrave;ng chất lượng cực kỳ đảm bảo v&agrave; chế độ hậu m&atilde;i cao chắc chắn sẽ gi&uacute;p bạn chọn được sản phẩm th&iacute;ch hợp nhất với m&igrave;nh. Ngo&agrave;i ra, cửa h&agrave;ng b&aacute;n vợt cầu l&ocirc;ng uy t&iacute;n ShopVNB cũng l&agrave; một trong những nơi b&aacute;n vợt cầu l&ocirc;ng gi&aacute; rẻ ph&ugrave; hợp với mọi đối tượng k&ecirc;̉ cả học sinh, sinh vi&ecirc;n.</p>\r\n<p>Đến với địa chỉ mua b&aacute;n vợt cầu l&ocirc;ng uy t&iacute;n ShopVNB chi nhánh Hà N&ocirc;̣i, bạn sẽ nhận được những dịch vụ đi k&egrave;m tốt nhất. Những sản phẩm tại Shop cầu l&ocirc;ng VNB lu&ocirc;n được bảo h&agrave;nh chĩnh h&atilde;ng với ti&ecirc;u ch&iacute; nhanh, gọn. Ngo&agrave;i ra, bạn sẽ tuyệt đối y&ecirc;n t&acirc;m về ch&acirc;́t lượng c&aacute;c sản phẩm cũng như được tư vấn tận t&igrave;nh, chi tiết nhất.</p>\r\n<p><strong>Xem th&ecirc;m</strong>:&nbsp;<a href=\"https://shopvnb.com/\">Shop b&aacute;n vợt cầu l&ocirc;ng ch&iacute;nh h&atilde;ng gi&aacute; rẻ to&agrave;n quốc | ShopVNB</a>.</p>', '2025-05-08 04:57:43', '', 'image/lop-day-cau-long-o-ha-noi-1_339948.jpg', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `branch`
--

INSERT INTO `branch` (`id`, `name`, `address`, `userId`) VALUES
(1, 'Ho Chi Minh', '123 Main Branch St', 1),
(2, 'Ha Noi', '456 Second Branch St', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Yonex'),
(2, 'Li-Ning'),
(3, 'Victor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `faq`
--

INSERT INTO `faq` (`id`, `category`, `question`, `answer`, `name`, `email`, `phone`, `displayOrder`) VALUES
(1, 'Mua hàng', 'Làm thế nào để đặt hàng trên website VNB Sports?', '<p>Để đặt hàng trên website VNB Sports, bạn có thể thực hiện theo các bước sau:</p>\n<ol>\n  <li>Truy cập website <a href=\"https://shopvnb.com\">shopvnb.com</a></li>\n  <li>Tìm kiếm và chọn sản phẩm bạn muốn mua</li>\n  <li>Nhấn nút \"Thêm vào giỏ hàng\"</li>\n  <li>Kiểm tra giỏ hàng và nhấn \"Thanh toán\"</li>\n  <li>Điền thông tin giao hàng và chọn phương thức thanh toán</li>\n  <li>Xác nhận đơn hàng</li>\n</ol>\n<p>Sau khi đặt hàng thành công, bạn sẽ nhận được email xác nhận đơn hàng và nhân viên của chúng tôi sẽ liên hệ để xác nhận lại thông tin.</p>', 'Alice', 'alice@example.com', '0123456789', 1),
(2, 'Mua hàng', 'Tôi có thể mua hàng mà không cần đăng ký tài khoản không?', '<p>Có, bạn có thể mua hàng trên website VNB Sports mà không cần đăng ký tài khoản. Khi thanh toán, bạn chỉ cần điền đầy đủ thông tin giao hàng và chọn phương thức thanh toán.</p>\n<p>Tuy nhiên, chúng tôi khuyên bạn nên đăng ký tài khoản để:</p>\n<ul>\n  <li>Theo dõi lịch sử đơn hàng dễ dàng</li>\n  <li>Lưu thông tin giao hàng cho lần mua sau</li>\n  <li>Nhận thông tin về chương trình khuyến mãi</li>\n  <li>Tích lũy điểm thưởng và nhận ưu đãi</li>\n</ul>', 'Bob', 'bob@example.com', '0987654321', 1),
(3, 'Mua hàng', 'Làm thế nào để kiểm tra tình trạng đơn hàng của tôi?', '<p>Để kiểm tra tình trạng đơn hàng, bạn có thể thực hiện một trong các cách sau:</p>\n<ol>\n  <li><strong>Đăng nhập tài khoản:</strong> Nếu bạn đã đăng ký, hãy đăng nhập và vào mục \"Đơn hàng của tôi\" để xem tình trạng đơn hàng.</li>\n  <li><strong>Kiểm tra email:</strong> Chúng tôi sẽ gửi email cập nhật tình trạng đơn hàng cho bạn.</li>\n  <li><strong>Liên hệ hotline:</strong> Gọi số hotline 0936155994 và cung cấp mã đơn hàng để nhân viên kiểm tra giúp bạn.</li>\n</ol>', 'Carol', 'carol@example.com', '0909123456', 1),
(4, 'Mua hàng', 'Tôi có thể hủy đơn hàng sau khi đã đặt không?', '<p>Bạn có thể hủy đơn hàng trong vòng 24 giờ sau khi đặt hàng và trước khi đơn hàng được giao cho đơn vị vận chuyển. Để hủy đơn hàng, bạn có thể:</p>\n<ul>\n  <li>Đăng nhập tài khoản và chọn \"Hủy đơn hàng\" trong mục \"Đơn hàng của tôi\"</li>\n  <li>Gọi hotline 0936155994 để được hỗ trợ hủy đơn hàng</li>\n</ul>\n<p>Lưu ý: Đối với đơn hàng đã được giao cho đơn vị vận chuyển, bạn sẽ không thể hủy đơn hàng. Trong trường hợp này, bạn có thể từ chối nhận hàng hoặc liên hệ với chúng tôi để được hướng dẫn đổi/trả hàng.</p>', 'Dave', 'dave@example.com', '0912345678', 1),
(5, 'Sản phẩm', 'Làm thế nào để biết sản phẩm còn hàng hay không?', '<p>Trên trang chi tiết sản phẩm, bạn có thể kiểm tra tình trạng hàng như sau:</p>\n<ul>\n  <li>Nếu sản phẩm còn hàng, bạn sẽ thấy nút \"Thêm vào giỏ hàng\" và thông tin về số lượng còn lại.</li>\n  <li>Nếu sản phẩm hết hàng, sẽ hiển thị thông báo \"Hết hàng\" hoặc \"Tạm hết hàng\".</li>\n</ul>\n<p>Ngoài ra, bạn có thể liên hệ trực tiếp với chúng tôi qua hotline 0936155994 để kiểm tra tình trạng hàng chính xác nhất, đặc biệt là đối với các sản phẩm hot hoặc mới ra mắt.</p>', 'Eve', 'eve@example.com', '0934567890', 1),
(6, 'Sản phẩm', 'Làm thế nào để phân biệt hàng chính hãng và hàng giả?', '<p>VNB Sports cam kết chỉ bán hàng chính hãng 100%. Để phân biệt hàng chính hãng và hàng giả, bạn có thể lưu ý các điểm sau:</p>\n<ol>\n  <li><strong>Tem nhãn:</strong> Sản phẩm chính hãng luôn có tem nhãn rõ ràng, in sắc nét và có mã QR hoặc mã vạch để kiểm tra.</li>\n  <li><strong>Chất lượng:</strong> Sản phẩm chính hãng có chất lượng hoàn thiện cao, không có lỗi trong quá trình sản xuất.</li>\n  <li><strong>Giá cả:</strong> Hàng chính hãng thường có giá cả phù hợp với thị trường, không quá rẻ so với mặt bằng chung.</li>\n  <li><strong>Bao bì:</strong> Hàng chính hãng có bao bì đẹp, chắc chắn, thông tin đầy đủ và rõ ràng.</li>\n</ol>\n<p>Khi mua hàng tại VNB Sports, bạn sẽ nhận được hóa đơn và phiếu bảo hành chính hãng (nếu có), đảm bảo quyền lợi của bạn.</p>', 'Frank', 'frank@example.com', '0945678901', 1),
(7, 'Sản phẩm', 'Làm thế nào để chọn vợt cầu lông phù hợp?', '<p>Để chọn vợt cầu lông phù hợp, bạn nên xem xét các yếu tố sau:</p>\n<ol>\n  <li><strong>Trình độ chơi:</strong> Người mới chơi nên chọn vợt nhẹ, cân bằng. Người chơi trung cấp và cao cấp có thể chọn vợt theo phong cách chơi.</li>\n  <li><strong>Trọng lượng vợt:</strong> Vợt nhẹ (80-84g) dễ điều khiển, vợt nặng (85-89g) tạo lực đánh mạnh hơn.</li>\n  <li><strong>Cân bằng vợt:</strong> Cân bằng đầu nhẹ giúp phòng thủ tốt, cân bằng đầu nặng tăng sức mạnh tấn công.</li>\n  <li><strong>Độ cứng của thân vợt:</strong> Thân mềm giúp tạo lực tốt cho người mới, thân cứng phù hợp với người có kỹ thuật và sức mạnh.</li>\n</ol>\n<p>Bạn có thể đến trực tiếp cửa hàng VNB Sports để được tư vấn và test vợt trước khi mua. Nhân viên của chúng tôi sẽ giúp bạn chọn vợt phù hợp nhất với trình độ và phong cách chơi của bạn.</p>', 'Grace', 'grace@example.com', '0956789012', 1),
(8, 'Bảo hành', 'Chính sách bảo hành của VNB Sports như thế nào?', '<p>VNB Sports áp dụng chính sách bảo hành theo quy định của nhà sản xuất:</p>\n<ul>\n  <li><strong>Vợt cầu lông:</strong> Bảo hành 6-12 tháng tùy thương hiệu, chỉ áp dụng cho lỗi sản xuất (nứt, gãy khung vợt trong điều kiện sử dụng bình thường).</li>\n  <li><strong>Giày cầu lông:</strong> Bảo hành 1-3 tháng tùy thương hiệu, chỉ áp dụng cho lỗi sản xuất như bong đế, rách đường chỉ may.</li>\n  <li><strong>Phụ kiện:</strong> Bảo hành 1 tháng cho lỗi sản xuất.</li>\n</ul>\n<p>Lưu ý: Bảo hành không áp dụng cho các trường hợp hư hỏng do sử dụng không đúng cách, va đập mạnh, hoặc tự ý sửa chữa. Để được bảo hành, bạn cần giữ hóa đơn và phiếu bảo hành.</p>', 'Henry', 'henry@example.com', '0967890123', 1),
(9, 'Bảo hành', 'Làm thế nào để yêu cầu bảo hành sản phẩm?', '<p>Để yêu cầu bảo hành sản phẩm, bạn có thể thực hiện theo các bước sau:</p>\n<ol>\n  <li>Mang sản phẩm cần bảo hành đến bất kỳ cửa hàng VNB Sports nào trên toàn quốc.</li>\n  <li>Xuất trình hóa đơn mua hàng và phiếu bảo hành (nếu có).</li>\n  <li>Nhân viên của chúng tôi sẽ kiểm tra sản phẩm và xác định lỗi.</li>\n  <li>Nếu sản phẩm đủ điều kiện bảo hành, chúng tôi sẽ tiến hành sửa chữa hoặc đổi mới sản phẩm theo chính sách của từng thương hiệu.</li>\n</ol>\n<p>Thời gian bảo hành thông thường từ 7-15 ngày tùy thuộc vào tình trạng sản phẩm và chính sách của nhà sản xuất. Trong trường hợp cần thời gian lâu hơn, chúng tôi sẽ thông báo cụ thể cho bạn.</p>', 'Irene', 'irene@example.com', '0978901234', 1),
(10, 'Vận chuyển', 'Phí vận chuyển được tính như thế nào?', '<p>Phí vận chuyển được tính dựa trên các yếu tố sau:</p>\n<ul>\n  <li><strong>Khoảng cách:</strong> Phí vận chuyển sẽ khác nhau tùy thuộc vào khoảng cách từ kho hàng đến địa chỉ giao hàng.</li>\n  <li><strong>Trọng lượng và kích thước:</strong> Sản phẩm càng nặng và kích thước càng lớn, phí vận chuyển càng cao.</li>\n  <li><strong>Đơn vị vận chuyển:</strong> Mỗi đơn vị vận chuyển có mức phí khác nhau.</li>\n</ul>\n<p>Cụ thể:</p>\n<ul>\n  <li>Nội thành Hà Nội và TP.HCM: 20.000đ - 30.000đ</li>\n  <li>Các tỉnh thành khác: 30.000đ - 50.000đ</li>\n</ul>\n<p>Đặc biệt, VNB Sports áp dụng chính sách miễn phí vận chuyển cho đơn hàng từ 500.000đ (nội thành) và từ 1.000.000đ (toàn quốc).</p>', 'John', 'john@example.com', '0989012345', 1),
(11, 'Vận chuyển', 'Thời gian giao hàng là bao lâu?', '<p>Thời gian giao hàng phụ thuộc vào khu vực giao hàng:</p>\n<ul>\n  <li><strong>Nội thành Hà Nội và TP.HCM:</strong> 1-2 ngày làm việc</li>\n  <li><strong>Các tỉnh thành miền Bắc và miền Nam:</strong> 2-3 ngày làm việc</li>\n  <li><strong>Các tỉnh miền Trung và Tây Nguyên:</strong> 3-5 ngày làm việc</li>\n  <li><strong>Khu vực hải đảo và vùng sâu vùng xa:</strong> 5-7 ngày làm việc</li>\n</ul>\n<p>Lưu ý: Thời gian giao hàng có thể bị ảnh hưởng bởi các yếu tố như thời tiết, giao thông, dịch bệnh, v.v. Trong trường hợp này, chúng tôi sẽ thông báo cho bạn về sự chậm trễ và thời gian giao hàng dự kiến mới.</p>', 'Karen', 'karen@example.com', '0990123456', 1),
(12, 'Đổi trả', 'Chính sách đổi trả của VNB Sports như thế nào?', '<p>VNB Sports áp dụng chính sách đổi trả như sau:</p>\n<ul>\n  <li><strong>Thời gian đổi trả:</strong> Trong vòng 7 ngày kể từ ngày nhận hàng.</li>\n  <li><strong>Điều kiện đổi trả:</strong>\n    <ul>\n      <li>Sản phẩm còn nguyên vẹn, không có dấu hiệu đã qua sử dụng</li>\n      <li>Còn đầy đủ tem nhãn, bao bì, phụ kiện đi kèm</li>\n      <li>Có hóa đơn mua hàng hoặc phiếu giao hàng</li>\n    </ul>\n  </li>\n  <li><strong>Các trường hợp được đổi trả:</strong>\n    <ul>\n      <li>Sản phẩm bị lỗi do nhà sản xuất</li>\n      <li>Sản phẩm không đúng mẫu mã, kích thước như đã đặt</li>\n      <li>Sản phẩm không đúng như mô tả trên website</li>\n    </ul>\n  </li>\n</ul>\n<p>Lưu ý: Đối với vợt cầu lông đã được căng dây, chúng tôi không áp dụng chính sách đổi trả trừ khi sản phẩm bị lỗi do nhà sản xuất.</p>', 'Leo', 'leo@example.com', '0911123456', 1),
(13, 'Đổi trả', 'Làm thế nào để đổi hoặc trả sản phẩm?', '<p>Để đổi hoặc trả sản phẩm, bạn có thể thực hiện theo các bước sau:</p>\n<ol>\n  <li><strong>Liên hệ với chúng tôi:</strong> Gọi hotline 0936155994 hoặc gửi email đến info@shopvnb.com để thông báo về việc đổi/trả sản phẩm.</li>\n  <li><strong>Cung cấp thông tin:</strong> Mã đơn hàng, tên sản phẩm, lý do đổi/trả.</li>\n  <li><strong>Nhận hướng dẫn:</strong> Nhân viên của chúng tôi sẽ hướng dẫn bạn cách thức đổi/trả sản phẩm.</li>\n  <li><strong>Gửi sản phẩm:</strong> Đóng gói sản phẩm cẩn thận và gửi về địa chỉ được cung cấp, kèm theo hóa đơn và phiếu đổi/trả.</li>\n</ol>\n<p>Sau khi nhận được sản phẩm và kiểm tra, chúng tôi sẽ tiến hành đổi sản phẩm mới hoặc hoàn tiền cho bạn trong vòng 7 ngày làm việc.</p>', 'Mia', 'mia@example.com', '0922234567', 1),
(14, 'Thanh toán', 'VNB Sports chấp nhận những phương thức thanh toán nào?', '<p>VNB Sports chấp nhận các phương thức thanh toán sau:</p>\n<ul>\n  <li><strong>Thanh toán khi nhận hàng (COD):</strong> Bạn thanh toán trực tiếp cho nhân viên giao hàng khi nhận sản phẩm.</li>\n  <li><strong>Chuyển khoản ngân hàng:</strong> Chuyển tiền vào tài khoản ngân hàng của VNB Sports.</li>\n  <li><strong>Thanh toán qua thẻ tín dụng/ghi nợ:</strong> Thanh toán trực tuyến qua cổng thanh toán an toàn.</li>\n  <li><strong>Ví điện tử:</strong> Thanh toán qua Momo, ZaloPay, VNPay, v.v.</li>\n  <li><strong>Trả góp:</strong> Áp dụng cho đơn hàng từ 3.000.000đ trở lên, hợp tác với các ngân hàng và công ty tài chính.</li>\n</ul>', 'Nina', 'nina@example.com', '0933345678', 1),
(15, 'Thanh toán', 'Thanh toán trực tuyến có an toàn không?', '<p>Có, thanh toán trực tuyến tại VNB Sports hoàn toàn an toàn. Chúng tôi áp dụng các biện pháp bảo mật cao nhất để bảo vệ thông tin thanh toán của bạn:</p>\n<ul>\n  <li>Sử dụng công nghệ mã hóa SSL 256-bit để bảo vệ thông tin cá nhân và thông tin thanh toán.</li>\n  <li>Hợp tác với các cổng thanh toán uy tín và được cấp phép như VNPAY, OnePay, v.v.</li>\n  <li>Tuân thủ các tiêu chuẩn bảo mật quốc tế PCI DSS.</li>\n  <li>Không lưu trữ thông tin thẻ tín dụng của khách hàng.</li>\n</ul>\n<p>Nếu bạn vẫn lo ngại về vấn đề bảo mật, bạn có thể chọn phương thức thanh toán khi nhận hàng (COD) hoặc chuyển khoản ngân hàng.</p>', 'Oscar', 'oscar@example.com', '0944456789', 1),
(16, 'Tài khoản', 'Làm thế nào để đăng ký tài khoản trên website VNB Sports?', '<p>Để đăng ký tài khoản trên website VNB Sports, bạn có thể thực hiện theo các bước sau:</p>\n<ol>\n  <li>Truy cập website <a href=\"https://shopvnb.com\">shopvnb.com</a></li>\n  <li>Nhấn vào nút \"Đăng ký\" ở góc trên bên phải màn hình</li>\n  <li>Điền đầy đủ thông tin cá nhân: họ tên, email, số điện thoại, mật khẩu</li>\n  <li>Nhấn nút \"Đăng ký\" để hoàn tất</li>\n</ol>\n<p>Sau khi đăng ký thành công, bạn sẽ nhận được email xác nhận. Hãy nhấn vào liên kết trong email để kích hoạt tài khoản của bạn.</p>', 'Paul', 'paul@example.com', '0955567890', 1),
(17, 'Tài khoản', 'Tôi quên mật khẩu, làm thế nào để lấy lại?', '<p>Nếu bạn quên mật khẩu, bạn có thể thực hiện các bước sau để lấy lại:</p>\n<ol>\n  <li>Truy cập trang đăng nhập của VNB Sports</li>\n  <li>Nhấn vào liên kết \"Quên mật khẩu\"</li>\n  <li>Nhập địa chỉ email đã đăng ký tài khoản</li>\n  <li>Nhấn nút \"Gửi yêu cầu\"</li>\n  <li>Kiểm tra email và làm theo hướng dẫn để đặt lại mật khẩu</li>\n</ol>\n<p>Lưu ý: Liên kết đặt lại mật khẩu chỉ có hiệu lực trong vòng 24 giờ. Nếu bạn không nhận được email, hãy kiểm tra thư mục spam hoặc liên hệ với chúng tôi để được hỗ trợ.</p>', 'Queenie', 'queenie@example.com', '0966678901', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `formal inf`
--

CREATE TABLE `formal inf` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `formal inf`
--

INSERT INTO `formal inf` (`id`, `name`, `description`) VALUES
(1, 'Email shop', 'info@example.com'),
(2, 'Hotline', '0123456789'),
(3, 'Logo', 'https://cdn.shopvnb.com/themes/images/logo.svg'),
(4, 'banner', 'https://cdn.shopvnb.com/img/480x0/uploads/slider/1000z-launch-website-banner_1695177885.webp'),
(5, 'Shipping benefit', 'Mien phi toan quoc'),
(6, 'Refund', 'Trong vòng 8 ngày'),
(7, 'Company name', 'Badminton'),
(8, 'Facebook', 'https://www.facebook.com/'),
(9, 'Instagram', 'https://www.instagram.com/'),
(10, 'Youtube', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `has`
--

CREATE TABLE `has` (
  `productCartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `has`
--

INSERT INTO `has` (`productCartId`, `productId`, `quantity`) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(2, 4, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduce`
--

CREATE TABLE `introduce` (
  `id` int(11) NOT NULL,
  `section` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `introduce`
--

INSERT INTO `introduce` (`id`, `section`, `content`, `note`) VALUES
(1, 'Giới thiệu', '<p>Bài viết được ShopVNB - Hệ thống shop cầu lông hàng đầu Việt Nam với hơn 1 Super Center, 5 shop Premium\n              và 66 chi nhánh trên toàn quốc kiểm duyệt và chia sẻ.</p>\n\n            <p>Tháng 12/2011, Forum <a href=\"https://www.vnbadminton.com/\">https://www.vnbadminton.com/</a> được thành\n              lập, đây là website cung cấp những thông tin chuyên nghiệp về tin tức và diễn đàn cầu lông. Nhận thấy sự\n              phát triển của cầu lông trong nước, bên cạnh đó là mong muốn phục vụ tốt hơn cho thành viên và những bạn\n              yêu mến cầu lông. Tháng 12/2012, Ban Quản Trị Vnbadminton đã mạnh dạn xây dựng Shop cầu lông VNB (<a\n                href=\"https://shopvnb.com/\">https://shopvnb.com/</a>) để có thể làm được vai trò này. Với kinh nghiệm\n              nhiều năm hoạt động trong lĩnh vực cầu lông, đến với shopvnb bạn sẽ yên tâm về chất lượng sản phẩm, đội\n              ngũ tư vấn sản phẩm chuyên nghiệp và giá cả hợp lý.</p>\n\n            <p>Bên cạnh một website chuyên nghiệp thì Shop VNB còn phát triển thêm 1 kênh fanpage <a\n                href=\"https://www.facebook.com/caulongvnbadminton/\">https://www.facebook.com/caulongvnbadminton/</a>\n              để cung cấp thông tin nhanh hơn cho thành viên yêu mến cầu lông. Chính sự chuyên nghiệp này đã được tạo\n              được uy tín rất lớn trong cộng đồng yêu mến cầu lông trong và ngoài nước.</p>\n\n            <p>Hiện nay, Hệ thống cửa hàng cầu lông VNB đã có hơn 50 chi nhánh trải dài trên khắp mọi miền Đất nước.\n              Với tiêu chí luôn đảm bảo cung cấp đầy đủ các mặt hàng chuyên dụng dành riêng cho bộ môn cầu lông như\n              giày, vợt cầu lông, túi vợt, balo, quần áo, phụ kiện,... nổi trội với nhiều phân khúc giá trải dài từ\n              thấp đến cao nên các lông thủ cần mua gì cứ đến ngay với ShopVNB, chắc chắn sẽ làm các bạn vô cùng hài\n              lòng.</p>\n\n            <p>ShopVNB luôn là nơi cung cấp nhanh nhất các mặt hàng hot đến từ những thương hiệu top đầu thế giới như\n              Yonex, Lining, Victor, Mizuno,... Không những vậy các sản phẩm đến từ các hãng tầm trung và giá rẻ như\n              Adidas, Forza, Apacs, VNB, Kamito,... Shop cầu lông VNB cũng luôn cung cấp đầy đủ và mẫu mã rất đa dạng.\n            </p>\n\n            <p class=\"fw-bold\">Đặc biệt, ShopVNB là địa chỉ nổi tiếng căng vợt cầu lông chuẩn nhất ở Việt Nam. Tất cả\n              các cửa hàng được trang bị máy đan vợt điện tử cao cấp cùng nhân viên ở shop luôn được trau dồi liên tục\n              các kĩ thuật đan vợt hàng đầu trên thế giới.</p>', ''),
(2, 'Tầm nhìn', '<p class=\"fw-bold\">\"Trở thành nhà phân phối và sản xuất thể thao lớn nhất Việt Nam\"</p>\n          <ul>\n            <li>Trở thành đơn vị dẫn đầu cả nước trong lĩnh vực thể thao, giúp nâng cao sức khỏe cộng đồng.</li>\n            <li>Tự lực sản xuất các sản phẩm chất lượng cao, phù hợp với nhu cầu của người Việt.</li>\n            <li>Xây dựng hệ thống cửa hàng rộng khắp 64 tỉnh thành.</li>\n          </ul>', ''),
(3, 'Sứ mệnh', '<p class=\"fw-bold\">\"VNB SPORTS cam kết mang đến những sản phẩm, dịch vụ chất lượng tốt nhất phục vụ cho\n            người chơi thể thao để nâng cao sức khỏe của chính mình.\"</p>\n          <ul>\n            <li><strong>Đối với thị trường:</strong> Trở thành Thương hiệu cầu lông của người Việt, cung cấp những sản\n              phẩm cầu lông chất lượng tốt nhất.</li>\n            <li><strong>Đối với đối tác:</strong> Đề cao tinh thần hợp tác cùng phát triển; cô gắng trở thành \"Người\n              đồng hành số 1\" của các đối tác.</li>\n            <li><strong>Đối với nhân viên:</strong> Xây dựng môi trường làm việc chuyên nghiệp, năng động, sáng tạo và\n              nhân văn.</li>\n            <li><strong>Đối với xã hội:</strong> Hài hòa lợi ích doanh nghiệp với lợi ích xã hội; đóng góp tích cực\n              vào các hoạt động hướng về cộng đồng.</li>\n          </ul>', ''),
(4, 'Giá trị cốt lõi', '<p class=\"fw-bold\">TRUNG - TÍN - TÂM - TRÍ - NHÂN</p>\n          <ul>\n            <li><strong>TRUNG:</strong> Trung thực với Khách hàng - Đối tác - Nhân viên.</li>\n            <li><strong>TÍN:</strong> VNB SPORTS đặt chữ TÍN lên hàng đầu, lấy chữ TÍN làm trọng tâm.</li>\n            <li><strong>TÂM:</strong> VNB SPORTS đặt chữ TÂM là một trong những nền tảng quan trọng của việc kinh\n              doanh.</li>\n            <li><strong>TRÍ:</strong> VNB SPORTS luôn đề cao sự sáng tạo, là đòn bẩy phát triển.</li>\n            <li><strong>NHÂN:</strong> VNB SPORTS xây dựng các mối quan hệ bằng sự thiện chí, tinh thần nhân văn.</li>\n          </ul>', ''),
(5, 'Triết lý kinh doanh', '<p class=\"text-center\">VNB SPORTS mong muốn trở thành một công ty phân phối và sản xuất sản phẩm cầu lông\n            chất lượng tốt nhất ở Việt Nam. Vì thế chúng tôi tâm niệm rằng chất lượng và sáng tạo là người bạn đồng\n            hành của VNB SPORTS. Chúng tôi xem khách hàng là trung tâm và cam kết đáp ứng mọi nhu cầu của khách hàng.\n          </p>', ''),
(6, 'Chính sách chất lượng', '<p>Luôn thỏa mãn và có trách nhiệm với khách hàng bằng cách không ngừng cải tiến, đa dạng hóa sản phẩm và\n            dịch vụ, đảm bảo chất lượng với giá cả cạnh tranh, tôn trọng đạo đức kinh doanh và tuân theo pháp luật.\n          </p>\n          <p class=\"fw-bold mt-3 text-center\">ShopVNB cam kết bán hàng chính hãng, không bán hàng kém chất lượng làm\n            ảnh hưởng đến thành viên.</p>', ''),
(7, 'Khẩu hiệu', 'Together we can do it!', ''),
(8, 'CÓ THỂ BẠN SẼ THÍCH', 'HƯỚNG DẪN MUA HÀNG', 'https://shopvnb.com/huong-dan-mua-hang'),
(9, 'CÓ THỂ BẠN SẼ THÍCH', 'Hướng dẫn mua hàng cũ', 'https://shopvnb.com/huong-dan-mua-hang-cu'),
(10, 'CÓ THỂ BẠN SẼ THÍCH', 'Các sản phẩm khuyến mại', 'https://shopvnb.com/san-pham-khuyen-mai'),
(11, 'CÓ THỂ BẠN SẼ THÍCH', 'Cách thức thanh toán khi mua hàng tại ShopVNB', 'https://shopvnb.com/cach-thanh-toan'),
(12, 'CÓ THỂ BẠN SẼ THÍCH', 'Đặt hàng online', 'https://shopvnb.com/dat-hang-online'),
(13, 'DANH MỤC TIN TỨC', 'Thông Tin Tổng Hợp Cầu Lông', 'https://shopvnb.com/thong-tin-tong-hop'),
(14, 'DANH MỤC TIN TỨC', 'Câu Lạc Bộ - Nhóm Cầu Lông', 'https://shopvnb.com/cau-lac-bo-nhom'),
(15, 'DANH MỤC TIN TỨC', 'Thầy Dạy Đánh Cầu Lông', 'https://shopvnb.com/thay-day-cau-long'),
(16, 'DANH MỤC TIN TỨC', 'Tin tức VNB Sports', 'https://shopvnb.com/tin-tuc-vnb-sports'),
(17, 'DANH MỤC TIN TỨC', 'Chính sách', 'https://shopvnb.com/chinh-sach'),
(18, 'DANH MỤC TIN TỨC', 'Tin Tennis', 'https://shopvnb.com/tin-tennis'),
(19, 'DANH MỤC TIN TỨC', 'Sân Tennis', 'https://shopvnb.com/san-tennis'),
(20, 'DANH MỤC TIN TỨC', 'Kiến thức tennis', 'https://shopvnb.com/kien-thuc-tennis'),
(21, 'DANH MỤC TIN TỨC', 'Hiểu đúng về ghế massage', 'https://shopvnb.com/ghe-massage'),
(22, 'DANH MỤC TIN TỨC', 'Sống khoẻ cùng VNB Sports', 'https://shopvnb.com/song-khoe'),
(23, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Yonex', 'https://shopvnb.com/vot-cau-long-yonex'),
(24, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Victor', 'https://shopvnb.com/vot-cau-long-victor'),
(25, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Lining', 'https://shopvnb.com/vot-cau-long-lining'),
(26, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Mizuno', 'https://shopvnb.com/vot-cau-long-mizuno'),
(27, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Apacs', 'https://shopvnb.com/vot-cau-long-apacs'),
(28, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông VNB', 'https://shopvnb.com/vot-cau-long-vnb'),
(29, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Proace', 'https://shopvnb.com/vot-cau-long-proace'),
(30, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Forza', 'https://shopvnb.com/vot-cau-long-forza'),
(31, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông FlyPower', 'https://shopvnb.com/vot-cau-long-flypower'),
(32, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Tenway', 'https://shopvnb.com/vot-cau-long-tenway'),
(33, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Pro Kennex', 'https://shopvnb.com/vot-cau-long-pro-kennex'),
(34, 'DANH MỤC SẢN PHẨM', 'Vợt Cầu Lông Babolat', 'https://shopvnb.com/vot-cau-long-babolat');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `orderId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `receiverName` varchar(255) NOT NULL,
  `receiverPhone` varchar(20) NOT NULL,
  `receiverAddress` text NOT NULL,
  `receiverEmail` varchar(255) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `totalPayment` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`orderId`, `userId`, `receiverName`, `receiverPhone`, `receiverAddress`, `receiverEmail`, `paymentMethod`, `orderDate`, `totalPayment`) VALUES
(1, 1, 'john doe', '0123456789', 'abc,xyz, Phường 1, Quận 1, Hồ Chí Minh', 'john@example.com', 'COD', '2025-05-07 11:39:08', 100.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(50) DEFAULT 'N/A',
  `color` varchar(50) DEFAULT 'N/A',
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `orderId`, `productId`, `name`, `size`, `color`, `quantity`, `price`, `image`) VALUES
(1, 1, 1, 'Badminton Racket A', 'Standard', 'N/A', 1, 100.00, 'uploads/681650d0a2d29-a6c766496832d86c81232.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `createdDate` datetime DEFAULT current_timestamp(),
  `category` varchar(50) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `brandId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

-- Insert badminton rackets (Vợt cầu lông)
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `brandId`) VALUES
(1, 'Yonex Astrox 100ZZ', 'Premium offensive racket with excellent control and power', 299.99, 'Vợt cầu lông', 4.9, 'Black/Gold', 1),
(2, 'Li-Ning Woods N90-III', 'Professional racket with superior balance', 249.99, 'Vợt cầu lông', 4.8, 'White/Red', 2),
(3, 'Victor TK-15', 'All-around performance racket', 189.99, 'Vợt cầu lông', 4.7, 'Blue/Silver', 3);

-- Insert badminton shoes (Giày cầu lông)
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `size`, `brandId`) VALUES
(4, 'Yonex Power Cushion 65Z3', 'Professional court shoes with excellent cushioning', 129.99, 'Giày cầu lông', 4.8, 'White/Blue', '42', 1),
(5, 'Li-Ning Cloud', 'Lightweight professional badminton shoes', 119.99, 'Giày cầu lông', 4.7, 'Black/Red', '43', 2),
(6, 'Victor A922', 'Comfortable training shoes', 89.99, 'Giày cầu lông', 4.6, 'White/Green', '41', 3);

-- Insert badminton shirts (Áo cầu lông)
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `size`, `brandId`) VALUES
(7, 'Yonex Tournament Jersey', 'Professional tournament jersey with moisture control', 49.99, 'Áo cầu lông', 4.8, 'Blue', 'L', 1),
(8, 'Li-Ning National Team Shirt', 'Official team competition shirt', 45.99, 'Áo cầu lông', 4.7, 'Red', 'M', 2),
(9, 'Victor Training Shirt', 'Comfortable training shirt with cooling technology', 35.99, 'Áo cầu lông', 4.6, 'Black', 'XL', 3);

-- Insert badminton shorts (Quần cầu lông)
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `size`, `brandId`) VALUES
(10, 'Yonex Team Shorts', 'Professional tournament shorts', 39.99, 'Quần cầu lông', 4.7, 'Navy', 'L', 1),
(11, 'Li-Ning Competition Shorts', 'Lightweight competition shorts', 34.99, 'Quần cầu lông', 4.6, 'Black', 'M', 2), 
(12, 'Victor Court Shorts', 'Comfortable court shorts', 29.99, 'Quần cầu lông', 4.5, 'White', 'XL', 3);

-- Insert badminton bags (Túi vợt)
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `brandId`) VALUES
(13, 'Yonex Pro 6 Racket Bag', 'Professional racket bag with 6 racket capacity', 89.99, 'Túi vợt', 4.8, 'Blue/Black', 1),
(14, 'Li-Ning 9-in-1 Bag', 'Large capacity tournament bag', 79.99, 'Túi vợt', 4.7, 'Red/Black', 2),
(15, 'Victor BR290 Racket Bag', 'Multi-purpose racket bag', 69.99, 'Túi vợt', 4.6, 'Black', 3);

-- Insert sports backpacks (Balo thể thao)  
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `brandId`) VALUES
(16, 'Yonex Pro Backpack', 'Professional sports backpack', 69.99, 'Balo thể thao', 4.7, 'Black', 1),
(17, 'Li-Ning Elite Backpack', 'Premium sports backpack', 59.99, 'Balo thể thao', 4.6, 'Blue', 2),
(18, 'Victor BR008 Backpack', 'Multi-purpose sports backpack', 49.99, 'Balo thể thao', 4.5, 'Red', 3);

-- Insert accessories (Phụ kiện)
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `brandId`) VALUES 
(19, 'Yonex Grip Tape', 'Professional grip tape', 9.99, 'Phụ kiện', 4.8, 'Black', 1),
(20, 'Li-Ning Wrist Band', 'Sports wrist band', 7.99, 'Phụ kiện', 4.6, 'Blue', 2),
(21, 'Victor Sports Socks', 'Professional badminton socks', 12.99, 'Phụ kiện', 4.7, 'White', 3);

-- Insert shuttlecocks (Quả cầu)
INSERT INTO `product` (`id`, `name`, `description`, `price`, `category`, `rating`, `color`, `brandId`) VALUES
(22, 'Yonex AS-50 Shuttlecock', 'Tournament grade feather shuttlecock', 29.99, 'Quả cầu', 4.9, 'White', 1),
(23, 'Li-Ning A+600 Shuttlecock', 'Professional training shuttlecock', 24.99, 'Quả cầu', 4.7, 'White', 2),
(24, 'Victor Gold Champion', 'Competition grade shuttlecock', 27.99, 'Quả cầu', 4.8, 'White', 3);
--
-- Cấu trúc bảng cho bảng `productcart`
--

CREATE TABLE `productcart` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcart`
--

INSERT INTO `productcart` (`id`, `address`, `userId`) VALUES
(1, '123 Main St', 1),
(2, '456 Elm St', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `image_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `image_order`) VALUES
-- Vợt cầu lông images
(1, 1, 'images/yonex-astrox-100zz-1.jpg', 0),
(2, 1, 'images/yonex-astrox-100zz-2.jpg', 1),
(3, 2, 'images/lining-woods-n90-1.jpg', 0),
(4, 2, 'images/lining-woods-n90-2.jpg', 1), 
(5, 3, 'images/victor-tk15-1.jpg', 0),
(6, 3, 'images/victor-tk15-2.jpg', 1),

-- Giày cầu lông images
(7, 4, 'images/yonex-65z3-1.jpg', 0),
(8, 4, 'images/yonex-65z3-2.jpg', 1),
(9, 5, 'images/lining-cloud-1.jpg', 0),
(10, 5, 'images/lining-cloud-2.jpg', 1),
(11, 6, 'images/victor-a922-1.jpg', 0),
(12, 6, 'images/victor-a922-2.jpg', 1),

-- Áo cầu lông images  
(13, 7, 'images/yonex-jersey-1.jpg', 0),
(14, 7, 'images/yonex-jersey-2.jpg', 1),
(15, 8, 'images/lining-shirt-1.jpg', 0),
(16, 8, 'images/lining-shirt-2.jpg', 1),
(17, 9, 'images/victor-shirt-1.jpg', 0),
(18, 9, 'images/victor-shirt-2.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_ratings`
--

CREATE TABLE `product_ratings` (
  `product_id` int(11) NOT NULL,
  `average_rating` float DEFAULT 0,
  `total_reviews` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_ratings`
--

-- Insert product ratings
INSERT INTO `product_ratings` (`product_id`, `average_rating`, `total_reviews`) VALUES
-- Vợt cầu lông ratings
(1, 4.9, 50),
(2, 4.8, 35),
(3, 4.7, 42),

-- Giày cầu lông ratings
(4, 4.8, 28),
(5, 4.7, 31),
(6, 4.6, 25),

-- Áo cầu lông ratings
(7, 4.8, 19),
(8, 4.7, 22),
(9, 4.6, 15);


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `response`
--

CREATE TABLE `response` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('new','read','replied') DEFAULT 'new'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `response`
--

INSERT INTO `response` (`id`, `firstName`, `lastName`, `email`, `content`, `createdAt`, `status`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'Great service and products!', '2025-05-06 16:56:15', 'read'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'I love the badminton rackets here', '2025-05-06 16:56:15', 'replied'),
(3, 'Mike', 'Johnson', 'mike.johnson@example.com', 'The shipping was very fast', '2025-05-06 16:56:15', 'read'),
(4, 'Doan', 'Son', 'hoangsondoanngoc3@gmail.com', 'abc xyz', '2025-05-06 17:16:10', 'read');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `stars` int(11) DEFAULT NULL CHECK (`stars` between 1 and 5),
  `Product_id` int(11) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `review`
--
-- Insert reviews
INSERT INTO `review` (`id`, `userId`, `details`, `title`, `date`, `stars`, `Product_id`, `status`) VALUES
-- Reviews for Yonex Astrox 100ZZ
(1, 1, 'Excellent power and control, perfect for offensive players', 'Best offensive racket', '2025-05-01 10:00:00', 5, 1, 'approved'),
(2, 2, 'Great build quality but takes time to get used to', 'Solid racket', '2025-05-02 11:30:00', 4, 1, 'approved'),

-- Reviews for Li-Ning Woods N90-III  
(3, 2, 'Amazing balance and feel, worth every penny', 'Professional quality', '2025-05-03 09:15:00', 5, 2, 'approved'),
(4, 1, 'Good power but slightly heavy for me', 'Good but heavy', '2025-05-04 14:20:00', 4, 2, 'approved'),

-- Reviews for Victor TK-15
(5, 2, 'Perfect for intermediate players, great value', 'Great value racket', '2025-05-05 16:45:00', 5, 3, 'approved'),
(6, 1, 'Durable and reliable, good for daily practice', 'Reliable choice', '2025-05-06 13:10:00', 4, 3, 'approved'),

-- Reviews for shoes
(7, 1, 'Very comfortable and great grip', 'Perfect fit', '2025-05-07 11:20:00', 5, 4, 'approved'), 
(8, 2, 'Good cushioning but runs small', 'Size issue', '2025-05-08 10:30:00', 4, 5, 'approved'),

-- Reviews for shirts
(9, 2, 'Excellent moisture control', 'Great jersey', '2025-05-09 15:40:00', 5, 7, 'approved'),
(10, 1, 'Comfortable and stylish', 'Stylish choice', '2025-05-10 12:25:00', 5, 8, 'approved');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `sex` enum('M','F','Other') DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numOfVisit` int(11) DEFAULT 0,
  `role` enum('admin','customer') DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `phone`, `address`, `pass`, `sex`, `name`, `email`, `numOfVisit`, `role`) VALUES
(1, '0123456789', '123 Street A', 'hashedpass123', 'M', 'John Doe', 'john@example.com', 0, 'customer'),
(2, '0987654321', '456 Street B', 'hashedpass456', 'F', 'Jane Smith', 'jane@example.com', 0, 'customer'),
(5, '0123456780', '789 Street C', '1234567', 'M', 'Admin User', 'admin@example.com', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bang_cmt`
--
ALTER TABLE `bang_cmt`
  ADD PRIMARY KEY (`ID_cmt`),
  ADD KEY `fk_cm_tin` (`ID_tin`),
  ADD KEY `fk_cm_id` (`ID_cmt`),
  ADD KEY `fk_cm_reply` (`reply_to`),
  ADD KEY `fk_cm_user` (`ID_user`);

--
-- Chỉ mục cho bảng `bang_tin_tuc`
--
ALTER TABLE `bang_tin_tuc`
  ADD PRIMARY KEY (`ID_tin`);

--
-- Chỉ mục cho bảng `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `has`
--
ALTER TABLE `has`
  ADD PRIMARY KEY (`productCartId`,`productId`),
  ADD KEY `fk_has_product` (`productId`);

--
-- Chỉ mục cho bảng `introduce`
--
ALTER TABLE `introduce`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderId`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderId` (`orderId`),
  ADD KEY `order_details_ibfk_2` (`productId`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_1` (`brandId`);

--
-- Chỉ mục cho bảng `productcart`
--
ALTER TABLE `productcart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `review_ibfk_2` (`Product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `introduce`
--
ALTER TABLE `introduce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `productcart`
--
ALTER TABLE `productcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `response`
--
ALTER TABLE `response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bang_cmt`
--
ALTER TABLE `bang_cmt`
  ADD CONSTRAINT `fk_cm_reply` FOREIGN KEY (`reply_to`) REFERENCES `bang_cmt` (`ID_cmt`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cm_tin` FOREIGN KEY (`ID_tin`) REFERENCES `bang_tin_tuc` (`ID_tin`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cm_user` FOREIGN KEY (`ID_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `has`
--
ALTER TABLE `has`
  ADD CONSTRAINT `fk_has_product` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_has_productcart` FOREIGN KEY (`productCartId`) REFERENCES `productcart` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `order` (`orderId`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `brand` (`id`);

--
-- Các ràng buộc cho bảng `productcart`
--
ALTER TABLE `productcart`
  ADD CONSTRAINT `productcart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

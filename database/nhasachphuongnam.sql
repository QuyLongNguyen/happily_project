-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 27, 2021 lúc 05:07 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_congcu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `displayhomepage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `displayhomepage`) VALUES
(1, 0, 'Sách Thiếu Nhi', 0),
(4, 0, 'Sách Văn Học', 1),
(9, 4, 'Sách Văn Học Đương Đại', 0),
(10, 1, 'Truyện Cổ Tích/Ngụ Ngôn', 0),
(11, 1, 'Kiến Thức Bách Khoa', 0),
(13, 4, 'Thơ Văn', 0),
(14, 4, 'Light Novel', 0),
(17, 0, 'Sách Kinh Tế', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70'),
(2, 'test', 'test@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn E@', 'nve@gmail.com', 'Hà Nội', '123456', '202cb962ac59075b964b07152d234b70'),
(0, 'Nguyễn Văn B', 'nvb@gmail.com', 'Hà nội', '123', '202cb962ac59075b964b07152d234b70'),
(0, 'nguyen van g', 'nvg@gmail.com', 'hanoi', '0928429', '202cb962ac59075b964b07152d234b70'),
(0, 'nvf', 'nvf@gmail.com', 'hn', '083204832', '202cb962ac59075b964b07152d234b70'),
(0, 'quý long', 'quylong@gmail.com', 'hanoi', '123456', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(6, 'Một mình bạn cũng có thể đẩy xe khi có sự cố: Đây là cách làm hiệu quả nhất', '', '', 1, '1616141027_132218026418235444_8.jpg'),
(7, 'Siêu xe McLaren 720S màu tím độc nhất Việt Nam được nâng cấp gói độ Novitec N-Largo phiên bản giới hạn.', '', '', 1, '1616141044_132218026146647564_6.jpg'),
(8, 'Kia Seltos ồ ạt về đại lý, rục rịch tăng giá, vừa chốt ngày giao đã có phiên bản ‘cháy hàng’', '', '', 1, '1616141018_132218024511439283_3.jpg'),
(9, 'Những mẫu xe tầm giá 600 triệu phù hợp chạy dịch vụ', '', '', 1, '1616141005_132195018673480610_3.jpg'),
(10, 'VinFast President lộ diện tại đại lý: Dài hơn 5,1m, nội thất gây chú ý@', '', '', 1, '1616141036_132218024222456931_2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(16, 6, 11, 3, 5000000),
(17, 6, 6, 5, 8000000),
(18, 7, 11, 1, 5000000),
(19, 7, 4, 1, 6000000),
(20, 7, 7, 1, 9000000),
(21, 8, 7, 1, 558000),
(22, 9, 12, 1, 169000),
(23, 10, 21, 2, 89000),
(24, 11, 21, 1, 89000),
(25, 12, 7, 1, 558000),
(26, 12, 20, 1, 149000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `date`, `price`, `status`) VALUES
(11, 1, '2021-04-27', 89000, 1),
(12, 1, '2021-04-27', 707000, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `photo`, `price`, `discount`, `category_id`) VALUES
(3, 'Người Quay Tơ', '', '', 1, '1619357335_1619352000_nguoi-quay-to.jpg', 95000, 5, 4),
(4, 'Va Chạm', '', '', 1, '1619357479_va-cham-bo-2c.jpg', 269000, 7, 4),
(5, 'Làm Thế Nào Để Trở Thành Người Vĩ Đại Ngay Sáng Thứ Hai', '<p>Cuốn s&aacute;ch n&agrave;y đặc biệt cần cho:</p>\r\n\r\n<p>-&nbsp; Nh&acirc;n vi&ecirc;n kinh doanh thời vụ: S&aacute;ch cung cấp những kỹ thuật chốt giao dịch mới, v&agrave; t&igrave;m những c&aacute;ch để l&agrave;m mới v&agrave; cải thiện bản th&acirc;n trong lĩnh vực kinh doanh.</p>\r\n\r\n<p>-&nbsp; Người mới tham gia v&agrave;o mảng b&aacute;n h&agrave;ng: C&aacute;c bạn vừa chạm v&agrave;o vi&ecirc;n ngọc qu&yacute; trong l&agrave;ng s&aacute;ch viết về kinh doanh, b&aacute;n h&agrave;ng đấy, bởi v&igrave; cuốn s&aacute;ch n&agrave;y sẽ gi&uacute;p vốn kiến thức b&aacute;n h&agrave;ng của bạn đi trước tuổi nghề cả chục năm.</p>\r\n', '<p>Cuốn s&aacute;ch n&agrave;y đặc biệt cần cho:</p>\r\n\r\n<p>-&nbsp; Nh&acirc;n vi&ecirc;n kinh doanh thời vụ: S&aacute;ch cung cấp những kỹ thuật chốt giao dịch mới, v&agrave; t&igrave;m những c&aacute;ch để l&agrave;m mới v&agrave; cải thiện bản th&acirc;n trong lĩnh vực kinh doanh.</p>\r\n\r\n<p>-&nbsp; Người mới tham gia v&agrave;o mảng b&aacute;n h&agrave;ng: C&aacute;c bạn vừa chạm v&agrave;o vi&ecirc;n ngọc qu&yacute; trong l&agrave;ng s&aacute;ch viết về kinh doanh, b&aacute;n h&agrave;ng đấy, bởi v&igrave; cuốn s&aacute;ch n&agrave;y sẽ gi&uacute;p vốn kiến thức b&aacute;n h&agrave;ng của bạn đi trước tuổi nghề cả chục năm.</p>\r\n\r\n<p>-&nbsp; C&aacute;c chủ doanh nghiệp nhỏ: Cuốn s&aacute;ch n&agrave;y sẽ hướng dẫn c&aacute;c bạn c&aacute;ch để b&aacute;n được sản phẩm v&agrave; dịch vụ. Kh&ocirc;ng phải chỉ để tr&igrave;nh b&agrave;y, m&agrave; l&agrave; để b&aacute;n được h&agrave;ng. C&oacute; sự kh&aacute;c biệt rất lớn giữa tr&igrave;nh b&agrave;y v&agrave; b&aacute;n được h&agrave;ng, v&agrave; điều đ&oacute; sẽ được giải th&iacute;ch trong cuốn s&aacute;ch n&agrave;y.</p>\r\n\r\n<p>-&nbsp; C&aacute;c chủ doanh nghiệp lớn: H&atilde;y mua quyển s&aacute;ch n&agrave;y cho c&aacute;c đại diện b&aacute;n h&agrave;ng của c&aacute;c bạn, nếu bạn muốn họ tăng doanh số.</p>\r\n\r\n<p>-&nbsp; C&aacute;c trường đại học v&agrave; cao đẳng: Nếu c&aacute;c bạn muốn sinh vi&ecirc;n khoa kinh doanh của c&aacute;c bạn biết c&aacute;ch b&aacute;n được h&agrave;ng, th&igrave; đ&acirc;y l&agrave; cuốn s&aacute;ch phải đọc. Đ&acirc;y l&agrave; cuốn s&aacute;ch phải nằm trong chương tr&igrave;nh đ&agrave;o tạo.</p>\r\n', 1, '1619357610_lam-the-nao-de-tro-thanh-nguoi-ban-hang-vi-dai-ngay-sang-thu-hai.jpg', 68000, 10, 17),
(6, 'Tri Thức Kinh Điển Bằng Tranh Nguồn Gốc Các Loài', '', '', 1, '1619359113_tri-thuc-kinh-dien-bang-tranh-nguon-goc-cac-loai.jpg', 179000, 3, 1),
(7, 'Truyện Cổ Grimm(Ấn Bản Đầy Đủ Kèm Minh Họa)', '', '', 1, '1619359247_truyen-co-grimm-ban-cao-cap.jpg', 558000, 0, 1),
(8, 'Marketing B2B Sáng Tạo', '<p>H&agrave;nh vi mua h&agrave;ng mới, thời đại kỹ thuật số v&agrave; bối cảnh c&ocirc;ng nghiệp mới (bị ảnh hưởng bởi nền kinh tế ứng dụng) đang t&aacute;c động mạnh mẽ đến thị trường kinh doanh ng&agrave;y nay, dẫn đến việc c&aacute;c chuy&ecirc;n gia marketing phải đối mặt với sự chuyển dịch khỏi những truyền thống cũ kỹ bằng những m&ocirc; h&igrave;nh, phương ph&aacute;p v&agrave; quy tr&igrave;nh mới đ&atilde; nổi l&ecirc;n trong lĩnh vực marketing B2B gần đ&acirc;y.</p>\r\n', '<p>H&agrave;nh vi mua h&agrave;ng mới, thời đại kỹ thuật số v&agrave; bối cảnh c&ocirc;ng nghiệp mới (bị ảnh hưởng bởi nền kinh tế ứng dụng) đang t&aacute;c động mạnh mẽ đến thị trường kinh doanh ng&agrave;y nay, dẫn đến việc c&aacute;c chuy&ecirc;n gia marketing phải đối mặt với sự chuyển dịch khỏi những truyền thống cũ kỹ bằng những m&ocirc; h&igrave;nh, phương ph&aacute;p v&agrave; quy tr&igrave;nh mới đ&atilde; nổi l&ecirc;n trong lĩnh vực marketing B2B gần đ&acirc;y.</p>\r\n\r\n<p>Qua ng&ograve;i b&uacute;t của Simon Hall, cựu Gi&aacute;m đốc Marketing với hơn 20 năm kinh nghiệm điều h&agrave;nh cấp cao, như một trong những tiếng n&oacute;i đi đầu trong giới marketing B2B,&nbsp;<strong>Marketing B2B S&aacute;ng Tạo</strong>&nbsp;cung cấp những th&ocirc;ng tin v&agrave; hiểu biết s&acirc;u sắc từ kinh nghiệm trực tiếp của t&aacute;c giả. Với những v&iacute; dụ thực tế từ nhiều lĩnh vực đa dạng kh&aacute;c nhau, cộng với những thảo luận v&agrave; vấn đề thời sự từ c&aacute;c diễn đ&agrave;n v&agrave; hiệp hội marketing B2B chủ chốt, c&aacute;c nh&agrave; marketing sẽ t&igrave;m ra c&aacute;ch tiếp cận, m&ocirc; h&igrave;nh v&agrave; giải ph&aacute;p mới, gi&uacute;p đối ph&oacute; với bất kỳ th&aacute;ch thức n&agrave;o khi l&agrave;m chiến lược B2B.</p>\r\n', 0, '1619359358_marketing-b2b-sang-tao.jpg', 89000, 12, 17),
(9, 'Truyện Cổ Tích Hình Nói - Vịt Con Xấu Xí', '', '', 0, '1619359620_truyen-co-tich-hinh-noi-vit-con-xau-xi.jpg', 110000, 0, 1),
(10, 'Sói Già Phố Wall (Phần 2) - Tái Bản 2021', '<p>Cuốn hồi k&yacute; kh&ocirc;ng n&ecirc;n đọc ngắt qu&atilde;ng được viết bởi &ldquo;Chủ nh&acirc;n trẻ của vũ trụ phố Wall&rdquo; S&oacute;i Gi&agrave; Phố Wall l&agrave; cuốn tự truyện của Jordan Belfort - một huyền thoại trong ng&agrave;nh m&ocirc;i giới chứng kho&aacute;n tr&ecirc;n s&agrave;n phố Wall. T&aacute;c phẩm kể về qu&aacute; tr&igrave;nh phất l&ecirc;n của Jordan n&oacute;i ri&ecirc;ng, cũng như nội t&igrave;nh...</p>\r\n', '<p><strong><em>Cuốn hồi k&yacute; kh&ocirc;ng n&ecirc;n đọc ngắt qu&atilde;ng được viết bởi &ldquo;Chủ nh&acirc;n trẻ của vũ trụ phố Wall&rdquo;</em></strong></p>\r\n\r\n<p><strong>S&oacute;i Gi&agrave; Phố Wall</strong>&nbsp;l&agrave; cuốn tự truyện của Jordan Belfort - một huyền thoại trong ng&agrave;nh m&ocirc;i giới chứng kho&aacute;n tr&ecirc;n s&agrave;n phố Wall. T&aacute;c phẩm kể về qu&aacute; tr&igrave;nh phất l&ecirc;n của Jordan n&oacute;i ri&ecirc;ng, cũng như nội t&igrave;nh cuộc đại khủng hoảng t&iacute;n dụng thứ cấp ở Mỹ n&oacute;i chung.</p>\r\n\r\n<p>Được mọi người gọi với nhiều biệt danh, trong đ&oacute;, c&aacute;i t&ecirc;n&nbsp;<strong>S&oacute;i Gi&agrave; Phố Wall</strong>&nbsp;l&agrave; hợp với Jordan hơn cả - một con s&oacute;i tối thượng đội lốt cừu non. Ngoại h&igrave;nh v&agrave; c&aacute;ch h&agrave;nh xử của anh ta tr&ocirc;ng giống như một đứa trẻ nhưng thực chất, anh ta đ&acirc;u c&oacute; trẻ con. Anh ta l&agrave; một thằng đ&agrave;n &ocirc;ng ba mươi mốt tuổi nhưng gi&agrave; đời như một l&atilde;o s&aacute;u mươi, &quot;sống theo thang tuổi của lo&agrave;i ch&oacute;&quot; - một năm bằng bảy năm tuổi người.Vừa tốt nghiệp đại học, bước v&agrave;o khởi nghiệp, Jordan Belford đ&atilde; gặp ngay thất bại đầu đời tr&ecirc;n phố Wall, bởi anh ta mới chỉ l&agrave; &ldquo;cừu non&rdquo; giữa bao &ldquo;s&oacute;i gi&agrave;&rdquo; kh&aacute;c v&acirc;y quanh. Ch&agrave;ng trai c&oacute; cặp mắt xanh, c&aacute;i miệng dẻo quẹo, cao chỉ tầm một thước bảy chẳng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c, phải chuyển hướng để kiếm việc. Anh ta t&igrave;m đến một c&ocirc;ng ty b&eacute; x&iacute;u để thử vận may.</p>\r\n\r\n<p>Ch&iacute;nh nơi l&agrave;m việc v&ocirc; danh tiểu tốt n&agrave;y đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh &ldquo;vườn ươm&rdquo; cho t&agrave;i năng b&aacute;n h&agrave;ng v&agrave; m&ocirc;i giới của anh ch&agrave;ng Jordan Belford hiếu thắng, nhanh nhẹn, nhiều mưu lược. Cũng từ đ&acirc;y, g&atilde; tr&ugrave;m t&agrave;i ch&iacute;nh tương lai dần thọc tay v&agrave;o nhiều ng&otilde; ng&aacute;ch của thế giới ph&ugrave; hoa, h&agrave;o nho&aacute;ng, gia nhập đội ngũ &ldquo;bu&ocirc;n tiền&rdquo; kh&eacute;t tiếng, từng bước khuynh đảo thị tường chứng kho&aacute;n phố Wall.Sớm trở n&ecirc;n gi&agrave;u c&oacute; sau những vụ IPO nổi đ&igrave;nh đ&aacute;m, n&acirc;ng gi&aacute; cổ phiếu từ &ldquo;r&aacute;c&rdquo; trở th&agrave;nh &ldquo;v&agrave;ng&rdquo;, đại gia Jordan Belford đ&atilde; vượt mặt những tay tr&ugrave;m từng một thời v&ecirc;nh v&aacute;o, biết chống chịu với những cơn stress trong c&aacute;i nghề đầy &aacute;p lực. Với rất nhiều m&aacute;nh lới trong kinh doanh, S&oacute;i Gi&agrave; đ&atilde; trở th&agrave;nh triệu ph&uacute; thị trường chứng kho&aacute;n ở tuổi hai mươi s&aacute;u, bị kết &aacute;n ở cấp li&ecirc;n bang năm ba mươi s&aacute;u tuổi. Anh ta tiệc t&ugrave;ng như một ng&ocirc;i sao nhạc rock, sống như một &ocirc;ng ho&agrave;ng v&agrave; bước qua mọi thăng trầm của đời m&igrave;nh như một biểu tượng của c&aacute;c doanh nh&acirc;n nước Mỹ. Từ một cậu b&eacute; b&aacute;n kem dạo trong những kỳ nghỉ h&egrave; ở Italia, Jordan trở th&agrave;nh người c&oacute; thể kiếm h&agrave;ng triệu đ&ocirc; trong ph&uacute;t chốc bằng những m&aacute;nh lới xoay đủ chiều, c&oacute; khi c&ograve;n lợi dụng cả những người th&acirc;n b&ecirc;n m&igrave;nh. Anh ta cũng sớm học được c&aacute;ch nốc rượu thay nước lọc, chơi cocain, bao g&aacute;i, v&agrave; tiệc t&ugrave;ng l&otilde;a thể th&acirc;u đ&ecirc;m suốt s&aacute;ng. L&agrave; con &ldquo;s&oacute;i gi&agrave;&rdquo; v&ocirc; c&ugrave;ng tỉnh t&aacute;o tr&ecirc;n thương trường, nhưng trong đời ri&ecirc;ng, kh&ocirc;ng &iacute;t lần hắn rơi v&agrave;o cảm gi&aacute;c v&ocirc; thức. Trong cuộc đời Jordan Belford, dẫu từng c&oacute; bao g&aacute;i đẹp v&acirc;y quanh, nhưng kết cục vẫn l&agrave; &ldquo;từng người t&igrave;nh đ&atilde; bỏ ta đi&rdquo;.</p>\r\n', 0, '1619359455_soi-gia-pho-wall-phan-2-tb-2021.jpg', 129000, 5, 17),
(11, 'Thương - Tập Thơ', '', '', 0, '1619359524_thuong-tap-tho.jpg', 75000, 0, 4),
(12, '2gether - Tập 2', '', '', 1, '1619359717_2gether-tap-2.jpg', 169000, 3, 4),
(13, 'Cuộc Đời Tôi Thoáng Mây Qua', '', '', 0, '1619359810_cuoc-doi-toi-thoang-may-qua.jpg', 99000, 0, 4),
(14, 'Tú Xuất', '', '', 0, '1619374041_tu-xuat.jpg', 159000, 0, 4),
(15, 'Một Cuốn Sách Buồn Cười', '', '', 0, '1619360068_mot-cuon-sach-buon-cuoi.jpg', 79000, 0, 4),
(16, 'Những Gã Khổng Lồ Trung Quốc', '<p>V&agrave;o th&aacute;ng Ch&iacute;n năm 2014, g&atilde; khổng lồ thương mại điện tử Alibaba của Trung Quốc đ&atilde; thu về 25 tỉ đ&ocirc;-la trong sự kiện ph&aacute;t h&agrave;nh cổ phiếu lần đầu ra c&ocirc;ng ch&uacute;ng. Sau đ&oacute;, h&agrave;ng triệu nh&agrave; đầu tư v&agrave; quản l&yacute; tr&ecirc;n to&agrave;n thế giới đều suy nghĩ về một c&acirc;u hỏi:&nbsp;<em>Điều g&igrave; đang thật sự xảy ra với l&agrave;n s&oacute;ng mới tới từ Trung Quốc</em>?</p>\r\n', '<p>V&agrave;o th&aacute;ng Ch&iacute;n năm 2014, g&atilde; khổng lồ thương mại điện tử Alibaba của Trung Quốc đ&atilde; thu về 25 tỉ đ&ocirc;-la trong sự kiện ph&aacute;t h&agrave;nh cổ phiếu lần đầu ra c&ocirc;ng ch&uacute;ng. Sau đ&oacute;, h&agrave;ng triệu nh&agrave; đầu tư v&agrave; quản l&yacute; tr&ecirc;n to&agrave;n thế giới đều suy nghĩ về một c&acirc;u hỏi:&nbsp;<em>Điều g&igrave; đang thật sự xảy ra với l&agrave;n s&oacute;ng mới tới từ Trung Quốc</em>?</p>\r\n\r\n<p>Alibaba kh&ocirc;ng phải ngoại lệ - đ&oacute; l&agrave; một trong những l&agrave;n s&oacute;ng d&acirc;ng cao mạnh mẽ từ c&aacute;c c&ocirc;ng ty Trung Quốc, đa phần nhưng kh&ocirc;ng phải duy nhất trong lĩnh vực c&ocirc;ng nghệ. Ngay trong đ&ecirc;m đ&oacute;, người s&aacute;ng lập Jack Ma xuất hiện tr&ecirc;n trang b&igrave;a tạp ch&iacute; như một biểu tượng cho c&aacute;c doanh nghiệp Mỹ như Mark Zuckerberg. Theo sau Jack Ma rất nhanh sau đ&oacute; l&agrave; những nh&agrave; s&aacute;ng lập của c&aacute;c c&ocirc;ng ty &iacute;t t&ecirc;n tuổi hơn, như Baidu, Tencent v&agrave; Xiaomi.</p>\r\n\r\n<p>Trong khoảng hai thập kỷ, sự b&ugrave;ng nổ khởi nghiệp đ&atilde; chuyển h&oacute;a Trung Quốc từ nền kinh tế đ&oacute;ng cửa, ngh&egrave;o n&agrave;n, bị ch&iacute;nh phủ kiểm so&aacute;t th&agrave;nh một nền kinh tế mạnh tr&ecirc;n to&agrave;n cầu. C&aacute;c sản phẩm của Trung Quốc ng&agrave;y c&agrave;ng trở n&ecirc;n tinh xảo, v&agrave; c&aacute;c c&ocirc;ng ty nội địa ph&aacute;t triển mạnh về c&ocirc;ng nghệ, ch&uacute;ng ta sẽ chứng kiến h&agrave;ng h&oacute;a Trung Quốc trở th&agrave;nh ti&ecirc;u chuẩn tr&ecirc;n to&agrave;n cầu. Trong khi đ&oacute;, c&aacute;c c&ocirc;ng ty c&ograve;n lại tr&ecirc;n thế giới đang t&igrave;m c&aacute;ch để x&acirc;m nhập v&agrave;o thị trường tăng trưởng cao của Trung Quốc với 1.3 tỉ người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>Edward Tse, một chuy&ecirc;n gia về chiến lược dẫn đầu to&agrave;n cầu, v&eacute;n mở c&aacute;ch thức Trung Quốc đ&atilde; l&agrave;m để thực hiện những điều ấy, v&agrave; sự tăng trưởng của quốc gia n&agrave;y c&oacute; &yacute; nghĩa thế n&agrave;o đối với Mỹ v&agrave; cả thế giới. Tse đ&atilde; d&agrave;nh hơn 20 năm l&agrave;m việc với những nh&agrave; l&atilde;nh đạo đứng đầu Trung Quốc, học hỏi c&aacute;ch c&aacute;c c&ocirc;ng ty h&agrave;ng đầu Trung Quốc vận h&agrave;nh. &Ocirc;ng l&agrave; một chuy&ecirc;n gia về c&aacute;ch c&aacute;c c&ocirc;ng ty tư nh&acirc;n ph&aacute;t triển trong một quốc gia x&atilde; hội chủ nghĩa. Quyển s&aacute;ch n&agrave;y đưa ra những b&agrave;i phỏng vấn đặc biệt v&agrave; v&iacute; dụ thực tế để trả lời những c&acirc;u hỏi như:</p>\r\n\r\n<p>- Điều g&igrave; điều khiển c&aacute;c doanh nh&acirc;n Trung Quốc? Danh tiếng c&aacute; nh&acirc;n v&agrave; sự gi&agrave;u c&oacute; &ndash; hay nhiệm vụ về việc đem lại niềm tự h&agrave;o quốc gia v&agrave; những th&agrave;nh tựu chung cho to&agrave;n x&atilde; hội?</p>\r\n\r\n<p>- L&agrave;m sao c&aacute;c c&ocirc;ng ty n&agrave;y c&oacute; thể ph&aacute;t triển nhanh như vậy? Trong năm 2005, Lenovo chỉ b&aacute;n một mặt h&agrave;ng thuộc ph&acirc;n kh&uacute;c m&aacute;y t&iacute;nh c&aacute; nh&acirc;n cho duy nhất một thị trường l&agrave; Trung Quốc. Ng&agrave;y nay, kh&ocirc;ng chỉ l&agrave; c&ocirc;ng ty b&aacute;n PC lớn nhất thế giới, họ c&ograve;n l&agrave; c&ocirc;ng ty b&aacute;n điện thoại th&ocirc;ng minh lớn thứ ba thế giới.</p>\r\n', 0, '1619360258_nhung-ga-khong-lo-trung-quoc.jpg', 129000, 3, 17),
(17, 'Facebook - Bí Mật Về Quốc Gia Lớn Nhất Thế Giới', '<p>Facebook - B&iacute; Mật Về &quot;Quốc Gia&quot; Lớn Nhất Thế Giới n&oacute;i về sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của Facebook c&ugrave;ng những kh&oacute; khăn, th&aacute;ch thức m&agrave; c&ocirc;ng ty n&agrave;y từng phải trải qua. Trong năm thứ hai đại học, Mark Zuckerberg đ&atilde; tạo ra một trang web đơn giản hoạt động như một mạng x&atilde; hội trong khu&ocirc;n vi&ecirc;n...</p>\r\n', '<p><strong>Facebook - B&iacute; Mật Về &quot;Quốc Gia&quot; Lớn Nhất Thế Giới</strong>&nbsp;n&oacute;i về sự h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển của Facebook c&ugrave;ng những kh&oacute; khăn, th&aacute;ch thức m&agrave; c&ocirc;ng ty n&agrave;y từng phải trải qua. Trong năm thứ hai đại học, Mark Zuckerberg đ&atilde; tạo ra một trang web đơn giản hoạt động như một mạng x&atilde; hội trong khu&ocirc;n vi&ecirc;n trường. Trang n&agrave;y được đ&oacute;n nhận v&ocirc; c&ugrave;ng mạnh mẽ v&agrave; rất nhanh sau đ&oacute; sinh vi&ecirc;n tr&ecirc;n to&agrave;n quốc đ&atilde; đăng k&yacute; sử dụng Facebook. Từ một trang web đơn giản ban đầu, Mark Zuckerberg c&ugrave;ng đội ngũ đ&atilde; nghi&ecirc;n cứu v&agrave; ph&aacute;t triển th&ecirc;m nhiều t&iacute;nh năng v&agrave; ứng dụng cho Facebook, c&oacute; những t&iacute;nh năng được đ&oacute;n nhận nhưng cũng c&oacute; những t&iacute;nh năng thất bại v&agrave; nhanh ch&oacute;ng biến mất sau đ&oacute;. V&agrave; khi Facebook ph&aacute;t triển cũng l&agrave; l&uacute;c c&aacute;c đối thủ cạnh tranh bắt đầu xuất hiện như Instagram, Snapchat&hellip; Cuốn s&aacute;ch cũng đưa ra th&ocirc;ng tin về những cuộc đ&agrave;m ph&aacute;n mua lại c&aacute;c c&ocirc;ng ty n&agrave;y của Zuckerberg. C&agrave;ng ph&aacute;t triển mạnh mẽ, Facebook c&agrave;ng phải đối mặt với nhiều th&aacute;ch thức, kh&oacute; khăn khi gặp phải những c&aacute;o buộc li&ecirc;n quan đến việc Facebook l&agrave; nh&acirc;n tố g&oacute;p phần t&aacute;c động v&agrave;o kết quả của cuộc tranh cử tổng thống Mỹ năm 2016 giữa Donald Trump v&agrave; Hillary Clinton khi c&ocirc;ng ty n&agrave;y kh&ocirc;ng xử l&yacute; được việc những tin giả lan truyền tr&ecirc;n Facebook v&agrave; những hacker sử dụng n&oacute; để đ&aacute;nh cắp th&ocirc;ng tin, c&ugrave;ng vụ b&ecirc; bối dữ liệu Cambridge Analytica. T&aacute;c giả cũng đưa ra những th&ocirc;ng tin về c&aacute;ch xử l&yacute; của Facebook cũng như Mark Zuckerberg đối với tin giả mạo, việc xử l&yacute; dữ liệu th&ocirc;ng tin của người d&ugrave;ng cũng như kiểm duyệt nội dung.&nbsp;</p>\r\n', 0, '1619360320_facebook-bi-mat-ve-quoc-gia-lon-nhat-the-gioi.jpg', 299000, 5, 17),
(18, 'Sơ Đồ Tư Duy Trong Kinh Doanh', '<p>Trong cuốn&nbsp;<strong>Sơ Đồ Tư Duy Trong Kinh Doanh</strong>, Tony, c&ugrave;ng Chris Griffiths, đồng s&aacute;ng lập v&agrave; gi&aacute;m đốc điều h&agrave;nh c&ocirc;ng ty Buzan Online, sẽ hướng dẫn bạn c&aacute;ch ph&aacute;t triển những khả năng si&ecirc;u việt trong tất cả c&aacute;c lĩnh vực kinh doanh quan trọng &ndash; từ quản l&yacute; dự &aacute;n, b&aacute;n h&agrave;ng, đến thuật l&atilde;nh đạo.</p>\r\n', '<h4>Sơ đồ Tư duy l&agrave; c&ocirc;ng cụ s&aacute;ng tạo, tổ chức v&agrave; tư duy hiệu quả nhất trong thời đại ch&uacute;ng ta. N&oacute; sẽ cải thiện đ&aacute;ng kể&nbsp;<em>mọi&nbsp;</em>kh&iacute;a cạnh trong hoạt động kinh doanh của bạn.</h4>\r\n\r\n<p>Trong cuốn s&aacute;ch mới đầy hấp dẫn n&agrave;y, Tony Buzan, t&aacute;c giả h&agrave;ng đầu cũng như c&oacute; s&aacute;ch b&aacute;n chạy nhất về đề t&agrave;i n&atilde;o bộ v&agrave; học tập, sẽ chia sẻ với bạn những kỹ thuật lập Sơ đồ Tư duy mang t&iacute;nh c&aacute;ch mạng của &ocirc;ng để khai ph&oacute;ng năng lực của bộ n&atilde;o đồng thời l&agrave;m thay đổi vĩnh viễn lề lối lẫn hiệu suất kinh doanh của bạn.</p>\r\n\r\n<p>Trong cuốn&nbsp;<strong>Sơ Đồ Tư Duy Trong Kinh Doanh</strong>, Tony, c&ugrave;ng Chris Griffiths, đồng s&aacute;ng lập v&agrave; gi&aacute;m đốc điều h&agrave;nh c&ocirc;ng ty Buzan Online, sẽ hướng dẫn bạn c&aacute;ch ph&aacute;t triển những khả năng si&ecirc;u việt trong tất cả c&aacute;c lĩnh vực kinh doanh quan trọng &ndash; từ quản l&yacute; dự &aacute;n, b&aacute;n h&agrave;ng, đến thuật l&atilde;nh đạo.</p>\r\n\r\n<p>Được &aacute;p dụng cho&nbsp;<em>bất kỳ</em>&nbsp;mục ti&ecirc;u hay vấn đề kinh doanh n&agrave;o, Sơ đồ Tư duy sẽ gi&uacute;p bạn:</p>\r\n\r\n<ul>\r\n	<li>Suy nghĩ r&otilde; r&agrave;ng, s&aacute;ng tạo, độc đ&aacute;o</li>\r\n	<li>Tự tin đưa ra quyết định dứt kho&aacute;t</li>\r\n	<li>Thuyết phục, thương lượng, tr&igrave;nh b&agrave;y hiệu quả</li>\r\n	<li>X&acirc;y dựng c&aacute;c chiến lược, kế hoạch chặt chẽ v&agrave; c&oacute; khả năng sinh lợi cao</li>\r\n</ul>\r\n', 0, '1619360393_so-do-tu-duy-trong-kinh-doanh.jpg', 159000, 0, 17),
(19, 'Đúng Việc - Một Câu Truyện Về Góc Nhìn Khai Minh (Tái Bản 2021)', '<p>Nhiều năm trước, t&ocirc;i c&oacute; dịp lang thang tr&ecirc;n quảng trường Trafalgar ở thủ đ&ocirc; London của nước Anh. Đ&acirc;y l&agrave; quảng trường được x&acirc;y dựng để kỷ niệm chiến thắng của hải qu&acirc;n Anh trong trận chiến Trafalgar lừng danh do Đ&ocirc; đốc Nelson chỉ huy. Nằm ngay vị tr&iacute; trung t&acirc;m của quảng trường l&agrave; một chiếc cột...</p>\r\n', '<p>Nhiều năm trước, t&ocirc;i c&oacute; dịp lang thang tr&ecirc;n quảng trường Trafalgar ở thủ đ&ocirc; London của nước Anh. Đ&acirc;y l&agrave; quảng trường được x&acirc;y dựng để kỷ niệm chiến thắng của hải qu&acirc;n Anh trong trận chiến Trafalgar lừng danh do Đ&ocirc; đốc Nelson chỉ huy. Nằm ngay vị tr&iacute; trung t&acirc;m của quảng trường l&agrave; một chiếc cột cao 52 m&eacute;t m&agrave; ở tr&ecirc;n đỉnh cột l&agrave; bức tượng vị đ&ocirc; đốc t&agrave;i ba đứng sừng sững giữa trời. Nhưng điều khiến t&ocirc;i ch&uacute; &yacute; nhất kh&ocirc;ng phải l&agrave; bức tượng sừng sững đ&oacute;, m&agrave; l&agrave; một d&ograve;ng chữ ở tấm đi&ecirc;u khắc gần ch&acirc;n cột: &ldquo;England expects that every man will do his duty&rdquo;. (Tạm dịch: Nước Anh mong muốn mỗi người sẽ l&agrave;m tr&ograve;n bổn phận của m&igrave;nh).Đ&oacute; ch&iacute;nh l&agrave; lời hiệu triệu nổi tiếng m&agrave; đ&ocirc; đốc Nelson đ&atilde; gửi cho hạm đội của m&igrave;nh trước trận Trafalgar. Nhưng t&ocirc;i nghĩ, chọn khắc d&ograve;ng chữ n&agrave;y ở một trong những vị tr&iacute; được xem như &ldquo;tr&aacute;i tim&rdquo; của nước Anh; người Anh kh&ocirc;ng chỉ đơn thuần muốn kỷ niệm một trận chiến m&agrave; c&oacute; lẽ muốn gửi gắm v&agrave;o đ&oacute; nhiều th&ocirc;ng điệp hơn thế. Mỗi c&ocirc;ng d&acirc;n Anh (v&agrave; cả những người kh&ocirc;ng phải l&agrave; người Anh) khi đứng trước những d&ograve;ng chữ n&agrave;y hẳn sẽ &iacute;t nhiều suy tư về những &ldquo;c&ocirc;ng việc&rdquo; hay &ldquo;bổn phận&rdquo; của m&igrave;nh: ch&uacute;ng l&agrave; g&igrave;, v&agrave; m&igrave;nh đ&atilde; l&agrave;m chưa; nếu đ&atilde; l&agrave;m th&igrave; đ&atilde; l&agrave;m đ&uacute;ng v&agrave; l&agrave;m tr&ograve;n những c&ocirc;ng việc ấy hay chưa?</p>\r\n\r\n<p>&ldquo;C&ocirc;ng việc của m&igrave;nh&rdquo; - Mấy chữ tr&ecirc;n tấm ph&ugrave; đi&ecirc;u về trận chiến Trafalgar năm ấy cũng đ&atilde; &iacute;t nhiều bắt đầu gợi l&ecirc;n v&agrave; gieo v&agrave;o trong t&ocirc;i những suy tư về m&igrave;nh, về thời cuộc, v&agrave; đặc biệt l&agrave; về những &ldquo;trận chiến&rdquo; diễn ra ở ngay xứ sở của m&igrave;nh. Những suy tư đ&oacute; đ&atilde; thực sự th&ocirc;i th&uacute;c t&ocirc;i muốn viết một điều g&igrave; đ&oacute; về &ldquo;c&ocirc;ng việc&rdquo;, về l&agrave;m đ&uacute;ng v&agrave; l&agrave;m tốt &ldquo;c&ocirc;ng việc&rdquo;, về những &ldquo;trận chiến&rdquo; li&ecirc;n quan đến bản chất v&agrave; ch&acirc;n gi&aacute; trị của mọi vấn đề.</p>\r\n', 0, '1619360455_dung-viec-tb-2021.jpg', 95000, 0, 17),
(20, 'OKRS - Nguyên Lý Và Thực Tiễn', '<p>Hiểu kiến ​​thức cơ bản về OKR v&agrave; việc sử dụng ch&uacute;ng hằng ng&agrave;y</p>\r\n\r\n<p>T&igrave;m hiểu c&aacute;ch gi&agrave;nh được sự hỗ trợ của ban điều h&agrave;nh rất quan trọng để triển khai th&agrave;nh c&ocirc;ng</p>\r\n', '<p><strong>Mọi thứ bạn cần để &aacute;p dụng OKR một c&aacute;ch hiệu quả.</strong></p>\r\n\r\n<p><em>OKR căn bản</em>&nbsp;ch&iacute;nh l&agrave; t&agrave;i liệu hướng dẫn tham khảo ch&iacute;nh thức đầu ti&ecirc;n về OKR, một khung tư duy phản biện được thiết kế để gi&uacute;p c&aacute;c tổ chức tạo ra gi&aacute; trị th&ocirc;ng qua sự tập trung, li&ecirc;n kết v&agrave; giao tiếp tốt hơn. Cuốn s&aacute;ch được viết bởi hai nh&agrave; tư vấn v&agrave; nh&agrave; nghi&ecirc;n cứu h&agrave;ng đầu về OKR, n&oacute; cung cấp một nguồn t&agrave;i nguy&ecirc;n tổng hợp cho c&aacute;c tổ chức đang t&igrave;m c&aacute;ch định lượng c&aacute;c mục ti&ecirc;u định t&iacute;nh v&agrave; đảm bảo mỗi nh&oacute;m tập trung nỗ lực để đạt được tiến bộ c&oacute; thể đo lường được cho c&aacute;c mục ti&ecirc;u quan trọng nhất của họ. Bạn sẽ t&igrave;m hiểu OKR ra đời như thế n&agrave;o v&agrave; c&aacute;ch c&aacute;c c&ocirc;ng ty h&agrave;ng đầu sử dụng ch&uacute;ng hằng ng&agrave;y để gi&uacute;p c&aacute;c nh&oacute;m v&agrave; nh&acirc;n vi&ecirc;n mở rộng suy nghĩ về x&acirc;y dựng cấu tr&uacute;c, thiết lập mục ti&ecirc;u v&agrave; đạt được kết quả phản &aacute;nh hết tiềm năng của họ. Từ khung cơ bản đến ph&acirc;n t&iacute;ch chi tiết về c&aacute;c phương ph&aacute;p hay nhất, cuốn s&aacute;ch kh&ocirc;ng chỉ hướng dẫn bạn c&aacute;ch triển khai trong thế giới thực m&agrave; c&ograve;n gi&uacute;p bạn tận dụng tối đa OKR.</p>\r\n\r\n<p>OKR gi&uacute;p nh&acirc;n vi&ecirc;n l&agrave;m việc c&ugrave;ng nhau, tập trung nỗ lực v&agrave; th&uacute;c đẩy tổ chức ph&aacute;t triển. OKR được sử dụng để x&aacute;c định &yacute; nghĩa của việc đạt được c&aacute;c mục ti&ecirc;u rộng r&atilde;i, chất lượng v&agrave; c&aacute;c mệnh lệnh như &ldquo;l&agrave;m tốt hơn&rdquo; được chuyển th&agrave;nh c&aacute;c dấu hiệu r&otilde; r&agrave;ng, c&oacute; thể đo lường được. Từ sự ra đời của khu&ocirc;n khổ v&agrave;o những năm 1980 cho đến khi phổ biến trong m&ocirc;i trường si&ecirc;u cạnh tranh ng&agrave;y nay, OKR l&agrave;m cho c&ocirc;ng việc trở n&ecirc;n hấp dẫn hơn v&agrave; c&oacute; c&aacute;c chu kỳ phản hồi thường xuy&ecirc;n cho ph&eacute;p người lao động thấy được tiến bộ m&agrave; họ đạt được trong c&ocirc;ng việc mỗi ng&agrave;y. Cuốn s&aacute;ch n&agrave;y chỉ cho bạn mọi thứ bạn cần biết để triển khai OKR một c&aacute;ch hiệu quả.</p>\r\n\r\n<p>Hiểu kiến ​​thức cơ bản về OKR v&agrave; việc sử dụng ch&uacute;ng hằng ng&agrave;y</p>\r\n\r\n<p>T&igrave;m hiểu c&aacute;ch gi&agrave;nh được sự hỗ trợ của ban điều h&agrave;nh rất quan trọng để triển khai th&agrave;nh c&ocirc;ng</p>\r\n\r\n<p>Duy tr&igrave; một chương tr&igrave;nh hiệu quả với c&aacute;c mẹo đ&aacute;nh gi&aacute; ch&iacute;nh</p>\r\n\r\n<p>Điều chỉnh khung OKR theo nhu cầu của tổ chức bạn</p>\r\n\r\n<p>OKR l&agrave; nguồn lực ch&iacute;nh của bạn để thiết kế, lập kế hoạch, thực hiện nhằm đạt được th&agrave;nh c&ocirc;ng bền vững trong to&agrave;n c&ocirc;ng ty..</p>\r\n', 0, '1619360537_okrs-nguyen-ly-va-thuc-tien.jpg', 149000, 0, 17),
(21, 'Báo Cáo Tài Chính Dưới Góc Nhìn Của Warren Buffett', '<p>&ldquo;Benjamin Graham, &ldquo;&ocirc;ng chủ&rdquo; của Phố Wall v&agrave; l&agrave; thầy của Warren, đ&atilde; ứng dụng c&aacute;c kỹ thuật ph&acirc;n t&iacute;ch tr&aacute;i phiếu sơ khai v&agrave;o việc ph&acirc;n t&iacute;ch c&aacute;c cổ phiếu th&ocirc;ng dụng. Nhưng Graham kh&ocirc;ng bao giờ ph&acirc;n biệt giữa một c&ocirc;ng ty đang c&oacute; lợi thế cạnh tranh d&agrave;i hạn so với c&aacute;c đối thủ cạnh tranh v&agrave; một c&ocirc;ng ty kh&ocirc;ng c&oacute; lợi thế đ&oacute;. &Ocirc;ng chỉ quan t&acirc;m liệu c&ocirc;ng ty c&oacute; đủ khả năng tạo lợi nhuận để gi&uacute;p n&oacute; tho&aacute;t khỏi kh&oacute; khan về kinh tế đ&atilde; đẩy gi&aacute; cổ phiếu giảm lien tục hay kh&ocirc;ng. Nếu gi&aacute; kh&ocirc;ng biến động sau hai năm, &ocirc;ng luền b&aacute;n cổ phiếu đi. Kh&ocirc;ng phải Graham đ&atilde; lỡ chuyến t&agrave;u, m&agrave; chỉ l&agrave; &ocirc;ng ấy kh&ocirc;ng l&ecirc;n đ&uacute;ng chuyến t&agrave;u gi&uacute;p &ocirc;ng trở th&agrave;nh người gi&agrave;u nhất thế giới như Warren.</p>\r\n', '<p>&ldquo;Benjamin Graham, &ldquo;&ocirc;ng chủ&rdquo; của Phố Wall v&agrave; l&agrave; thầy của Warren, đ&atilde; ứng dụng c&aacute;c kỹ thuật ph&acirc;n t&iacute;ch tr&aacute;i phiếu sơ khai v&agrave;o việc ph&acirc;n t&iacute;ch c&aacute;c cổ phiếu th&ocirc;ng dụng. Nhưng Graham kh&ocirc;ng bao giờ ph&acirc;n biệt giữa một c&ocirc;ng ty đang c&oacute; lợi thế cạnh tranh d&agrave;i hạn so với c&aacute;c đối thủ cạnh tranh v&agrave; một c&ocirc;ng ty kh&ocirc;ng c&oacute; lợi thế đ&oacute;. &Ocirc;ng chỉ quan t&acirc;m liệu c&ocirc;ng ty c&oacute; đủ khả năng tạo lợi nhuận để gi&uacute;p n&oacute; tho&aacute;t khỏi kh&oacute; khan về kinh tế đ&atilde; đẩy gi&aacute; cổ phiếu giảm lien tục hay kh&ocirc;ng. Nếu gi&aacute; kh&ocirc;ng biến động sau hai năm, &ocirc;ng luền b&aacute;n cổ phiếu đi. Kh&ocirc;ng phải Graham đ&atilde; lỡ chuyến t&agrave;u, m&agrave; chỉ l&agrave; &ocirc;ng ấy kh&ocirc;ng l&ecirc;n đ&uacute;ng chuyến t&agrave;u gi&uacute;p &ocirc;ng trở th&agrave;nh người gi&agrave;u nhất thế giới như Warren.</p>\r\n\r\n<p>------</p>\r\n\r\n<p>Quyển s&aacute;ch&nbsp;<strong>B&aacute;o C&aacute;o T&agrave;i Ch&iacute;nh Dưới G&oacute;c Nh&igrave;n Của Warren Buffett</strong>&nbsp;l&agrave; một trong số những quyển s&aacute;ch nhận được mức cho điểm 4/5 sao tr&ecirc;n trang giao dịch trực tuyến th&ocirc;ng dụng Amazon.com t&iacute;nh đến thời điểm quyển s&aacute;ch n&agrave;y được dịch xong.</p>\r\n\r\n<p>Ở g&oacute;c độ người đ&atilde; học v&agrave; l&agrave;m việc trong lĩnh vực t&agrave;i ch&iacute;nh, c&oacute; thể nh&igrave;n nhận quyển s&aacute;ch n&agrave;y l&agrave; một c&aacute;ch dẫn dắt th&uacute; vị v&agrave; sinh động đến với những kh&aacute;i niệm tẻ nhạt về b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh, đ&acirc;y l&agrave; một quyển tốt ở mức độ nhập m&ocirc;n d&agrave;nh cho c&aacute;c nh&agrave; đầu tư mới bắt đầu t&igrave;m hiểu về b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh. Những ai đ&atilde; tham gia c&aacute;c kh&oacute;a học về t&agrave;i ch&iacute;nh kế to&aacute;n ở c&aacute;c trường đại học hay c&aacute;c trung t&acirc;m đ&agrave;o tạo c&oacute; thể đều c&oacute; chung quan điểm rằng học về b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh thật kh&ocirc;ng c&oacute; g&igrave; th&uacute; vị, bời c&aacute;ch tiếp cận kh&ocirc; khan của nhiều quyển s&aacute;ch gi&aacute;o khoa hay t&agrave;i liệu hướng dẫn. V&agrave; do đ&oacute;, một c&aacute;ch gi&uacute;p những người mới t&igrave;m hiểu về b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh kh&ocirc;ng &ldquo;ng&aacute;n &ldquo; bữa ăn &ldquo;t&igrave;m hiểu về b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh&rdquo; ngay từ m&oacute;n khai vị l&agrave; giới thiệu họ đ&atilde; t&igrave;m đọc một quyển s&aacute;ch như thế n&agrave;y. Một m&oacute;n khai vị tốt c&oacute; thể khiến bữa ăn trở n&ecirc;n ho&agrave;n hảo hơn.</p>\r\n', 0, '1619362767_bao-cao-tai-chinh-duoi-goc-nhin-cua-warren-buffett.jpg', 89000, 0, 17),
(22, 'Đảo Mộng Mơ - Ấn Bản Kỉ Niệm 10 Năm', '<p>Đảo Mộng Mơ l&agrave; một l&aacute;t cắt đời sống của những đứa trẻ l&ecirc;n 10 gi&agrave;u tr&iacute; tưởng tượng như tất cả mọi đứa trẻ. Ch&uacute;ng mơ mộng, tưởng tượng, v&agrave; tự l&agrave;m &ldquo;hiện thực h&oacute;a&rdquo; những khao kh&aacute;t của m&igrave;nh. C&acirc;u chuyện bắt đầu từ một đống c&aacute;t, v&agrave; được diễn ra theo nh&acirc;n vật t&ocirc;i - cu Tin. C&oacute; một h&ograve;n đảo hoang,...</p>\r\n', '<p><strong>Đảo Mộng Mơ</strong>&nbsp;l&agrave; một l&aacute;t cắt đời sống của những đứa trẻ l&ecirc;n 10 gi&agrave;u tr&iacute; tưởng tượng như tất cả mọi đứa trẻ. Ch&uacute;ng mơ mộng, tưởng tượng, v&agrave; tự l&agrave;m &ldquo;hiện thực h&oacute;a&rdquo; những khao kh&aacute;t của m&igrave;nh.</p>\r\n\r\n<p>C&acirc;u chuyện bắt đầu từ một đống c&aacute;t, v&agrave; được diễn ra theo nh&acirc;n vật t&ocirc;i - cu Tin. C&oacute; một h&ograve;n đảo hoang, tr&ecirc;n đảo c&oacute; Ch&uacute;a đảo, phu nh&acirc;n Ch&uacute;a đảo, v&agrave; một ch&agrave;ng Thứ&hellip; Bảy. H&agrave;ng ng&agrave;y, vợ chồng Ch&uacute;a đảo v&agrave; Thứ Bảy vẫn phải đi học, nhưng sau giờ học l&agrave; một thế giới kh&aacute;c, của đảo, của biển c&oacute; c&aacute; mập, v&agrave; rừng c&oacute; th&uacute; dữ. Thế giới đ&oacute; hấp dẫn, đầy quyến rũ, c&oacute; tranh c&atilde;i, c&oacute; cai trị, c&oacute; y&ecirc;u thương, c&oacute; ẩu đả, v&agrave; cả&hellip;những nụ h&ocirc;n!</p>\r\n\r\n<p>Tuổi thơ trong&nbsp;<strong>Đảo Mộng Mơ</strong>&nbsp;như trong những t&aacute;c phẩm kh&aacute;c của Nguyễn Nhật &Aacute;nh: trong veo v&agrave; ngọt ng&agrave;o. Với cuốn s&aacute;ch n&agrave;y, hẳn bạn sẽ muốn b&eacute; lại bằng cu Tin để được cười, được kh&oacute;c, được l&agrave;m Ch&uacute;a đảo th&iacute;ch đọc s&aacute;ch v&agrave; biết đ&aacute;nh lại lưu manh, bắt giam kẻ cắp. V&agrave; từ đ&oacute; hiểu rằng, đối với trẻ con, nhu cầu được t&ocirc;n trọng đ&ocirc;i khi lớn hơn gấp bội so với nhu cầu được y&ecirc;u thương.</p>\r\n\r\n<p>Văn Nguyễn Nhật &Aacute;nh vẫn lu&ocirc;n thế, trong s&aacute;ng, d&iacute; dỏm, đầy ắp thực tế t&acirc;m l&yacute;, h&agrave;nh động v&agrave; ng&ocirc;n ngữ của trẻ. Hy vọng&nbsp;<strong>Đảo Mộng Mơ</strong>&nbsp;thỏa m&atilde;n những khao kh&aacute;t &ldquo;được chơi&rdquo;, được thỏa ch&iacute; tưởng tượng m&agrave; kh&ocirc;ng bị mắng l&agrave; &ldquo;h&acirc;m&rdquo;, l&agrave; &ldquo;bốc ph&eacute;t&rdquo; của trẻ, cũng như những băn khoăn của c&aacute;c bậc cha mẹ, l&agrave;m sao c&oacute; thể giữ g&igrave;n sự trong trẻo hồn nhi&ecirc;n m&atilde;i cho con m&igrave;nh&hellip;</p>\r\n\r\n<p>Ngay từ khi ra mắt,&nbsp;<strong>Đảo Mộng Mơ</strong>&nbsp;đ&atilde; nhanh ch&oacute;ng nhận được sự quan t&acirc;m, y&ecirc;u th&iacute;ch của đ&ocirc;ng đảo bạn đọc, l&agrave; cuốn s&aacute;ch b&aacute;n chạy nhất tại Hội s&aacute;ch Tp. Hồ Ch&iacute; Minh năm 2010. Kỷ niệm 10 năm xuất bản lần đầu, Đ&ocirc;ng A t&aacute;i bản&nbsp;<strong>Đảo Mộng Mơ</strong><em>&nbsp;</em>với diện mạo mới, đồng thời bổ sung&nbsp;<em>Đ&ocirc;i lời của t&aacute;c giả.&nbsp;</em>S&aacute;ch c&oacute; b&igrave;a cứng, ruột in tr&ecirc;n giấy Ford IK định lượng 140 gsm, tặng k&egrave;m 4 postcard v&agrave; 1 bookmark.</p>\r\n', 0, '1619363043_dao-mong-mo-an-an-ky-niem-10-nam.jpg', 199000, 0, 1),
(23, 'Papillon Người Tù Khổ Sai (Tái bản năm 2021)', '<p><strong>Papillon Người T&ugrave; Khổ Sai</strong>&nbsp;l&agrave; một thi&ecirc;n hồi k&iacute; của Henri Charri&egrave;re kể lại ch&iacute;nh cuộc đời m&igrave;nh, về h&agrave;nh tr&igrave;nh từ khi bị bắt giam v&agrave; xử &aacute;n đầy khổ sai chung th&acirc;n v&igrave; tội giết người theo lời khai của một nh&acirc;n chứng đ&atilde; được &ldquo;d&agrave;n xếp&rdquo; trước</p>\r\n', '<p><strong>Papillon Người T&ugrave; Khổ Sai</strong>&nbsp;l&agrave; một thi&ecirc;n hồi k&iacute; của Henri Charri&egrave;re kể lại ch&iacute;nh cuộc đời m&igrave;nh, về h&agrave;nh tr&igrave;nh từ khi bị bắt giam v&agrave; xử &aacute;n đầy khổ sai chung th&acirc;n v&igrave; tội giết người theo lời khai của một nh&acirc;n chứng đ&atilde; được &ldquo;d&agrave;n xếp&rdquo; trước. Charri&egrave;re đ&atilde; quyết ch&iacute; vượt ngục ngay từ đầu. &Ocirc;ng quyết sống v&agrave; ra khỏi trại khổ sai để trả th&ugrave;. Quyết t&acirc;m ấy đ&atilde; l&agrave;m cho &ocirc;ng c&oacute; đủ sức mạnh chịu đựng mọi thử th&aacute;ch. Kh&ocirc;ng c&oacute; một mối nguy hiểm n&agrave;o l&agrave;m cho &ocirc;ng l&ugrave;i bước, kh&ocirc;ng một phen thất bại n&agrave;o l&agrave;m cho &ocirc;ng nhụt ch&iacute;. Charri&egrave;re với biệt hiệu l&agrave; bươm bướm, đ&atilde; tổ chức cả thẩy ch&iacute;n lần vượt ngục trước khi th&agrave;nh c&ocirc;ng v&agrave; được nhận cư tr&uacute; ở Venezuela như một c&ocirc;ng d&acirc;n ch&iacute;nh thức.</p>\r\n\r\n<p>Qua t&aacute;c phẩm, Charri&egrave;re thật sự đ&atilde; vẽ n&ecirc;n một bức tranh sinh động v&agrave; ch&acirc;n thật về một nh&agrave; t&ugrave; khổ sai của Ph&aacute;p. Đ&oacute; l&agrave; bối cảnh cho nh&acirc;n c&aacute;ch v&agrave; con người Charri&egrave;re ch&oacute;i s&aacute;ng. &Ocirc;ng căm th&ugrave; c&aacute;i x&atilde; hội đ&atilde; đầy ải m&igrave;nh nhưng chưa bao giờ căm th&ugrave; nh&acirc;n loại hay đ&aacute;nh mất t&igrave;nh y&ecirc;u thương của m&igrave;nh đối với con người&hellip;Ch&iacute;nh những cảm x&uacute;c trong s&aacute;ng đ&oacute; đ&atilde; gieo v&agrave;o l&ograve;ng người đọc một nguồn &aacute;nh s&aacute;ng l&agrave;nh mạnh, người ta c&oacute; thể c&acirc;m giận, x&oacute;t thương, thậm ch&iacute; buồn tủi nhưng kh&ocirc;ng bao giờ bi quan, kh&ocirc;ng bao giờ c&oacute; thể tuyệt vọng về con người. Cuốn s&aacute;ch thực sự cho ta th&ecirc;m nghị lực sống, l&ograve;ng dũng cảm, t&igrave;nh y&ecirc;u thương, để sẵn s&agrave;ng đối diện với mọi thử th&aacute;ch, kh&oacute; khăn v&agrave; hiểm nguy ph&iacute;a trước, để h&agrave;nh động v&agrave; để th&agrave;nh c&ocirc;ng.</p>\r\n', 1, '1619363379_papillon-nguoi-tu-kho-sai-tb-2021 (1).jpg', 349000, 0, 4),
(24, 'Thế Nào Và Tại Sao - Rừng Mưa Nhiệt Đới - Kho Báu Xanh Của Nhân Loại', '<p>Những con ếch phi ti&ecirc;u độc c&oacute; m&agrave;u sắc sặc sỡ đang ng&acirc;m m&igrave;nh trong vũng nước. Một con b&aacute;o đốm Mỹ đang lặng lẽ mai phục kh&ocirc;ng một tiếng động. Những tiếng gầm g&agrave;o đ&aacute;ng sợ của những con khỉ r&uacute; vang xa h&agrave;ng ki-l&ocirc;-m&eacute;t xuy&ecirc;n qua rừng mưa nhiệt đới.</p>\r\n', '<p>Những con ếch phi ti&ecirc;u độc c&oacute; m&agrave;u sắc sặc sỡ đang ng&acirc;m m&igrave;nh trong vũng nước. Một con b&aacute;o đốm Mỹ đang lặng lẽ mai phục kh&ocirc;ng một tiếng động. Những tiếng gầm g&agrave;o đ&aacute;ng sợ của những con khỉ r&uacute; vang xa h&agrave;ng ki-l&ocirc;-m&eacute;t xuy&ecirc;n qua rừng mưa nhiệt đới.</p>\r\n\r\n<p>Bạn c&oacute; biết?</p>\r\n\r\n<p>- C&aacute;t của sa mạc sahara bay qua Đại T&acirc;y Dương v&agrave; l&agrave;m cho mặt đất ngh&egrave;o dinh dưỡng của rừng mưa nhiệt đới trong khu vực amazon trở n&ecirc;n m&agrave;u mỡ</p>\r\n\r\n<p>- Từ những con s&oacute;c bay t&iacute; hon tới những c&acirc;y đa b&oacute;p cổ</p>\r\n\r\n<p>H&atilde;y kh&aacute;m ph&aacute; những lo&agrave;i động vật v&agrave; thực vật độc nhất v&ocirc; nhị của rừng mưa nhiệt đới!</p>\r\n', 0, '1619363467_the-nao-va-tai-sao-rung-mua-nhiet-doi.jpg', 85000, 0, 1),
(25, 'Chuyện Kể Thành Ngữ Anh-Việt', '<p>&ldquo;Raining cats and dogs&rdquo; nghĩa l&agrave; &ldquo;mưa như tr&uacute;t nước&rdquo;. Nhưng vậy th&igrave; li&ecirc;n quan g&igrave; đến m&egrave;o v&agrave; ch&oacute;? &ldquo;Bite the bullet&rdquo; nghĩa l&agrave; &ldquo;ngậm đắng nuốt cay&rdquo;. V&igrave; sao &ldquo;cắn vi&ecirc;n đạn&rdquo; lại mang &yacute; đ&oacute;? &ldquo;Hanging by a thread&rdquo; nghĩa l&agrave; &ldquo;ng&agrave;n c&acirc;n treo sợi t&oacute;c&rdquo;. Thứ g&igrave; được treo ở đ&acirc;y? Chuyện Kể Th&agrave;nh Ngữ...</p>\r\n', '<p>&ldquo;Raining cats and dogs&rdquo; nghĩa l&agrave; &ldquo;mưa như tr&uacute;t nước&rdquo;. Nhưng vậy th&igrave; li&ecirc;n quan g&igrave; đến m&egrave;o v&agrave; ch&oacute;?</p>\r\n\r\n<p>&ldquo;Bite the bullet&rdquo; nghĩa l&agrave; &ldquo;ngậm đắng nuốt cay&rdquo;. V&igrave; sao &ldquo;cắn vi&ecirc;n đạn&rdquo; lại mang &yacute; đ&oacute;?</p>\r\n\r\n<p>&ldquo;Hanging by a thread&rdquo; nghĩa l&agrave; &ldquo;ng&agrave;n c&acirc;n treo sợi t&oacute;c&rdquo;. Thứ g&igrave; được treo ở đ&acirc;y?</p>\r\n\r\n<p><strong>Chuyện Kể Th&agrave;nh Ngữ Anh-Việt</strong>&nbsp;sẽ mang đến cho bạn những l&iacute; giải th&uacute; vị v&agrave; bất ngờ. Nắm được sự tương quan giữa th&agrave;nh ngữ tiếng Anh v&agrave; tiếng Việt sẽ gi&uacute;p qu&aacute; tr&igrave;nh học tiếng Anh của bạn th&uacute; vị v&agrave; hiệu quả hơn. Đồng thời, bạn sẽ c&agrave;ng th&ecirc;m hiểu, th&ecirc;m y&ecirc;u sự gi&agrave;u đẹp của tiếng Việt.</p>\r\n', 0, '1619363626_chuyen-ke-thanh-ngu-anh-viet.jpg', 50000, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(19, 11, 4),
(20, 11, 5),
(21, 11, 5),
(22, 11, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'nva@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Nguyễn Văn B', 'nvb@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Nguyễn Văn C', 'nvc@gmail.com', '202cb962ac59075b964b07152d234b70'),
(4, 'Nguyễn Văn D', 'nvd@gmail.com', '202cb962ac59075b964b07152d234b70'),
(5, 'Nguyễn Văn E', 'nve@gmail.com', 'd9b1d7db4cd6e70935368a1efb10e377');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

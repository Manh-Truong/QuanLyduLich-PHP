-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 04, 2022 lúc 08:26 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FromDate` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ToDate` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(17, 16, 'son@gmail.com', '2022-03-04', '2022-03-07', 'Không', '2022-03-04 07:07:14', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailId` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Lê Thị Mai', 'mai@gmail.com', '2354235235', 'Đoạn Lorem Ipsum tiêu chuẩn, được sử dụng từ những năm 1500', 'Mọi thứ đã quá tuyệt vời', '2021-05-17 22:23:53', 1),
(2, 'Phan Thị Hương Trà', 'Huongtra0810@gmail.com', '3454353453', 'Lối đi tiêu chuẩn tự cung cấp năng lượng', 'Tôi sẽ giải thích những gì đã được nói bởi người phát minh ra sự thật và với tư cách là kiến ​​trúc sư của cuộc sống may mắn.', '2022-05-03 22:27:00', 1),
(3, 'Hà Huy Sơn', 'huyson@gmail.com', '8888888888', 'Tuyệt vời', 'Vì không ai khước từ, hay ghét bỏ, xa lánh khoái lạc, vì bản thân nó là khoái lạc, nhưng vì những nỗi đau lớn là do những người không biết chạy theo khoái lạc theo lý trí.', '2021-12-03 22:28:11', 1),
(4, 'Trần Trung kiên', 'kieengacon@gmail.com', '4747474747', 'Tốt', 'Dịch vụ an toàn', '2022-05-10 07:54:07', 1),
(5, 'Trương Huy Mạnh', 'manh@gmail.com', '123456789', 'Lỗi', 'Lỗi', '2022-03-02 05:52:41', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Issue` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(8, NULL, NULL, NULL, '2022-03-02 05:42:25', NULL, NULL),
(9, NULL, NULL, NULL, '2022-03-02 08:18:39', NULL, NULL),
(10, 'tra@gmail.com', 'Hoàn lại', 'Chúng tôi cảm thấy không hài lòng', '2022-03-04 06:53:45', NULL, NULL),
(11, NULL, NULL, NULL, '2022-03-04 07:06:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `detail` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Điều khoản sử dụng', '<P style=\"color: rgb(0, 0, 0)\"align=justify><FONT size=2><STRONG><FONT color= #ff0000>Nội dung đáng chú ý</FONT><BR><BR></STRONG>Trang web này cung cấp thông tin chung, các sản phẩm và dịch vụ. Trang web không nhằm để cung cấp các tư vấn của chuyên gia hoặc hướng dẫn chuyên môn về các sản phẩm và dịch vụ được cung cấp bởi B. Braun. Đối với các yêu cầu đặc biệt liên quan đến sản phẩm và dịch vụ của chúng tôi, vui lòng liên hệ trực tiếp với.\r\n<br>\r\n<br>\r\nNhững trang web này chứa thông tin sản phẩm hướng vào nhóm mục tiêu toàn cầu và có thể chứa thông tin hoặc chi tiết sản phẩm không có bán hoặc không có hiệu lực ở các nước sở tại. Xin lưu ý rằng chúng tôi không chịu bất kỳ trách nhiệm nào đối với việc truy cập thông tin mà trong một số tình huống nhất định có thể không tuân thủ các quy định bắt buộc về thủ tục, đăng ký hoặc hải quan tương ứng tại nước sở tại.\r\n<br>\r\n<br>\r\nChúng tôi cố gắng cung cấp thông tin cập nhật và chính xác cho người dùng. Tuy nhiên, chúng tôi không chịu bất kỳ trách nhiệm pháp lý nào về tính đầy đủ, thực tế và chính xác của thông tin. Trách nhiệm đối với thiệt hại trực tiếp hoặc gián tiếp vô hình hoặc hữu hình được loại trừ. Việc sử dụng thông tin được thực hiện với rủi ro thuộc về người sử dụng, trừ khi thông tin không chính xác được ghi lại một cách cố ý hoặc do lỗi sơ suất nghiêm trọng.</P>'),
(2, 'Chính sách bảo mật', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Cam kết cung cấp đến khách hàng những giải pháp tài chính đầy tham vọng , vượt trội, uy tín và đáng tin cậy nhằm giúp cho các quyết định quan trọng của khách hàng trở nên dễ dàng hơn. Trong đó bao gồm cả việc đảm bảo tính bảo mật đối với tất cả các thông tin cá nhân của chính họ. Trong quá trình quản lý thông tin, Công ty luôn tuân thủ theo các Nguyên tắc Bảo mật sau đây: \r\n<br>\r\nThu thập thông tin<br>\r\nCông ty tiến hành thu thập thông tin trực tiếp từ khách hàng và từ các nguồn khác nhau thông qua những cách thức minh bạch và hợp pháp.\r\nThông tin công ty thu thập về khách hàng dựa trên mối quan hệ với chính khách hàng, bao gồm tên, thông tin liên hệ, thông tin về cách sử dụng sản phẩm và dịch vụ của công ty, các thông tin về sở thích, nhân khẩu và những mối quan tâm của khách hàng. <br>\r\nChúng tôi chỉ thu thập những thông tin được yêu cầu, hoặc có liên quan đến việc cung cấp sản phẩm và dịch vụ, mục đích kinh doanh và nhằm hiểu rõ hơn nhu cầu của khách hàng.<br>\r\nĐối với khách hàng trực tuyến, công ty có thể thu thập những thông tin như địa chỉ IP, loại hệ điều hành khách hàng đang sử dụng, thời điểm và thời gian khách hàng truy cập vào trang web, địa điểm truy cập Internet và các đề mục khách hàng đã truy cập trong trang của công ty với mục đích theo dõi việc sử dụng, hoàn thiện trang web và hơn thế nữa là có thể cải thiện trải nghiệm của khách hàng. Để biết thêm thông tin chi tiết, vui lòng tham khảo Chính sách Bảo mật Thông tin Trực tuyến.<br>\r\nSử dụng thông tin cá nhân<br>\r\nCông ty chỉ sử dụng hoặc tiết lộ thông tin cá nhân của khách hàng theo đúng mục đích thu thập, hoặc vì các mục đích khác mà khách hàng đồng ý, hoặc trong các trường hợp mà pháp luật quy định. Điều này có thể bao gồm việc chia sẻ thông tin cá nhân với các doanh nghiệp tái bảo hiểm, các đại lý, người đại diện hoặc với các nhà cung cấp dịch vụ của công ty. Trong một vài trường hợp, theo quy định của pháp luật, thông tin cá nhân của khách hàng có thể được cung cấp cho các cá nhân, tổ chức, các nhà cung cấp dịch vụ và các nhân viên của Manulife ở các khu vực pháp lý khác với nơi thu thập thông tin và buộc phải tuân theo pháp luật tại khu vực đó. Công ty sẽ không chia sẻ thông tin cá nhân của khách hàng với bất kỳ tổ chức nào bên ngoài Công ty với mục đích tiếp thị sản phẩm hoặc dịch vụ, nếu không có sự chấp thuận từ phía khách hàng.\r\nTrong một số trường hợp, trong khuôn khổ của pháp luật, chúng tôi sẽ chia sẻ thông tin của khách hàng trong nội bộ công ty nhằm cung cấp cho khách hàng những thông tin ưu đãi về các sản phẩm và dịch vụ khác. Khách hàng có quyền lựa chọn từ chối việc nhận các thông tin ưu đãi nêu trên.\r\nCông ty có thể sẽ cần phân tích thông tin khách hàng nhằm nắm bắt tốt hơn các nhu cầu của khách hàng và các loại sản phẩm, dịch vụ cũng như các chương trình khuyến mãi mà khách hàng có thể sẽ quan tâm đến.\r\nCông ty sẽ giữ thông tin cá nhân của khách hàng cho đến khi chúng không còn cần thiết để đáp ứng các mục đích thu thập hoặc khi pháp luật có quy định.\r\nCông ty tập trung vào việc đảm bảo hồ sơ thông tin cá nhân của khách hàng luôn chính xác và được cập nhật liên tục, việc đó là cần thiết để có thể đạt được các mục đích sử dụng của thông tin.\r\nPhương thức bảo vệ<br>\r\nCông ty sẽ bảo vệ thông tin cá nhân của khách hàng bằng những phương thức bảo vệ an ninh phù hợp với mức độ quan trọng của thông tin, ngăn chặn hành vi truy cập, công bố, sửa đổi hoặc sử dụng thông tin trái phép.\r\nCông ty chịu trách nhiệm đối với thông tin cá nhân thuộc quyền sở hữu của công ty, bao gồm các thông tin được chuyển đến các nhà cung cấp dịch vụ hiện đang thực hiện nhiệm vụ thay mặt chúng tôi. Khi chia sẻ thông tin cá nhân với các nhà cung cấp dịch vụ, họ có trách nhiệm bảo vệ thông tin bằng những biện pháp phù hợp với thực tiễn và chính sách bảo mật của công ty.\r\nCam kết Bảo mật\r\nCông ty cam kết sẽ quản lý thông tin cá nhân dưới sự kiểm soát cẩn trọng. Công ty có đội ngũ nhân viên chịu trách nhiệm giám sát việc tuân thủ các Nguyên tắc Bảo mật của Công ty.\r\nCông ty sẽ đảm bảo thông tin về chính sách bảo mật và thực tiễn việc quản lý thông tin cá nhân của công ty dễ dàng truy cập dành cho khách hàng.\r\nDựa trên yêu cầu bằng văn bản của khách hàng, công ty sẽ cung cấp cho khách hàng quyền truy cập hợp lý vào thông tin cá nhân của khách hàng và bảng mô tả về việc sử dụng hoặc tiết lộ thông tin, như yêu cầu hoặc theo đúng quy định của pháp luật. Khách hàng cũng có thể xác minh tính chính xác và đầy đủ của thông tin và yêu cầu được sửa đổi hoặc xóa bỏ, nếu thích hợp hoặc được pháp luật cho phép.</span>'),
(3, 'Giới thiệu', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\r\n\r\nXét theo góc độ một ngành kinh tế, du lịch là ngành kinh doanh tổng hợp mang lại hiệu quả cao trên nhiều mặt: nâng cao hiểu biết về thiên nhiên, truyền thống lịch sử, văn hóa dân tộc, từ đó góp phần làm tăng thêm tình yêu đất nước. Bên cạnh đó, du lịch còn được coi là một hình thức xuất khẩu hàng hóa và dịch vụ tại chỗ, đem lại hiệu quả kinh tế rất lớn. Trong những năm qua, du lịch Việt Nam đang trên đà phát triển mạnh mẽ, lượng khách quốc tế cũng như khách du lịch nội địa ngày càng tăng. Du lịch Việt Nam ngày càng mở rộng và được biết đến nhiều hơn trên thế giới, rất nhiều điểm đến trong nước được bình chọn là địa chỉ yêu thích của du khách quốc tế. Theo số liệu thống kê của Tổng cục Du lịch Việt Nam, năm 2019 có 18 triệu lượt khách quốc tế. Cùng với đó, hình ảnh du lịch quốc gia ngày càng được nâng cao. \r\n\r\nHệ thống di sản văn hóa và thiên nhiên thế giới của Việt Nam được UNESCO công nhận ngày càng phong phú, có thể kể đến tiêu biểu như Vịnh Hạ Long, Vườn Quốc gia Phong Nha - Kẻ Bàng, Quần thể danh thắng Tràng An, Phố cổ Hội An, Quần thể di tích Cố Đô Huế, Cao nguyên đá Đồng Văn…Bên cạnh đó, ngành Du lịch cũng đang góp phần tạo công ăn việc làm và giải quyết an sinh xã hội cho hàng triệu người dân Việt Nam. Ước tính đã có hơn 1.3 triệu lao động làm việc trong lĩnh vực du lịch.\r\n\r\nVào 1-2020 lần đầu tiên Việt Nam cán mốc 2 triệu khách du lịch trong một tháng, đánh dấu một bước nhảy vọt đáng kinh ngạc. Thế nhưng do chịu ảnh hưởng của Covid 19, nền du lịch nước nhà bị ảnh hưởng nặng nề. Tuy nhiên, du lịch trong nước đã và đang khôi phục. Hoàn toàn có thể tin tưởng sự phát triển của ngành này trong năm tới khi dịch bệnh đã được kiểm soát ổn định. Tính đến 11-2020, lượng khách du lịch nội địa đạt mức 49 triệu người. Tổ chức du lịch thế giới đã nhận định rằng vào quý III năm 2021, mảng Du lịch có thể phục hồi và nhanh chóng quay trở lại guồng quay.\r\n</span>'),
(11, 'Liên hệ', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"> Liên hệ với chúng tôi qua số điện thoại: 123-4567890</span>\r\n<div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Email: admin@damin.com</span></div>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PackageType` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PackageLocation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PackageDetails` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PackageImage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(10, 'Hạ Long Quảng Ninh', 'Tất cả các loại dịch vụ', 'Quảng Ninh', 10000000, 'Tiếp đón nhiệt tình và chu đáo', '   Địa điểm du lịch Hạ Long Quảng Ninh là một trong những điểm đến hấp dẫn bậc nhất nước ta. Với diện tích lên đến 1.553km2 bao gồm 1.900 hòn đảo đá vôi mang nhiều hình thù đẹp mắt, sinh động. \r\n   Du lịch Hạ Long - 1 trong 7 kỳ quan thiên nhiên thế giới, du khách sẽ được khám phá nhiều hang động độc đáo, các hòn đảo tuyệt đẹp như đảo Mắt Rồng, Ngọc Vừng, hòn Con Cóc,... Cùng với cảnh đẹp, nơi đây còn có nhiều món đặc sản thơm ngon như chả mực, sá sùng, hàu nướng, chả rươi, sam biển,...', 'ha_long.jpg', '2022-03-02 08:49:55', NULL),
(15, 'Cồn cát Quang Phú', 'Độc thân', 'Quảng Bình', 5000000, 'Nhiều món đặc sản', 'Nằm ở vùng duyên hải miền Trung, Quảng Bình là địa đến thú vị với bãi biển hoang sơ, hang động độc đáo, núi sông hùng vĩ cùng nhiều món đặc sản thơm ngon. Du lịch Quảng Bình, du khách sẽ được khám phá quần thể hang động Phong Nha - Kẻ Bàng, một trong những di sản thiên nhiên thế giới.\r\n\r\nNgoài ra, nơi đây còn có nhiều điểm tham quan khác như cồn cát Quang Phú, hồ Bàu Tró, núi Thần Đinh,... Quảng Bình cũng là quê hương của nhiều món đặc sản dân dã hấp dẫn như cháo canh, bánh bèo, cá trắm sông Son,..', 'con_cat.jpg', '2022-03-02 09:07:10', NULL),
(16, 'Hội An', 'Gia đình', 'Hà Nội', 6000000, 'Nhiều đặc sản', 'Hội An là một trong những điểm đến hàng đầu của miền Trung với nhiều thắng cảnh đẹp cùng nền ẩm thực độc đáo. Du lịch Hội An, du khách có dịp chiêm ngưỡng những di sản kiến trúc độc đáo có từ hàng trăm năm trước như các ngôi nhà cổ, bảo tàng, chùa chiền,...\r\n\r\nHội An còn là nơi hội tụ của nhiều điểm tham quan, vui chơi hấp dẫn như Cù Lao Chàm, biển Cửa Đại, thánh địa Mỹ Sơn, làng rau Trà Quế,... Ngoài cảnh đẹp, ẩm thực nơi đây cũng khiến nhiều du khách mê mẩn với những món ngon như cao lầu, mì Quảng, hoành thánh,...', 'hoi_an.jpg', '2022-03-02 09:08:31', NULL),
(17, 'Hồ Gươm', 'Tùy chọn', 'Hà Nội', 2500000, 'Đây đủ mọi thứ', 'Thủ đô Hà Nội ngàn năm văn hiến là một trong những nơi mà bất kỳ người Việt Nam nào cũng muốn được đặt chân đến một lần trong đời. Du lịch Thủ đô, du khách sẽ được ghé thăm những điểm tham quan nổi tiếng như Quảng trường Ba Đình, Văn Miếu Quốc Tử Giám, chùa Trấn Quốc,... hay chiêm ngưỡng cảnh đẹp Hồ Tây, Hồ Gươm, Hoàng thành Thăng Long,... Bên cạnh đó, du khách còn được nếm thử nhiều món ngon đặc sắc như cốm làng Vòng, bún chả, phở, nem chua rán,...', 'ho_guom.jpg', '2022-03-02 09:09:38', NULL),
(18, 'Bãi biển Mỹ Khê', 'Cặp đôi', 'Đà Nẵng', 3000000, 'Mát mẻ, lắm gái', 'Trong hành trình khám phá miền Trung Việt Nam, bạn không thể nào bỏ qua địa điểm du lịch Đà Nẵng. Đây là thành phố của nhiều cây cầu đẹp như cầu sông Hàn, cầu Rồng, cầu Thuận Phước, cầu tình yêu; những bãi biển hoang sơ, thơ mộng như biển Mỹ Khê, biển Non Nước, biển Xuân Thiều,... cùng nhiều thắng cảnh đẹp khác như núi Ngũ Hành Sơn, bán đảo Sơn Trà, Ghềnh Bàng,... Không chỉ có cảnh đẹp, nơi đây còn níu chân du khách bởi nhiều món ngon Đà Nẵng hấp dẫn như bún mắm nêm, bê thui, mì Quảng, cơm gà,...', 'bien_my_khe.jpg', '2022-03-02 09:10:46', NULL),
(19, 'du lịch Vũng Tàu', 'Trọn gói', 'Miền Nam Vũng Tàu', 3999000, 'Nhiều em xinh tươi', 'Địa điểm du lịch miền Nam Vũng Tàu có bờ biển trải dài, cảnh quan đẹp, cùng nhiều địa danh chứa đựng giá trị văn hóa, lịch sử to lớn, trở thành điểm đến yêu thích của khách du lịch tứ phương. Đến với thành phố biển này, bạn không chỉ được tắm mát, tham gia nhiều hoạt động thể thao trên biển thú vị, mà còn được chiêm ngưỡng cảnh quan đẹp của bãi Trước, bãi Sau, Côn Đảo,... tham quan Bạch Dinh, Bảo tàng vũ khí cổ, đền Lớn,... Bên cạnh đó là thưởng thức nhiều món ngon hấp dẫn như bánh khọt, lẩu cá đuối, bánh canh,...', 'Vung_tau.jpg', '2022-03-02 09:12:39', NULL),
(20, 'Hòn Chồng', 'Trọn gói', 'Nha Trang', 4999000, 'Cảnh đẹp', 'Vẻ đẹp tựa như tranh của địa điểm du lịch Nha Trang để lại ấn tượng khó phai trong lòng du khách. Đến với thành phố biển xinh đẹp này, bạn sẽ được chiêm ngưỡng cảnh quan thiên nhiên tuyệt đẹp của vịnh Vân Phong, vịnh Ninh Vân, đảo Điệp Sơn,... Check in nhiều địa điểm thú vị của thành phố như Hòn Chồng, Tháp bà Ponagar, Viện Hải Dương học,... Đừng quên thưởng thức nhiều món đặc sản thơm ngon như cá nướng ớt xiêm xanh, bún sứa, bánh xèo mực,...', 'nha_trang.jpg', '2022-03-02 09:15:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobileNumber` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailId` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(7, 'manh', '7676767676', 'manh@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-05-01 10:54:56', '2022-03-02 09:17:56'),
(13, 'Hương Trà', '123456789', 'tra@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-03-02 08:18:39', NULL),
(15, 'Hà Huy Sơn', '123456', 'son@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-03-04 07:06:45', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Chỉ mục cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Chỉ mục cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

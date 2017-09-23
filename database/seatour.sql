SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('cuong', 'cuong');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `place_id` int(6) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `type` varchar(16) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`place_id`, `name`, `address`, `type`, `description`) VALUES
(1, 'Sân bay Tân Sơn Nhất', 'TP Hồ Chí Minh, Việt Nam', 'airport', ''),
(2, 'Chùa Bái Đính', 'Ninh Bình, Việt Nam', 'attraction', 'Chùa Bái Đính là một quần thể chùa lớn được biết đến với nhiều kỷ lục châu Á và Việt Nam được xác lập như chùa có tượng Phật bằng đồng dát vàng lớn nhất châu Á, chùa có hành lang La Hán dài nhất châu Á, chùa có tượng Di lặc bằng đồng lớn nhất Đông Nam Á... Đây là ngôi chùa lớn nhất và sở hữu nhiều kỷ lục nhất ở Việt Nam. Các hạng mục xây dựng, mở rộng khu chùa mới được các đại biểu tham dự đại lễ Phật đản thế giới 2008 làm lễ khánh thành giai đoạn 1, năm 2010 chùa Bái Đính là nơi tổ chức Đại lễ cung nghinh xá lợi Phật đầu tiên từ Ấn Độ về Việt Nam. Đại lễ Phật đản Liên hiệp quốc - Vesak 2014 do Việt Nam đăng cai đã diễn ra tại chùa Bái Đính trong tháng 3 năm 2014. Chùa nằm ở cửa ngõ phía tây khu di tích cố đô Hoa Lư, bên quốc lộ 38B, thuộc xã Gia Sinh - Gia Viễn - Ninh Bình, cách thành phố Ninh Bình 15 km, cách Hà Nội 95 km. Chùa Bái Đính nằm ở phía bắc của quần thể di sản thế giới Tràng An.'),
(3, 'Động Thiên Cung', 'Hạ Long, Việt Nam', 'attraction', 'Động Thiên Cung nằm ở phía bắc đảo Đầu Gỗ, cách cảng tàu du lịch 4km về phía nam. Là một trong những hang động đẹp nhất ở Hạ Long. Hang rộng, có nhiều cấp nhiều ngăn với vô vàn nhũ đá, măng đá mang những hình thù kỳ lạ.'),
(4, 'Đảo Tuần Châu', 'Hạ Long, Việt Nam', 'attraction', 'Khu du lịch đảo Tuần Châu cách trung tâm thành Phố Hạ Long khoảng 2km. Khu du lịch đảo Tuần Châu có diện tích 220ha, được kiến tạo bởi những ngọn đồi thoai thoải. Một con đường trải bê tông dài khoảng 2km nối đảo với đất liền. Tại Tuần Châu có rất nhiều hạng mục công trình đã và đang được xây dựng. Từ ngoài cổng đi vào lần lượt du khách sẽ đi qua một khu đồi với khu biệt thự có hạ tầng cơ sở đạt tiêu chưần quốc tế. Đi tiếp vào trong khu phố ẩm thực với năm nhà hàng và nhà tròn được thiết kế theo kiến trúc cung đình rất đẹp cùng một lúc có thể phục vụ trên 1.000 thực khách với những món ăn Âu, Á và dân tộc do các đầu bếp nổi tiếng trong nước và ngoài nước thực hiện. Các tiếp viên nhà hàng đều mang trang phục truyền thống của Việt Nam. Vào khu trung tâm du khách sẽ choáng ngơp bởi câu lạc bộ biểu diễn cá heo, hải cẩu, sư tử biến được xây dựng rất hiện đại và độc đáo.'),
(5, 'Núi Yên Tử', 'Quảng Ninh, Việt Nam', 'attraction', 'Núi Yên Tử là ngọn núi cao 1068m so với mực nước biển trong dãy núi Đông Triều vùng đông bắc Việt Nam. Núi nằm ở ranh giới giữa 2 tỉnh Bắc Giang và Quảng Ninh. Núi Yên Tử là một dải núi cao nằm ở phía Đông Bắc của Việt Nam với hệ thống động thực vật phong phú và đa dạng đã được nhà nước công nhận là khu bảo tồn thiên nhiên. Phía Đông dãy Yên Tử thuộc tỉnh Quảng Ninh và phía Tây thuộc tỉnh Bắc Giang. Núi Yên Tử hiện còn lưu giữ một hệ thống các di tích lịch sử văn hóa gắn với sự ra đời, hình thành và phát triển của thiền phái Trúc Lâm Yên Tử. Đỉnh núi thuộc xã Thượng Yên Công, thành phố Uông Bí, tỉnh Quảng Ninh. Vốn là một thắng cảnh thiên nhiên, ngọn Yên Tử còn lưu giữ nhiều di tích lịch sử với mệnh danh \"đất tổ Phật giáo Việt Nam\". Trên đỉnh núi thường có mây bao phủ nên ngày trước có tên gọi là Bạch Vân sơn. Tổng chiều dài đường bộ để lên đỉnh Yên Tử (chùa Đồng) là khoảng 6000m với 6 giờ đi bộ liên tục qua hàng ngàn bậc đá, đường rừng núi... Xung quanh khu vực núi Yên Tử là còn có các di tích và danh thắng quan trọng như khu bảo tồn thiên nhiên Tây Yên Tử (Bắc Giang) và Khu di tích lịch sử nhà Trần ở Đông Triều (Quảng Ninh). Hệ thống các di tích và danh thắng này được gộp chung thành Quần thể di tích danh thắng Yên Tử để đề nghị UNESCO công nhận là di sản thế giới.'),
(6, 'Hồ Hoàn Kiếm', 'Hà Nội, Việt Nam', 'attraction', 'Hồ Hoàn Kiếm còn được gọi là Hồ Gươm (trong bản đồ Hà Nội năm 1886, hồ này được gọi là Hồ Hoàn Gươm - Lac de Hoan Guom), là một hồ nước ngọt tự nhiên của thành phố Hà Nội. Hồ có diện tích khoảng 12 ha. Trước kia, hồ còn có các tên gọi là hồ Lục Thủy (vì nước có màu xanh quanh năm), hồ Thủy Quân (dùng để duyệt thủy binh), hồ Tả Vọng và Hữu Vọng (trong thời Lê mạt). Tên gọi Hoàn Kiếm xuất hiện vào đầu thế kỷ 15 gắn với truyền thuyết vua Lê Thái Tổ trả gươm báu cho Rùa thần. Tên hồ được lấy để đặt cho một quận trung tâm của Hà Nội (quận Hoàn Kiếm) và là hồ nước duy nhất của quận này cho đến ngày nay.'),
(7, 'Sân bay Nội Bài', 'Hà Nội, VIệt Nam', 'airport', ''),
(8, 'Thác Bạc', 'Lào Cai, Việt Nam', 'attraction', 'Thác Bạc (tọa độ địa lý: 22.361626 độ vĩ Bắc,103.778912 độ kinh Đông) là một thắng cảnh thu hút nhiều du khách thuộc xã San Sả Hồ, huyện Sa Pa của tỉnh Lào Cai. Thác nằm ngay cạnh quốc lộ 4D, tuyến đường huyết mạch để đến tỉnh Lai Châu và chỉ cách khu vực trung tâm thị trấn Sa Pa khoảng 12 km về hướng tây nên khá thuận lợi để tham quan.'),
(9, 'Chợ phiên Bắc Hà', 'Lào Cai, Việt Nam', 'attraction', 'Chợ Bắc Hà họp vào chủ nhật hàng tuần từ sáng đến 2h. Đây là phiên chợ lý tưởng để khám phá vẻ nguyên sơ, mang đậm bản sắc các dân tộc Tây Bắc.  Nằm trên vùng núi cao và cách thành phố Lào Cai khoảng 76 km, du khách đến Bắc Hà sẽ phải đi qua những con đèo gấp khúc uốn lượn, càng lên cao càng dốc đứng rợn gáy - đặc trưng địa hình Tây Bắc. Dọc đường đi, cứ cách vài km lại thấy lác đác người dân tộc Mông, Dao trong trang phục sặc sỡ địu gùi sau lưng, đi bộ, dắt trâu ngựa lên núi để bán. Đôi lúc, vài chiếc xe máy chở người, thồ hàng vụt qua cho kịp giờ lên phiên. '),
(10, 'Sân bay Đà Nẵng', 'Đà Nẵng, Việt Nam', 'airport', ''),
(11, 'Ngũ Hành Sơn', 'Đà Nẵng, Việt Nam', 'attraction', 'Ngũ Hành Sơn hay núi Non Nước là tên chung của một danh thắng gồm 5 ngọn núi đá vôi nhô lên trên một bãi cát ven biển, trên một diện tích khoảng 2 km2, gồm: Kim Sơn, Mộc Sơn, Thủy Sơn (lớn, cao và đẹp nhất), Hỏa Sơn (có hai ngọn) và Thổ Sơn, nằm cách trung tâm thành phố Đà Nẵng khoảng 8 km về phía Đông Nam, ngay trên tuyến đường Đà Nẵng - Hội An; nay thuộc phường Hòa Hải, quận Ngũ Hành Sơn, thành phố Đà Nẵng, Việt Nam.'),
(12, 'Bán đảo Sơn Trà', 'Đà Nẵng, Việt Nam', 'attraction', 'Nằm cách trung tâm thành phố 10 km về phía đông, bán đảo Sơn Trà được xem là \"lá phổi xanh\" của Đà Nẵng nhờ khu bảo tồn thiên nhiên lưu giữ hệ động thực vật phong phú, đa dạng.  Chỉ cần thuê một chiếc xe máy, đổ xăng đầy bình và mang theo một bình nước là bạn có thể bắt đầu hành trình. Dưới đây là một số điểm dừng chân bạn không nên bỏ lỡ.'),
(13, 'Phố cổ Hội An', 'Đà Nẵng, Việt Nam', 'attraction', 'Phố cổ Hội An là một đô thị cổ nằm ở hạ lưu sông Thu Bồn, thuộc vùng đồng bằng ven biển tỉnh Quảng Nam, Việt Nam, cách thành phố Đà Nẵng khoảng 30 km về phía Nam. Nhờ những yếu tố địa lý và khí hậu thuận lợi, Hội An từng là một thương cảng quốc tế sầm uất, nơi gặp gỡ của những thuyền buôn Nhật Bản, Trung Quốc và phương Tây trong suốt thế kỷ 17 và 18. Trước thời kỳ này, nơi đây cũng từng có những dấu tích của thương cảng Chăm Pa hay được nhắc đến cùng con đường tơ lụa trên biển. Thế kỷ 19, do giao thông đường thủy ở đây không còn thuận tiện, cảng thị Hội An dần suy thoái, nhường chỗ cho Đà Nẵng khi đó đang được người Pháp xây dựng. Hội An may mắn không bị tàn phá trong hai cuộc chiến tranh và tránh được quá trình đô thị hóa ồ ạt cuối thế kỷ 20. Bắt đầu từ thập niên 1980, những giá trị kiến trúc và văn hóa của phố cổ Hội An dần được giới học giả và cả du khách chú ý, khiến nơi đây trở thành một trong những điểm du lịch hấp dẫn của Việt Nam.'),
(14, 'Bà Nà', 'Đà Nẵng, Việt Nam', 'attraction', 'Núi Bà Nà là một trong những núi đẹp nhất Đà Nẵng cùng với núi Ngũ Hành Sơn và núi Sơn Trà.'),
(15, 'Thánh địa La Vang', 'Quảng Bình, Việt Nam', 'attraction', 'Đức Mẹ La Vang là tên gọi mà giáo dân Công giáo Việt Nam đề cập đến sự kiện Đức Mẹ Maria hiện ra trong một thời kỳ mà đạo Công giáo bị bắt bớ tại Việt Nam. La Vang ngày nay là một thánh địa và là nơi hành hương quan trọng của người Công giáo Việt Nam, nằm ở huyện Hải Lăng, tỉnh Quảng Trị, thuộc Tổng Giáo phận Huế. Các tín hữu tin rằng, Đức Mẹ Maria hiển linh ở khu vực này vào năm 1798. Một nhà thờ đã được xây dựng gần ba cây đa, nơi họ tin là Đức Mẹ đã hiện ra và được Tòa Thánh tôn phong là Tiểu vương cung thánh đường La Vang từ năm 1961. Đây là một trong ba trung tâm hành hương Công giáo được chính quyền Việt Nam hiện nay công nhận.'),
(16, 'Phong Nha, Kẻ Bàng', 'Quảng Bình, Việt Nam', 'attraction', 'Vườn quốc gia Phong Nha-Kẻ Bàng là một vườn quốc gia tại huyện Bố Trạch, và Minh Hóa, tỉnh Quảng Bình, cách thành phố Đồng Hới khoảng 50 km về phía Tây Bắc, cách thủ đô Hà Nội khoảng 500 km về phía nam. Vườn quốc gia này giáp khu bảo tồn thiên nhiên Hin Namno ở tỉnh Khammouan, Lào về phía tây, cách Biển Đông 42 km về phía đông kể từ biên giới của hai quốc gia.'),
(17, 'Đại Nội', 'Huế, Việt Nam', 'attraction', 'Hoàng Thành là vòng thành thứ hai bên trong Kinh thành Huế, có chức năng bảo vệ các cung điện quan trọng nhất của triều đình, các miếu thờ tổ tiên nhà Nguyễn và bảo vệ Tử Cấm Thành - nơi dành riêng cho vua và hoàng gia. Người ta thường gọi chung Hoàng Thành và Tử Cấm Thành là Đại Nội.'),
(18, 'Chùa Thiên Mụ', 'Huế, Việt Nam', 'attraction', 'Chùa Thiên Mụ hay còn gọi là chùa Linh Mụ là một ngôi chùa cổ nằm trên đồi Hà Khê, tả ngạn sông Hương, cách trung tâm thành phố Huế (Việt Nam) khoảng 5 km về phía tây. Chùa Thiên Mụ chính thức khởi lập năm Tân Sửu (1601), đời chúa Tiên Nguyễn Hoàng -vị chúa Nguyễn đầu tiên ở Đàng Trong.'),
(19, 'Gia Ngu Restaurant', 'Hoàn Kiếm, Hà Nội, Việt Nam', 'restaurant', 'GiaNgu Restaurant serves Authentic Vietnamese Cuisine with a perfect mixture of meat, poultry, herbs and vegetables. Enjoying NemNuong, Bun Cha, Pork chop with lemongrass, juicy Layer fish with fruit sauce or hearty Roll beef with pate etc. '),
(20, 'Bun Cha Ta', 'Hoàn Kiếm, Hà Nội, Việt Nam', 'restaurant', 'Bun Cha Ta is a Vietnamese dish of grilled pork and noodle, which is thought to have originated from Hanoi, Vietnam. Bun cha is served with grilled fatty pork (chả) over a plate of white rice noodle (bún) and herbs with a side dish of dipping sauce. The dish was described in 1959 by Vietnamese food writer Vu Bang (1913–1984) who described Hanoi as a town \"transfixed by bún chả.\" Hanoi Bun Cha Ta ’s first bún chả restaurant was on Gia Ngư street, Hoàn Kiếm District, in Hanoi\'s Old Quarter and moved to 21 Nguyen Huu Huan street now\nBún chả is popular in the Northern region of Vietnam. In the South, a similar dish of rice vermicelli and grilled meat is called bún thịt nướng'),
(21, 'Nhà hàng Phố Cổ', 'Nguyễn Đình Chiểu, Huế, Việt Nam', 'restaurant', 'Với ý tưởng đưa du khách trở về cùng quá khứ Nhà hàng Phố Cổ được thiết kế theo kiểu nhà rường Huế, phục vụ các món ăn truyền thống Huế, tái hiện một số hàng gánh dân dã Huế xưa, khung cảnh nhà hàng là chốn thôn quê mằn giữa đô thị Hương vi thơm ngon của các món ăn truyền thống được chế biến theo phong cách dân dã, phục vụ tận tình chu đáo cùng với không khí trong lành của thiên nhiên, phong cảnh'),
(22, 'Tha Om Garden House', 'Huế, Việt Nam', 'restaurant', 'Hue is famous for its garden houses, and there is no more exquisite an example than the Tha Om house. Located in Kim Long village on the way to Thien Mu Pagoda, not far from the north bank of the Perfume River, Tha Om is not only a place to explore the city\'s architectural heritage but a venue as well for Hue\'s finest dishes.'),
(23, 'Furama Đà Nẵng', 'Đà Nẵng, Việt Nam', 'resort', 'Furama Resort Đà Nẵng tọa lạc trên bãi biển Bắc Mỹ An, gồm 198 phòng được thiết kế theo phong cách đặc trưng văn hóa các dân tộc Việt Nam, đặc biệt là nét kiến trúc Chămpa.'),
(24, 'Hyatt Regency Danang', 'Đà Nẵng, Việt Nam', 'resort', 'Tọa lạc trên bờ biển đẹp như tranh của Đà Nẵng, khu nghỉ mát Hyatt Regency Danang Resort and Spa có tầm nhìn tuyệt đẹp ra Biển Đông và Ngũ Hành Sơn. Với bãi biển riêng, nơi đây cũng có hồ bơi ngoài trời, trung tâm thể dục và Wi-Fi miễn phí.'),
(25, 'Asean Hai Ngoc Hotel', 'Hạ Long, Quảng Ninh, Việt Nam', 'hotel', '');

-- --------------------------------------------------------

--
-- Table structure for table `place_image`
--

CREATE TABLE `place_image` (
  `image_id` int(6) NOT NULL,
  `place_id` int(6) NOT NULL,
  `image_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_image`
--

INSERT INTO `place_image` (`image_id`, `place_id`, `image_link`) VALUES
(1, 1, 'http://static.anninhthudo.vn/Uploaded/91/2016_07_20/antd-_san_bay_tan_son_nhat.jpg'),
(2, 1, 'https://upload.wikimedia.org/wikipedia/commons/6/67/Tan_Son_Nhat_International_Airport.jpg'),
(3, 2, 'https://travel.com.vn/images/destination/Large/dc_150825_chuaBaiDinh.jpg'),
(4, 2, 'http://dulichdongque.com/wp-content/uploads/2016/03/chua-bai-dinh-ninh-binh.jpg'),
(5, 3, 'http://dulichhalongquangninh.com/wp-content/uploads/2013/10/dong-thien-cung.jpg'),
(6, 4, 'http://www.dulichhalong.net/wp-content/uploads/2013/02/Dao-Tuan-Chau.jpg'),
(7, 5, 'http://www.netviettravel.vn/wp-content/uploads/2015/02/tour-du-lich-yen-tu-1-ngay.jpg'),
(8, 5, 'https://static.mytour.vn/upload_images/Image/Quang%20Dia%20Danh/28/kham-pha-ve-dep-huyen-bi-cua-nui-thieng-yen-tu.jpeg'),
(9, 6, 'http://media.dulich24.com.vn/diemden/ho-hoan-kiem-6487/ho-hoan-kiem.jpg'),
(10, 6, 'http://hànộihồhoànkiếm.vn/upload/Colombo/23841/20130703/Cu_The_Huc_tren_h_Hoan_Kim.jpg'),
(11, 7, 'http://img.infonet.vn/Uploaded/xuantung/2016_05_31/noibaiinternationalairportterminal276_1.jpeg'),
(12, 8, 'http://vietnamskytravel.com/wp-content/uploads/2016/08/thacbac.jpg'),
(13, 9, 'http://dulichkhatvongviet.com/wp-content/uploads/2015/10/cho-phien-bac-ha.jpg'),
(14, 10, 'http://dailymaybay.vn/public/uploads/images/images/%C4%91%C3%A0%20n%E1%BA%B5ng/Danang-san-bay-quoc-te-danang_1418961066.JPG'),
(15, 11, 'http://www.dulichdanang.biz.vn/_/rsrc/1386760646242/diem-du-lich/ngu-hanh-son/ngu-hanh-son.jpg'),
(16, 12, 'http://img.v3.news.zdn.vn/w660/Uploaded/nokarz/2015_04_27/bandaosontra8_zing.jpg'),
(17, 13, 'https://static.mytour.vn/upload_images/Image/Articles%20Location/0news%20to%20location/Hoi%20An/hoian2.jpg'),
(18, 13, 'http://hoian.gov.vn/Uploaded/image/Van%20hoa%20du%20lich/pho%20co%20Hoi%20An%202016.jpg'),
(19, 14, 'http://dulichbana.vn/wp-content/uploads/2015/02/IMG_0247.jpg'),
(20, 15, 'https://static.mytour.vn/upload_images/Image/DIA%20DANH%202/DIA%20DANH%203/kya1365148492.jpg'),
(21, 16, 'http://www.huetourist.vn/upload/images/Phong-Nha-Ke-Bang-6.jpg'),
(22, 17, 'http://admin.ductravel.com/cdn/media/1/da%20nang/Dai-Noi-Hue.jpg'),
(23, 18, 'http://giaoduc.net.vn/Uploaded/xuanhai/2012_03_30/Thienmu_bandoc_giaooduc.net.vn12.jpg'),
(24, 19, 'http://giangurestaurant.com/files/images/Gallery/gallery-large-01.jpg'),
(25, 20, 'https://media-cdn.tripadvisor.com/media/photo-s/0a/2f/7e/89/bun-cha-nem.jpg'),
(26, 21, 'http://kenh14cdn.com/Images/Uploaded/Share/2011/04/23/IMG51952.jpg'),
(27, 22, 'http://vietnamfoodtour.com/Themes/FoodTours/data1/images/garden-house.jpg'),
(28, 23, 'https://s-media-cache-ak0.pinimg.com/originals/33/99/4e/33994e57edca7c38e54407135e96931e.jpg'),
(29, 24, 'http://ego.com.vn/images/2015/12/hyatt-regency-danang.jpg'),
(30, 25, 'https://static.mytour.vn/resources/pictures/hotels/9/vdr1392611626_khach-san-asean-hai-ngoc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `place_in_tour`
--

CREATE TABLE `place_in_tour` (
  `place_in_tour_id` int(6) NOT NULL,
  `place_id` int(6) NOT NULL,
  `tour_id` int(6) NOT NULL,
  `order_number` int(2) NOT NULL,
  `day_number` int(2) NOT NULL,
  `start_time` time NOT NULL,
  `stop_time` time NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_in_tour`
--

INSERT INTO `place_in_tour` (`place_in_tour_id`, `place_id`, `tour_id`, `order_number`, `day_number`, `start_time`, `stop_time`, `description`) VALUES
(1, 1, 1, 1, 1, '03:00:00', '03:30:00', 'Quý khách lưu ý đến đúng giờ, 3 giờ 00 phút sáng, để đảm bảo có thể tham dự tour.'),
(2, 3, 1, 3, 1, '08:00:00', '12:00:00', 'Từ Hà Nội, quý khách sẽ đi bằng xe khách và tàu thuỷ để đến với Hạ Long. Điểm dừng chân đầu tiên là Động Thiên Cung.'),
(3, 3, 2, 4, 2, '09:00:00', '12:30:00', ''),
(4, 4, 1, 4, 2, '09:00:00', '14:00:00', 'Sau đó quý khách sẽ về khách sạn tại đảo Tuần Châu để nghỉ ngơi. Vào ngày thứ 2, quý khách sẽ được hưởng ngoạn bãi biển Tuần Châu. Quý khách sẽ được thưởng thức các món hải sản đặc biệt của Hạ Long trong bữa ăn trưa tại đây.'),
(5, 4, 2, 5, 2, '14:00:00', '16:30:00', ''),
(6, 5, 1, 5, 2, '15:00:00', '20:00:00', 'Điểm dừng chân cuối cùng là Núi Yên Tử. Sau đó quý khách sẽ trở về sân bay Nội Bài để quay về TP Hồ Chí Minh.'),
(7, 5, 2, 3, 3, '09:00:00', '12:30:00', ''),
(8, 6, 2, 3, 1, '14:00:00', '16:30:00', ''),
(9, 6, 4, 3, 1, '16:00:00', '18:00:00', ''),
(10, 7, 1, 2, 1, '06:00:00', '06:30:00', 'Quý khách sẽ đặt chân tới Hà Nội vào lúc 8 giờ sáng.'),
(11, 7, 2, 2, 1, '09:00:00', '09:30:00', ''),
(12, 7, 3, 1, 1, '07:00:00', '07:30:00', ''),
(13, 7, 4, 2, 1, '12:00:00', '12:30:00', ''),
(14, 8, 4, 4, 2, '09:00:00', '12:30:00', ''),
(15, 10, 2, 1, 1, '06:00:00', '06:30:00', ''),
(16, 10, 4, 1, 1, '07:00:00', '08:00:00', ''),
(17, 15, 3, 4, 2, '09:00:00', '13:00:00', ''),
(18, 16, 3, 5, 2, '15:20:00', '18:00:00', ''),
(19, 17, 3, 3, 1, '16:00:00', '19:30:00', ''),
(20, 22, 3, 2, 1, '12:00:00', '13:30:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `tour_id` int(6) NOT NULL,
  `name` varchar(128) NOT NULL,
  `no_days` int(1) NOT NULL,
  `price` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`tour_id`, `name`, `no_days`, `price`) VALUES
(1, 'Hồ Chí Minh đi Hạ Long, Quảng Ninh', 2, 2500000),
(2, 'Đà Nẵng đi Hà Nội, Hạ Long', 4, 6500000),
(3, 'Hà Nội đi Huế, Quảng Bình', 4, 6000000),
(4, 'Đà Nẵng đi Hà Nội, Lào Cai', 4, 6800000);

-- --------------------------------------------------------

--
-- Table structure for table `tour_date`
--

CREATE TABLE `tour_date` (
  `tour_date_id` int(6) NOT NULL,
  `tour_id` int(6) NOT NULL,
  `date` date NOT NULL,
  `slot_available` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tour_date`
--

INSERT INTO `tour_date` (`tour_date_id`, `tour_id`, `date`, `slot_available`) VALUES
(1, 1, '2016-11-23', 24),
(2, 1, '2016-11-30', 30),
(3, 2, '2016-11-25', 30),
(4, 2, '2016-12-01', 30),
(5, 3, '2016-12-07', 30),
(6, 3, '2016-11-24', 30),
(7, 4, '2016-11-30', 30),
(8, 4, '2016-12-15', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tour_order`
--

CREATE TABLE `tour_order` (
  `order_id` int(6) NOT NULL,
  `tour_date_id` int(6) NOT NULL,
  `user_id` int(6) DEFAULT NULL,
  `no_tourists` int(2) NOT NULL,
  `price` int(10) NOT NULL,
  `contact_name` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `contact_phone` varchar(16) NOT NULL,
  `contact_address` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(32) NOT NULL DEFAULT 'Pending',
  `date_ordered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tour_order`
--

INSERT INTO `tour_order` (`order_id`, `tour_date_id`, `user_id`, `no_tourists`, `price`, `contact_name`, `contact_email`, `contact_phone`, `contact_address`, `description`, `status`, `date_ordered`) VALUES
(15, 1, 0, 2, 5000000, 'Cuong', 'cuong@gmail.com', '1276910199', '1 TQB', '', 'Accepted', '2016-12-16 03:53:14'),
(16, 5, 0, 2, 12000000, 'Cuong', 'cuong@gmail.com', '1276910199', '1 TQB', '', 'Accepted', '2016-12-16 09:10:15'),
(17, 1, 0, 1, 2500000, 'Dung', 'Dung@gmail.com', '1234567890', '1 DCV', '', 'Accepted', '2016-12-16 09:32:27'),
(18, 1, 0, 4, 10000000, 'Son', 'son@gmail.com', '0123456789', '1 HBT', '', 'Accepted', '2016-12-16 09:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(6) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `full_name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `full_name`) VALUES
(1, 'cuong@gmail.com', 'cuong', 'Cường');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `place_image`
--
ALTER TABLE `place_image`
  ADD PRIMARY KEY (`image_id`,`place_id`),
  ADD KEY `place_id` (`place_id`);

--
-- Indexes for table `place_in_tour`
--
ALTER TABLE `place_in_tour`
  ADD PRIMARY KEY (`place_in_tour_id`),
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `place_id` (`place_id`),
  ADD KEY `tour_id_2` (`tour_id`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `tour_date`
--
ALTER TABLE `tour_date`
  ADD PRIMARY KEY (`tour_date_id`,`tour_id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- Indexes for table `tour_order`
--
ALTER TABLE `tour_order`
  ADD PRIMARY KEY (`order_id`,`tour_date_id`),
  ADD KEY `tour_date_id` (`tour_date_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `place_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `place_image`
--
ALTER TABLE `place_image`
  MODIFY `image_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `place_in_tour`
--
ALTER TABLE `place_in_tour`
  MODIFY `place_in_tour_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `tour_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tour_date`
--
ALTER TABLE `tour_date`
  MODIFY `tour_date_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tour_order`
--
ALTER TABLE `tour_order`
  MODIFY `order_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `place_image`
--
ALTER TABLE `place_image`
  ADD CONSTRAINT `place_image_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `place_in_tour`
--
ALTER TABLE `place_in_tour`
  ADD CONSTRAINT `place_in_tour_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place` (`place_id`),
  ADD CONSTRAINT `place_in_tour_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`);

--
-- Constraints for table `tour_date`
--
ALTER TABLE `tour_date`
  ADD CONSTRAINT `tour_date_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tour_order`
--
ALTER TABLE `tour_order`
  ADD CONSTRAINT `tour_order_ibfk_1` FOREIGN KEY (`tour_date_id`) REFERENCES `tour_date` (`tour_date_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

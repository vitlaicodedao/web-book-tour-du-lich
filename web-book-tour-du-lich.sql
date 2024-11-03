-- Host: localhost    Database: web-book-tour-du-lich

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `maadmin` int NOT NULL AUTO_INCREMENT,
  `tendangnhap` varchar(100) DEFAULT NULL,
  `tenadmin` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `sodienthoai` bigint DEFAULT NULL,
  `matkhau` varchar(100) DEFAULT NULL,
  `ngaycapnhat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`maadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `admin` WRITE;
-- admin/12345
INSERT INTO `admin` VALUES (1,'admin','Administrator','test@gmail.com',7894561239,'827ccb0eea8a706c4c34a16891f84e7b','2024-01-10 11:18:49');
UNLOCK TABLES;


DROP TABLE IF EXISTS `datcho`;
CREATE TABLE `datcho` (
  `madat` int NOT NULL AUTO_INCREMENT,
  `magoi` int DEFAULT NULL,
  `emailnguoidat` varchar(100) DEFAULT NULL,
  `tungay` varchar(100) DEFAULT NULL,
  `denngay` varchar(100) DEFAULT NULL,
  `binhluan` mediumtext,
  `ngaydat` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tinhtrang` int DEFAULT NULL,
  `duochuyboi` varchar(5) DEFAULT NULL,
  `ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `cccd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`madat`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `datcho` WRITE;
INSERT INTO `datcho` VALUES 
(1,1,'test@gmail.com','2020-07-11','2020-07-18','I want this package.','2024-01-16 06:38:36',2,'u','2024-01-30 05:18:29', '111111111111'),
(2,2,'test@gmail.com','2020-07-10','2020-07-13','There is some discount','2024-01-17 06:43:25',1,NULL,'2024-01-31 01:21:17', '111111111111'),
(3,4,'abir@gmail.com','2020-07-11','2020-07-15','When I get conformation','2024-01-17 06:44:39',2,'a','2024-01-30 05:18:52', '111111111111'),
(4,2,'test@gmail.com','2024-02-02','2024-02-08','NA','2024-01-31 02:03:27',1,NULL,'2024-01-31 06:35:08', '111111111111'),
(5,3,'test@gmail.com','2024-01-31','2024-02-05','please offer some discount','2024-01-31 05:21:52',0,NULL,NULL, '111111111111'),
(6,2,'garima12@gmail.com','2024-03-01','2024-03-05','NA','2024-02-03 13:04:33',1,NULL,'2024-02-03 13:05:29', '111111111111'),
(7,2,'trancongviet0710@gmail.com','2024-09-01','2024-09-02','hihi','2024-09-11 15:20:53',2,'u','2024-09-11 15:36:09', '111111111111'),
(8,2,'trancongviet0710@gmail.com','2024-09-01','2024-09-02','kakaa','2024-09-11 15:21:47',1,NULL,'2024-09-11 15:36:35', '111111111111'),
(9,2,'trancongviet0710@gmail.com','2024-09-02','2024-09-01','dsasdsad','2024-09-11 15:37:13',2,'a','2024-09-28 17:40:42', '111111111111'),
(10,1,'kiragup@mailinator.com','2024-09-24','2024-09-25','hihi','2024-09-22 05:26:41',1,NULL,'2024-09-28 17:40:46', '111111111111'),
(11,1,'jyzafumu@mailinator.com','2024-09-02','2024-09-25','hihi','2024-09-28 10:24:25',0,NULL,NULL, '111111111111');
UNLOCK TABLES;

DROP TABLE IF EXISTS `yeucau`;
CREATE TABLE `yeucau` (
  `mayeucau` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sodienthoai` char(10) DEFAULT NULL,
  `chude` varchar(100) DEFAULT NULL,
  `mota` mediumtext,
  `ngaydang` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tinhtrang` int DEFAULT NULL,
  PRIMARY KEY (`mayeucau`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
LOCK TABLES `yeucau` WRITE;
INSERT INTO `yeucau` VALUES 
(2,'Kishan Twaerea','kishan@gmail.com','6797947987','Enquiry','Any Offer for North Trip','2024-01-18 06:31:38',NULL),
(3,'Jacaob','Jai@gmail.com','1646689721','Any offer for North','Any Offer for north','2024-01-19 06:32:41',1),
(6,'Leroy Riggs','voqemuhuve@mailinator.com','Libero mol','Cum dolor sit autem','Illo vel dolore inci','2024-09-22 04:59:59',NULL),
(7,'Ira Boone','tupabyl@mailinator.com','Perspiciat','Harum veniam nobis ','Occaecat sit illo q','2024-09-22 05:26:54',1),
(8,'Zane Ballard','zupifajiho@mailinator.com','Molestiae','Duis omnis esse qui ','Sed voluptatem aliqu','2024-09-28 17:41:46',NULL);
UNLOCK TABLES;

DROP TABLE IF EXISTS `goidulich`;
CREATE TABLE `goidulich` (
  `magoi` int NOT NULL AUTO_INCREMENT,
  `tengoi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `kieugoi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `diadiem` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `giatien` int DEFAULT NULL,
  `giagiam` int DEFAULT NULL,
  `phuongtien` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mota` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `anh` varchar(100) DEFAULT NULL,
  `ngaytao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`magoi`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `goidulich` WRITE;
INSERT INTO `goidulich` VALUES 
(1,'Swiss Paris Delight Premium 2020','Gói nhóm','Paris and Switzerland',6000, 5000,'Vé máy bay khứ hồi hạng phổ thông có hiệu lực trong suốt thời gian nghỉ dưỡng - Thuế sân bay - Chỗ ở trong 3 đêm tại Paris và 3 đêm tại Thụy Sĩ xinh đẹp - Thưởng thức bữa sáng kiểu lục địa mỗi sáng - Thưởng thức 5 bữa tối kiểu Ấn Độ tại Châu Âu lục địa - Exp','Chọn kỳ nghỉ này để có một kỳ nghỉ thư giãn tại Paris và Thụy Sĩ. Chuyến tham quan của bạn khởi hành từ Paris. Tận hưởng chuyến tham quan đến các điểm tham quan nổi tiếng như Tháp Eiffel mang tính biểu tượng. Sau khi trải nghiệm thành phố xinh đẹp này, bạn sẽ lái xe qua những cánh đồng cải qua Burgundy để đến Thụy Sĩ. Khi ở đó, bạn có thể chọn tham gia tour đến Interlaken và sau đó đến Thác Trummelbach. Điểm dừng chụp ảnh tại Hồ Zurich và đi cáp treo đến Núi Titlis là những điểm nhấn chính của kỳ nghỉ.','1581490262_2_1.jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(2,'Kỳ nghỉ Bhutan - Thimphu và Paro đặc biệt','Gói gia đình','Bhutan',3000,2000,'Wi-fi miễn phí, Bữa sáng miễn phí, Dịch vụ đón và trả khách miễn phí','Tham quan Tu viện Tigers Nest | Dịch vụ miễn phí của Hướng dẫn viên chuyên nghiệp','BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(3,'Soulmate Special Bali - 7 đêm','Gói tình nhân','Indonesia(Bali)',5000,4000,'Dịch vụ đón và trả khách miễn phí, Wi-fi miễn phí, Hướng dẫn viên chuyên nghiệp miễn phí','Đưa đón sân bay bằng xe riêng | Bao gồm tham quan phổ biến | Thích hợp cho cặp đôi và du khách tiết kiệm','1583140977_5_11.jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(4,'Kerala - Thiên đường của những người yêu nhau - Giá trị gia tăng','Gói gia đình','Kerala',1000,900,'Wi-fi miễn phí, Dịch vụ đón và trả khách miễn phí,','Tham quan Đập Matupetty, đồn điền trà và vườn gia vị | Ngắm hoàng hôn ở Kanyakumari | Xe ô tô có máy lạnh phục vụ thêm 2 giờ (mỗi thành phố một lần)','images (2).jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(5,'Chuyến đi ngắn đến Dubai','Gói gia đình','Dubai',4500,4000,'Dịch vụ đón và trả khách miễn phí, Wi-fi miễn phí, Bữa sáng miễn phí','Gói kỳ nghỉ cho toàn thể gia đình.','unnamed.jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(6,'Sikkim Delight với Darjeeling','Gói nhóm','Sikkim',3500,3200,'Bữa sáng miễn phí, dịch vụ đưa đón miễn phí','Chuyến tham quan Hồ Changu và New Baba Mandir | Ngắm bình minh từ Đồi Tiger | Được ban phước tại Tu viện Rumtek nổi tiếng','download (2).jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(7,'6 ngày ở Guwahati và Shillong với chuyến du ngoạn Cherrapunji','Gói gia đình','Guwahati(Sikkim)',4500,4400,'Ăn sáng, Lưu trú » Đón » Trả » Tham quan','Sau khi đến sân bay Guwahati, hãy gặp đại diện của chúng tôi và tiếp tục đến Shillong. Shillong là thủ phủ và là trạm đồi của Meghalaya, còn được gọi là Abode of Cloud, một trong những tiểu bang nhỏ nhất ở Ấn Độ. Trên đường đi, hãy ghé thăm hồ Barapani. Đến Shillong vào buổi chiều. Nhận phòng khách sạn. Buổi tối là thời gian rảnh rỗi. Dành thời gian theo ý muốn. Ghé thăm chợ cảnh sát. Nghỉ đêm tại Shillong.','95995.jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(8,'Tuần lễ lớn ở Đông Bắc - Lachung, Lachen và Gangtok','Gói trong nước','Sikkim',4500,4400,'Bữa sáng miễn phí, Wi-fi miễn phí','Chuyến tham quan hồ Changu và Baba Mandir mới | Tour du lịch Thung lũng Yumthang | Chuyến tham quan hồ Gurudongmar | Nghỉ đêm tại Lachen','download (3).jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(9,'Kỳ nghỉ Gangtok & Darjeeling','Gói gia đình','Sikkim',1000,900,'Wi-fi miễn phí, dịch vụ đón và trả khách miễn phí','Tour lý tưởng cho gia đình | Tham quan Gangtok và Darjeeling | Chuyến tham quan trọn ngày đến Hồ Changu thơ mộng | Tham quan Tu viện Ghoom','1540382781_shutterstock_661867435.jpg.jpg','2024-07-15 05:21:58','2024-09-26 13:51:11'),
(11,'Nelle Emerson','Magni in perferendis','Sunt cupidatat volu',843,500,'Nam irure doloremque','Natus praesentium te','wmf4pf98d4l61.png','2024-09-28 17:44:28',NULL);
UNLOCK TABLES;


DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE `khachhang` (
  `makhachhang` int NOT NULL AUTO_INCREMENT,
  `hoten` varchar(100) DEFAULT NULL,
  `sodienthoai` char(10) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `matkhau` varchar(100) DEFAULT NULL,
  `ngaydangky` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ngaycapnhat` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`makhachhang`),
  KEY `email` (`email`),
  KEY `email_2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

LOCK TABLES `khachhang` WRITE;
INSERT INTO `khachhang` VALUES 
(1,'Manju Srivatav','4456464654','manju@gmail.com','202cb962ac59075b964b07152d234b70','2024-01-16 06:33:20','2024-01-31 02:00:40'),
(2,'Kishan','9871987979','kishan@gmail.com','202cb962ac59075b964b07152d234b70','2024-01-16 06:33:20','2024-01-31 02:00:48'),
(3,'Salvi Chandra','1398756416','salvi@gmail.com','202cb962ac59075b964b07152d234b70','2024-01-16 06:33:20','2024-01-31 02:00:48'),
(4,'Abir','4789756456','abir@gmail.com','202cb962ac59075b964b07152d234b70','2024-01-16 06:33:20','2024-01-31 02:00:48'),
(5,'Test','1987894654','test@gmail.com','f925916e2754e5e03f75dd58a5733251','2024-01-16 06:33:20','2024-01-31 02:00:48'),
(9,'Test Sample','4654654564','testsample@gmail.com','202cb962ac59075b964b07152d234b70','2024-01-31 06:32:51',NULL),
(10,'Garima Singh','1425362540','garima12@gmail.com','f925916e2754e5e03f75dd58a5733251','2024-02-03 13:03:43','2024-02-03 13:04:02'),
(12,'Tran Cong Viet','0935169835','trancongviet0710@gmail.com','827ccb0eea8a706c4c34a16891f84e7b','2024-09-11 15:20:15',NULL),
(13,'Emily Knowles','833','toxojafo@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 04:57:36',NULL),
(14,'Jorden Bailey','846','kezijaniza@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 04:59:29',NULL),
(15,'Forrest Fry','513','weli@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:01:19',NULL),
(16,'Thomas Harper','661','lewacosyw@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:02:31',NULL),
(17,'Hadley Rocha','200','zobidydiku@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:02:53',NULL),
(18,'Roth Tate','353','xoliz@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:05:03',NULL),
(19,'Raphael Fowler','134','vuhuxiwyh@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:07:10',NULL),
(20,'Ian Madden','100','leragoju@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:07:16',NULL),
(21,'Rose Melton','980','hozimec@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:07:59',NULL),
(22,'Harriet Roman','618','xunygojat@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:10:02',NULL),
(23,'Pascale Hines','424','pakycij@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:11:22',NULL),
(24,'Zelda Owens','673','kiragup@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-22 05:14:41',NULL),
(25,'Kaseem Hoffman','479','xyjicavu@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-28 05:57:29',NULL),
(26,'Gannon Gilbert','715','nixon@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-28 10:17:49',NULL),
(27,'Shelley Oneil','122','jyzafumu@mailinator.com','f3ed11bbdb94fd9ebdefbaf646ab94d3','2024-09-28 10:24:00',NULL);
UNLOCK TABLES;

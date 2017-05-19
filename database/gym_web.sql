/*
Navicat MySQL Data Transfer

Source Server         : dsa
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : gym_web

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-05-17 23:26:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `exercisedetail`
-- ----------------------------
DROP TABLE IF EXISTS `exercisedetail`;
CREATE TABLE `exercisedetail` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `muscle_type_id` int(20) DEFAULT NULL,
  `exercise_detail_name` varchar(200) NOT NULL,
  `exercise_detail_image` varchar(400) DEFAULT NULL,
  `exercise_detail_info` text,
  `set` int(11) DEFAULT NULL,
  `timeBreak` int(11) DEFAULT NULL,
  `timeExercise` int(11) DEFAULT NULL,
  `videoID` varchar(100) DEFAULT NULL,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exercisedetail
-- ----------------------------
INSERT INTO exercisedetail VALUES ('1', '1', 'Barbell Incline Bench Press – Đẩy tạ trên ghế nghiêng – Tập ngực trên', 'https://firebasestorage.googleapis.com/v0/b/fitneasy-d43a0.appspot.com/o/ANHGYM%2FBAITAPNGUC%2Fbai-tap-nguc-Barbell-Incline-Bench-Press.gif?alt=media&token=c70d91a0-47e1-4b4c-8689-32fbc73246fa', 'Điều quan trọng nhất trong danh sách lịch tập gym 6 buổi của chúng ta là phải khởi động trước trong tất cả các buổi tập. Nếu bạn đã đọc bài viết những điều nên làm trước và sau khi tập bên trên thì chắc biết là khởi động quan trọng như thế nào rồi. Các bài khởi động như xoay co tay, chân, lưng, hông và chạy tại chỗ từ 2-5 phút. Có thể khỏi động thêm với tạ tay để làm nóng các cơ.', '3', '10', '180', 'DbFgADa2PL8', '', '2017-04-17 10:52:55', null, null, null);

-- ----------------------------
-- Table structure for `lession_exercisedetail`
-- ----------------------------
DROP TABLE IF EXISTS `lession_exercisedetail`;
CREATE TABLE `lession_exercisedetail` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `lesson_id` int(20) DEFAULT NULL,
  `exercise_detail_id` int(20) DEFAULT NULL,
  `lession_exercisedetail_info` varchar(100) NOT NULL,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lession_exercisedetail
-- ----------------------------
INSERT INTO lession_exercisedetail VALUES ('1', '1', '1', 'Bài tập 1', '', '2017-04-12 12:09:44', null, null, null);

-- ----------------------------
-- Table structure for `lesson`
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `lesson_name` varchar(100) NOT NULL,
  `lesson_image` varchar(250) DEFAULT NULL,
  `lesson_info` text,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO lesson VALUES ('1', 'Các bài cho cơ ngực. Giáo án 6 buổi', 'https://firebasestorage.googleapis.com/v0/b/fitneasy-d43a0.appspot.com/o/c%C6%A1%20ng%E1%BB%B1c.jpg?alt=media&token=25509bac-776d-4717-ad4c-d7ec7036ede7', '<p><strong>L&yacute; thuyết:&nbsp;</strong>C&aacute;c b&agrave;i tập trong buổi tập n&agrave;y đ&atilde; được setup để t&aacute;c động l&ecirc;n to&agrave;n bộ cơ ngực:<br /><br />- Đẩy ngực ngang (Bench Press: Tổng thể to&agrave;n bộ cơ ngực v&agrave; tập trung nhiều nhất v&agrave;o ngực giữa). Đồng thời tăng sức mạnh cho cơ ngực.<br /><br />- Đẩy ngực tr&ecirc;n với tạ đơn: T&aacute;c động ch&iacute;nh l&ecirc;n cơ ngực tr&ecirc;n.<br /><br />- Dumbbell Fly: K&eacute;o gi&atilde;n cơ ngực gi&uacute;p ph&aacute; vỡ m&agrave;ng Fascia - M&agrave;ng ngăn kh&ocirc;ng cho cơ bắp ph&aacute;t triển v&agrave; tạo th&ecirc;m kh&ocirc;ng gian cho cơ ngực ph&aacute;t triển. T&aacute;c động 1 phần l&ecirc;n ngực trong, gi&uacute;p l&agrave;m đầy khe ngực.<br /><br />(Đọc th&ecirc;m: <a href=\\\"http://www.gymlord..com/2014/07/stretching-keo-dan-co-bap-phat-trien.html\\\">T&aacute;c dụng của k&eacute;o gi&atilde;n cơ - Stretching</a>) <br /><br />- Dips: B&agrave;i tập tốt nhất ph&aacute;t triển cơ ngực dưới của bạn ch&iacute;nh l&agrave; Dips. H&atilde;y cố gắng ho&agrave;n thiện b&agrave;i tập n&agrave;y, n&oacute; l&agrave; b&agrave;i tập rất rất hiệu quả gi&uacute;p ngực to nhanh đấy.<br /><br /><strong>Khởi động:</strong> Trước khi bắt đầu tập luyện, bạn n&ecirc;n khởi động khoảng 10p, tốt nhất l&agrave; xoay khớp 5p v&agrave; đi bộ nhẹ nh&agrave;ng l&agrave;m n&oacute;ng cơ khớp trong 5 ph&uacute;t nữa (rất quan trọng với c&aacute;c bạn mới tập cơ thể bạn chưa quen với c&aacute;c t&aacute;c động của b&agrave;i tập)<br /><br /><strong>Note:</strong> M&igrave;nh l&agrave; người đ&atilde; từng bị trượt tay khỏi tạ khi cầm kiểu kh&ocirc;ng kh&oacute;a ng&oacute;n c&aacute;i, v&agrave; phải 2 tuần sau m&igrave;nh mới ho&agrave;n hồn v&agrave; d&aacute;m nằm dưới thanh tạ lại để đẩy ngực. C&aacute;c bạn n&ecirc;n cầm kiểu nắm cả ng&oacute;n c&aacute;i ng&agrave;y từ đầu, tuy sẽ đẩy được trọng lượng thấp hơn kiểu 2 nhưng để tr&aacute;nh những t&igrave;nh huống xấu xảy ra. Bạn vẫn c&oacute; thể cầm kiểu kh&ocirc;ng kh&oacute;a ng&oacute;n c&aacute;i, nhưng phải thật cẩn thận ch&uacute; &yacute; cả xung quanh nh&eacute;.<br /><br /><strong>Tips quan trọng:</strong> Một buổi tập b&igrave;nh thường được khuy&ecirc;n n&ecirc;n tập với 10-15 hiệp ch&iacute;nh l&agrave; hợp l&yacute;, nhằm đảm bảo thời gian 1 buổi tập từ 45-90 ph&uacute;t. Nếu tập qu&aacute; 90p, cơ bắp sẽ rơi v&agrave;o t&igrave;nh trạng kiệt quệ vừa l&agrave;m mất hiệu quả của buổi tập vừa l&agrave;m cho thời gian phục hồi của cơ bắp sẽ rất l&acirc;u.</p>', '', '2017-04-12 12:09:44', null, null, null);

-- ----------------------------
-- Table structure for `muscle_type`
-- ----------------------------
DROP TABLE IF EXISTS `muscle_type`;
CREATE TABLE `muscle_type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `muscle_type_name` varchar(100) NOT NULL,
  `muscle_type_image` varchar(400) DEFAULT NULL,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of muscle_type
-- ----------------------------
INSERT INTO muscle_type VALUES ('1', 'Cơ ngực', 'https://firebasestorage.googleapis.com/v0/b/fitneasy-d43a0.appspot.com/o/c%C6%A1%20ng%E1%BB%B1c.jpg?alt=media&token=25509bac-776d-4717-ad4c-d7ec7036ede7', '', '2017-04-12 12:09:44', null, null, null);

-- ----------------------------
-- Table structure for `nutrition`
-- ----------------------------
DROP TABLE IF EXISTS `nutrition`;
CREATE TABLE `nutrition` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nutrition_name` varchar(100) NOT NULL,
  `nutrition_image` varchar(255) DEFAULT NULL,
  `nutrition_info` longtext,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nutrition
-- ----------------------------
INSERT INTO nutrition VALUES ('1', 'Chế độ dinh dưỡng trong ngày cho người tập thể hình', 'https://firebasestorage.googleapis.com/v0/b/fitneasy-d43a0.appspot.com/o/1.jpg?alt=media&token=cb8dd753-8439-43b3-b9d0-10f82b74b99c', '<p><span style=\\\"color: #ff0000;\\\"><strong>1. Nh&oacute;m ngũ cốc:</strong></span><br /><br />- Kh&ocirc;ng muốn ăn cơm, c&oacute; thể thay thế 1/2 lon gạo = 1 ổ b&aacute;nh m&igrave; 160g hoặc 2 củ khoai lang 150g hoặc 4 củ khoai t&acirc;y 150g. Ăn 1 + 1/2 (1 lon rưỡi)<br /><br /><span style=\\\"color: #ff0000;\\\"><strong>2. Nh&oacute;m chất b&eacute;o (dầu, mỡ, bơ): </strong></span>1.5 - 2 muỗng canh/ng&agrave;y<br /><br /><span style=\\\"color: #ff0000;\\\"><strong>3. Nh&oacute;m thức ăn gi&agrave;u đạm (qui ra thịt):</strong></span><br /><br />- C&oacute; thể thay thế 60g thịt bằng một trong những thức ăn sau đ&acirc;y: 1 quả trứng g&agrave; hoặc 1 ly sữa tươi, 2 - 3 hũ yaourt. Ăn 3 - 7 trứng/ tuần, mỗi ng&agrave;y &frac12; - 1 l&iacute;t sữa tươi hay 100 g thịt b&ograve;. Hoặc 1-2 ly sữa gi&agrave;u đạm pha theo hướng dẫn k&egrave;m với bữa ăn thường ng&agrave;y.<br /><br /><strong>4. Nh&oacute;m rau l&aacute; xanh v&agrave; rau kh&aacute;c:</strong><br /><br />- N&ecirc;n ăn 1/2 dưới dạng rau sống, 1/2 dưới dạng x&agrave;o, luộc, hoặc trong canh; rau l&aacute;, tr&aacute;i, củ c&agrave;ng đậm m&agrave;u sắc xanh, đỏ, v&agrave;ng, cam c&agrave;ng gi&agrave;u vitamin. Ăn 400 - 500 g<br /><br /><strong>5. Nh&oacute;m Natri:</strong><br /><br />Nước chấm, nước mắm 1-1,5 muỗng canh (c&oacute; thể kh&ocirc;ng cần). Muối 1 muỗng canh/ng&agrave;y trong tất cả c&aacute;c m&oacute;n ăn d&ugrave;ng cho cả gia đ&igrave;nh. (Tương đương 25g) Một người tối đa từ 5-7g muối (1 muỗng caf&eacute;)<br /><br /><strong>6. Nh&oacute;m tr&aacute;i c&acirc;y tr&aacute;ng miệng:</strong><br /><br />- Để cho đa dạng c&oacute; thể thay thế 2 - 3 tr&aacute;i chuối vừa (trong 1 ng&agrave;y) bằng 300 - 350 g đu đủ hay 2 tr&aacute;i cam (qu&iacute;t) hoặc 2 tr&aacute;i v&uacute; sữa hoặc 1/2 tr&aacute;i bưởi (vừa sạch miệng, nhuận trường th&ecirc;m sinh tố C, lại gi&uacute;p tăng sức đề kh&aacute;ng)<br /><br /><strong>7. Nước:</strong><br /><br />- 8 ly nước lọc mỗi ng&agrave;y tương đương 2 l&iacute;t nước trở l&ecirc;n. N&ecirc;n uống nước lọc thay v&igrave; nước ngọt v&agrave; c&aacute;c thức uống gi&agrave;u năng lượng kh&aacute;c.<br /><br /><strong>8. Thực phẩm bổ sung:</strong><br /><br />- Nước tăng lực kh&ocirc;ng qu&aacute; 1 chai (500ml)/ ng&agrave;y. Sữa gi&agrave;u đạm 1-2 ly pha theo hướng dẫn, uống xen kẽ c&aacute;c bữa ăn.<br /><br />- N&ecirc;n ph&acirc;n th&agrave;nh 3 - 4 bữa. Ăn trước khi tập từ 2- 3 tiếng. Ngo&agrave;i ra n&ecirc;n đi ngủ sớm, ngủ đủ &iacute;t nhất 8 giờ/ ng&agrave;y v&agrave; ăn uống điều độ, tr&aacute;nh rượu, thuốc l&aacute;, c&agrave; ph&ecirc; (kh&ocirc;ng qu&aacute; 1 ly/ ng&agrave;y - v&agrave; chỉ n&ecirc;n uống v&agrave;o buổi s&aacute;ng).</p> <p> </p> <p><strong>Thời gian ăn uống khi tập thể h&igrave;nh để đạt hiệu quả cao</strong><br /><br />Tuy mỗi người t&igrave;m v&agrave; &aacute;p dụng cho m&igrave;nh một chế độ dinh dưỡng ri&ecirc;ng nhưng cơ bản cần &aacute;p dụng những nguy&ecirc;n tắc sau:<br /><br /><strong>Trước v&agrave; trong khi tập thể h&igrave;nh - TDTT</strong><br /><br />- Kh&ocirc;ng n&ecirc;n nhịn đ&oacute;i khi tập v&igrave; nếu bạn để đ&oacute;i sẽ c&oacute; nguy cơ hạ đường huyết m&agrave; biểu hiện thường thấy l&agrave; hoa mắt, ch&oacute;ng mặt, đau đầu hoặc buồn n&ocirc;n.<br /><br />- D&ugrave; tập ngo&agrave;i trời hay trong nh&agrave;, d&ugrave; l&agrave; tập nhẹ hay những b&agrave;i tập tương đối nặng, c&oacute; nhịp độ nhanh th&igrave; bạn cũng tr&aacute;nh ăn ngay trước giờ tập v&igrave; điều đ&oacute; kh&ocirc;ng những g&acirc;y kh&oacute; chịu khi tập, ảnh hưởng đến dạ d&agrave;y m&agrave; c&ograve;n giảm sự hấp thụ chất dinh dưỡng v&agrave;o cơ thể.Một lời khuy&ecirc;n cần thiết l&agrave; bạn phải uống đủ nước khi tập luyện.<br /><br />- N&ecirc;n ăn trước khi tập luyện khoảng 2, 3 tiếng v&agrave; ăn c&aacute;c thực phẩm c&oacute; nhiều hydrat carbon c&oacute; trong gạo, m&igrave;, phở, ngũ cốc.<br /><br />- Khi tham gia c&aacute;c hoạt động thể dục thể thao, bạn cần ch&uacute; &yacute; tới việc tăng cường vitamin c&oacute; trong rau xanh, hoa quả, vỏ ngo&agrave;i của ngũ cốc... hay c&aacute;c loại vitamin c&oacute; trong thịt, c&aacute;, gan, trứng...<br /><br /> + Cũng phải đặc biệt ch&uacute; &yacute; tới c&aacute;c chất kho&aacute;ng như: sắt, canxi, magie... để bảo đảm sức khỏe.<br /><br />- Một lời khuy&ecirc;n cần thiết l&agrave; bạn phải uống đủ nước. Luyện tập hoặc chơi thể thao trong thời tiết n&oacute;ng nực c&oacute; thể g&acirc;y mất nước qua mồ h&ocirc;i từ 2-2,5 l&iacute;t/giờ. V&igrave; vậy, trước khi luyện tập 20 ph&uacute;t, bạn n&ecirc;n uống khoảng 400-600 ml nước.<br /><br />- Nước uống tốt nhất l&agrave; c&oacute; pha th&ecirc;m 4-8% đường v&agrave; cho th&ecirc;m &iacute;t muối, kh&ocirc;ng n&ecirc;n uống nước qu&aacute; ngọt sẽ l&agrave;m ảnh hưởng tới việc ti&ecirc;u h&oacute;a ở dạ d&agrave;y.<br /><br />- Trong khi luyện tập bạn vẫn phải uống nước đều đặn với lượng nhỏ khoảng 100-200ml/lần v&agrave; mỗi lần c&aacute;ch nhau khoảng 20 ph&uacute;t (điều n&agrave;y t&ugrave;y thuộc cường độ bạn tập luyện c&oacute; mất nhiều mồ h&ocirc;i hay kh&ocirc;ng).<br /><br /><br /><br /><strong>Sau khi tập thể h&igrave;nh cần ăn v&agrave; l&agrave;m g&igrave;</strong><br /><br /><a href=\\\"http://4.bp.blogspot.com/-FpGSDu1WrL4/UjQUPMsWKGI/AAAAAAAAEgQ/QDUh_eU83kU/s1600/935-d2-3.jpg\\\"><img title=\\\"Chế độ ăn uống cho người tập thể h&igrave;nh đủ dinh dưỡng nhất\\\" src=\\\"http://4.bp.blogspot.com/-FpGSDu1WrL4/UjQUPMsWKGI/AAAAAAAAEgQ/QDUh_eU83kU/s320/935-d2-3.jpg\\\" alt=\\\"Chế độ ăn uống cho người tập thể h&igrave;nh đủ dinh dưỡng nhất\\\" width=\\\"320\\\" height=\\\"226\\\" border=\\\"0\\\" /></a>- T&ugrave;y từng cường độ tập luyện m&agrave; sau khi kết th&uacute;c b&agrave;i tập, bạn cần nghỉ ngơi một khoảng thời gian th&iacute;ch hợp mới tiếp tục ăn.<br /><br />- Khoảng thời gian ph&ugrave; hợp nhất l&agrave; từ 45-60 ph&uacute;t sau khi tập, đ&acirc;y được coi l&agrave; \\\"giờ v&agrave;ng\\\" v&igrave; đ&oacute; l&agrave; khoảng thời gian c&aacute;c cơ hấp thụ nhiều chất dinh dưỡng nhất v&agrave; khi đ&oacute; lượng gulozen - một dạng năng lượng dự trữ trong c&aacute;c cơ được thay thế hiệu quả nhất.<br /><br />- Bữa ăn sau khi tập thể dục c&oacute; thể đa dạng t&ugrave;y theo mục đ&iacute;ch của từng người.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">V&iacute; dụ</span> : N</strong>ếu bạn muốn n&acirc;ng cao hiệu qua thay thế glucozen th&igrave; n&ecirc;n chọn c&aacute;c thức ăn gi&agrave;u carbonhydrat.<br /><br />- Nếu bạn muốn c&aacute;c cơ phục hồi v&agrave; ph&aacute;t triển nhanh th&igrave; n&ecirc;n ăn nhiều protein (lượng protein chiếm 10%).<br /><br />- C&ograve;n nếu bạn l&agrave; người \\\"hơi thừa c&acirc;n\\\" th&igrave; n&ecirc;n chọn c&aacute;c thức ăn nhiều protein v&agrave; &iacute;t carbonhydrat hơn, tuy bạn c&oacute; thể kh&ocirc;ng cần ăn cả một bữa ho&agrave;n chỉnh nhưng bạn nhất định phải ăn hoặc uống một m&oacute;n g&igrave; đ&oacute; (1 cốc nước quả chẳng hạn) v&agrave; tuyệt đối kh&ocirc;ng được bỏ bữa.<br /><br />- Bạn n&ecirc;n chọn những loại nước quả nhiều protein như nước l&ecirc;, cam, t&aacute;o, &iacute;t đường v&agrave; &iacute;t chất bảo quản, tốt nhất l&agrave; chọn nước quả tươi hoặc hoa quả dầm thay v&igrave; nước quả đ&oacute;ng hộp.<br /><br />- Một điểm kh&aacute;c biệt giữa bữa ăn sau tập v&agrave; trước tập v&agrave; bữa ăn sau tập n&ecirc;n c&oacute; th&ecirc;m chất b&eacute;o v&igrave; một lượng axit b&eacute;o vừa đủ c&oacute; t&aacute;c dụng tăng cường c&aacute;c chức năng sinh l&yacute;.<br /><br />- C&aacute;c axit b&eacute;o như omega-3 v&agrave; omega-6 g&oacute;p phần th&uacute;c đẩy qu&aacute; tr&igrave;nh tạo th&agrave;nh kết cấu của m&agrave;ng tế b&agrave;o, th&uacute;c đẩy qu&aacute; tr&igrave;nh sản xuất prostaglandins trong nh&oacute;m cơ vận động, nhờ đ&oacute; g&oacute;p phần điều chỉnh sự vận chuyển glucozơ tới qu&aacute; tr&igrave;nh tổng hợp protein.<br /><br />- Một bữa ăn sau khi tập l&yacute; tưởng cần kết hợp h&agrave;i h&ograve;a giữa carbonhydrat - protein - chất b&eacute;o v&agrave; nhất thiết phải ăn trong v&ograve;ng 2 tiếng sau khi tập.<br /><br />- Lượng carbonhydrat cần thiết c&oacute; thể thay đổi t&ugrave;y thuộc v&agrave;o thời gian bạn nạp năng lượng v&agrave;o cơ thể, cụ thể l&agrave;:<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">Ch&uacute; &yacute;:</span></strong> Trong v&ograve;ng 1 giờ sau khi tập, dưới 200 calo (c&oacute; thể ăn snack hoặc b&aacute;nh quy)<br /><br />- Từ 1 - 2 giờ sau khi tập, n&ecirc;n chọn một loại nước tr&aacute;i c&acirc;y nhiều protein (cam, chuối, t&aacute;o, l&ecirc;, đ&agrave;o) hoặc bữa ăn nhẹ như salad trộn.<br /><br />- Từ 2 - 3 giờ sau khi tập, bạn cần ăn một bữa đầy đủ với: 200 - 400 calo (thịt g&agrave;, bơ lạc, chuối).<br /><br /><strong>** Khi tập thể dục thể h&igrave;nh cần uống thuốc g&igrave; bổ sung cơ bắp?</strong><br /> </p> <ul> <li>Cơ thể bạn sản xuất enzyme kết hợp Q10. Loại enzyme n&agrave;y gi&uacute;p c&aacute;c tế b&agrave;o trong cơ thể quản l&yacute; được nguồn năng lượng cung cấp cho cơ thể.</li> <li>Những nh&agrave; nghi&ecirc;n cứu đề nghị cần bổ sung 100mg/ng&agrave;y. Q10 kh&ocirc;ng c&oacute; trong vitamin hỗn hợp, cũng kh&ocirc;ng c&oacute; trong thức ăn.</li> <li>Nếu bạn đang uống thuốc c&oacute; chứa statin, chất c&oacute; thể l&agrave;m giảm lượng Q10 trong cơ thể th&igrave; n&ecirc;nVnEtips - tăng lượng Q10 cần d&ugrave;ng l&ecirc;n 200mg.</li> <li>Bạn c&oacute; thể d&ugrave;ng sản phẩm Envit Q10 để tăng cường sức khỏe.</li> <li>Ngo&agrave;i ra bạn c&ograve;n phải bổ sung magi&ecirc; cho cơ thể.</li> <li>C&aacute;c chuy&ecirc;n gia cho biết, một người chơi thể thao cần từ 300 - 400mg magi&ecirc;/ng&agrave;y.</li> <li>Bạn c&oacute; thể bổ sung chất n&agrave;y cho cơ thể bằng c&aacute;ch ăn nhiều c&aacute;c loại rau, đậu H&agrave; Lan, uống nước kho&aacute;ng&hellip;</li> <li>Bổ sung gluco cho cơ thể. Tất nhi&ecirc;n ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i đến đường m&agrave; bạn vẫn d&ugrave;ng để pha nước chanh, cam&hellip; m&agrave; l&agrave; đường trong bột mỳ, gạo, rau xanh&hellip;</li> <li>Trước v&agrave; sau khi chơi thể thao cơ thể bạn cần được bổ sung những thực phẩm n&agrave;y để cung cấp đường cho cơ thể, gi&uacute;p cơ bắp khỏe mạnh.</li> <li> </li> <li>N&oacute; gi&uacute;p cho c&aacute;c tế b&agrave;o v&agrave; gan dự trữ năng lượng, v&agrave; do đ&oacute; sẽ đảm bảo thực hiện được những động t&aacute;c mạnh m&agrave; kh&ocirc;ng đau cơ.</li> </ul> <p><br /><br /><strong>Chế độ ăn sau khi tập thể h&igrave;nh </strong><br /> </p> <div class=\\\"separator\\\"><a href=\\\"http://2.bp.blogspot.com/-npLKi3CtKJQ/UjQUiAe3iEI/AAAAAAAAEgY/q6JkpdXnRWs/s1600/935-d2-4.jpg\\\"><img title=\\\"Chế độ ăn uống cho người tập thể h&igrave;nh đủ dinh dưỡng nhất\\\" src=\\\"http://2.bp.blogspot.com/-npLKi3CtKJQ/UjQUiAe3iEI/AAAAAAAAEgY/q6JkpdXnRWs/s200/935-d2-4.jpg\\\" alt=\\\"Chế độ ăn uống cho người tập thể h&igrave;nh đủ dinh dưỡng nhất\\\" width=\\\"200\\\" height=\\\"158\\\" border=\\\"0\\\" /></a></div> <p>- Nhiều bạn tập thể h&igrave;nh nặng nhưng kh&ocirc;ng thấy tăng cơ bắp, c&oacute; khi lại thấy ng&agrave;y c&agrave;ng \\\"quắt lại\\\". Một trong những nguy&ecirc;n nh&acirc;n phổ biến l&agrave; do bạn chưa bổ sung dinh dưỡng sau khi tập đ&uacute;ng c&aacute;ch. Trong qu&aacute; tr&igrave;nh tập, cơ thể d&ugrave;ng glycogen ở cơ bắp để lấy năng lượng.<br /><br />- V&igrave; vậy khi tập xong, cơ của bạn sẽ bị cạn hết lượng glycogen sẵn c&oacute;. L&uacute;c n&agrave;y, c&aacute;c tế b&agrave;o cơ rất dễ bị tổn hại. Huấn luyện vi&ecirc;n thể dục Stuart Amory giới thiệu những thực phẩm dinh dưỡng m&agrave; c&aacute;c bạn nam cần c&oacute; để hoạt động tốt nhất cho mỗi phi&ecirc;n tập.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">Những m&oacute;n n&ecirc;n ăn sau khi tập</span></strong><br /><br /><strong><span style=\\\"text-decoration: underline;\\\">Trứng</span></strong><br /><br />- Cơ thể rất dễ hấp thụ chất protein của trứng. Tuy bị ấn tượng xấu v&igrave; chứa cholesterol trong l&ograve;ng đỏ, nhưng trứng c&oacute; ảnh hưởng lớn nhất đối với sức khỏe của bạn.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">G&agrave; t&acirc;y</span></strong><br /><br />- Một loại thịt nạc nhất trong tất cả c&aacute;c loại thịt v&agrave; c&oacute; h&agrave;m lượng cao niacin v&agrave; vitamin B6, hỗ trợ c&aacute;c thực phẩm bạn ăn để hấp thu năng lượng. N&oacute; cũng gi&uacute;p cải thiện t&acirc;m trạng v&agrave; giấc ngủ của bạn.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">Đậu</span></strong><br />- Hạnh nh&acirc;n, quả hồ đ&agrave;o, hạt điều v&agrave; quả &oacute;c ch&oacute; l&agrave; c&aacute;c loại đậu c&oacute; chất b&eacute;o l&agrave;nh mạnh, chất xơ, protein, vitamin v&agrave; kho&aacute;ng chất cao nhất, hỗ trợ sự trao đổi chất v&agrave; năng lượng. Một th&igrave;a nhỏ đậu phộng l&agrave; đủ cho sự gia tăng năng lượng.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">C&aacute; biển</span></strong><br />- C&aacute; hồi, c&aacute; thu v&agrave; c&aacute; tr&iacute;ch l&agrave; tất cả c&aacute;c nguồn protein &iacute;t b&eacute;o, gi&uacute;p x&acirc;y dựng cơ bắp, chống căng thẳng, t&acirc;m trạng hưng phấn v&agrave; cải thiện chất x&aacute;m của bạn.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">C&agrave; ph&ecirc;</span></strong><br /><br />- C&agrave; ph&ecirc; d&ugrave;ng một giờ trước khi luyện tập thể thao sẽ rất tốt, tạo cho bạn một c&uacute; đột ph&aacute; trong tập luyện từ những ph&uacute;t đầu ti&ecirc;n. Nhưng đừng lạm dụng n&oacute;, v&igrave; qu&aacute; nhiều caffeine, bạn sẽ bị mất nước.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">Snickers</span></strong><br /><br />- Snickers chỉ l&agrave; một phương s&aacute;ch cuối c&ugrave;ng nếu bạn chưa chuẩn bị bất kỳ thực phẩm n&agrave;o kh&aacute;c. Snickers l&agrave; một c&aacute;ch tăng năng lượng tốt nhất v&agrave; phổ biến khi bạn ra ngo&agrave;i v&agrave; trước khi v&agrave;o ph&ograve;ng tập.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">Những m&oacute;n cần tr&aacute;nh sau khi tập thể h&igrave;nh</span></strong><br /><br /><strong>1. C&aacute;c m&oacute;n mặn</strong><br /><br /><strong><span style=\\\"text-decoration: underline;\\\">- Rau củ sống:</span></strong> Th&ocirc;ng tin rau sống l&agrave; loại thực phẩm kh&ocirc;ng n&ecirc;n c&oacute; sau khi tập thể h&igrave;nh c&oacute; thể g&acirc;y ngạc nhi&ecirc;n cho bạn. C&agrave; rốt, cần t&acirc;y, ớt chu&ocirc;ng, b&ocirc;ng cải xanh c&oacute; thể l&agrave; lựa chọn tuyệt vời nếu bạn cần một bữa ăn nhẹ, l&agrave;nh mạnh, &iacute;t chất b&eacute;o, nhưng để l&agrave;m một thực phẩm cho việc phục hồi sau khi tập luyện, h&atilde;y qu&ecirc;n ch&uacute;ng đi. Những thực phẩm n&agrave;y c&oacute; kh&ocirc;ng c&oacute; đủ calo tối thiểu, đủ để gi&uacute;p bạn kh&ocirc;i phục lại năng lượng v&agrave; duy tr&igrave; một tỷ lệ trao đổi chất khỏe mạnh.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">- Thức ăn nhanh, thức ăn nhiều b&eacute;o:</span></strong> Khoai t&acirc;y chi&ecirc;n, hamburger, hotdog nghe thật hấp dẫn v&agrave; c&oacute; thể giải quyết ngay cơn đ&oacute;i cho bạn sau khi tập luyện thể lực căng thẳng, nhưng ch&uacute;ng cũng c&oacute; thể qu&eacute;t sạch những th&agrave;nh quả m&agrave; bạn vừa đạt được khi tập luyện. Tất cả c&aacute;c chất b&eacute;o chậm ti&ecirc;u h&oacute;a đ&oacute;, ho&agrave;n to&agrave;n đối nghịch lại những g&igrave; bạn muốn từ việc tập thể lực. Mục ti&ecirc;u sau khi tập thể dục l&agrave; để bổ sung lượng glycogen của cơ thể v&agrave; đặc biệt giảm thiểu chứ kh&ocirc;ng th&ecirc;m số lượng chất b&eacute;o của cơ thể.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">- Snack mặn:</span></strong> Đồ ăn nhẹ như b&aacute;nh snack v&agrave; b&aacute;nh quy mặn c&oacute; thể l&agrave;m giảm mức kali, một yếu tố quan trọng đối với giai đoạn phục hồi của bạn hơn l&agrave; muối. Kali, một kho&aacute;ng chất cần thiết với cơ thể cho chức năng tế b&agrave;o, l&agrave; một chất điện ph&acirc;n quan trọng hơn natri trong muối.<br /><br /><strong><span style=\\\"text-decoration: underline;\\\">- Pizza:</span></strong> Rất tiếc, nhưng m&oacute;n ăn được nhiều người y&ecirc;u th&iacute;ch n&agrave;y kh&ocirc;ng được ch&agrave;o mời trong bữa ăn sau khi luyện thể lực, đặc biệt l&agrave; nếu c&oacute; k&egrave;m x&uacute;c x&iacute;ch b&eacute;o hoặc loại pepperoni. Nhiều mỡ, chỉ một l&aacute;t b&aacute;nh cũng c&oacute; thể ngay lập tức ph&aacute; hủy những th&agrave;nh quả m&agrave; bạn vừa đạt được trong suốt thời gian đổ mồ h&ocirc;i tập luyện.<br /><br /><strong>2. C&aacute;c m&oacute;n c&oacute; đường</strong><br /><br />- <strong><span style=\\\"text-decoration: underline;\\\">Soda v&agrave; c&aacute;c đồ uống tr&aacute;i c&acirc;y:</span></strong> Sau tập thể h&igrave;nh, bạn đang rất kh&aacute;t nước, nhưng tuyệt đối kh&ocirc;ng bổ sung chất lỏng bị mất với đồ uống ngọt, bao gồm cả thức uống thể thao c&oacute; đường. D&ugrave; cho đ&oacute; l&agrave; soda hoặc nước &eacute;p tr&aacute;i c&acirc;y, th&igrave; sử dụng đồ uống c&oacute; đường sau khi tập thể dục cường độ cao l&agrave; phản t&aacute;c dụng cho bất cứ ai t&igrave;m c&aacute;ch giảm c&acirc;n, do t&aacute;c dụng l&agrave;m chậm sự trao đổi chất của ch&uacute;ng. Chỉ d&ugrave;ng nước uống thể thao khi bạn mất nhiều nước khi đổ mồ h&ocirc;i nhiều trong chế độ tập luyện để thay thế cho chất điện ph&acirc;n bị mất.<br />Tuy nhi&ecirc;n, để dập tắt cơn kh&aacute;t của bạn, để chống mất nước v&agrave; bổ sung chất điện ph&acirc;n, h&atilde;y d&ugrave;ng nước thường v&agrave; ăn một quả chuối gi&agrave;u kali.<br /><br />- <strong><span style=\\\"text-decoration: underline;\\\">S&ocirc; c&ocirc; la sữa:</span></strong> Nhiều đường v&agrave; calori, s&ocirc;-c&ocirc;-la sữa hầu như kh&ocirc;ng cung cấp những g&igrave; bạn cần để nạp năng lượng sau khi tập thể lực. C&aacute;c t&aacute;c động ti&ecirc;u cực đến kết quả tập thể dục của bạn g&acirc;y tổn hại hơn rất nhiều với s&ocirc; c&ocirc; la sữa. Tuy nhi&ecirc;n s&ocirc;c&ocirc;la đen (với &iacute;t nhất 70% cacao), lại c&oacute; chất chống oxy h&oacute;a khỏe mạnh chống lại c&aacute;c gốc tự do (chất oxy h&oacute;a) v&agrave; c&oacute; t&aacute;c dụng chống vi&ecirc;m, c&oacute; thể gi&uacute;p bạn kh&ocirc;i phục sau tập luyện. Chỉ cần ăn ở mức vừa phải l&agrave; được.<br /><br />- <strong><span style=\\\"text-decoration: underline;\\\">Doughnuts v&agrave; b&aacute;nh ngọt:</span></strong> Đ&uacute;ng, bạn cần carbs để thay thế nhi&ecirc;n liệu của cơ bắp (glycogen) bị mất sau khi tập thể dục cường độ cao, nhưng kh&ocirc;ng phải loại l&agrave;m tắc nghẽn động mạch như c&aacute;ch c&aacute;c loại thực phẩm mang chất dinh dưỡng nhiều b&eacute;o n&agrave;y. Để bổ sung carb tốt hơn sau khi tập luyện h&atilde;y lựa chọn b&aacute;nh m&igrave; tr&ograve;n, b&aacute;nh m&igrave; nướng với bơ đậu phộng hoặc mứt tr&aacute;i c&acirc;y</p>', '', '2017-04-12 12:09:44', null, null, null);

-- ----------------------------
-- Table structure for `schedule`
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `schedule_name` varchar(100) NOT NULL,
  `schedule_image` varchar(250) DEFAULT NULL,
  `schedule_info` text,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO schedule VALUES ('1', 'Chương trình tập thể hình chi tiết 4 tuần cho người mới lần đầu tập gym', 'https://firebasestorage.googleapis.com/v0/b/fitneasy-d43a0.appspot.com/o/s1.jpg?alt=media&token=d69cfde6-3d4f-4bbf-b985-727b36f7c50e', 'Chương trình tập thể hình chi tiết 4 tuần cho người mới lần đầu tập gym', '', '2017-04-12 12:09:44', null, null, null);

-- ----------------------------
-- Table structure for `schedule_lession`
-- ----------------------------
DROP TABLE IF EXISTS `schedule_lession`;
CREATE TABLE `schedule_lession` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `lession_id` int(20) DEFAULT NULL,
  `schedule_id` int(20) DEFAULT NULL,
  `thu` int(2) DEFAULT NULL,
  `tuan` int(2) DEFAULT NULL,
  `schedule_lession_info` text,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule_lession
-- ----------------------------
INSERT INTO schedule_lession VALUES ('2', '1', '1', '3', '0', '<p><strong>Thứ hai: Ch&acirc;n và m&ocirc;ng(Cường đ&ocirc;̣ trung bình)</strong></p> <ul> <li>Khởi đ&ocirc;̣ng: Bodyweight Squat: 3 sets x 10 reps</li> <li>Barbell Squat: 5 sets x 12 reps</li> <li>Stationary Lunges: 3 sets x 20 reps (m&ocirc;̃i ch&acirc;n)</li> <li>Leg Press: 3 sets x 12 reps</li> <li>Glute Bridge: 3 sets x 20 reps</li> <li>Glutes Kickback: 4 sets x 20 reps (m&ocirc;̃i ch&acirc;n)</li> </ul> <p>Tuần thứ tư</p> <p>Với tuần n&agrave;y, c&aacute;c bạn c&oacute; thể bắt đầu l&agrave;m quen thực sự với 1 buổi tập cường độ vừa phải cho 1 nh&oacute;m cơ 1 buổi tập.</p> <p>Buổi 1: Nh&oacute;m lưng</p> <p>Buổi 2: Ngực</p> <p>Buổi 3: Ch&acirc;n, bụng</p> <p>Buổi 4: Tay</p> <p>Buổi 5: Vai, bắp ch&acirc;n</p> <p>Buổi 6: Ngực bụng ch&acirc;n tay</p>', null, null, null, null, null);

-- ----------------------------
-- Table structure for `song_online`
-- ----------------------------
DROP TABLE IF EXISTS `song_online`;
CREATE TABLE `song_online` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `lyrics` longtext,
  `title` varchar(300) DEFAULT NULL,
  `artist` varchar(100) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `isDeleted` bit(1) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of song_online
-- ----------------------------
INSERT INTO song_online VALUES ('1', 'https://firebasestorage.googleapis.com/v0/b/fitneasy-d43a0.appspot.com/o/Music%2FIMAGE%20CA%20SI%2FFaded.jpg?alt=media&token=a19edeb6-d8ae-4425-95a3-41394f2537d7', '\"You were the shadow to my light<br />Did you feel us<br />Another start<br />You fade away<br />Afraid our aim is out of sight<br />Wanna see us<br />Alive<br />Where are you now<br />Where are you now<br />Where are you now<br />Was it all in my fantasy<br />Where are you now<br />Were you only imaginary<br /><br />Where are you now<br />Atlantis<br />Under the sea<br />Under the sea<br />Where are you now<br />Another dream<br />The monsters running wild inside of me<br />I\'m faded<br />I\'m faded<br />So lost, I\'m faded<br />I\'m faded<br />So lost, I\'m faded<br /><br />These shallow waters, never met<br />What I needed<br />I\'m letting go - a deeper dive<br />Eternal silence of the sea - I\'m breathing<br />Alive<br />Where are you now<br />Where are you now<br />Under the bright - but faded lights<br />You\'ve set my heart on fire<br />Where are you now<br />Where are you now<br /><br />Where are you now<br />Atlantis<br />Under the sea<br />Under the sea<br />Where are you now<br />Another dream<br />The monster running wild inside of me<br />I\'m faded<br />I\'m faded<br />So lost, I\'m faded<br />I\'m faded<br />So lost, I\'m faded\"', 'Faded', 'Alan Walker', '\"https://firebasestorage.googleapis.com/v0/b/music-ee2cd.appspot.com/o/NHACTAPGYM%2FSONG%2F0.%20Faded.mp3?alt=media&token=2eea2b34-cae4-407e-8b06-53541f21f866\"', '', '2017-04-12 12:09:44', null, null, null);

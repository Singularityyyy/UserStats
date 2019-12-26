IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('ManyChatTestTask'))
BEGIN;
    DROP TABLE [ManyChatTestTask];
END;
GO

-- no indexes, no keys, no nothing; all nulls
CREATE TABLE [ManyChatTestTask] (
    [user_id] INTEGER NULL,
    [event_timestamp] DATETIME NULL,
    [event_name] VARCHAR(30) NULL
);
GO

-- inserting randomly generated mockup values 
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(29,'2020-11-18 10:34:44','in,'),(59,'2020-02-28 20:06:21','at'),(12,'2019-11-21 08:33:28','pretium'),(35,'2020-04-29 06:19:46','rhoncus.'),(55,'2019-11-15 05:57:26','ut,'),(29,'2020-07-30 10:08:17','mus.'),(31,'2020-09-27 02:01:49','sem'),(98,'2020-03-29 05:25:01','feugiat'),(40,'2020-11-06 02:28:30','magna'),(31,'2020-03-15 10:18:25','sapien'),(50,'2020-08-31 17:33:45','bibendum'),(74,'2019-05-03 22:28:06','libero.'),(61,'2020-05-04 09:11:18','neque.'),(57,'2019-07-27 09:42:45','rutrum'),(47,'2020-02-05 14:31:24','tempus'),(77,'2020-02-06 10:18:23','dis'),(17,'2020-11-23 03:46:56','viverra.'),(72,'2020-04-04 05:04:31','metus.'),(99,'2019-10-24 23:18:24','sapien'),(11,'2020-03-15 05:16:42','ante.'),(22,'2019-07-27 17:10:50','nec,'),(39,'2020-04-09 06:02:30','pede.'),(19,'2019-02-22 18:06:55','leo'),(61,'2020-08-07 00:05:59','facilisis.'),(29,'2020-04-23 15:34:14','enim,'),(82,'2019-06-23 11:38:45','vehicula'),(75,'2019-09-30 14:21:32','habitant'),(16,'2020-02-08 03:43:49','mollis'),(100,'2019-01-11 14:02:02','ipsum'),(34,'2020-07-07 00:25:40','nibh'),(25,'2020-09-05 14:24:24','lorem,'),(4,'2020-07-15 13:08:33','nunc'),(51,'2020-08-24 19:22:33','rhoncus.'),(28,'2020-10-24 00:00:20','consequat'),(42,'2020-05-13 21:09:05','eu'),(65,'2020-12-29 08:31:07','nulla'),(70,'2019-03-01 04:30:07','convallis'),(76,'2019-09-05 08:45:56','id,'),(40,'2019-04-04 10:55:11','diam'),(75,'2020-07-11 06:27:48','felis.'),(92,'2020-08-31 17:34:03','pellentesque'),(86,'2020-06-19 03:48:05','Duis'),(21,'2019-03-20 05:43:20','porta'),(62,'2020-07-01 17:29:51','quis'),(97,'2019-02-18 07:10:03','amet'),(45,'2020-05-18 14:25:46','et,'),(93,'2020-07-23 17:50:36','Integer'),(91,'2020-06-02 04:01:16','posuere,'),(44,'2019-12-13 03:08:26','nec'),(67,'2019-07-14 22:21:16','elementum'),(71,'2020-11-14 06:40:00','egestas'),(3,'2020-04-06 00:25:50','enim'),(8,'2020-07-20 19:10:27','Etiam'),(27,'2019-10-18 18:56:14','fermentum'),(9,'2020-03-09 13:49:35','in,'),(38,'2020-08-21 02:18:28','augue'),(64,'2019-12-13 20:03:34','neque.'),(44,'2019-08-11 23:11:43','arcu'),(20,'2019-10-27 18:45:27','feugiat.'),(1,'2020-02-01 20:46:55','id'),(56,'2020-07-11 00:47:37','porttitor'),(63,'2019-01-09 11:01:34','Integer'),(66,'2020-01-26 12:49:46','dui'),(74,'2020-11-13 10:28:17','amet'),(91,'2019-03-08 17:58:10','Cras'),(39,'2019-05-13 04:30:59','nonummy'),(36,'2019-08-15 07:52:12','gravida.'),(43,'2019-05-20 02:14:00','eleifend'),(10,'2019-08-22 20:32:57','pulvinar'),(56,'2020-10-16 13:37:26','feugiat.'),(61,'2020-12-22 04:26:48','tempus'),(66,'2019-12-05 18:26:21','neque.'),(30,'2020-03-16 11:18:49','a,'),(30,'2019-03-11 01:18:11','ac'),(65,'2019-05-30 01:46:01','eu'),(27,'2020-04-22 01:25:41','eros'),(37,'2020-10-31 06:20:24','ac'),(45,'2019-02-04 13:15:13','Nulla'),(62,'2019-03-24 12:15:17','non'),(38,'2019-10-12 08:42:47','at'),(80,'2020-05-13 23:40:19','Nulla'),(87,'2019-12-25 04:34:29','lorem'),(84,'2019-07-17 22:28:05','ornare'),(84,'2020-04-13 11:53:36','Vestibulum'),(27,'2020-11-10 05:37:32','Sed'),(81,'2019-05-15 00:33:28','et'),(74,'2020-06-09 20:58:05','urna.'),(13,'2020-03-04 02:00:33','iaculis'),(2,'2019-11-22 05:46:47','sed'),(13,'2019-01-29 07:03:16','mus.'),(100,'2019-07-15 00:50:40','hymenaeos.'),(34,'2019-09-04 02:01:01','eu'),(92,'2019-08-07 01:37:02','hendrerit'),(72,'2020-12-09 01:23:22','magna'),(15,'2019-05-19 07:32:07','In'),(77,'2019-09-06 19:35:53','odio'),(4,'2020-10-25 09:27:32','id'),(24,'2019-10-08 22:58:57','sociis'),(65,'2020-06-04 15:02:28','aliquet'),(22,'2019-04-04 14:27:44','velit');
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(26,'2019-09-11 11:00:38','elit,'),(67,'2019-05-28 18:38:51','nec,'),(4,'2019-05-07 03:17:00','morbi'),(76,'2020-08-13 10:30:45','Proin'),(38,'2019-03-30 04:21:57','fringilla'),(97,'2019-10-06 02:20:31','egestas.'),(86,'2019-04-14 18:44:55','Vivamus'),(21,'2020-03-06 15:15:10','Quisque'),(68,'2019-05-05 13:42:17','Cras'),(67,'2020-12-31 03:51:42','vitae'),(70,'2019-06-30 09:10:17','consectetuer'),(6,'2020-12-29 13:10:38','et'),(12,'2020-12-27 03:18:18','sollicitudin'),(33,'2019-04-23 11:56:22','orci'),(82,'2020-03-07 06:16:27','aliquet'),(61,'2019-01-13 15:28:31','nisi'),(80,'2019-09-10 02:19:33','enim'),(88,'2020-08-17 02:54:24','arcu.'),(56,'2019-05-20 12:15:11','quam.'),(79,'2019-11-14 14:53:30','neque.'),(3,'2019-11-07 04:12:43','massa.'),(100,'2020-12-16 06:49:17','malesuada'),(75,'2019-11-16 05:49:15','eget'),(28,'2019-08-10 10:46:24','massa.'),(64,'2020-09-28 04:19:17','odio'),(83,'2020-01-15 23:19:58','ipsum'),(80,'2020-01-28 03:34:38','libero'),(78,'2019-03-06 10:52:04','at'),(96,'2019-12-29 16:27:13','lectus'),(34,'2020-04-06 23:27:06','fames'),(13,'2020-03-25 17:39:52','quis,'),(78,'2020-10-04 18:58:19','Curabitur'),(81,'2020-02-17 20:53:31','Donec'),(91,'2019-07-30 22:45:03','consequat'),(39,'2019-07-09 03:51:45','Nunc'),(14,'2020-04-11 06:30:01','erat.'),(70,'2019-09-20 23:29:36','fringilla'),(20,'2020-01-13 09:50:21','malesuada.'),(9,'2020-03-12 20:25:02','consequat,'),(39,'2019-07-27 23:22:48','elementum'),(69,'2019-08-28 17:05:10','pellentesque.'),(24,'2019-04-21 04:06:19','Vestibulum'),(71,'2020-12-30 14:07:18','aliquet'),(28,'2019-08-03 14:22:45','molestie'),(40,'2020-12-16 20:03:03','ac'),(36,'2020-11-17 03:57:37','convallis,'),(57,'2020-06-07 08:23:33','magna.'),(75,'2020-09-12 20:48:35','diam.'),(4,'2020-05-05 16:47:31','dictum'),(8,'2020-02-29 20:57:25','porttitor'),(79,'2019-02-15 19:06:29','ipsum.'),(47,'2019-02-16 07:09:59','mi'),(97,'2020-07-07 07:02:52','vel,'),(80,'2020-07-17 16:54:26','diam.'),(14,'2019-10-12 11:20:28','sed'),(72,'2019-03-30 06:34:58','est.'),(50,'2020-06-06 20:25:12','Sed'),(3,'2020-08-29 12:49:39','tincidunt'),(71,'2019-08-20 09:22:38','urna.'),(85,'2020-06-02 01:34:25','pellentesque,'),(65,'2020-09-05 06:37:21','libero'),(34,'2019-04-15 10:34:48','eu'),(96,'2020-01-18 12:45:23','ligula.'),(47,'2020-08-21 21:55:44','auctor'),(52,'2020-10-04 06:44:53','ligula'),(44,'2020-05-13 23:15:19','Cras'),(85,'2019-03-24 01:18:46','Vivamus'),(46,'2020-02-18 10:00:45','ut,'),(52,'2020-07-19 21:51:33','risus.'),(56,'2019-05-23 10:10:32','mi.'),(72,'2020-08-29 12:24:08','non,'),(35,'2020-12-10 21:40:35','sed'),(45,'2020-07-03 10:52:26','aliquet,'),(56,'2020-12-12 14:07:18','nunc'),(38,'2020-10-02 12:54:07','gravida'),(3,'2019-06-05 21:43:44','Vivamus'),(70,'2020-10-24 04:36:54','Aenean'),(90,'2019-04-27 13:58:52','auctor'),(77,'2019-09-11 14:12:04','et'),(95,'2020-02-21 13:04:22','montes,'),(37,'2020-12-07 00:53:44','vitae,'),(45,'2019-11-28 16:13:54','dignissim'),(96,'2020-12-07 18:26:55','tempor,'),(40,'2019-05-21 21:06:56','nunc'),(72,'2019-04-21 05:05:35','et'),(78,'2019-07-01 22:21:34','dis'),(42,'2019-08-06 14:40:02','consectetuer'),(11,'2020-02-27 09:16:26','vulputate'),(89,'2020-09-14 11:38:23','dui'),(68,'2020-05-14 07:00:38','Aliquam'),(95,'2019-03-02 02:19:15','erat,'),(49,'2019-12-15 13:31:48','vitae,'),(86,'2020-08-17 13:14:34','pharetra'),(66,'2019-07-19 15:13:41','a'),(100,'2019-07-12 09:16:42','nec,'),(89,'2020-12-15 08:44:12','auctor,'),(87,'2019-12-17 17:48:52','pretium'),(24,'2020-08-17 09:40:26','Aenean'),(23,'2020-10-13 02:30:54','commodo'),(81,'2019-03-15 22:27:20','Aliquam');
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(73,'2019-08-21 05:58:32','Donec'),(7,'2020-02-28 14:03:53','a,'),(60,'2019-06-17 08:01:24','Etiam'),(40,'2020-10-05 02:03:33','orci'),(86,'2019-09-30 18:40:12','tellus.'),(62,'2019-07-20 07:03:32','turpis'),(58,'2020-09-24 01:48:22','quam'),(15,'2020-06-03 10:12:52','nibh'),(11,'2019-03-02 00:01:08','nulla.'),(30,'2019-02-22 10:09:20','magna'),(59,'2020-01-16 20:40:51','magna.'),(90,'2020-03-19 22:23:39','vitae'),(43,'2019-03-15 21:43:40','arcu'),(8,'2019-10-01 21:10:25','interdum.'),(98,'2019-12-28 02:20:14','ac'),(64,'2020-01-01 08:25:52','mattis'),(19,'2019-04-01 16:31:34','pharetra.'),(55,'2019-12-26 08:25:21','iaculis'),(78,'2019-06-23 01:44:57','nisl.'),(85,'2019-03-01 16:37:29','amet'),(89,'2019-06-10 21:01:42','tellus'),(11,'2020-11-18 14:00:40','auctor'),(18,'2020-10-21 21:35:16','Curae;'),(1,'2019-09-13 04:26:55','erat'),(12,'2019-04-22 06:18:12','Donec'),(61,'2020-04-18 21:54:05','id'),(99,'2019-07-14 21:58:31','Aliquam'),(39,'2020-03-05 22:06:58','tristique'),(7,'2019-06-09 23:52:26','neque'),(94,'2020-06-16 10:55:30','Nam'),(62,'2020-05-15 18:49:52','tristique'),(73,'2020-08-11 13:03:48','ullamcorper'),(10,'2019-10-11 20:02:01','erat'),(100,'2020-10-05 21:26:03','felis.'),(88,'2019-12-24 12:36:57','ac,'),(16,'2020-01-18 17:28:53','auctor.'),(84,'2019-06-18 21:37:54','tincidunt,'),(3,'2019-03-28 17:11:18','dolor'),(57,'2019-11-17 21:57:56','arcu'),(1,'2019-03-29 11:39:05','amet,'),(51,'2019-06-23 22:45:57','elit,'),(34,'2019-06-04 23:24:38','id'),(33,'2019-01-22 00:34:15','mollis'),(62,'2019-10-27 01:33:37','risus.'),(38,'2020-03-10 19:55:52','ullamcorper.'),(38,'2020-11-17 07:42:53','dui,'),(23,'2020-03-20 17:45:00','tincidunt.'),(18,'2019-05-24 00:25:13','In'),(13,'2020-05-15 18:07:43','Cras'),(99,'2019-08-05 17:42:52','Duis'),(90,'2019-04-24 19:41:43','Curabitur'),(93,'2020-01-29 11:14:49','felis'),(63,'2019-10-26 07:30:08','Nunc'),(52,'2020-12-21 11:58:26','id,'),(30,'2019-08-20 07:15:39','risus'),(85,'2019-08-01 01:38:58','quis,'),(73,'2020-03-14 14:32:54','tempus'),(54,'2019-08-05 13:10:47','Phasellus'),(95,'2020-12-18 13:48:15','Cras'),(19,'2019-04-09 22:56:24','nisi'),(52,'2019-02-07 19:00:39','pede,'),(8,'2019-11-02 12:33:56','Vivamus'),(49,'2019-08-28 14:36:02','Quisque'),(47,'2020-06-25 01:08:25','dis'),(67,'2019-11-16 12:35:32','nec'),(87,'2020-07-21 00:22:47','elit'),(41,'2020-05-24 00:32:21','risus.'),(36,'2020-01-15 16:31:25','aliquet'),(13,'2019-09-24 02:32:04','non,'),(92,'2019-08-03 14:19:49','Ut'),(16,'2019-07-11 10:16:13','augue'),(61,'2020-11-19 01:00:41','ac'),(100,'2020-03-01 19:07:17','bibendum'),(89,'2019-06-23 02:10:31','in'),(11,'2020-12-15 03:56:25','consectetuer'),(76,'2020-12-02 15:09:10','adipiscing'),(26,'2019-05-09 02:35:43','velit'),(35,'2020-07-21 10:27:42','metus'),(10,'2019-08-06 22:23:12','iaculis'),(83,'2019-08-10 04:09:30','nisl.'),(76,'2019-01-27 08:37:46','fringilla'),(77,'2020-04-28 14:09:19','et'),(17,'2019-10-18 04:09:12','orci'),(99,'2020-11-24 01:34:22','imperdiet'),(38,'2020-10-26 07:42:58','nonummy'),(85,'2019-11-24 23:14:39','at,'),(9,'2019-10-14 20:09:04','augue'),(94,'2020-01-15 03:59:59','arcu.'),(43,'2019-10-31 17:23:50','volutpat'),(35,'2019-02-02 21:04:15','hendrerit'),(92,'2020-09-24 15:17:49','dis'),(34,'2019-02-16 22:57:20','ut'),(69,'2020-10-14 14:05:38','Donec'),(20,'2020-05-27 06:27:13','eu'),(67,'2020-10-29 02:33:15','nec,'),(39,'2020-06-19 14:14:48','Suspendisse'),(2,'2019-03-29 08:01:50','dolor.'),(26,'2020-06-26 01:45:11','elit,'),(51,'2019-09-29 08:51:47','aliquet'),(5,'2019-06-01 00:56:57','semper');
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(64,'2020-06-24 07:09:43','semper'),(4,'2019-10-29 09:21:27','Proin'),(46,'2020-07-23 21:26:27','Nulla'),(38,'2019-03-23 12:37:35','Vestibulum'),(72,'2020-05-27 19:54:01','ullamcorper.'),(65,'2019-10-11 10:37:37','primis'),(4,'2020-04-24 13:54:46','porttitor'),(30,'2020-10-26 04:26:24','cursus.'),(21,'2019-02-15 13:16:00','malesuada'),(52,'2019-07-18 14:09:03','ipsum'),(61,'2019-04-24 23:04:26','per'),(20,'2019-05-13 20:00:06','rutrum,'),(78,'2020-05-20 09:47:38','luctus'),(57,'2019-01-23 15:16:52','blandit'),(18,'2020-09-07 07:26:24','amet'),(47,'2020-11-10 11:56:36','nec,'),(2,'2020-11-01 21:03:28','ante.'),(67,'2020-10-30 09:05:00','luctus'),(14,'2020-07-05 13:20:55','sagittis'),(6,'2019-12-22 12:20:50','eget'),(33,'2019-04-05 17:34:07','Vestibulum'),(85,'2019-09-29 09:12:15','lorem'),(87,'2019-02-10 20:14:58','interdum'),(44,'2020-08-14 12:16:08','Phasellus'),(35,'2020-10-06 00:29:04','nisi'),(5,'2019-03-09 21:02:10','Curabitur'),(1,'2020-11-30 17:32:05','tellus'),(45,'2020-09-01 04:46:10','velit'),(57,'2020-06-19 15:21:23','sem,'),(15,'2020-11-24 09:13:30','accumsan'),(74,'2020-07-13 12:18:23','enim,'),(88,'2019-01-13 09:11:28','est.'),(2,'2019-11-05 17:29:49','In'),(28,'2020-08-07 18:54:34','rhoncus'),(19,'2020-12-30 20:50:58','magna.'),(61,'2020-10-10 02:04:58','vehicula'),(95,'2019-01-19 09:48:45','posuere'),(84,'2019-02-08 09:24:16','eros'),(25,'2020-04-30 03:36:59','vulputate'),(56,'2019-11-17 20:20:55','bibendum'),(26,'2019-03-04 05:23:42','ac'),(11,'2019-09-19 16:57:38','vitae'),(28,'2020-08-16 22:59:15','Mauris'),(9,'2019-08-11 12:29:37','ornare,'),(61,'2019-04-25 18:02:36','lacinia'),(30,'2020-11-23 20:38:16','nec'),(82,'2020-02-10 01:48:24','et'),(64,'2020-02-26 02:01:55','et'),(8,'2019-05-23 18:16:13','feugiat.'),(39,'2020-01-10 04:29:39','Maecenas'),(47,'2019-08-01 20:57:32','Vivamus'),(68,'2019-03-07 20:39:18','erat'),(58,'2019-04-12 23:12:47','ornare'),(76,'2019-04-17 23:07:05','nisi'),(9,'2019-11-11 22:49:03','adipiscing'),(60,'2019-08-22 12:27:32','ad'),(77,'2020-03-12 12:36:32','amet'),(6,'2020-01-05 04:15:44','rutrum'),(31,'2020-01-26 06:35:11','libero.'),(49,'2020-07-20 23:37:14','nisl'),(100,'2020-01-21 00:58:00','blandit'),(74,'2019-07-16 13:07:57','Fusce'),(45,'2020-11-07 07:08:02','ipsum'),(84,'2020-09-30 23:22:03','tincidunt,'),(8,'2020-10-20 06:05:40','Sed'),(62,'2020-12-22 15:00:23','lectus'),(22,'2019-02-28 04:56:49','ac'),(18,'2020-10-21 03:40:24','in'),(63,'2020-03-09 05:22:56','augue'),(98,'2020-10-11 13:47:22','porttitor'),(43,'2020-04-12 11:12:34','montes,'),(83,'2019-08-22 12:38:18','Phasellus'),(63,'2019-08-23 19:58:07','velit.'),(27,'2019-11-25 12:08:41','risus.'),(12,'2020-04-23 22:28:24','metus'),(74,'2020-11-03 19:48:24','arcu.'),(55,'2019-06-26 20:59:51','Vivamus'),(40,'2019-05-28 04:10:50','rutrum'),(19,'2019-10-12 19:29:30','Pellentesque'),(41,'2019-08-07 22:32:47','orci'),(45,'2020-08-21 05:49:27','eu'),(97,'2020-12-23 08:33:27','eu'),(11,'2019-12-01 22:51:08','nunc'),(55,'2019-11-25 12:24:55','Phasellus'),(57,'2019-01-11 17:58:15','porttitor'),(36,'2020-02-06 13:32:06','nec'),(21,'2020-11-05 22:41:09','vestibulum.'),(41,'2019-09-22 09:29:39','egestas'),(27,'2020-01-01 05:03:01','gravida'),(23,'2019-12-05 20:47:21','Donec'),(90,'2020-08-04 04:53:05','In'),(24,'2020-04-30 14:30:04','elit,'),(54,'2020-06-02 22:14:03','eget'),(78,'2020-04-20 23:50:14','tellus'),(56,'2020-11-29 20:52:30','metus.'),(76,'2020-08-09 11:55:27','egestas.'),(17,'2019-08-25 01:49:57','adipiscing'),(59,'2020-05-08 08:24:40','interdum'),(78,'2019-03-15 13:53:55','dolor'),(83,'2019-08-23 16:02:36','leo');
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(89,'2020-02-28 23:54:45','sollicitudin'),(55,'2019-07-22 07:13:33','Morbi'),(86,'2020-03-10 01:36:26','nec'),(27,'2020-08-26 23:02:25','arcu'),(37,'2019-09-24 01:31:26','fringilla'),(78,'2019-10-21 23:00:09','mauris.'),(92,'2020-06-13 01:02:08','mauris'),(63,'2020-08-13 16:53:06','Duis'),(55,'2020-02-20 22:56:50','est,'),(46,'2020-02-15 08:07:30','mollis'),(86,'2019-07-22 21:34:44','Mauris'),(88,'2020-08-19 16:05:27','auctor,'),(63,'2019-08-30 21:01:22','arcu'),(86,'2020-10-04 07:18:15','urna.'),(30,'2019-11-06 19:01:52','id'),(39,'2020-02-04 18:25:18','nulla.'),(41,'2019-10-13 06:20:56','enim'),(30,'2020-01-01 09:29:34','varius'),(2,'2020-04-16 23:35:42','fringilla'),(7,'2019-04-08 07:20:12','ac'),(99,'2020-03-22 23:00:11','tristique'),(92,'2019-10-05 17:46:29','ut,'),(62,'2020-11-20 04:33:54','libero.'),(40,'2019-02-24 15:24:09','pede,'),(68,'2019-11-06 13:42:15','ligula.'),(72,'2020-05-07 10:07:33','Cras'),(8,'2019-04-07 03:03:55','et'),(8,'2019-04-30 22:24:55','pharetra.'),(97,'2019-10-28 05:30:04','at,'),(45,'2020-07-25 10:24:49','Nullam'),(77,'2020-04-10 19:17:51','orci'),(25,'2020-01-24 22:38:06','neque'),(60,'2020-01-23 20:52:13','scelerisque'),(43,'2020-05-08 05:28:06','posuere'),(77,'2020-04-14 20:21:09','taciti'),(63,'2019-06-17 15:55:47','erat'),(48,'2020-04-27 11:55:48','cursus,'),(6,'2019-11-09 00:45:48','Phasellus'),(55,'2020-04-06 10:11:12','nibh'),(56,'2019-10-24 23:00:25','ac,'),(22,'2019-10-31 20:30:44','massa.'),(45,'2019-01-12 15:30:55','luctus.'),(30,'2019-10-08 20:09:32','lorem'),(74,'2020-10-06 06:13:59','lobortis,'),(83,'2020-12-17 00:50:29','risus.'),(5,'2020-04-25 05:49:17','mauris,'),(86,'2019-12-10 04:13:19','vel'),(97,'2019-05-14 09:14:15','ullamcorper,'),(77,'2020-04-28 21:23:10','dui.'),(92,'2020-06-24 03:55:58','enim,'),(83,'2020-08-06 14:51:19','vitae'),(49,'2019-05-25 07:34:43','cursus,'),(47,'2019-06-29 17:56:27','dapibus'),(18,'2019-05-25 05:43:00','venenatis'),(41,'2020-06-06 17:43:29','accumsan'),(76,'2020-09-28 14:42:10','massa'),(93,'2020-09-11 00:58:48','ornare.'),(28,'2020-04-18 22:59:23','amet'),(80,'2019-07-02 02:38:53','ipsum'),(56,'2020-03-24 06:04:18','ac'),(42,'2020-07-21 18:56:06','Curabitur'),(84,'2019-03-18 19:14:14','Integer'),(36,'2020-07-13 10:23:13','semper'),(89,'2019-08-08 01:18:50','tempor'),(13,'2020-04-16 04:50:53','diam.'),(52,'2019-01-30 03:35:53','risus,'),(20,'2019-07-03 17:27:20','Etiam'),(23,'2020-08-29 22:00:11','Aenean'),(6,'2019-08-18 20:27:39','lacus.'),(55,'2019-07-23 12:07:04','purus.'),(88,'2020-08-14 23:19:43','et'),(12,'2019-08-16 16:52:12','Etiam'),(68,'2019-09-18 15:01:35','nec'),(70,'2019-06-25 15:57:41','senectus'),(34,'2019-01-06 23:26:05','gravida'),(36,'2019-06-11 09:54:07','Mauris'),(91,'2020-12-21 01:59:06','purus.'),(70,'2020-11-19 20:49:37','Phasellus'),(24,'2019-12-15 16:38:58','nisl.'),(18,'2020-10-01 17:11:16','luctus'),(95,'2020-04-26 00:31:35','convallis'),(4,'2020-08-08 09:08:22','mauris'),(54,'2020-05-25 06:27:53','orci'),(14,'2020-09-14 16:06:31','sapien,'),(13,'2020-12-12 23:43:41','lectus'),(10,'2020-10-12 10:42:22','eu,'),(2,'2019-08-08 18:04:14','gravida'),(61,'2019-09-10 11:54:35','sit'),(50,'2020-07-30 22:28:00','eget'),(46,'2019-09-14 12:30:23','at'),(41,'2019-12-18 08:08:04','Cras'),(88,'2020-03-30 12:03:54','est'),(36,'2019-12-07 10:48:08','metus'),(38,'2019-10-30 08:50:17','Cras'),(23,'2019-07-05 02:35:22','varius'),(94,'2019-11-24 21:42:04','in'),(58,'2019-10-02 11:04:02','sit'),(35,'2020-08-21 05:20:33','Donec'),(53,'2020-11-24 21:37:23','at'),(31,'2019-01-02 00:52:27','egestas');
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(82,'2020-07-04 13:01:02','ut'),(1,'2020-09-12 16:21:04','malesuada'),(5,'2019-04-12 22:57:57','libero.'),(24,'2020-12-12 13:20:49','euismod'),(40,'2020-07-11 15:16:17','libero'),(42,'2019-11-18 11:17:07','Suspendisse'),(77,'2019-11-11 07:35:30','congue,'),(43,'2020-03-15 11:34:57','leo.'),(86,'2019-08-23 14:01:32','egestas.'),(83,'2020-01-01 05:57:12','elementum'),(25,'2019-01-27 12:00:56','mi'),(81,'2020-07-09 11:14:50','Aliquam'),(73,'2019-08-01 00:26:43','nunc'),(66,'2020-02-04 11:55:24','dolor'),(77,'2019-07-28 04:01:05','Cras'),(95,'2019-11-01 12:50:52','massa'),(62,'2019-10-21 04:12:16','pretium'),(82,'2020-03-23 18:16:02','et'),(98,'2020-11-18 14:18:27','hendrerit'),(77,'2020-04-30 18:33:47','euismod'),(19,'2020-12-02 23:26:11','quis'),(2,'2019-11-24 18:37:53','erat.'),(63,'2020-08-08 04:40:13','dictum.'),(27,'2019-01-27 06:38:23','euismod'),(86,'2020-06-03 09:13:40','velit'),(54,'2019-03-11 07:04:38','euismod'),(31,'2019-06-12 15:43:48','dignissim'),(56,'2020-05-24 19:19:41','lectus'),(14,'2020-04-18 05:03:06','placerat'),(73,'2019-12-08 15:03:10','nec'),(85,'2020-01-20 03:55:48','in'),(32,'2019-11-25 12:00:12','Fusce'),(17,'2020-11-11 13:21:48','porttitor'),(75,'2020-12-20 13:30:11','aliquet'),(6,'2020-09-01 12:35:51','adipiscing'),(39,'2019-09-30 22:35:34','Donec'),(23,'2019-01-11 11:11:38','mauris,'),(55,'2019-05-19 18:07:56','pharetra.'),(59,'2019-06-17 10:40:35','sed'),(45,'2019-03-19 02:25:23','pharetra.'),(84,'2020-05-01 17:44:05','purus,'),(77,'2019-08-28 12:49:04','turpis'),(76,'2020-09-10 04:17:24','urna.'),(34,'2020-10-19 09:34:22','Proin'),(81,'2019-02-25 19:34:36','dapibus'),(75,'2020-04-07 00:36:55','mi'),(49,'2019-10-06 03:50:33','nec'),(24,'2019-09-10 05:22:36','elit,'),(86,'2019-04-01 11:04:56','eget'),(94,'2019-08-08 08:32:42','lobortis'),(89,'2019-10-21 21:44:10','Ut'),(35,'2020-09-18 01:02:45','neque.'),(69,'2019-09-28 05:36:28','ac'),(5,'2020-10-13 11:16:44','cubilia'),(39,'2020-06-07 09:46:10','tincidunt'),(48,'2019-11-06 16:34:34','tempor'),(56,'2019-02-05 09:04:12','est'),(86,'2020-02-17 14:05:18','auctor'),(48,'2020-11-09 07:21:01','molestie'),(58,'2019-08-28 17:30:11','arcu.'),(13,'2019-05-11 02:44:57','est.'),(66,'2020-02-05 01:16:21','Lorem'),(28,'2019-08-25 06:04:57','metus'),(13,'2020-04-29 00:35:20','montes,'),(55,'2020-12-21 23:41:51','luctus'),(36,'2020-05-24 20:31:41','hymenaeos.'),(41,'2019-10-14 07:15:28','neque'),(47,'2019-07-12 18:44:36','vitae,'),(85,'2019-05-08 05:47:24','velit'),(79,'2020-12-22 07:12:56','pharetra'),(66,'2020-11-22 01:47:07','faucibus'),(25,'2019-06-12 15:27:32','dui'),(1,'2019-06-29 16:02:37','libero'),(18,'2019-04-12 17:54:06','cursus'),(41,'2020-02-23 09:20:53','quam'),(32,'2019-08-27 04:22:39','sit'),(63,'2020-06-06 00:54:52','magna'),(63,'2020-09-05 03:30:57','vitae'),(87,'2019-07-07 22:15:14','id,'),(74,'2019-09-26 19:42:16','pellentesque,'),(17,'2020-05-06 23:27:31','euismod'),(42,'2020-05-15 09:29:42','Duis'),(77,'2020-05-30 22:43:48','tortor.'),(8,'2020-09-05 02:14:06','egestas'),(91,'2019-03-20 15:10:42','erat,'),(70,'2019-08-05 01:57:51','eu,'),(100,'2019-12-11 14:50:22','mauris'),(89,'2019-02-11 21:47:42','ante'),(14,'2019-04-15 11:23:14','quis'),(70,'2020-05-29 04:27:57','venenatis'),(56,'2020-03-11 09:43:19','a'),(62,'2020-04-27 12:09:19','ligula.'),(77,'2020-06-07 21:26:33','elementum'),(42,'2020-10-22 00:19:16','Aliquam'),(18,'2019-03-23 18:46:52','nulla'),(96,'2020-08-24 17:10:09','at'),(74,'2020-07-30 12:17:01','mi'),(94,'2020-01-09 08:13:30','enim'),(40,'2019-07-23 16:28:37','ut'),(13,'2020-06-18 15:18:46','Quisque');
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(115,'2019-05-11 23:40:14','Etiam'),(101,'2019-05-10 01:46:05','Nulla'),(112,'2019-06-08 23:41:56','parturient'),(114,'2019-09-14 18:08:20','metus.'),(101,'2020-04-22 02:30:23','dictum.'),(105,'2020-11-08 17:04:38','auctor'),(101,'2019-11-15 10:46:34','odio'),(119,'2019-10-16 20:26:59','neque.'),(107,'2019-09-02 23:49:26','pretium'),(115,'2019-07-31 15:54:51','Aliquam'),(116,'2019-01-30 21:07:53','lobortis'),(114,'2019-01-25 11:26:44','vitae'),(105,'2019-11-03 20:51:33','arcu'),(109,'2019-02-23 19:01:31','ante.'),(120,'2020-07-08 00:03:50','justo.'),(111,'2020-07-13 00:21:21','adipiscing'),(102,'2019-12-25 22:22:24','metus.'),(104,'2019-03-31 04:53:39','orci.'),(107,'2019-11-28 01:42:27','tincidunt'),(115,'2020-10-03 14:08:18','diam.'),(112,'2020-08-23 22:45:11','malesuada'),(118,'2019-02-27 21:56:06','Cras'),(108,'2020-11-29 06:41:32','molestie'),(107,'2019-02-11 05:06:08','dictum'),(111,'2020-11-16 08:42:30','at'),(102,'2020-10-16 15:29:05','vitae'),(112,'2019-04-15 06:41:48','lorem'),(110,'2019-04-14 11:09:40','at'),(104,'2019-07-23 00:48:22','aliquet.'),(109,'2020-07-19 00:20:16','molestie'),(106,'2019-10-03 03:20:28','pede.'),(120,'2020-03-19 23:19:37','eu'),(103,'2020-08-21 23:06:39','mattis'),(103,'2020-01-30 21:17:08','magna.'),(109,'2019-01-04 03:17:29','arcu.'),(102,'2020-07-01 09:04:46','nec'),(120,'2019-03-28 15:10:09','pellentesque.'),(105,'2019-03-26 15:48:31','imperdiet'),(106,'2020-08-09 22:36:46','Mauris'),(115,'2019-09-24 16:52:11','Nam'),(116,'2019-01-16 15:13:23','malesuada'),(119,'2019-02-02 19:18:05','mus.'),(116,'2019-09-17 11:16:24','Quisque'),(116,'2019-01-31 23:50:06','sapien.'),(116,'2019-04-26 20:39:35','aliquam'),(105,'2020-08-26 22:00:37','rutrum.'),(114,'2020-10-02 02:09:58','Aliquam'),(110,'2020-05-29 03:19:49','mauris'),(112,'2019-05-02 05:09:45','egestas.'),(112,'2020-01-02 22:55:59','a'),(116,'2019-11-10 07:27:32','placerat'),(105,'2020-06-07 10:43:40','et'),(118,'2019-12-17 15:18:58','nec'),(119,'2020-07-26 10:40:43','molestie'),(102,'2020-04-29 06:53:39','Integer'),(117,'2019-01-18 07:09:13','commodo'),(112,'2020-04-22 04:32:45','enim,'),(106,'2020-08-28 23:12:08','metus'),(105,'2019-10-05 16:12:04','Nunc'),(106,'2019-10-08 03:33:38','felis'),(106,'2019-10-13 10:45:58','nunc'),(109,'2020-06-22 10:18:34','at'),(107,'2020-10-11 21:21:14','massa.'),(106,'2019-07-08 16:29:42','Quisque'),(110,'2019-09-22 19:46:48','eros'),(111,'2019-06-29 11:16:32','hendrerit.'),(104,'2019-03-24 21:03:42','enim.'),(109,'2020-08-18 00:44:43','diam'),(116,'2020-11-17 08:52:49','at,'),(118,'2019-09-07 12:12:27','eleifend'),(114,'2020-02-13 03:44:40','magna.'),(106,'2019-05-31 20:26:56','turpis'),(103,'2019-07-05 22:35:17','Cras'),(117,'2020-08-29 10:12:57','Maecenas'),(114,'2019-07-13 08:29:00','vehicula.'),(102,'2020-08-17 01:51:31','facilisis'),(112,'2019-11-12 12:35:00','egestas,'),(110,'2020-05-28 15:36:27','pretium'),(105,'2020-12-01 16:31:06','risus'),(108,'2019-10-16 21:34:49','ullamcorper,'),(116,'2020-02-07 13:28:24','luctus'),(119,'2019-09-28 19:22:26','penatibus'),(111,'2019-08-16 08:17:28','gravida'),(103,'2020-07-24 11:09:41','Phasellus'),(113,'2019-10-18 17:28:51','ornare,'),(106,'2019-09-13 11:45:59','ante'),(113,'2020-04-10 06:07:13','lorem'),(102,'2019-11-17 09:27:52','ut'),(109,'2020-02-02 02:17:30','risus.'),(105,'2020-01-30 10:43:27','in'),(107,'2019-01-29 06:11:04','facilisis'),(107,'2020-04-11 22:24:07','nec,'),(106,'2020-06-16 06:52:07','sem'),(103,'2019-05-18 04:27:42','Cras'),(109,'2020-09-07 13:13:25','et'),(101,'2019-12-09 06:50:43','vel'),(104,'2019-10-21 16:12:32','nec,'),(116,'2020-10-12 09:20:36','lorem'),(119,'2019-10-12 09:20:18','lorem,'),(115,'2019-11-18 17:31:03','iaculis');
INSERT INTO ManyChatTestTask([user_id],[event_timestamp],[event_name]) VALUES(108,'2020-05-27 21:25:35','varius'),(108,'2019-05-27 17:37:01','velit'),(109,'2019-12-04 06:45:49','mauris'),(118,'2019-10-09 13:46:37','pharetra,'),(118,'2019-11-16 05:55:52','faucibus'),(118,'2019-12-13 23:30:28','sit'),(101,'2019-01-16 14:10:56','neque'),(115,'2020-04-09 17:05:40','Aliquam'),(118,'2019-12-29 04:23:01','facilisis'),(110,'2019-07-24 06:35:42','semper'),(107,'2020-09-05 21:38:18','est.'),(112,'2020-10-20 15:53:35','sapien.'),(113,'2019-05-10 09:55:36','diam.'),(111,'2019-12-21 21:54:27','libero'),(114,'2020-09-20 12:42:36','ornare.'),(119,'2020-03-14 10:30:25','lorem'),(104,'2019-05-07 07:06:30','sed'),(120,'2019-04-28 13:42:15','tincidunt'),(105,'2020-02-22 14:03:08','Duis'),(109,'2020-11-01 17:17:08','magna'),(109,'2020-10-03 14:58:35','sed'),(116,'2019-09-06 01:51:17','odio'),(102,'2020-03-25 07:41:03','neque'),(115,'2020-03-04 11:48:25','mattis'),(104,'2020-09-30 12:10:49','amet,'),(103,'2019-11-09 03:56:19','amet,'),(119,'2019-11-15 18:39:39','ut'),(110,'2020-12-15 17:52:39','fermentum'),(106,'2019-05-25 07:02:34','sed,'),(115,'2019-10-17 22:56:36','non'),(113,'2019-12-12 12:30:29','mi'),(119,'2019-01-11 02:58:24','faucibus'),(110,'2019-08-29 10:23:25','malesuada'),(109,'2019-02-04 09:10:31','neque'),(115,'2020-01-16 21:22:27','Nullam'),(108,'2020-02-03 03:27:27','mi'),(105,'2020-12-14 00:08:00','dolor.'),(117,'2020-05-31 19:22:20','pellentesque'),(107,'2020-06-29 20:46:20','imperdiet,'),(115,'2019-04-07 22:35:22','sapien,'),(111,'2019-09-29 09:02:28','magna'),(113,'2020-01-30 08:18:00','blandit'),(113,'2019-07-18 05:29:58','neque.'),(114,'2020-04-02 07:05:38','aliquet,'),(110,'2019-05-18 05:49:30','eleifend,'),(105,'2019-10-23 00:53:08','ipsum.'),(106,'2020-06-04 07:12:27','et'),(116,'2020-10-05 12:39:22','nisi'),(111,'2020-12-22 20:35:14','orci'),(111,'2020-02-15 06:24:03','id,'),(120,'2019-11-11 23:32:34','mi'),(114,'2020-10-03 17:38:48','felis'),(116,'2019-05-08 21:43:44','consectetuer'),(113,'2019-06-23 20:27:02','parturient'),(108,'2019-06-12 12:25:13','euismod'),(119,'2020-07-01 00:08:13','cursus'),(113,'2019-03-05 00:30:42','non'),(119,'2019-06-03 03:04:36','tincidunt.'),(106,'2020-11-28 12:35:51','montes,'),(119,'2020-09-23 08:40:06','Nunc'),(119,'2019-11-30 10:54:25','suscipit,'),(102,'2019-11-19 03:26:28','Nulla'),(105,'2019-08-28 01:10:11','lorem,'),(110,'2020-06-19 00:48:03','enim.'),(107,'2020-11-02 18:15:02','Donec'),(111,'2020-02-22 13:44:32','dolor,'),(109,'2020-10-16 01:22:57','cursus'),(102,'2019-07-04 20:05:24','velit.'),(115,'2020-01-18 19:32:00','metus.'),(101,'2020-12-15 13:25:25','dui.'),(114,'2020-09-25 10:12:06','cursus'),(119,'2019-10-06 19:55:51','eget'),(117,'2020-04-29 02:46:17','Aliquam'),(117,'2020-01-28 12:13:10','ornare'),(105,'2020-08-08 08:32:39','mauris.'),(116,'2020-03-05 12:20:43','rutrum'),(117,'2019-07-08 10:28:49','sem'),(116,'2020-06-16 19:03:44','nulla'),(107,'2020-01-14 04:38:05','pellentesque'),(101,'2020-11-19 00:20:46','ultricies'),(107,'2020-11-23 06:09:19','consectetuer'),(105,'2019-10-21 15:18:21','risus.'),(116,'2019-07-25 19:32:42','ligula'),(109,'2019-08-05 12:57:30','dolor'),(111,'2019-07-08 06:54:56','lobortis'),(114,'2019-06-01 02:36:42','risus'),(115,'2019-07-30 10:43:40','vitae,'),(102,'2019-03-28 06:28:36','cursus'),(101,'2020-10-22 20:58:23','odio.'),(106,'2019-04-17 04:29:59','lacus.'),(101,'2020-10-29 05:09:31','dolor'),(107,'2020-08-26 05:53:25','nonummy'),(113,'2019-11-01 22:18:47','sed'),(113,'2019-08-21 15:25:04','sollicitudin'),(114,'2020-04-20 15:14:47','iaculis'),(112,'2020-07-29 04:59:11','lacinia'),(117,'2020-07-14 00:25:06','nascetur'),(103,'2019-12-05 17:36:02','facilisi.'),(105,'2020-03-23 20:51:05','mattis.'),(119,'2019-03-21 01:34:05','sagittis');

-- extracting users' registration dates (also setting their value to their month' first day's value)
SELECT  x.* INTO #users_first_event
FROM ( 
		SELECT DISTINCT	
		-- considering user's first ever event was registration (another way would be extracting dates from rows where  name_event == 'registration')
			min(DATEADD(MONTH, DATEDIFF(MONTH, 0, event_timestamp), 0)) OVER (PARTITION BY user_id) AS first_event_datetime
			--DATEADD(MONTH, DATEDIFF(MONTH, 0, event_timestamp), 0)
			, user_id 
		FROM ManyChatTestTask
		-- WHERE event_name = 'Registration'
	 ) AS x

-- counting users registered in each month 
SELECT y.* INTO #users_first_event_quantity
FROM (
		SELECT
			first_event_datetime AS year_month
			, count(user_id) AS year_month_reg_quantity
		FROM #users_first_event 
		GROUP BY first_event_datetime
	 ) AS y
	
-- counting users who were absent during their registration month --AND returned next month
SELECT z.* INTO #users_returned_on_2nd_month_quantity
FROM (
		SELECT
			  reg.first_event_datetime AS year_month
			  , count(mainT.user_id) AS second_month_quantity			  
		FROM ManyChatTestTask AS mainT
			INNER JOIN #users_first_event AS reg 
				ON mainT.user_id = reg.user_id 
			WHERE --DATEADD(MONTH, DATEDIFF(MONTH, 0, event_timestamp), 0) NOT IN (reg.first_event_datetime)
				  --AND 
				  DATEADD(MONTH, 1, reg.first_event_datetime) IN (DATEADD(MONTH, DATEDIFF(MONTH, 0, event_timestamp), 0))
			GROUP BY reg.first_event_datetime
	 ) as z

-- aggregating all the data we need 		
SELECT 
	CONVERT(CHAR(5), a.year_month, 120) + CONVERT(CHAR(2), a.year_month, 101) AS [Год и месяц появления пользователя в системе]
	, a.year_month_reg_quantity AS [Количество новых пользователей (пришедших в этом месяце)]
	, ISNULL(b.second_month_quantity, 0) AS [Количество пользователей, вернувшихся на второй календарный месяц после регистрации]
	, CAST(ISNULL(b.second_month_quantity, 0)*100/a.year_month_reg_quantity as varchar(20)) + '%' AS [Вероятность возврата]
FROM #users_first_event_quantity AS a
	LEFT JOIN #users_returned_on_2nd_month_quantity AS b
		ON a.year_month = b.year_month
	
DROP TABLE #users_first_event
DROP TABLE #users_first_event_quantity
DROP TABLE #users_returned_on_2nd_month_quantity

	

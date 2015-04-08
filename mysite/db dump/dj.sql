-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 08, 2015 at 12:47 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dj`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(25, 'Can add article', 9, 'add_article'),
(26, 'Can change article', 9, 'change_article'),
(27, 'Can delete article', 9, 'delete_article');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$0dol2QbPTFhI$VoVXLxm5RsVcY/Inw7kHzxQNmjMGNwoJy30suh245q8=', '2015-04-04 00:04:33', 1, 'admin', '', '', 'admin@example.com', 1, 1, '2015-04-03 01:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `daily_article`
--

CREATE TABLE IF NOT EXISTS `daily_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publ_date` date NOT NULL,
  `category` varchar(100) NOT NULL,
  `text` longtext NOT NULL,
  `image` varchar(100),
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `author` (`author`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `daily_article`
--

INSERT INTO `daily_article` (`id`, `title`, `author`, `publ_date`, `category`, `text`, `image`) VALUES
(1, 'Raptors VS  Leafs?', 'Tim Cooks', '2015-04-02', 'Sports', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur quam quam, finibus et ex quis, feugiat pulvinar quam. Vivamus et tempor diam, sed suscipit quam. Donec porttitor diam diam, sed bibendum tellus consequat et. Ut maximus turpis et diam vulputate, quis finibus nunc interdum. Suspendisse potenti. Maecenas finibus odio ac faucibus feugiat. Nam lacinia commodo nisi, ut accumsan nibh gravida sed. Etiam rhoncus, libero ac tempus ullamcorper, urna eros tempus mauris, ac faucibus tellus odio finibus tortor. Quisque vel eros et dui mattis egestas in eget justo.\r\n\r\nDuis maximus laoreet ante, id varius nulla auctor sit amet. Praesent lobortis porta erat in sollicitudin. Sed porta a nibh at mattis. Quisque ac mauris eu libero ornare molestie at nec eros. Sed eu facilisis magna. Quisque suscipit metus ut nisi cursus, eget vestibulum dui scelerisque. Praesent vitae vehicula erat. Nulla gravida ullamcorper nibh, vitae viverra mi feugiat et. Duis sit amet libero vestibulum, egestas ligula sed, luctus augue.\r\n\r\nNam auctor nibh id augue molestie, porta cursus tellus condimentum. Pellentesque eget dictum sapien. Suspendisse cursus nulla imperdiet faucibus commodo. Nulla nec blandit massa, quis venenatis est. In iaculis dignissim mi eu malesuada. Praesent maximus eget metus sit amet tempus. Duis nibh magna, mollis eget arcu ac, posuere maximus purus. Praesent dui tortor, maximus sed diam sit amet, tempor scelerisque nunc. Etiam quis posuere purus, ut ullamcorper ipsum.', 'articles/RogersCentre_Toronto_Sept1-05.jpg'),
(2, 'The Future of Business', 'Mark Juges', '2015-04-03', 'Business', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur quam quam, finibus et ex quis, feugiat pulvinar quam. Vivamus et tempor diam, sed suscipit quam. Donec porttitor diam diam, sed bibendum tellus consequat et. Ut maximus turpis et diam vulputate, quis finibus nunc interdum. Suspendisse potenti. Maecenas finibus odio ac faucibus feugiat. Nam lacinia commodo nisi, ut accumsan nibh gravida sed. Etiam rhoncus, libero ac tempus ullamcorper, urna eros tempus mauris, ac faucibus tellus odio finibus tortor. Quisque vel eros et dui mattis egestas in eget justo.\r\n\r\nDuis maximus laoreet ante, id varius nulla auctor sit amet. Praesent lobortis porta erat in sollicitudin. Sed porta a nibh at mattis. Quisque ac mauris eu libero ornare molestie at nec eros. Sed eu facilisis magna. Quisque suscipit metus ut nisi cursus, eget vestibulum dui scelerisque. Praesent vitae vehicula erat. Nulla gravida ullamcorper nibh, vitae viverra mi feugiat et. Duis sit amet libero vestibulum, egestas ligula sed, luctus augue.\r\n\r\nNam auctor nibh id augue molestie, porta cursus tellus condimentum. Pellentesque eget dictum sapien. Suspendisse cursus nulla imperdiet faucibus commodo. Nulla nec blandit massa, quis venenatis est. In iaculis dignissim mi eu malesuada. Praesent maximus eget metus sit amet tempus. Duis nibh magna, mollis eget arcu ac, posuere maximus purus. Praesent dui tortor, maximus sed diam sit amet, tempor scelerisque nunc. Etiam quis posuere purus, ut ullamcorper ipsum.', 'articles/business-316906_1280.jpg'),
(3, 'Hiring slowdown in the U.S.', 'Frances Scogs', '2015-04-04', 'Jobs', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sem quam, sagittis pulvinar facilisis vel, suscipit in erat. Nulla tellus nisl, faucibus eget dignissim sit amet, tempus nec augue. Nulla venenatis, purus dapibus egestas ullamcorper, odio ante commodo ex, et finibus arcu purus a ante. Ut justo mauris, mattis dictum risus nec, sagittis dapibus elit. Praesent purus nibh, facilisis non varius et, euismod auctor felis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque sit amet tempus massa. In efficitur euismod felis, at vehicula erat sagittis a. Donec maximus sagittis arcu a ultrices. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean magna nisl, tincidunt ac sodales eu, ultrices at risus. Morbi at ligula quam.\r\n\r\nUt tempor sem quis sapien dictum, eu consequat eros imperdiet. Integer ut venenatis diam, non luctus ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas a sodales enim. Vivamus ultricies vestibulum diam, vitae volutpat justo pharetra pretium. Ut eget ornare quam. In vel risus orci. Aliquam nec ante augue. Ut ornare lacus nisl, at ullamcorper tortor molestie quis. Nam gravida felis eu cursus egestas. Duis mattis elit eu sem pellentesque, eu porta nunc ultrices. In in quam porttitor nisi maximus mattis ac nec nunc. Quisque feugiat, ante ut egestas fermentum, quam libero placerat mauris, vestibulum tempor mi dui a lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent luctus nulla eu velit tincidunt, vitae vestibulum mauris euismod.\r\n\r\nMorbi vitae gravida diam. Aenean eros odio, convallis et massa eget, laoreet facilisis augue. Quisque ornare non elit nec commodo. Duis et dapibus tortor. Etiam fringilla eros ut porttitor cursus. Donec ultrices consectetur augue, at auctor nulla suscipit et. Ut venenatis hendrerit magna, a euismod ex pretium nec. Phasellus vitae aliquet nulla, vitae vestibulum est. Fusce maximus ex at suscipit elementum. Proin tristique enim eu iaculis consectetur.', 'articles/Rebar_worker.jpg'),
(4, 'Possible case of measles', 'Liza Yzda', '2015-04-07', 'Health', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sem quam, sagittis pulvinar facilisis vel, suscipit in erat. Nulla tellus nisl, faucibus eget dignissim sit amet, tempus nec augue. Nulla venenatis, purus dapibus egestas ullamcorper, odio ante commodo ex, et finibus arcu purus a ante. Ut justo mauris, mattis dictum risus nec, sagittis dapibus elit. Praesent purus nibh, facilisis non varius et, euismod auctor felis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque sit amet tempus massa. In efficitur euismod felis, at vehicula erat sagittis a. Donec maximus sagittis arcu a ultrices. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean magna nisl, tincidunt ac sodales eu, ultrices at risus. Morbi at ligula quam.\r\n\r\nUt tempor sem quis sapien dictum, eu consequat eros imperdiet. Integer ut venenatis diam, non luctus ex. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas a sodales enim. Vivamus ultricies vestibulum diam, vitae volutpat justo pharetra pretium. Ut eget ornare quam. In vel risus orci. Aliquam nec ante augue. Ut ornare lacus nisl, at ullamcorper tortor molestie quis. Nam gravida felis eu cursus egestas. Duis mattis elit eu sem pellentesque, eu porta nunc ultrices. In in quam porttitor nisi maximus mattis ac nec nunc. Quisque feugiat, ante ut egestas fermentum, quam libero placerat mauris, vestibulum tempor mi dui a lorem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent luctus nulla eu velit tincidunt, vitae vestibulum mauris euismod.\r\n\r\nMorbi vitae gravida diam. Aenean eros odio, convallis et massa eget, laoreet facilisis augue. Quisque ornare non elit nec commodo. Duis et dapibus tortor. Etiam fringilla eros ut porttitor cursus. Donec ultrices consectetur augue, at auctor nulla suscipit et. Ut venenatis hendrerit magna, a euismod ex pretium nec. Phasellus vitae aliquet nulla, vitae vestibulum est. Fusce maximus ex at suscipit elementum. Proin tristique enim eu iaculis consectetur.', 'articles/nurse-527622_1280.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-04-07 13:31:26', '4', 'VSB moves quickly against possible case of measles at Lord Byng Secondary', 2, 'Changed image.', 9, 1),
(2, '2015-04-07 13:48:01', '3', 'Hiring slowdown in the U.S.', 2, 'Changed image.', 9, 1),
(3, '2015-04-07 13:54:56', '4', 'VSB moves quickly against possible case of measles at Lord Byng Secondary', 2, 'Changed image.', 9, 1),
(4, '2015-04-07 13:55:42', '2', 'The Future of Business', 2, 'Changed image.', 9, 1),
(5, '2015-04-07 13:56:03', '1', 'Will the Raptors replace the Leafs?', 2, 'Changed image.', 9, 1),
(6, '2015-04-07 14:47:00', '3', 'Hiring slowdown in the U.S.', 2, 'Changed image.', 9, 1),
(7, '2015-04-07 15:28:45', '4', 'Possible case of measles', 2, 'Changed title.', 9, 1),
(8, '2015-04-07 16:13:35', '1', 'Raptors VS  Leafs?', 2, 'Changed title.', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'daily', 'article'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-04-02 21:52:44'),
(2, 'auth', '0001_initial', '2015-04-02 21:52:44'),
(3, 'admin', '0001_initial', '2015-04-02 21:52:44'),
(4, 'contenttypes', '0002_remove_content_type_name', '2015-04-02 21:52:44'),
(5, 'auth', '0002_alter_permission_name_max_length', '2015-04-02 21:52:44'),
(6, 'auth', '0003_alter_user_email_max_length', '2015-04-02 21:52:44'),
(7, 'auth', '0004_alter_user_username_opts', '2015-04-02 21:52:44'),
(8, 'auth', '0005_alter_user_last_login_null', '2015-04-02 21:52:44'),
(9, 'auth', '0006_require_contenttypes_0002', '2015-04-02 21:52:44'),
(10, 'sessions', '0001_initial', '2015-04-02 21:52:44'),
(11, 'daily', '0001_initial', '2015-04-03 01:12:02'),
(12, 'daily', '0002_auto_20150403_1213', '2015-04-03 16:13:59'),
(13, 'daily', '0003_auto_20150403_1327', '2015-04-03 17:27:55'),
(14, 'daily', '0004_auto_20150403_1934', '2015-04-03 23:35:16'),
(15, 'daily', '0005_auto_20150407_0945', '2015-04-07 13:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('p4nnonsdbut07ygnuwt32mp0sruodm2j', 'NjU1OThlM2YwN2QyNDE5YTc2M2FjZDBiNjc3NDEyMWUzZTg4Yzk2OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViM2M3MjBjYTMzZmUxNmIxODZhOTRlM2M5YmNlZGQwMDViMDM2M2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-04-18 00:04:33'),
('tc79hjwpy21fnq87aot3b5537db42f4f', 'NjU1OThlM2YwN2QyNDE5YTc2M2FjZDBiNjc3NDEyMWUzZTg4Yzk2OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjViM2M3MjBjYTMzZmUxNmIxODZhOTRlM2M5YmNlZGQwMDViMDM2M2QiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-04-17 01:51:40');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

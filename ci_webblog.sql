-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2016 pada 17.36
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `ci_webblog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_blog_article`
--

CREATE TABLE IF NOT EXISTS `cms_blog_article` (
  `article_id` int(20) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(100) DEFAULT NULL,
  `article_url` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `description` text,
  `date` timestamp NULL DEFAULT NULL,
  `author_user_id` int(20) DEFAULT NULL,
  `content` text,
  `allow_comment` int(20) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `cms_blog_article`
--

INSERT INTO `cms_blog_article` (`article_id`, `article_title`, `article_url`, `keyword`, `description`, `date`, `author_user_id`, `content`, `allow_comment`) VALUES
(1, 'Gallery Foto Distro', 'gallery-foto-distro', 'matadorprestige, shopping, clothcl', 'MATADOR URBAN SACTARIAN & LUTHFI STYLE', '2013-03-25 09:50:49', 1, '<p>\n    Head office: Jl. Lembaga pemasyarakatan no. 5E. Pekanbaru. Riau.\n</p>\n\n<p>\n    Branch:&nbsp;<br />\n    Jl. Samarinda no 200A Pekanbaru (LUTHFI STYLE)<br />\n    Jl. Simpang jambu air no 01. Bukittinggi. Sumbar.&nbsp;<br />\n    Jl. Raya padang luar - bukittinggi no 01. Bukittinggi. Sumbar.&nbsp;<br />\n    Jl. Komplek pasar wisata,pasar atas bukittinggi. Lantai dasar no 11. Bukittinggi. Sumbar.\n</p>\n\n<p>\n    No telp: 0853 75379399\n</p>', 0),
(2, 'Gallery Video', 'gallery-video', NULL, NULL, '2015-06-22 16:56:57', 1, '<p>\r\n    <iframe align="top" frameborder="0" height="500" scrolling="no" src="http://localhost/matadorprestige/blog/manage_article/show_video/1" width="700">\r\n    </iframe>\r\n</p>', 0),
(3, 'Company Profile', 'Profile', 'company profile, Matadorprestige', 'company profile, Matadorprestige', '2015-06-22 16:57:56', 1, '<div class="row col-md-12" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 765px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n    Head office: Jl. Lembaga pemasyarakatan no. 5E. Pekanbaru. Riau.\n</div>\n\n<div class="row col-md-12" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 765px; font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n    <p style="box-sizing: border-box; margin: 0px 0px 10px;">\n        Branch:&nbsp;<br style="box-sizing: border-box;" />\n        Jl. Samarinda no 200A Pekanbaru (LUTHFI STYLE)<br style="box-sizing: border-box;" />\n        Jl. Simpang jambu air no 01. Bukittinggi. Sumbar.&nbsp;<br style="box-sizing: border-box;" />\n        Jl. Raya padang luar - bukittinggi no 01. Bukittinggi. Sumbar.&nbsp;<br style="box-sizing: border-box;" />\n        Jl. Komplek pasar wisata,pasar atas bukittinggi. Lantai dasar no 11. Bukittinggi. Sumbar.\n    </p>\n\n    <p style="box-sizing: border-box; margin: 0px 0px 10px;">\n        No telp: 0853 75379399\n    </p>\n</div>', 0),
(4, 'Gallery Foto Restaurant', 'Gallery-Foto-Restaurant', 'gallery foto, matadorprestige, restaurant matadorprestige', 'gallery foto, matadorprestige, restaurant matadorprestige', '2015-06-23 02:58:44', 1, '<p>\n    isi\n</p>', 0),
(5, 'Gallery Foto Travel', 'Gallery-Foto-Travel', 'gallery foto, matadorprestige, travel matadorprestige', 'gallery foto, matadorprestige, travel matadorprestige', '2015-06-23 03:00:57', 1, '<p>\n    isi\n</p>', 0),
(6, 'Gallery Foto Sorum', 'Gallery-Foto-Sorum', 'gallery foto, matadorprestige, sorum matadorprestige', 'gallery foto, matadorprestige, sorum matadorprestige', '2015-06-23 03:02:20', 1, '<p>\n    isi\n</p>', 0),
(7, 'Distro', 'distro', 'distro matadorprestige', 'distro matadorprestige', '2015-06-23 03:22:10', 1, '<p>\n    Isi artikel unit usaha distro\n</p>', 0),
(8, 'Sorum', 'sorum', 'sorum matadorprestige', 'sorum matadorprestige', '2015-06-23 03:22:41', 1, '<p>\n    Isi artikel sorum\n</p>', 1),
(9, 'Restaurant', 'restaurant', 'restaurant matadorprestige', 'restaurant matadorprestige', '2015-06-23 03:23:08', 1, '<p>\n    Isi artikel restaurant\n</p>', 1),
(10, 'Travel', 'travel', 'travel matadorprestige', 'travel matadorprestige', '2015-06-23 03:23:42', 1, '<p>\n    Isi artikel travel\n</p>', 1),
(11, 'Unit Usaha', 'unit-usaha', NULL, NULL, '2015-06-23 18:27:48', 1, '<ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(102, 102, 102); font-family: ''Open Sans'', ''Helvetica Neue'', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px;">\n    <li style="box-sizing: border-box;">\n        Distro\n    </li>\n    <li style="box-sizing: border-box;">\n        Sorum\n    </li>\n    <li style="box-sizing: border-box;">\n        Restaurant\n    </li>\n    <li style="box-sizing: border-box;">\n        Travel\n    </li>\n</ul>', 0),
(12, 'Gallery Foto', 'gallery-foto', NULL, NULL, '2015-06-23 18:29:53', 1, '<p>\n    Gallery Foto\n</p>', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_blog_category`
--

CREATE TABLE IF NOT EXISTS `cms_blog_category` (
  `category_id` int(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `cms_blog_category`
--

INSERT INTO `cms_blog_category` (`category_id`, `category_name`, `description`) VALUES
(1, 'Profile', NULL),
(2, 'Unit Usaha', NULL),
(3, 'Gallery Foto', NULL),
(4, 'Gallery Video', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_blog_category_article`
--

CREATE TABLE IF NOT EXISTS `cms_blog_category_article` (
  `category_article_id` int(20) NOT NULL AUTO_INCREMENT,
  `category_id` int(20) DEFAULT NULL,
  `article_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`category_article_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `cms_blog_category_article`
--

INSERT INTO `cms_blog_category_article` (`category_article_id`, `category_id`, `article_id`) VALUES
(3, 3, 4),
(4, 3, 5),
(5, 3, 6),
(6, 1, 3),
(7, 3, 1),
(8, 2, 7),
(9, 2, 10),
(10, 2, 11),
(11, 3, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_blog_comment`
--

CREATE TABLE IF NOT EXISTS `cms_blog_comment` (
  `comment_id` int(20) NOT NULL AUTO_INCREMENT,
  `article_id` int(20) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `author_user_id` int(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `content` text,
  `parent_comment_id` int(20) DEFAULT NULL,
  `read` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `cms_blog_comment`
--

INSERT INTO `cms_blog_comment` (`comment_id`, `article_id`, `date`, `author_user_id`, `name`, `email`, `website`, `content`, `parent_comment_id`, `read`) VALUES
(1, 1, '2013-03-25 09:53:16', 1, NULL, NULL, NULL, 'Great comment for great article', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_blog_photo`
--

CREATE TABLE IF NOT EXISTS `cms_blog_photo` (
  `photo_id` int(20) NOT NULL AUTO_INCREMENT,
  `article_id` int(10) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `cms_blog_photo`
--

INSERT INTO `cms_blog_photo` (`photo_id`, `article_id`, `url`) VALUES
(6, 1, '65e2f71552942_1011422548882957_168598122_n.jpg'),
(8, 1, '0454af11101893_1011422575549621_2129964971_n.jpg'),
(9, 1, '2cccab11129868_1011422635549615_609193152_n.jpg'),
(10, 1, '7751a811130707_1011422652216280_1788362345_n.jpg'),
(12, 1, 'bc760e11297724_1011422535549625_1415906993_n.jpg'),
(13, 1, '891ae111328838_1011422702216275_182527864_n.jpg'),
(14, 1, '96e89311329685_1011422495549629_938176525_n.jpg'),
(15, 1, 'df607211334316_1011422522216293_428954719_n.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_blog_video`
--

CREATE TABLE IF NOT EXISTS `cms_blog_video` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `cms_blog_video`
--

INSERT INTO `cms_blog_video` (`id`, `nama`, `link`) VALUES
(1, '8d3de-sos-inventory-overview.mp4', ''),
(2, '17edb-humood-alkhudher.flv', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `cms_ci_sessions` (
  `session_id` varchar(50) NOT NULL,
  `ip_address` varchar(16) NOT NULL,
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(20) NOT NULL,
  `user_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `cms_ci_sessions`
--

INSERT INTO `cms_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('8a1f087e5ab95feea76468ba68f78550', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 1454829126, 'a:8:{s:8:"cms_lang";s:7:"english";s:21:"__cms_navigation_name";s:10:"blog_index";s:26:"__blog_comment_secret_code";s:10:"oVgm5XHgjf";s:11:"cms_old_url";N;s:13:"cms_user_name";s:5:"admin";s:11:"cms_user_id";s:1:"1";s:18:"cms_user_real_name";s:13:"Heru Prambadi";s:14:"cms_user_email";s:22:"heruprambadi@gmail.com";}'),
('5f9646dd6a411b9257ded93f74072b2d', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 1454829427, 'a:1:{s:8:"cms_lang";s:7:"english";}'),
('51e01a82dffbe1eec38a3f5d240f346c', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:43.0) Gecko/20100101 Firefox/43.0', 1454841122, 'a:3:{s:8:"cms_lang";s:7:"english";s:26:"__blog_comment_secret_code";s:10:"rY3JpSJWxi";s:21:"__cms_navigation_name";s:10:"blog_index";}'),
('8566164bb9600e0faff19ed545b6da3e', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 1454841185, 'a:6:{s:8:"cms_lang";s:7:"english";s:21:"__cms_navigation_name";s:22:"main_module_management";s:13:"cms_user_name";s:5:"admin";s:11:"cms_user_id";s:1:"1";s:18:"cms_user_real_name";s:13:"Heru Prambadi";s:14:"cms_user_email";s:22:"heruprambadi@gmail.com";}'),
('78ea9c2843ee8bc11ddb3d71af0abf16', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', 1454827950, 'a:13:{s:8:"cms_lang";s:7:"english";s:21:"__cms_navigation_name";s:12:"main_setting";s:32:"cms_last_contact_code.jquery.com";d:1454826564.8538310527801513671875;s:37:"cms_last_contact_google-analytics.com";d:1454826564.9670751094818115234375;s:33:"cms_last_contact_bootstrapcdn.com";d:1454826565.381843090057373046875;s:26:"__blog_comment_secret_code";s:10:"cNlNxAUOs2";s:27:"cms_connect_code.jquery.com";b:1;s:32:"cms_connect_google-analytics.com";b:1;s:28:"cms_connect_bootstrapcdn.com";b:1;s:13:"cms_user_name";s:5:"admin";s:11:"cms_user_id";s:1:"1";s:18:"cms_user_real_name";s:13:"Heru Prambadi";s:14:"cms_user_email";s:22:"heruprambadi@gmail.com";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_cu_message`
--

CREATE TABLE IF NOT EXISTS `cms_cu_message` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `content` text,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_authorization`
--

CREATE TABLE IF NOT EXISTS `cms_main_authorization` (
  `authorization_id` int(20) NOT NULL AUTO_INCREMENT,
  `authorization_name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`authorization_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `cms_main_authorization`
--

INSERT INTO `cms_main_authorization` (`authorization_id`, `authorization_name`, `description`) VALUES
(1, 'Everyone', 'All visitor of the web are permitted (e.g:view blog content)'),
(2, 'Unauthenticated', 'Only non-member visitor, they who hasn''t log in yet (e.g:view member registration page)'),
(3, 'Authenticated', 'Only member (e.g:change password)'),
(4, 'Authorized', 'Only member with certain privilege (depend on group)'),
(5, 'Exclusive Authorized', 'Even Super Admin cannot access this if not allowed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_config`
--

CREATE TABLE IF NOT EXISTS `cms_main_config` (
  `config_id` int(20) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(50) NOT NULL,
  `value` text,
  `description` text,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data untuk tabel `cms_main_config`
--

INSERT INTO `cms_main_config` (`config_id`, `config_name`, `value`, `description`) VALUES
(1, 'site_name', 'Heruprambadi.com', 'Site title'),
(2, 'site_slogan', 'Website Profile', 'Site slogan'),
(3, 'site_logo', '{{ base_url }}assets/nocms/images/custom_logo/logo160.png', 'Site logo'),
(4, 'site_favicon', '{{ base_url }}assets/nocms/images/custom_favicon/logo64.png', 'Site favicon'),
(5, 'site_footer', 'Copyright © heruprambadi.com - 2015', 'Site footer'),
(6, 'site_theme', 'spacelab', 'Site theme'),
(7, 'site_layout', 'default', 'Site layout'),
(8, 'site_language', 'english', 'Site language'),
(9, 'max_menu_depth', '5', 'Depth of menu recursive'),
(10, 'cms_email_reply_address', 'no-reply@No-CMS.com', 'Email address'),
(11, 'cms_email_reply_name', 'admin of No-CMS', 'Email name'),
(12, 'cms_email_forgot_subject', 'Re-activate your account at No-CMS', 'Email subject sent when user forgot his/her password'),
(13, 'cms_email_forgot_message', 'Dear, {{ user_real_name }}<br />Click <a href="{{ site_url }}main/forgot/{{ activation_code }}">{{ site_url }}main/forgot/{{ activation_code }}</a> to reactivate your account', 'Email message sent when user forgot his/her password'),
(14, 'cms_email_signup_subject', 'Activate your account at No-CMS', 'Email subject sent to activate user'),
(15, 'cms_email_signup_message', 'Dear, {{ user_real_name }}<br />Click <a href="{{ site_url }}main/activate/{{ activation_code }}">{{ site_url }}main/activate/{{ activation_code }}</a> to activate your account', 'Email message sent to activate user'),
(16, 'cms_signup_activation', 'automatic', 'Send activation email to new member. Default : automatic, Alternatives : manual, by mail'),
(17, 'cms_email_useragent', 'Codeigniter', 'Default : CodeIgniter'),
(18, 'cms_email_protocol', 'smtp', 'Default : smtp, Alternatives : mail, sendmail, smtp'),
(19, 'cms_email_mailpath', '/usr/sbin/sendmail', 'Default : /usr/sbin/sendmail'),
(20, 'cms_email_smtp_host', 'ssl://smtp.googlemail.com', 'eg : ssl://smtp.googlemail.com'),
(21, 'cms_email_smtp_user', 'your_gmail_address@gmail.com', 'eg : your_gmail_address@gmail.com'),
(22, 'cms_email_smtp_pass', '', 'your password'),
(23, 'cms_email_smtp_port', '465', 'smtp port, default : 465'),
(24, 'cms_email_smtp_timeout', '30', 'default : 30'),
(25, 'cms_email_wordwrap', 'TRUE', 'Enable word-wrap. Default : true, Alternatives : true, false'),
(26, 'cms_email_wrapchars', '76', 'Character count to wrap at.'),
(27, 'cms_email_mailtype', 'html', 'Type of mail. If you send HTML email you must send it as a complete web page. Make sure you do not have any relative links or relative image paths otherwise they will not work. Default : html, Alternatives : html, text'),
(28, 'cms_email_charset', 'utf-8', 'Character set (utf-8, iso-8859-1, etc.).'),
(29, 'cms_email_validate', 'FALSE', 'Whether to validate the email address. Default: true, Alternatives : true, false'),
(30, 'cms_email_priority', '3', '1, 2, 3, 4, 5  Email Priority. 1 = highest. 5 = lowest. 3 = normal.'),
(31, 'cms_email_bcc_batch_mode', 'FALSE', 'Enable BCC Batch Mode. Default: false, Alternatives: true'),
(32, 'cms_email_bcc_batch_size', '200', 'Number of emails in each BCC batch.'),
(33, 'cms_google_analytic_property_id', '', 'Google analytics property ID (e.g: UA-30285787-1). Leave blank if you don''t want to use it.'),
(34, 'cms_add_subsite_on_register', 'FALSE', 'Automatically create subsite on register'),
(35, 'cms_subsite_use_subdomain', 'FALSE', 'Automatically use subdomain'),
(36, 'cms_subsite_home_content', '{{ widget_name:blog_content }}', 'Default subsite homepage content'),
(37, 'cms_subsite_modules', NULL, 'Comma Separated Format, Modules that is going to be installed by default for new Subsite'),
(38, 'cms_subsite_configs', NULL, 'JSON Format, Configuration value for new subsite'),
(39, 'cms_internet_connectivity', 'OFFLINE', 'Is the server connected to the internet?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_detail_language`
--

CREATE TABLE IF NOT EXISTS `cms_main_detail_language` (
  `detail_language_id` int(20) NOT NULL AUTO_INCREMENT,
  `id_language` int(20) NOT NULL,
  `key` text,
  `translation` text,
  PRIMARY KEY (`detail_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_group`
--

CREATE TABLE IF NOT EXISTS `cms_main_group` (
  `group_id` int(20) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `description` text,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `cms_main_group`
--

INSERT INTO `cms_main_group` (`group_id`, `group_name`, `description`) VALUES
(1, 'Super Admin', 'Every member of this group can do everything possible, but only programmer can turn the impossible into real :D'),
(2, 'Employee', 'Group Example');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_group_navigation`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_navigation` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(5) NOT NULL,
  `navigation_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `cms_main_group_navigation`
--

INSERT INTO `cms_main_group_navigation` (`id`, `group_id`, `navigation_id`) VALUES
(1, 1, 48),
(2, 1, 49);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_group_privilege`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_privilege` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(5) NOT NULL,
  `privilege_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_group_user`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `cms_main_group_user`
--

INSERT INTO `cms_main_group_user` (`id`, `group_id`, `user_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_group_widget`
--

CREATE TABLE IF NOT EXISTS `cms_main_group_widget` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(5) NOT NULL,
  `widget_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_language`
--

CREATE TABLE IF NOT EXISTS `cms_main_language` (
  `language_id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` text,
  `iso_code` text,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data untuk tabel `cms_main_language`
--

INSERT INTO `cms_main_language` (`language_id`, `name`, `code`, `iso_code`) VALUES
(1, 'Afrikaans', 'afrikaans', NULL),
(2, 'Arabic', 'arabic', NULL),
(3, 'Bengali', 'bengali', NULL),
(4, 'Bulgarian', 'bulgarian', NULL),
(5, 'Catalan', 'catalan', NULL),
(6, 'Chinese', 'chinese', NULL),
(7, 'Czech', 'czech', NULL),
(8, 'Danish', 'danish', NULL),
(9, 'Dutch', 'dutch', NULL),
(10, 'English', 'english', NULL),
(11, 'French', 'french', NULL),
(12, 'German', 'german', NULL),
(13, 'Greek', 'greek', NULL),
(14, 'Hindi', 'hindi', NULL),
(15, 'Hungarian', 'hungarian', NULL),
(16, 'Indonesian', 'indonesian', NULL),
(17, 'Italian', 'italian', NULL),
(18, 'Japanese', 'japanese', NULL),
(19, 'Korean', 'korean', NULL),
(20, 'Mongolian', 'mongolian', NULL),
(21, 'Norwegian', 'norwegian', NULL),
(22, 'Persian', 'persian', NULL),
(23, 'Polish', 'polish', NULL),
(24, 'Portuguese (Brazil)', 'pt-br.portuguese', NULL),
(25, 'Portuguese', 'pt-pt.portuguese', NULL),
(26, 'Romanian', 'romanian', NULL),
(27, 'Russian', 'russian', NULL),
(28, 'Slovak', 'slovak', NULL),
(29, 'Spanish', 'spanish', NULL),
(30, 'Thai', 'thai', NULL),
(31, 'Turkish', 'turkish', NULL),
(32, 'Ukrainian', 'ukrainian', NULL),
(33, 'Vietnamese', 'vietnamese', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_module`
--

CREATE TABLE IF NOT EXISTS `cms_main_module` (
  `module_id` int(20) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL,
  `module_path` varchar(100) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `cms_main_module`
--

INSERT INTO `cms_main_module` (`module_id`, `module_name`, `module_path`, `version`, `user_id`) VALUES
(1, 'gofrendi.noCMS.blog', 'blog', '0.0.2', 1),
(2, 'gofrendi.noCMS.contact_us', 'contact_us', '0.0.0', 1),
(3, 'gofrendi.noCMS.static_accessories', 'static_accessories', '0.0.0', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_module_dependency`
--

CREATE TABLE IF NOT EXISTS `cms_main_module_dependency` (
  `module_dependency_id` int(20) NOT NULL AUTO_INCREMENT,
  `module_id` int(5) NOT NULL,
  `parent_id` int(5) NOT NULL,
  PRIMARY KEY (`module_dependency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_navigation`
--

CREATE TABLE IF NOT EXISTS `cms_main_navigation` (
  `navigation_id` int(20) NOT NULL AUTO_INCREMENT,
  `navigation_name` varchar(100) NOT NULL,
  `parent_id` int(5) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `bootstrap_glyph` varchar(50) DEFAULT NULL,
  `page_title` varchar(50) DEFAULT NULL,
  `page_keyword` varchar(100) DEFAULT NULL,
  `description` text,
  `url` varchar(100) DEFAULT NULL,
  `authorization_id` int(5) NOT NULL DEFAULT '1',
  `active` int(5) NOT NULL DEFAULT '1',
  `index` int(5) NOT NULL DEFAULT '0',
  `is_static` int(5) NOT NULL DEFAULT '0',
  `static_content` text,
  `only_content` int(5) NOT NULL DEFAULT '0',
  `default_theme` varchar(50) DEFAULT NULL,
  `default_layout` varchar(50) DEFAULT NULL,
  `notif_url` varchar(100) DEFAULT NULL,
  `children` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`navigation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data untuk tabel `cms_main_navigation`
--

INSERT INTO `cms_main_navigation` (`navigation_id`, `navigation_name`, `parent_id`, `title`, `bootstrap_glyph`, `page_title`, `page_keyword`, `description`, `url`, `authorization_id`, `active`, `index`, `is_static`, `static_content`, `only_content`, `default_theme`, `default_layout`, `notif_url`, `children`) VALUES
(1, 'main_login', NULL, 'Login', 'glyphicon-home', 'Login', NULL, 'Visitor need to login for authentication', 'main/login', 2, 1, 4, 0, NULL, 0, NULL, 'default-one-column', NULL, NULL),
(2, 'main_forgot', NULL, 'Forgot Password', 'glyphicon-th-large', 'Forgot', NULL, 'Accidentally forgot password', 'main/forgot', 2, 1, 6, 0, NULL, 0, NULL, NULL, NULL, NULL),
(3, 'main_logout', NULL, 'Logout', 'glyphicon-th-large', 'Logout', NULL, 'Logout for deauthentication', 'main/logout', 3, 1, 5, 0, NULL, 0, NULL, NULL, NULL, NULL),
(4, 'main_management', NULL, 'CMS Management', 'glyphicon-th-large', 'CMS Management', NULL, 'The main management of the CMS. Including User, Group, Privilege and Navigation Management', 'main/management', 4, 1, 9, 0, NULL, 0, NULL, NULL, NULL, NULL),
(5, 'main_register', NULL, 'Register', 'glyphicon-th-large', 'Register', NULL, 'New User Registration', 'main/register', 2, 1, 7, 0, NULL, 0, NULL, NULL, NULL, NULL),
(6, 'main_change_profile', NULL, 'Change Profile', 'glyphicon-th-large', 'Change Profile', NULL, 'Change Current Profile', 'main/change_profile', 3, 1, 8, 0, NULL, 0, NULL, NULL, NULL, NULL),
(7, 'main_group_management', 4, 'Group Management', 'glyphicon-th-large', 'Group Management', NULL, 'Group Management', 'main/group', 4, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL),
(8, 'main_navigation_management', 4, 'Navigation Management', 'glyphicon-th-large', 'Navigation Management', NULL, 'Navigation management', 'main/navigation', 4, 1, 3, 0, NULL, 0, NULL, NULL, NULL, NULL),
(9, 'main_privilege_management', 4, 'Privilege Management', 'glyphicon-th-large', 'Privilege Management', NULL, 'Privilege Management', 'main/privilege', 4, 1, 2, 0, NULL, 0, NULL, NULL, NULL, NULL),
(10, 'main_user_management', 4, 'User Management', 'glyphicon-th-large', 'User Management', NULL, 'Manage User', 'main/user', 4, 1, 1, 0, NULL, 0, NULL, NULL, NULL, NULL),
(11, 'main_module_management', 4, 'Module Management', 'glyphicon-th-large', 'Module Management', NULL, 'Install Or Uninstall Thirdparty Module', 'main/module_management', 4, 1, 5, 0, NULL, 0, NULL, NULL, NULL, NULL),
(12, 'main_change_theme', 4, 'Change Theme', 'glyphicon-th-large', 'Change Theme', NULL, 'Change Theme', 'main/change_theme', 4, 1, 6, 0, NULL, 0, NULL, NULL, NULL, NULL),
(13, 'main_widget_management', 4, 'Widget Management', 'glyphicon-th-large', 'Widget Management', NULL, 'Manage Widgets', 'main/widget', 4, 1, 4, 0, NULL, 0, NULL, NULL, NULL, NULL),
(14, 'main_quicklink_management', 4, 'Quick Link Management', 'glyphicon-th-large', 'Quick Link Management', NULL, 'Manage Quick Link', 'main/quicklink', 4, 1, 7, 0, NULL, 0, NULL, NULL, NULL, NULL),
(15, 'main_language_management', 4, 'Language Management', 'glyphicon-th-large', 'Language Management', NULL, 'Manage Language', 'main/language_management', 4, 1, 8, 0, NULL, 0, NULL, NULL, NULL, NULL),
(16, 'main_config_management', 4, 'Configuration Management', 'glyphicon-th-large', 'Configuration Management', NULL, 'Manage Configuration Parameters', 'main/config', 4, 1, 9, 0, NULL, 0, NULL, NULL, NULL, NULL),
(17, 'main_setting', 4, 'Setting', 'glyphicon-th-large', 'CMS Setting', NULL, 'CMS Setting', 'main/setting', 4, 1, 10, 0, NULL, 0, NULL, NULL, NULL, NULL),
(18, 'main_index', NULL, 'Home', 'glyphicon-home', 'Home', NULL, 'Profile Company', 'main/index', 1, 1, 1, 1, '<style type="text/css">.thumbnail .caption p{\r\nfont-size:small;\r\n}\r\n.thumbnail{\r\nborder:none!important;\r\n}\r\n.page-header, .page-header h1{\r\nmargin-top:0px;\r\n}\r\n#__section-left-and-content hr, #__section-left-and-content .breadcrumb{\r\nmargin:0px;\r\n}\r\n#__section-left-and-content p.lead{\r\nmargin-top:20px;\r\n}\r\n</style>\r\n<div class="page-header">\r\n    <div class="layout-content" style="font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif; line-height: 20px;">\r\n        <p style="font-size: 14px; margin: 0px 0px 10px;">\r\n            <span style="font-size: 12px;">Dibuat dengan NoCMS - codeigniter 2.</span>\r\n        </p>\r\n        <p style="margin: 0px 0px 10px;">\r\n            <span style="font-size: 12px;"><strong>alamat login</strong> :&nbsp;</span>http://localhost/ci_webblog/main/login\r\n        </p>\r\n        <p style="margin: 0px 0px 10px;">\r\n            <strong>username &amp; password </strong>: admin\r\n        </p>\r\n        <p style="font-size: 14px; margin: 0px 0px 10px; box-sizing: border-box;">\r\n            <span style="font-size: 12px;">Butuh bantuan ? email ke heruprambadi@gmail.com</span>\r\n        </p>\r\n        <p style="font-size: 14px; margin: 0px 0px 10px; box-sizing: border-box;">\r\n            <span style="font-size: 12px;">Punya pertanyaan seputar program ini ? Tanyakan disini.<a href="http://facebook.com/groups/924598607617619/" style="color: rgb(66, 139, 202); text-decoration: none; box-sizing: border-box; background: transparent;" target="_blank">http://facebook.com/groups/924598607617619/</a></span>\r\n        </p>\r\n        <p style="font-size: 14px; margin: 0px 0px 10px; box-sizing: border-box;">\r\n            <span style="font-size: 12px;">Kunjungi web saya :&nbsp;<a href="http://heruprambadi.com/" style="color: rgb(66, 139, 202); text-decoration: none; box-sizing: border-box; background: transparent;" target="_blank">heruprambadi.com</a></span>\r\n        </p>\r\n    </div>\r\n</div><script type="text/javascript">$(window).load(function(){function __adjust_component(identifier){var max_height=0;$(identifier).each(function(){$(this).css("margin-bottom",0);if($(this).height()>max_height){max_height=$(this).height();}});$(identifier).each(function(){$(this).height(max_height);var margin_bottom=0;if($(this).height()<max_height){margin_bottom=max_height-$(this).height();}margin_bottom+=10;$(this).css("margin-bottom",margin_bottom);});}function adjust_thumbnail(){__adjust_component(".thumbnail img");__adjust_component(".thumbnail div.caption");}adjust_thumbnail();$(window).resize(function(){adjust_thumbnail();});});</script>', 0, NULL, 'slide', NULL, NULL),
(36, 'company_profile', NULL, 'Company Profile', 'glyphicon-briefcase', 'Company Profile', 'company profile matadorprestige', NULL, 'blog/index/Profile', 1, 1, 13, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(39, 'gallery_video', NULL, 'Gallery Video', NULL, NULL, NULL, NULL, NULL, 1, 1, 15, 1, '<div class="page-header" style="margin-top: 0px;">\n    <h1 style="margin-top: 0px;">\n        Gallery Video\n    </h1>\n</div>\n<div class="row col-sm-12 col-md-12 col-xs-12">\n    <ol style="line-height: 20.7999992370605px;">\n        <li class="row col-md-12">\n            Gallery Distro\n        </li>\n        <li style="line-height: 20.7999992370605px;">\n            Gallery Sorum\n        </li>\n        <li style="line-height: 20.7999992370605px;">\n            Gallery Restaurant\n        </li>\n        <li style="line-height: 20.7999992370605px;">\n            Gallery Travel\n        </li>\n    </ol>\n</div>', 0, NULL, 'default-two-column', NULL, NULL),
(38, 'gallery_foto_distro', 37, 'Gallery Foto Distro', NULL, 'Gallery Foto Distro', 'Gallery Foto Distro matadorprestige', NULL, 'blog/index/gallery-foto-distro', 1, 1, 15, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(40, 'unit_usaha', NULL, 'Unit Usaha', 'glyphicon-globe', 'Unit Usaha', 'Unit Usaha matadorprestige', NULL, 'blog/index/unit-usaha', 1, 1, 16, 0, '<div class="page-header" style="margin-top: 0px;">\n    <h1 style="margin-top: 0px;">\n        &nbsp;\n    </h1>\n</div>', 0, NULL, 'default-two-column', NULL, NULL),
(41, 'unit_usaha_distro', 40, 'Distro', NULL, 'Distro', 'distro matadorprestige', NULL, 'blog/index/distro', 1, 1, 17, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(42, 'unit_usaha_travel', 40, 'Travel', NULL, 'Travel', 'travel matadorprestige', NULL, 'blog/index/travel', 1, 1, 17, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(43, 'unit_usaha_restaurant', 40, 'Restaurant', NULL, 'Restaurant', 'restaurant matadorprestige', NULL, 'blog/index/restaurant', 1, 1, 17, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(44, 'unit_usaha_sorum', 40, 'Sorum', NULL, 'Sorum', 'sorum matadorprestige', NULL, 'blog/index/sorum', 1, 1, 17, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(45, 'gallery_foto_sorum', 37, 'Gallery Foto Sorum', NULL, 'Gallery Foto Sorum', NULL, NULL, 'blog/index/Gallery-Foto-Sorum', 1, 1, 17, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(46, 'gallery_foto_travel', 37, 'Gallery Foto Travel', NULL, 'Gallery Foto Travel', NULL, NULL, 'blog/index/Gallery-Foto-Travel', 1, 1, 17, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(47, 'gallery_foto_restaurant', 37, 'Gallery Foto Restaurant', NULL, 'Gallery Foto Restaurant', NULL, NULL, 'blog/index/Gallery-Foto-Restaurant', 1, 1, 18, 0, NULL, 0, NULL, 'default-two-column', NULL, NULL),
(19, 'main_language', NULL, 'Language', 'glyphicon-th-large', 'Language', NULL, 'Choose the language', 'main/language', 1, 1, 3, 0, NULL, 0, NULL, NULL, NULL, NULL),
(20, 'main_third_party_auth', NULL, 'Third Party Authentication', 'glyphicon-th-large', 'Third Party Authentication', NULL, 'Third Party Authentication', 'main/hauth/index', 1, 1, 2, 0, NULL, 0, NULL, NULL, NULL, NULL),
(21, 'blog_index', NULL, 'Blog', 'glyphicon-pencil', NULL, NULL, 'Blog', 'blog', 1, 1, 10, 0, NULL, 0, NULL, NULL, 'blog/notif/new_comment', NULL),
(22, 'blog_manage_article', 21, 'Manage Article', NULL, NULL, NULL, 'Add, edit, and delete blog articles', 'blog/manage_article', 4, 1, 1, 0, NULL, 0, NULL, NULL, 'blog/notif/new_comment', NULL),
(23, 'blog_manage_category', 21, 'Manage Category', NULL, NULL, NULL, 'Add, edit, and delete categories. Each article can has one or more categories', 'blog/manage_category', 4, 1, 2, 0, NULL, 0, NULL, NULL, NULL, NULL),
(24, 'contact_us_index', NULL, 'Contact Us', 'glyphicon-envelope', NULL, NULL, 'Contact Us Menu', 'contact_us/contact_us', 1, 1, 11, 0, NULL, 0, NULL, NULL, NULL, NULL),
(25, 'contact_us_manage_message', 24, 'Manage Message', NULL, NULL, NULL, NULL, 'contact_us/manage_message', 4, 1, 1, 0, NULL, 0, NULL, NULL, NULL, NULL),
(26, 'static_accessories_index', 4, 'Accessories Widgets', NULL, NULL, NULL, NULL, 'static_accessories/static_accessories', 4, 1, 11, 0, NULL, 0, NULL, NULL, NULL, NULL),
(27, 'static_accessories_manage_slide', 26, 'Slideshow', NULL, NULL, NULL, NULL, 'static_accessories/manage_slide', 4, 1, 1, 0, NULL, 0, NULL, NULL, NULL, NULL),
(28, 'static_accessories_manage_tab_content', 26, 'Tabbed Content', NULL, NULL, NULL, NULL, 'static_accessories/manage_tab_content', 4, 1, 2, 0, NULL, 0, NULL, NULL, NULL, NULL),
(29, 'static_accessories_manage_visitor_counter', 26, 'Visitor', NULL, NULL, NULL, NULL, 'static_accessories/manage_visitor_counter', 4, 1, 3, 0, NULL, 0, NULL, NULL, NULL, NULL),
(30, 'static_accessories_setting', 26, 'Setting', NULL, NULL, NULL, NULL, 'static_accessories/install/setting', 4, 1, 4, 0, NULL, 0, NULL, NULL, NULL, NULL),
(37, 'gallery_foto', NULL, 'Gallery Foto', 'glyphicon-picture', 'Gallery Foto', 'Gallery foto matadorprestige', NULL, 'blog/index/gallery-foto', 1, 1, 14, 0, '<div class="page-header" style="margin-top: 0px;">\n    <h1 style="margin-top: 0px;">\n        &nbsp;\n    </h1>\n</div>', 1, NULL, 'default-two-column', NULL, NULL),
(48, 'blog_manage_video', 21, 'Manage Video', NULL, 'Manage Video', NULL, NULL, 'blog/manage_article/video', 4, 1, 17, 0, NULL, 0, NULL, 'default-one-column', NULL, NULL),
(49, 'show_video', NULL, 'Show Video', NULL, 'Show Video', NULL, NULL, 'blog/manage_article/show_video', 4, 1, 17, 0, NULL, 0, NULL, 'minimal', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_privilege`
--

CREATE TABLE IF NOT EXISTS `cms_main_privilege` (
  `privilege_id` int(20) NOT NULL AUTO_INCREMENT,
  `privilege_name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text,
  `authorization_id` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`privilege_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `cms_main_privilege`
--

INSERT INTO `cms_main_privilege` (`privilege_id`, `privilege_name`, `title`, `description`, `authorization_id`) VALUES
(1, 'cms_install_module', 'Install Module', 'Install Module is a very critical privilege, it allow authorized user to Install a module to the CMS.<br />By Installing module, the database structure can be changed. There might be some additional navigation and privileges added.<br /><br />You''d be better to give this authorization only authenticated and authorized user. (I suggest to make only admin have such a privilege)\n&nbsp;', 4),
(2, 'cms_manage_access', 'Manage Access', 'Manage access\n&nbsp;', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_quicklink`
--

CREATE TABLE IF NOT EXISTS `cms_main_quicklink` (
  `quicklink_id` int(20) NOT NULL AUTO_INCREMENT,
  `navigation_id` int(5) NOT NULL,
  `index` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`quicklink_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `cms_main_quicklink`
--

INSERT INTO `cms_main_quicklink` (`quicklink_id`, `navigation_id`, `index`) VALUES
(1, 18, 1),
(8, 40, 2),
(7, 36, 4),
(10, 37, 3),
(5, 21, 5),
(6, 24, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_user`
--

CREATE TABLE IF NOT EXISTS `cms_main_user` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `activation_code` varchar(50) DEFAULT NULL,
  `real_name` varchar(100) DEFAULT NULL,
  `active` int(5) NOT NULL DEFAULT '1',
  `auth_OpenID` varchar(100) DEFAULT NULL,
  `auth_Facebook` varchar(100) DEFAULT NULL,
  `auth_Twitter` varchar(100) DEFAULT NULL,
  `auth_Yahoo` varchar(100) DEFAULT NULL,
  `auth_LinkedIn` varchar(100) DEFAULT NULL,
  `auth_MySpace` varchar(100) DEFAULT NULL,
  `auth_Foursquare` varchar(100) DEFAULT NULL,
  `auth_AOL` varchar(100) DEFAULT NULL,
  `auth_Live` varchar(100) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `login` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `cms_main_user`
--

INSERT INTO `cms_main_user` (`user_id`, `user_name`, `email`, `password`, `activation_code`, `real_name`, `active`, `auth_OpenID`, `auth_Facebook`, `auth_Twitter`, `auth_Yahoo`, `auth_LinkedIn`, `auth_MySpace`, `auth_Foursquare`, `auth_AOL`, `auth_Live`, `language`, `theme`, `last_active`, `login`) VALUES
(1, 'admin', 'heruprambadi@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1b1bef3f03e98ca50cf3a3dd93c592c4', 'Heru Prambadi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1454841346.9111', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_main_widget`
--

CREATE TABLE IF NOT EXISTS `cms_main_widget` (
  `widget_id` int(20) NOT NULL AUTO_INCREMENT,
  `widget_name` varchar(100) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `url` varchar(100) DEFAULT NULL,
  `authorization_id` int(5) NOT NULL DEFAULT '1',
  `active` int(5) NOT NULL DEFAULT '1',
  `index` int(5) NOT NULL DEFAULT '0',
  `is_static` int(5) NOT NULL DEFAULT '0',
  `static_content` text,
  `slug` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`widget_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data untuk tabel `cms_main_widget`
--

INSERT INTO `cms_main_widget` (`widget_id`, `widget_name`, `title`, `description`, `url`, `authorization_id`, `active`, `index`, `is_static`, `static_content`, `slug`) VALUES
(1, 'section_custom_style', '', 'Custom CSS', '', 1, 1, 1, 1, '', NULL),
(2, 'section_custom_script', '', 'Custom Javascript', '', 1, 1, 1, 1, '', NULL),
(3, 'section_top_fix', 'Top Fix Section', '', '', 1, 1, 2, 1, '{{ widget_name:quicklink }}', NULL),
(4, 'section_banner', 'Banner Section', '', '', 1, 1, 3, 1, '<div class="jumbotron hidden-xs hidden-sm" style="margin-top:10px;">\r\n  <img src ="{{ site_logo }}" style="max-width:20%; float:left; margin-right:10px; margin-bottom:10px;" />\r\n  <h1>{{ site_name }}</h1>\r\n  <p>{{ site_slogan }}</p>\r\n</div>', NULL),
(5, 'section_left', 'Left Section', '', '', 1, 1, 4, 1, '', NULL),
(6, 'section_right', 'Right Section', '', '', 1, 1, 5, 1, '{{ widget_slug:sidebar }}<hr />{{ widget_slug:advertisement }}', NULL),
(7, 'section_bottom', 'Bottom Section', '', '', 1, 1, 6, 1, '{{ site_footer }}', NULL),
(8, 'left_navigation', 'Left Navigation', '', 'main/widget_left_nav', 1, 1, 7, 0, NULL, NULL),
(9, 'top_navigation', 'Top Navigation', '', 'main/widget_top_nav', 1, 1, 8, 0, NULL, NULL),
(10, 'quicklink', 'Quicklinks', '', 'main/widget_quicklink', 1, 1, 9, 0, NULL, NULL),
(11, 'login', 'Login', 'Visitor need to login for authentication', 'main/widget_login', 2, 0, 10, 0, '<form action="{{ site_url }}main/login" method="post" accept-charset="utf-8"><label>Identity</label><br><input type="text" name="identity" value=""><br><label>Password</label><br><input type="password" name="password" value=""><br><input type="submit" name="login" value="Log In"></form>', 'sidebar, user_widget'),
(12, 'logout', 'User Info', 'Logout', 'main/widget_logout', 3, 1, 11, 1, '{{ language:Welcome }} {{ user_name }}<br />\n<a href="{{ site_url }}main/logout">{{ language:Logout }}</a><br />', 'sidebar, user_widget'),
(13, 'social_plugin', 'Share This Page !!', 'Addthis', 'main/widget_social_plugin', 1, 1, 12, 1, '<div class="addthis_sharing_toolbox"></div>\n<!-- Go to www.addthis.com/dashboard to customize your tools -->\n<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4ee44922521f8e39"></script>', 'sidebar'),
(14, 'google_search', 'Search', 'Search from google', '', 1, 0, 13, 1, '<!-- Google Custom Search Element -->\n<div id="cse" style="width: 100%;">Loading</div>\n<script src="http://www.google.com/jsapi" type="text/javascript"></script>\n<script type="text/javascript">// <![CDATA[\n    google.load(''search'', ''1'');\n    google.setOnLoadCallback(function(){var cse = new google.search.CustomSearchControl();cse.draw(''cse'');}, true);\n// ]]></script>', 'sidebar'),
(15, 'google_translate', 'Translate !!', '<p>The famous google translate</p>', '', 1, 0, 14, 1, '<!-- Google Translate Element -->\n<div id="google_translate_element" style="display:block"></div>\n<script>\nfunction googleTranslateElementInit() {\n  new google.translate.TranslateElement({pageLanguage: "af"}, "google_translate_element");\n};\n</script>\n<script src="http://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>\n', 'sidebar'),
(16, 'calendar', 'Calendar', 'Indonesian Calendar', '', 1, 0, 15, 1, '<!-------Do not change below this line------->\n<div align="center" height="200px">\n    <iframe align="center" src="http://www.calendarlabs.com/calendars/web-content/calendar.php?cid=1001&uid=162232623&c=22&l=en&cbg=C3D9FF&cfg=000000&hfg=000000&hfg1=000000&ct=1&cb=1&cbc=2275FF&cf=verdana&cp=bottom&sw=0&hp=t&ib=0&ibc=&i=" width="170" height="155" marginwidth=0 marginheight=0 frameborder=no scrolling=no allowtransparency=''true''>\n    Loading...\n    </iframe>\n    <div align="center" style="width:140px;font-size:10px;color:#666;">\n        Powered by <a  href="http://www.calendarlabs.com/" target="_blank" style="font-size:10px;text-decoration:none;color:#666;">Calendar</a> Labs\n    </div>\n</div>\n\n<!-------Do not change above this line------->', 'sidebar'),
(17, 'google_map', 'Map', 'google map', '', 1, 0, 16, 1, '<!-- Google Maps Element Code -->\n<iframe frameborder=0 marginwidth=0 marginheight=0 border=0 style="border:0;margin:0;width:150px;height:250px;" src="http://www.google.com/uds/modules/elements/mapselement/iframe.html?maptype=roadmap&element=true" scrolling="no" allowtransparency="true"></iframe>', 'sidebar'),
(18, 'donate_nocms', 'Donate No-CMS', 'No-CMS Donation', NULL, 1, 0, 17, 1, '<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">\n<input type="hidden" name="cmd" value="_s-xclick">\n<input type="hidden" name="hosted_button_id" value="YDES6RTA9QJQL">\n<input type="image" src="{{ base_url }}assets/nocms/images/donation.png" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" width="165px" height="auto" style="width:165px!important;" />\n<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">\n</form>', 'advertisement'),
(19, 'navigation_right_partial', 'top navigation right partial', 'Right Partial of Top Navigation Bar. Use this when you want to add something like facebook login form', NULL, 1, 1, 18, 1, '', NULL),
(20, 'online_user', 'Who''s online', '', 'main/widget_online_user', 1, 1, 19, 0, NULL, NULL),
(21, 'fb_comment', 'Facebook Comments', '', '', 1, 1, 20, 1, '<div id="fb-root"></div>\n<script>(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=278375612355057&version=v2.0";\n  fjs.parentNode.insertBefore(js, fjs);\n}(document, ''script'', ''facebook-jssdk''));</script>\n<div class="fb-comments" data-href="{{ site_url }}" data-numposts="5" data-colorscheme="light" width="100%"></div>', NULL),
(22, 'blog_newest_article', 'Newest Articles', NULL, 'blog/blog_widget/newest', 1, 1, 17, 0, NULL, 'sidebar'),
(23, 'blog_article_category', 'Article Categories', NULL, 'blog/blog_widget/category', 1, 1, 18, 0, NULL, 'sidebar'),
(24, 'blog_content', 'Blog Content', NULL, 'blog', 1, 1, 21, 0, NULL, NULL),
(25, 'blog_archive', 'Archive', NULL, 'blog/blog_widget/archive', 1, 1, 19, 0, NULL, 'sidebar'),
(26, 'static_accessories_slideshow', 'Slide Show', NULL, 'static_accessories/static_accessories_widget/slide', 1, 1, 22, 0, NULL, NULL),
(27, 'static_accessories_tab', 'Tabbed Content', NULL, 'static_accessories/static_accessories_widget/tab', 1, 1, 23, 0, NULL, NULL),
(28, 'static_accessories_visitor_count', 'Visitor Count', NULL, 'static_accessories/static_accessories_widget/visitor_counter', 1, 1, 24, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_static_slide`
--

CREATE TABLE IF NOT EXISTS `cms_static_slide` (
  `slide_id` int(20) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `cms_static_slide`
--

INSERT INTO `cms_static_slide` (`slide_id`, `image_url`, `content`) VALUES
(1, '50ac3-sl1.png', '<h1>\n    Slide 1\n</h1>\n\n<p>\n    Masukkan text anda\n</p>'),
(2, '709bd-sl2.png', '<h1>\n    Slide 2\n</h1>\n\n<p style="line-height: 20.7999992370605px;">\n    Masukkan text anda\n</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_static_tab_content`
--

CREATE TABLE IF NOT EXISTS `cms_static_tab_content` (
  `tab_id` int(20) NOT NULL AUTO_INCREMENT,
  `caption` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`tab_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cms_static_visitor_counter`
--

CREATE TABLE IF NOT EXISTS `cms_static_visitor_counter` (
  `counter_id` int(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `agent` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

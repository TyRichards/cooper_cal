# WordPress MySQL database migration
#
# Generated: Thursday 4. December 2014 19:28 UTC
# Hostname: localhost
# Database: `wp_coopercal`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-10-06 20:52:22', '2014-10-06 20:52:22', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_gf_addon_feed`
#

DROP TABLE IF EXISTS `wp_gf_addon_feed`;


#
# Table structure of table `wp_gf_addon_feed`
#

CREATE TABLE `wp_gf_addon_feed` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `meta` longtext,
  `addon_slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addon_form` (`addon_slug`,`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gf_addon_feed`
#
INSERT INTO `wp_gf_addon_feed` ( `id`, `form_id`, `is_active`, `meta`, `addon_slug`) VALUES
(1, 5, 1, '{"feedName":"Cooper Calisthenics 8-Week Workout Plan","paypalEmail":"cooperwryan@gmail.com","mode":"production","transactionType":"product","paymentAmount":"form_total","billingInformation_firstName":"","billingInformation_lastName":"","billingInformation_email":"","billingInformation_address":"","billingInformation_address2":"","billingInformation_city":"","billingInformation_state":"","billingInformation_zip":"","billingInformation_country":"","pageStyle":"","continueText":"Continue to Cooper Calisthenics","cancelUrl":"http:\\/\\/dev.coopercalisthenics.com\\/plan","disableShipping":"0","disableNote":"1","delayNotification":"1","selectedNotifications":["547fe60b2341e"],"feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"type":"product"}', 'gravityformspaypal') ;

#
# End of data contents of table `wp_gf_addon_feed`
# --------------------------------------------------------



#
# Delete any existing table `wp_gf_addon_payment_callback`
#

DROP TABLE IF EXISTS `wp_gf_addon_payment_callback`;


#
# Table structure of table `wp_gf_addon_payment_callback`
#

CREATE TABLE `wp_gf_addon_payment_callback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `addon_slug` varchar(250) NOT NULL,
  `callback_id` varchar(250) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addon_slug_callback_id` (`addon_slug`(50),`callback_id`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gf_addon_payment_callback`
#

#
# End of data contents of table `wp_gf_addon_payment_callback`
# --------------------------------------------------------



#
# Delete any existing table `wp_gf_addon_payment_transaction`
#

DROP TABLE IF EXISTS `wp_gf_addon_payment_transaction`;


#
# Table structure of table `wp_gf_addon_payment_transaction`
#

CREATE TABLE `wp_gf_addon_payment_transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `transaction_type` varchar(30) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `amount` decimal(19,2) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `transaction_type` (`transaction_type`),
  KEY `type_lead` (`lead_id`,`transaction_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_gf_addon_payment_transaction`
#

#
# End of data contents of table `wp_gf_addon_payment_transaction`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.coopercalisthenics.com', 'yes'),
(2, 'blogname', 'Cooper Calisthenics', 'yes'),
(3, 'blogdescription', 'Strength Training', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'me@tyrichards.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'comment_moderation', '0', 'yes'),
(26, 'moderation_notify', '1', 'yes'),
(27, 'permalink_structure', '/%postname%/', 'yes'),
(28, 'gzipcompression', '0', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:8:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";i:2;s:29:"gravityformspaypal/paypal.php";i:3;s:29:"image-widget/image-widget.php";i:4;s:19:"mailgun/mailgun.php";i:5;s:37:"simple-instagram/simple-instagram.php";i:6;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:7;s:43:"yakadanda-instagram/yakadanda-instagram.php";}', 'yes'),
(33, 'home', 'http://dev.coopercalisthenics.com', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '-7', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'Paradox', 'yes'),
(42, 'stylesheet', 'Paradox', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:34:"instagram-image-gallery/plugin.php";a:2:{i:0;s:15:"StatigramWidget";i:1;s:9:"uninstall";}}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '82', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '27916', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-default";a:0:{}s:14:"footer-credits";a:1:{i:0;s:10:"nav_menu-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1417721160;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1417726348;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1417726354;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1417726470;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(99, 'auth_key', 'c?-u|^OUCE6ss(e5EUAoUkey4`#uh)eM$AB}:4mz?R>8Ph3u{6@kV5Sx<U8j5~%J', 'yes'),
(100, 'auth_salt', '5Ec(LECTC:LC+ztr,kcE{>JETHWH`={6o;LIT~Z`9QGJKE#:ubL:,vg GtXR.:%P', 'yes'),
(101, 'logged_in_key', 'b+2vn;1IZ){TBty8egRQ>9IN;{WJ7e1w*0,6o:`s5bYN<)1Ba=OYVF[6Vm8-&[,@', 'yes'),
(102, 'logged_in_salt', 'odj/_(4pnJ<XYo|0X: e>970YA(g.1hjx));!#|1I?-?b(Cq>a(8=T[4A=I^=?/{', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(103, 'nonce_key', '8:KyJuD:~bbCalI@FZESh?!LCy;YTr&`6NhB0Rnv/6r|SzvlT?zcR->yA?P;|oUR', 'yes'),
(104, 'nonce_salt', '|x,rLRf{w.]RL@P@0ypB2dD7(N0E)~:`4V-r=:*EE^ikXB~=M4hx>D,!|!xtjQBd', 'yes'),
(131, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1412628843;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(132, 'current_theme', 'Paradox', 'yes'),
(133, 'theme_mods_Paradox', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(135, 'category_children', 'a:0:{}', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(167, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:"nav_menu";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(179, 'WPLANG', '', 'yes'),
(180, 'db_upgraded', '', 'yes'),
(183, 'can_compress_scripts', '1', 'yes'),
(185, 'mailgun', 'a:10:{s:6:"useAPI";s:1:"1";s:6:"domain";s:19:"mg.paradoxsites.com";s:6:"apiKey";s:36:"key-7ol99x3jpeppy1846t-ri0dcc9xmy-j7";s:8:"username";s:0:"";s:8:"password";s:0:"";s:6:"secure";s:1:"1";s:12:"track-clicks";s:3:"yes";s:11:"track-opens";s:1:"1";s:11:"campaign-id";s:10:"cooper-cal";s:3:"tag";s:26:"dev.coopercalisthenics.com";}', 'yes'),
(186, '_image_widget_version', '4.1', 'yes'),
(187, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(188, 'rg_form_version', '1.8.19', 'yes'),
(193, 'rg_gforms_key', '099c03f26e64e93459a2cf51dc992f60', 'yes'),
(194, 'rg_gforms_disable_css', '0', 'yes'),
(195, 'rg_gforms_enable_html5', '0', 'yes'),
(196, 'gform_enable_noconflict', '0', 'yes'),
(197, 'rg_gforms_enable_akismet', '', 'yes'),
(198, 'rg_gforms_captcha_public_key', '', 'yes'),
(199, 'rg_gforms_captcha_private_key', '', 'yes'),
(200, 'rg_gforms_currency', 'USD', 'yes'),
(201, 'rg_gforms_message', '<!--GFM-->', 'yes'),
(304, 'alpine-photo-tile-for-instagram-settings', 'a:45:{s:16:"general_lightbox";s:15:"alpine-fancybox";s:24:"general_lightbox_no_load";s:0:"";s:19:"general_load_header";s:0:"";s:12:"widget_title";s:0:"";s:17:"instagram_user_id";s:0:"";s:16:"instagram_source";s:4:"user";s:13:"instagram_tag";s:0:"";s:27:"instagram_image_link_option";s:9:"instagram";s:19:"custom_lightbox_rel";s:0:"";s:15:"custom_link_url";s:0:"";s:18:"photo_feed_shuffle";s:0:"";s:22:"instagram_display_link";s:0:"";s:27:"instagram_display_link_text";s:9:"Instagram";s:12:"style_option";s:7:"cascade";s:19:"style_photo_per_row";s:1:"4";s:19:"style_column_number";s:1:"2";s:25:"style_gallery_ratio_width";s:3:"800";s:26:"style_gallery_ratio_height";s:3:"600";s:20:"instagram_photo_size";s:1:"M";s:22:"instagram_photo_number";s:1:"4";s:17:"photo_feed_offset";s:1:"0";s:12:"style_shadow";s:0:"";s:12:"style_border";s:0:"";s:15:"style_highlight";s:0:"";s:19:"style_curve_corners";s:0:"";s:16:"widget_alignment";s:6:"center";s:16:"widget_max_width";s:3:"100";s:26:"widget_disable_credit_link";s:0:"";s:27:"general_disable_right_click";s:0:"";s:14:"general_loader";s:0:"";s:23:"general_highlight_color";s:7:"#64a2d8";s:20:"general_hide_message";s:0:"";s:18:"general_images_ssl";s:0:"";s:23:"general_lightbox_params";s:0:"";s:19:"general_block_users";s:0:"";s:19:"hidden_display_link";s:0:"";s:23:"hidden_widget_alignment";b:1;s:26:"hidden_lightbox_custom_rel";s:0:"";s:24:"hidden_photo_feed_offset";s:0:"";s:25:"hidden_photo_feed_shuffle";s:0:"";s:13:"cache_disable";s:0:"";s:10:"cache_time";s:1:"4";s:9:"client_id";s:32:"6d47cbda309f4a86b56ece59d4b16db8";s:13:"client_secret";s:32:"0c39771755fc43e2928e1309273a7707";s:5:"users";a:1:{s:19:"cooper_calisthenics";a:9:{s:12:"access_token";s:51:"1313618215.6d47cbd.1e9a86be89b94e7f9947fc33d31b3bf5";s:8:"username";s:19:"cooper_calisthenics";s:7:"picture";s:89:"http://photos-b.ak.instagram.com/hphotos-ak-xaf1/10598172_734250116641273_415640324_a.jpg";s:8:"fullname";s:12:"Ryan Cooper ";s:7:"user_id";s:10:"1313618215";s:9:"client_id";s:32:"6d47cbda309f4a86b56ece59d4b16db8";s:13:"client_secret";s:32:"0c39771755fc43e2928e1309273a7707";s:4:"name";s:19:"cooper_calisthenics";s:5:"title";s:19:"cooper_calisthenics";}}}', 'yes'),
(306, 'yinstagram_settings', 'a:8:{s:9:"client_id";s:32:"08439820e54d4a3388f4b10647361dea";s:13:"client_secret";s:32:"fdd3f016efdf4bb9ab6c64afbd482b4c";s:19:"display_your_images";s:6:"recent";s:37:"option_display_the_following_hashtags";s:1:"0";s:30:"display_the_following_hashtags";s:0:"";s:4:"size";s:19:"standard_resolution";s:16:"number_of_images";s:1:"1";s:19:"username_of_user_id";s:13:"iamtyrichards";}', 'yes'),
(307, 'yinstagram_display_options', 'a:10:{s:6:"scroll";s:8:"infinite";s:6:"height";s:3:"300";s:10:"frame_rate";s:2:"24";s:5:"speed";s:1:"1";s:9:"direction";s:8:"forwards";s:8:"lightbox";s:8:"thickbox";s:5:"theme";s:1:"1";s:6:"effect";s:7:"elastic";s:20:"display_social_links";s:1:"0";s:5:"order";s:7:"default";}', 'yes'),
(308, 'yinstagram_access_token', '', 'yes'),
(323, 'enjoyinstagram_client_id', '6d47cbda309f4a86b56ece59d4b16db8', 'yes'),
(324, 'enjoyinstagram_client_secret', '0c39771755fc43e2928e1309273a7707', 'yes'),
(325, 'enjoyinstagram_client_code', '', 'yes'),
(326, 'enjoyinstagram_user_instagram', '', 'yes'),
(327, 'enjoyinstagram_user_id', '', 'yes'),
(328, 'enjoyinstagram_user_username', '', 'yes'),
(329, 'enjoyinstagram_user_profile_picture', '', 'yes'),
(330, 'enjoyinstagram_user_fullname', '', 'yes'),
(331, 'enjoyinstagram_user_website', '', 'yes'),
(332, 'enjoyinstagram_user_bio', '', 'yes'),
(333, 'enjoyinstagram_access_token', '', 'yes'),
(334, 'enjoyinstagram_carousel_items_number', '4', 'yes'),
(335, 'enjoyinstagram_carousel_navigation', 'false', 'yes'),
(336, 'enjoyinstagram_grid_rows', '2', 'yes'),
(337, 'enjoyinstagram_grid_cols', '5', 'yes'),
(338, 'enjoyinstagram_hashtag', '', 'yes'),
(339, 'enjoyinstagram_user_or_hashtag', 'user', 'yes'),
(341, 'si_options', 'a:2:{s:16:"instagram_app_id";s:32:"6d47cbda309f4a86b56ece59d4b16db8";s:20:"instagram_app_secret";s:32:"0c39771755fc43e2928e1309273a7707";}', 'yes'),
(344, 'si_oauth', '', 'yes'),
(349, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:17:"me@tyrichards.com";s:7:"version";s:5:"4.0.1";s:9:"timestamp";i:1417632741;}', 'yes'),
(431, 'gravityformsaddon_gravityformspaypal_settings', 'a:1:{s:20:"gf_paypal_configured";s:1:"1";}', 'yes'),
(432, 'gravityformsaddon_gravityformspaypal_version', '2.2', 'yes'),
(433, 'gravityformsaddon_feed-base_version', '0.11', 'yes'),
(434, 'gravityformsaddon_payment_addons', 'a:1:{i:0;s:18:"gravityformspaypal";}', 'yes'),
(435, 'gravityformsaddon_payment_version', '1.2', 'yes'),
(436, 'gf_paypal_has_feeds', '1', 'yes'),
(481, 'wpmdb_error_log', '********************************************\n******  Log date: 2014/10/07 17:07:43 ******\n********************************************\n\nWPMDB Error: The connection succeeded but the remote site is configured to reject push connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n\nAttempted to connect to: http://coopercal.paradoxcreative.com/wp-admin/admin-ajax.php\n\nArray\n(\n    [error] => 1\n    [message] => The connection succeeded but the remote site is configured to reject push connections. You can change this in the "settings" tab on the remote site. (#122) <a href="#" class="try-again js-action-link">Try again?</a>\n)\n\n\n', 'no'),
(482, 'wpmdb_schema_version', '1', 'yes'),
(483, 'wpmdb_settings', 'a:8:{s:11:"max_request";i:1048576;s:3:"key";s:32:"qFdaZZGnnR07Iay/2txkxRzSrOXMCj4Y";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:2:{i:0;a:19:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:25:"compatibility_older_mysql";s:1:"1";s:6:"action";s:4:"push";s:15:"connection_info";s:63:"http://coopercalisthenics.com\r\nGs1W827UMo6Ih3vYqUWytUuHgbS30z0u";s:11:"replace_old";a:2:{i:1;s:28:"//dev.coopercalisthenics.com";i:2;s:55:"/Users/tyrichards/Sites/Cooper Calisthenics/public_html";}s:11:"replace_new";a:2:{i:1;s:24:"//coopercalisthenics.com";i:2;s:31:"/var/www/cooper_cal/public_html";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"0";s:18:"create_new_profile";s:22:"coopercalisthenics.com";s:4:"name";s:18:"PUSH: Local > Live";}i:1;a:19:{s:13:"save_computer";s:1:"1";s:9:"gzip_file";s:1:"1";s:13:"replace_guids";s:1:"1";s:12:"exclude_spam";s:1:"0";s:19:"keep_active_plugins";s:1:"0";s:13:"create_backup";s:1:"1";s:18:"exclude_post_types";s:1:"0";s:25:"compatibility_older_mysql";s:1:"1";s:6:"action";s:4:"pull";s:15:"connection_info";s:63:"http://coopercalisthenics.com\r\nGs1W827UMo6Ih3vYqUWytUuHgbS30z0u";s:11:"replace_old";a:2:{i:1;s:24:"//coopercalisthenics.com";i:2;s:31:"/var/www/cooper_cal/public_html";}s:11:"replace_new";a:2:{i:1;s:28:"//dev.coopercalisthenics.com";i:2;s:55:"/Users/tyrichards/Sites/Cooper Calisthenics/public_html";}s:20:"table_migrate_option";s:24:"migrate_only_with_prefix";s:18:"exclude_transients";s:1:"1";s:13:"backup_option";s:23:"backup_only_with_prefix";s:22:"save_migration_profile";s:1:"1";s:29:"save_migration_profile_option";s:1:"1";s:18:"create_new_profile";s:22:"coopercalisthenics.com";s:4:"name";s:18:"PULL: Live > Local";}}s:7:"licence";s:36:"4451cb15-9ae0-4ba0-a513-46ce44235bc9";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}}', 'yes'),
(484, 'rewrite_rules', 'a:69:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=82&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(485, '_transient_random_seed', 'd940969b6339d6743d5f0e903108380b', 'yes'),
(488, '_transient_timeout_gform_update_info', '1417756431', 'no'),
(489, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:8:{s:4:"date";s:29:"Thu, 04 Dec 2014 05:13:50 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:20:"PHP/5.5.9-1ubuntu4.5";s:4:"vary";s:15:"Accept-Encoding";s:16:"content-encoding";s:4:"gzip";s:14:"content-length";s:4:"1100";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:5228:"{"is_valid_key":"1","version":"1.8.19","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.8.19.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=8W9Vz%2FwLkOuiAc%2FCE1mTfJ7fnIQ%3D","expiration_time":1431147600,"offerings":{"gravityforms":{"is_available":true,"version":"1.8.19","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/releases\\/gravityforms_1.8.19.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=8W9Vz%2FwLkOuiAc%2FCE1mTfJ7fnIQ%3D"},"gravityformsauthorizenet":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=yvDRxlOsvZh01M0PYPhW8z%2BS98Q%3D"},"gravityformsaweber":{"is_available":true,"version":"2.1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/aweber\\/gravityformsaweber_2.1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=y3mBPEVjSvzslItnNbRIDRh1aYU%3D"},"gravityformscampaignmonitor":{"is_available":true,"version":"3.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/campaignmonitor\\/gravityformscampaignmonitor_3.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=7CCJCQSQcmWEkxVpDBzH8C%2FSDSU%3D"},"gravityformscoupons":{"is_available":true,"version":"1.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/coupons\\/gravityformscoupons_1.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=4axdlymGGPX0WLxE9T3IdgURJ5E%3D"},"gravityformsfreshbooks":{"is_available":true,"version":"1.5","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/freshbooks\\/gravityformsfreshbooks_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=QGZIfb9zdjPv6RAPwpG2DoxXP%2BQ%3D"},"gravityformslogging":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/authorizenet\\/gravityformsauthorizenet_1.3.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=E1kkuDgIDqJkBSocXIVZWHtLe2U%3D"},"gravityformsmailchimp":{"is_available":true,"version":"3.1","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/mailchimp\\/gravityformsmailchimp_3.1.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=xjacIDwr2mWzLKJhfIQHxfYXJGM%3D"},"gravityformspaypal":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypal\\/gravityformspaypal_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=3BKWdAWM1rLfsZ6Q6Wk5I3ygPo4%3D"},"gravityformspaypalpaymentspro":{"is_available":true,"version":"1.6","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpaymentspro\\/gravityformspaypalpaymentspro_1.6.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=2X09TSRuIVmC19fmboKXAFX2NAA%3D"},"gravityformspaypalpro":{"is_available":true,"version":"1.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/paypalpro\\/gravityformspaypalpro_1.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=XcYZwNWoSD5%2FTmOoDg2KgmVCjZ0%3D"},"gravityformspicatcha":{"is_available":false,"version":"2.0"},"gravityformspolls":{"is_available":true,"version":"2.2","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/polls\\/gravityformspolls_2.2.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=c2ZtkBduOij4MzvLY%2Brz9DDL6Po%3D"},"gravityformsquiz":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/quiz\\/gravityformsquiz_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=5XjcNZzU5fIPrB1qUEToKPrCN%2FQ%3D"},"gravityformssignature":{"is_available":true,"version":"2.3","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/signature\\/gravityformssignature_2.3.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=NVV2vtAv15xoCpdI75OSUduW10Q%3D"},"gravityformsstripe":{"is_available":true,"version":"1.5","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/stripe\\/gravityformsstripe_1.5.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=LA3nJZs4rA%2Fctu09uaTwBV0UPkA%3D"},"gravityformssurvey":{"is_available":true,"version":"2.4","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/survey\\/gravityformssurvey_2.4.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=paBdZAONkNg%2BJkFYqVaf7myrDpY%3D"},"gravityformstwilio":{"is_available":true,"version":"1.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/twilio\\/gravityformstwilio_1.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=q1fZgR86PncPeSa40PH5l4tH2lA%3D"},"gravityformsuserregistration":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=zVJ6bFbh3MElz%2BWtaQxWJX3Dqf8%3D"},"gravityformszapier":{"is_available":true,"version":"2.0","url":"http:\\/\\/s3.amazonaws.com\\/gravityforms\\/addons\\/userregistration\\/gravityformsuserregistration_2.0.zip?AWSAccessKeyId=1603BBK66770VCSCJSG2&Expires=1417842831&Signature=zVJ6bFbh3MElz%2BWtaQxWJX3Dqf8%3D"}},"is_active":"1"}";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(490, '_transient_timeout_GFCache_a76fe3a19ec1dd2d25ef7f38c45dd6ae', '1417670217', 'no'),
(491, '_transient_GFCache_a76fe3a19ec1dd2d25ef7f38c45dd6ae', '1', 'no'),
(492, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.0.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.0.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.0.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.0.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.0.1";s:7:"version";s:5:"4.0.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1417713949;s:15:"version_checked";s:5:"4.0.1";s:12:"translations";a:0:{}}', 'yes'),
(493, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1417713951;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:66:"alpine-photo-tile-for-instagram/alpine-phototile-for-instagram.php";O:8:"stdClass":6:{s:2:"id";s:5:"37433";s:4:"slug";s:31:"alpine-photo-tile-for-instagram";s:6:"plugin";s:66:"alpine-photo-tile-for-instagram/alpine-phototile-for-instagram.php";s:11:"new_version";s:7:"1.2.7.3";s:3:"url";s:62:"https://wordpress.org/plugins/alpine-photo-tile-for-instagram/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/alpine-photo-tile-for-instagram.zip";}s:83:"enjoy-instagram-instagram-responsive-images-gallery-and-carousel/enjoyinstagram.php";O:8:"stdClass":7:{s:2:"id";s:5:"48862";s:4:"slug";s:64:"enjoy-instagram-instagram-responsive-images-gallery-and-carousel";s:6:"plugin";s:83:"enjoy-instagram-instagram-responsive-images-gallery-and-carousel/enjoyinstagram.php";s:11:"new_version";s:5:"1.5.1";s:14:"upgrade_notice";s:8:"Bugs Fix";s:3:"url";s:95:"https://wordpress.org/plugins/enjoy-instagram-instagram-responsive-images-gallery-and-carousel/";s:7:"package";s:113:"https://downloads.wordpress.org/plugin/enjoy-instagram-instagram-responsive-images-gallery-and-carousel.1.5.2.zip";}s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";O:8:"stdClass":6:{s:2:"id";s:5:"47574";s:4:"slug";s:40:"gravity-forms-placeholder-support-add-on";s:6:"plugin";s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";s:11:"new_version";s:5:"1.1.0";s:3:"url";s:71:"https://wordpress.org/plugins/gravity-forms-placeholder-support-add-on/";s:7:"package";s:83:"https://downloads.wordpress.org/plugin/gravity-forms-placeholder-support-add-on.zip";}s:29:"image-widget/image-widget.php";O:8:"stdClass":6:{s:2:"id";s:4:"4078";s:4:"slug";s:12:"image-widget";s:6:"plugin";s:29:"image-widget/image-widget.php";s:11:"new_version";s:3:"4.1";s:3:"url";s:43:"https://wordpress.org/plugins/image-widget/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/image-widget.4.1.zip";}s:19:"mailgun/mailgun.php";O:8:"stdClass":6:{s:2:"id";s:5:"36344";s:4:"slug";s:7:"mailgun";s:6:"plugin";s:19:"mailgun/mailgun.php";s:11:"new_version";s:5:"1.3.1";s:3:"url";s:38:"https://wordpress.org/plugins/mailgun/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/mailgun.1.3.1.zip";}s:37:"simple-instagram/simple-instagram.php";O:8:"stdClass":7:{s:2:"id";s:5:"46704";s:4:"slug";s:16:"simple-instagram";s:6:"plugin";s:37:"simple-instagram/simple-instagram.php";s:11:"new_version";s:3:"1.2";s:14:"upgrade_notice";s:51:"Fixes: Allows secure sites to load images via https";s:3:"url";s:47:"https://wordpress.org/plugins/simple-instagram/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/simple-instagram.1.2.zip";}s:43:"yakadanda-instagram/yakadanda-instagram.php";O:8:"stdClass":7:{s:2:"id";s:5:"37232";s:4:"slug";s:19:"yakadanda-instagram";s:6:"plugin";s:43:"yakadanda-instagram/yakadanda-instagram.php";s:11:"new_version";s:5:"0.1.8";s:14:"upgrade_notice";s:1:"-";s:3:"url";s:50:"https://wordpress.org/plugins/yakadanda-instagram/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/yakadanda-instagram.zip";}}}', 'yes'),
(496, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1417713953;s:7:"checked";a:1:{s:7:"Paradox";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(499, '_transient_timeout_GFCache_4c23c6ddbb386db678396da8cb372302', '1417670258', 'no'),
(500, '_transient_GFCache_4c23c6ddbb386db678396da8cb372302', '1', 'no'),
(503, '_transient_timeout_GFCache_1f891005d3aa0748a385f6dc2be574d3', '1417670381', 'no'),
(504, '_transient_GFCache_1f891005d3aa0748a385f6dc2be574d3', '1', 'no'),
(512, '_site_transient_timeout_wpmdb_upgrade_data', '1417757085', 'yes'),
(513, '_site_transient_wpmdb_upgrade_data', 'a:3:{s:17:"wp-migrate-db-pro";a:2:{s:7:"version";s:5:"1.4.4";s:6:"tested";s:5:"4.0.1";}s:29:"wp-migrate-db-pro-media-files";a:2:{s:7:"version";s:3:"1.2";s:6:"tested";s:5:"4.0.1";}s:21:"wp-migrate-db-pro-cli";a:2:{s:7:"version";s:5:"1.0.2";s:6:"tested";s:5:"4.0.1";}}', 'yes'),
(517, '_site_transient_timeout_theme_roots', '1417715748', 'yes'),
(518, '_site_transient_theme_roots', 'a:1:{s:7:"Paradox";s:7:"/themes";}', 'yes'),
(519, '_transient_timeout_GFCache_e72f64f6c4dcc70fd190e497d97b8f03', '1417720363', 'no'),
(520, '_transient_GFCache_e72f64f6c4dcc70fd190e497d97b8f03', '1', 'no'),
(521, '_transient_doing_cron', '1417721296.4000649452209472656250', 'yes'),
(522, '_site_transient_timeout_wpmdb_licence_response', '1417764504', 'yes'),
(523, '_site_transient_wpmdb_licence_response', '{"message":"<style type=\\"text\\/css\\" media=\\"screen\\">body .wpmdb .help-tab .support .support-content .intro{margin-bottom:20px}body .wpmdb .help-tab .support .support-content .submission-success p,body .wpmdb .help-tab .support .support-content .submission-error p{padding:2px;margin:0.5em 0;font-size:13px;line-height:1.5}body .wpmdb .help-tab .support .support-content .wpmdb-support-form{width:475px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field{margin-bottom:5px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form input[type=text],body .wpmdb .help-tab .support .support-content .wpmdb-support-form textarea{width:100%}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.from label{float:left;line-height:28px;display:block;font-weight:bold}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.from select{float:right;width:400px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.from .note{clear:both;padding-top:5px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.email-message textarea{height:170px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.remote-diagnostic-content{padding-left:20px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.remote-diagnostic-content ol{margin:0 0 5px 20px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.remote-diagnostic-content li{font-size:12px;color:#666;margin-bottom:0}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .field.remote-diagnostic-content textarea{height:80px}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .note{font-size:12px;color:#666}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .submit-form{overflow:hidden;padding:10px 0}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .button{float:left}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .button:active,body .wpmdb .help-tab .support .support-content .wpmdb-support-form .button:focus{outline:none}body .wpmdb .help-tab .support .support-content .wpmdb-support-form .ajax-spinner{float:left;margin-left:5px;margin-top:3px}\\n<\\/style><p class=\\"intro\\">\\n\\tYou have an active <strong>Developer<\\/strong> license. You will get front-of-the-line email support service when submitting the form below.<\\/p>\\n\\n<div class=\\"updated submission-success\\" style=\\"display: none;\\">\\n\\t<p><strong>Success!<\\/strong> &mdash; Thanks for submitting your support request. We\'ll be in touch soon.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error api-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; <\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error xhr-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; There was a problem submitting your request:<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error email-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please select your email address.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error subject-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please enter a subject.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error message-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please enter a message.<\\/p>\\n<\\/div>\\n\\n<div class=\\"error submission-error remote-diagnostic-content-error\\" style=\\"display: none;\\">\\n\\t<p><strong>Error!<\\/strong> &mdash; Please paste in the Diagnostic Info &amp; Error Log from your <strong>remote site<\\/strong>.<\\/p>\\n<\\/div>\\n\\n<form class=\\"wpmdb-support-form\\" target=\\"_blank\\" method=\\"post\\" action=\\"https:\\/\\/deliciousbrains.com\\/?wc-api=delicious-brains&request=submit_support_request&licence_key=4451cb15-9ae0-4ba0-a513-46ce44235bc9\\">\\n\\n\\t<div class=\\"field from\\">\\n\\t\\t<label>From:<\\/label>\\n\\t\\t<select name=\\"email\\">\\n\\t\\t<option value=\\"\\">&mdash; Select your email address &mdash;<\\/option>\\n\\t\\t<option value=\\"ty@paradoxsites.com\\">ty@paradoxsites.com<\\/option>\\t\\t<\\/select>\\n\\n\\t\\t<p class=\\"note\\">\\n\\t\\t\\tReplies will be sent to this email address. Update your name &amp; email in <a href=\\"https:\\/\\/deliciousbrains.com\\/my-account\\/\\">My Account<\\/a>.\\t\\t<\\/p>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field subject\\">\\n\\t\\t<input type=\\"text\\" name=\\"subject\\" placeholder=\\"Subject\\">\\n\\t<\\/div>\\n\\n\\t<div class=\\"field email-message\\">\\n\\t\\t<textarea name=\\"message\\" placeholder=\\"Message\\"><\\/textarea>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field checkbox local-diagnostic\\">\\n\\t\\t<label>\\n\\t\\t\\t<input type=\\"checkbox\\" name=\\"local-diagnostic\\" value=\\"1\\" checked>\\n\\t\\t\\tInclude <strong>this site&#8217;s<\\/strong> Diagnostic Info &amp; Error Log (below)\\t\\t<\\/label>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field checkbox remote-diagnostic\\">\\n\\t\\t<label>\\n\\t\\t\\t<input type=\\"checkbox\\" name=\\"remote-diagnostic\\" value=\\"1\\" checked>\\n\\t\\t\\tInclude the <strong>remote site<\\/strong> Diagnostic Info &amp; Error Log\\t\\t<\\/label>\\n\\t<\\/div>\\n\\n\\t<div class=\\"field remote-diagnostic-content\\">\\n\\t\\t<ol>\\n\\t\\t\\t<li>Go to the Help tab of the remote site<\\/li>\\n\\t\\t\\t<li>Copy the Diagnostic Info &amp; Error Log<\\/li>\\n\\t\\t\\t<li>Paste it below<\\/li>\\n\\t\\t<\\/ol>\\n\\t\\t<textarea name=\\"remote-diagnostic-content\\" placeholder=\\"Remote site&#8217;s Diagnostic Info &amp; Error Log\\"><\\/textarea>\\n\\t<\\/div>\\n\\n\\t<div class=\\"submit-form\\">\\n\\t\\t<button type=\\"submit\\" class=\\"button\\">Send Email<\\/button>\\n\\t<\\/div>\\n\\n\\t<p class=\\"note trouble\\">\\n\\t\\tHaving trouble submitting the form? Email your support request to <a href=\\"mailto:priority-wpmdb@deliciousbrains.com\\">priority-wpmdb@deliciousbrains.com<\\/a> instead.\\t<\\/p>\\n\\n<\\/form><script>!function(a){var b=a(\\".wpmdb-support-form\\"),c=a(\\".submit-form\\",b);is_submitting=!1;var d=a(\\".remote-diagnostic input\\",b),e=a(\\".remote-diagnostic-content\\",b);d.on(\\"click\\",function(){d.prop(\\"checked\\")?e.show():e.hide()});var f=ajaxurl.replace(\\"\\/admin-ajax.php\\",\\"\\/images\\/wpspin_light\\");window.devicePixelRatio>=2&&(f+=\\"-2x\\"),f+=\\".gif\\",b.submit(function(d){if(d.preventDefault(),!is_submitting){is_submitting=!0,a(\\".button\\",b).blur();var e=a(\\".ajax-spinner\\",c);e[0]?e.show():(e=a(\'<img src=\\"\'+f+\'\\" alt=\\"\\" class=\\"ajax-spinner general-spinner\\" \\/>\'),c.append(e)),a(\\".submission-error\\").hide();var g=[\\"email\\",\\"subject\\",\\"message\\"],h={},i=!1;a.each(b.serializeArray(),function(b,c){h[c.name]=c.value,a.inArray(c.name,g)>-1&&\\"\\"===c.value&&(a(\\".\\"+c.name+\\"-error\\").fadeIn(),i=!0)});var j=a(\\"input[name=remote-diagnostic]\\",b).is(\\":checked\\");if(j&&\\"\\"===h[\\"remote-diagnostic-content\\"]&&(a(\\".remote-diagnostic-content-error\\").fadeIn(),i=!0),i)return e.hide(),void(is_submitting=!1);j||(h[\\"remote-diagnostic-content\\"]=\\"\\"),a(\\"input[name=local-diagnostic]\\",b).is(\\":checked\\")&&(h[\\"local-diagnostic-content\\"]=a(\\".debug-log-textarea\\").val()),a.ajax({url:b.prop(\\"action\\"),type:\\"POST\\",dataType:\\"JSON\\",cache:!1,data:h,error:function(b,c,d){var f=a(\\".xhr-error\\");a(\\"p\\",f).append(\\" \\"+d+\\" (\\"+c+\\")\\"),f.show(),e.hide(),is_submitting=!1},success:function(c){if(\\"undefined\\"!=typeof c.errors){var d=a(\\".api-error\\");return a.each(c.errors,function(b,c){return a(\\"p\\",d).append(c),!1}),d.show(),e.hide(),void(is_submitting=!1)}a(\\".submission-success\\").show(),b.hide(),e.hide(),is_submitting=!1}})}})}(jQuery);<\\/script>","addons_available":"1","addon_list":{"wp-migrate-db-pro-media-files":{"name":"Media Files","desc":"Determines the Media Library files that have been added or updated on the remote site and downloads them. Includes an option to remove local files that are no longer found on the remote site. <a style=\\"color:#fff;text-decoration:underline;\\" href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/documentation\\/#media-files-addon\\" style=\\"\\">More Details &rarr;<\\/a>","version":"1.2","beta_version":"","tested":"4.0.1"},"wp-migrate-db-pro-cli":{"name":"CLI","desc":"Use WP-CLI to run migrations from the command line: <code>wp wpmdb migrate <span class=\\"bracket\\">&lt;<\\/span><span class=\\"var\\">profile<\\/span><span class=\\"bracket\\">&gt;<\\/span><\\/code> or run them from your own code with the <code>wpmdb_migrate<span class=\\"bracket\\">(<\\/span> <span class=\\"var\\">$profile<\\/span> <span class=\\"bracket\\">)<\\/span><\\/code> function. <a href=\\"https:\\/\\/deliciousbrains.com\\/wp-migrate-db-pro\\/documentation\\/#cli-addon\\" style=\\"\\">More Details &rarr;<\\/a>","version":"1.0.2","beta_version":"","required":"1.4b1","tested":"4.0.1"}}}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1413917247:1'),
(4, 4, '_wp_page_template', 'page-home.php'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1417633308:1'),
(7, 6, '_wp_page_template', 'default'),
(8, 8, '_edit_last', '1'),
(9, 8, '_wp_page_template', 'default'),
(10, 8, '_edit_lock', '1417671683:1'),
(11, 10, '_edit_last', '1'),
(12, 10, '_wp_page_template', 'page-fullwidth.php'),
(13, 10, '_edit_lock', '1413918847:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_wp_page_template', 'page-single-column.php'),
(16, 12, '_edit_lock', '1413917368:1'),
(17, 14, '_menu_item_type', 'post_type'),
(18, 14, '_menu_item_menu_item_parent', '0'),
(19, 14, '_menu_item_object_id', '4'),
(20, 14, '_menu_item_object', 'page'),
(21, 14, '_menu_item_target', ''),
(22, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 14, '_menu_item_xfn', ''),
(24, 14, '_menu_item_url', ''),
(25, 14, '_menu_item_orphaned', '1412699457'),
(26, 15, '_menu_item_type', 'post_type'),
(27, 15, '_menu_item_menu_item_parent', '0'),
(28, 15, '_menu_item_object_id', '6'),
(29, 15, '_menu_item_object', 'page'),
(30, 15, '_menu_item_target', ''),
(31, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 15, '_menu_item_xfn', ''),
(33, 15, '_menu_item_url', ''),
(34, 15, '_menu_item_orphaned', '1412699457'),
(35, 16, '_menu_item_type', 'post_type'),
(36, 16, '_menu_item_menu_item_parent', '0'),
(37, 16, '_menu_item_object_id', '8'),
(38, 16, '_menu_item_object', 'page'),
(39, 16, '_menu_item_target', ''),
(40, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 16, '_menu_item_xfn', ''),
(42, 16, '_menu_item_url', ''),
(43, 16, '_menu_item_orphaned', '1412699457'),
(44, 17, '_menu_item_type', 'post_type'),
(45, 17, '_menu_item_menu_item_parent', '0'),
(46, 17, '_menu_item_object_id', '10'),
(47, 17, '_menu_item_object', 'page'),
(48, 17, '_menu_item_target', ''),
(49, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 17, '_menu_item_xfn', ''),
(51, 17, '_menu_item_url', ''),
(52, 17, '_menu_item_orphaned', '1412699457'),
(53, 18, '_menu_item_type', 'post_type'),
(54, 18, '_menu_item_menu_item_parent', '0'),
(55, 18, '_menu_item_object_id', '4'),
(56, 18, '_menu_item_object', 'page'),
(57, 18, '_menu_item_target', ''),
(58, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 18, '_menu_item_xfn', ''),
(60, 18, '_menu_item_url', ''),
(61, 18, '_menu_item_orphaned', '1412699457'),
(62, 19, '_menu_item_type', 'post_type'),
(63, 19, '_menu_item_menu_item_parent', '0'),
(64, 19, '_menu_item_object_id', '12'),
(65, 19, '_menu_item_object', 'page'),
(66, 19, '_menu_item_target', ''),
(67, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(68, 19, '_menu_item_xfn', ''),
(69, 19, '_menu_item_url', ''),
(70, 19, '_menu_item_orphaned', '1412699457'),
(80, 21, '_menu_item_type', 'post_type'),
(81, 21, '_menu_item_menu_item_parent', '0'),
(82, 21, '_menu_item_object_id', '10'),
(83, 21, '_menu_item_object', 'page'),
(84, 21, '_menu_item_target', ''),
(85, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(86, 21, '_menu_item_xfn', ''),
(87, 21, '_menu_item_url', ''),
(89, 22, '_menu_item_type', 'post_type'),
(90, 22, '_menu_item_menu_item_parent', '0'),
(91, 22, '_menu_item_object_id', '8'),
(92, 22, '_menu_item_object', 'page'),
(93, 22, '_menu_item_target', ''),
(94, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(95, 22, '_menu_item_xfn', ''),
(96, 22, '_menu_item_url', ''),
(98, 23, '_menu_item_type', 'post_type'),
(99, 23, '_menu_item_menu_item_parent', '0'),
(100, 23, '_menu_item_object_id', '6'),
(101, 23, '_menu_item_object', 'page'),
(102, 23, '_menu_item_target', ''),
(103, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(104, 23, '_menu_item_xfn', ''),
(105, 23, '_menu_item_url', ''),
(107, 24, '_menu_item_type', 'post_type'),
(108, 24, '_menu_item_menu_item_parent', '0'),
(109, 24, '_menu_item_object_id', '4'),
(110, 24, '_menu_item_object', 'page'),
(111, 24, '_menu_item_target', ''),
(112, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(113, 24, '_menu_item_xfn', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(114, 24, '_menu_item_url', ''),
(115, 25, '_edit_last', '1'),
(116, 25, '_wp_page_template', 'default'),
(117, 25, '_edit_lock', '1413916232:1'),
(118, 27, '_menu_item_type', 'post_type'),
(119, 27, '_menu_item_menu_item_parent', '0'),
(120, 27, '_menu_item_object_id', '25'),
(121, 27, '_menu_item_object', 'page'),
(122, 27, '_menu_item_target', ''),
(123, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 27, '_menu_item_xfn', ''),
(125, 27, '_menu_item_url', ''),
(127, 28, '_menu_item_type', 'post_type'),
(128, 28, '_menu_item_menu_item_parent', '0'),
(129, 28, '_menu_item_object_id', '25'),
(130, 28, '_menu_item_object', 'page'),
(131, 28, '_menu_item_target', ''),
(132, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 28, '_menu_item_xfn', ''),
(134, 28, '_menu_item_url', ''),
(136, 29, '_menu_item_type', 'post_type'),
(137, 29, '_menu_item_menu_item_parent', '0'),
(138, 29, '_menu_item_object_id', '12'),
(139, 29, '_menu_item_object', 'page'),
(140, 29, '_menu_item_target', ''),
(141, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 29, '_menu_item_xfn', ''),
(143, 29, '_menu_item_url', ''),
(145, 30, '_menu_item_type', 'post_type'),
(146, 30, '_menu_item_menu_item_parent', '0'),
(147, 30, '_menu_item_object_id', '10'),
(148, 30, '_menu_item_object', 'page'),
(149, 30, '_menu_item_target', ''),
(150, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 30, '_menu_item_xfn', ''),
(152, 30, '_menu_item_url', ''),
(154, 31, '_menu_item_type', 'post_type'),
(155, 31, '_menu_item_menu_item_parent', '0'),
(156, 31, '_menu_item_object_id', '8'),
(157, 31, '_menu_item_object', 'page'),
(158, 31, '_menu_item_target', ''),
(159, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 31, '_menu_item_xfn', ''),
(161, 31, '_menu_item_url', ''),
(163, 32, '_menu_item_type', 'post_type'),
(164, 32, '_menu_item_menu_item_parent', '0'),
(165, 32, '_menu_item_object_id', '6'),
(166, 32, '_menu_item_object', 'page'),
(167, 32, '_menu_item_target', ''),
(168, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 32, '_menu_item_xfn', ''),
(170, 32, '_menu_item_url', ''),
(172, 33, '_menu_item_type', 'post_type'),
(173, 33, '_menu_item_menu_item_parent', '0'),
(174, 33, '_menu_item_object_id', '4'),
(175, 33, '_menu_item_object', 'page'),
(176, 33, '_menu_item_target', ''),
(177, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(178, 33, '_menu_item_xfn', ''),
(179, 33, '_menu_item_url', ''),
(184, 62, '_wp_attached_file', '2014/10/jpeg.jpg'),
(185, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:640;s:4:"file";s:16:"2014/10/jpeg.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"jpeg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"jpeg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:13:"sidebar-thumb";a:4:{s:4:"file";s:16:"jpeg-500x500.jpg";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(186, 62, '_wp_attachment_image_alt', 'Cooper Calisthenics'),
(187, 6, '_thumbnail_id', '62'),
(188, 63, '_wp_attached_file', '2014/10/xBookPlaceholder.jpg.pagespeed.ic_.njFZiaZBAE.jpg'),
(189, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:285;s:6:"height";i:367;s:4:"file";s:57:"2014/10/xBookPlaceholder.jpg.pagespeed.ic_.njFZiaZBAE.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:57:"xBookPlaceholder.jpg.pagespeed.ic_.njFZiaZBAE-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:57:"xBookPlaceholder.jpg.pagespeed.ic_.njFZiaZBAE-232x300.jpg";s:5:"width";i:232;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(191, 65, '_wp_attached_file', '2014/10/book-placeholder.jpg'),
(192, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:644;s:4:"file";s:28:"2014/10/book-placeholder.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"book-placeholder-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"book-placeholder-232x300.jpg";s:5:"width";i:232;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(193, 65, '_wp_attachment_image_alt', 'Cooper Calisthenics Book'),
(195, 67, '_wp_attached_file', '2014/10/Screen-Shot-2014-10-21-at-1.25.24-PM.png'),
(196, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:612;s:6:"height";i:612;s:4:"file";s:48:"2014/10/Screen-Shot-2014-10-21-at-1.25.24-PM.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"Screen-Shot-2014-10-21-at-1.25.24-PM-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"Screen-Shot-2014-10-21-at-1.25.24-PM-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:13:"sidebar-thumb";a:4:{s:4:"file";s:48:"Screen-Shot-2014-10-21-at-1.25.24-PM-500x500.png";s:5:"width";i:500;s:6:"height";i:500;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(197, 67, '_wp_attachment_image_alt', 'Cooper Calisthenics'),
(198, 25, '_thumbnail_id', '67'),
(199, 68, '_edit_last', '1'),
(200, 68, '_edit_lock', '1413917341:1'),
(201, 68, '_wp_page_template', 'default'),
(202, 70, '_wp_attached_file', '2014/10/Screen-Shot-2014-10-21-at-1.23.48-PM.png'),
(203, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:613;s:6:"height";i:612;s:4:"file";s:48:"2014/10/Screen-Shot-2014-10-21-at-1.23.48-PM.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"Screen-Shot-2014-10-21-at-1.23.48-PM-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:48:"Screen-Shot-2014-10-21-at-1.23.48-PM-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:13:"sidebar-thumb";a:4:{s:4:"file";s:48:"Screen-Shot-2014-10-21-at-1.23.48-PM-500x499.png";s:5:"width";i:500;s:6:"height";i:499;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(204, 70, '_wp_attachment_image_alt', 'Cooper Calisthenics'),
(205, 68, '_thumbnail_id', '70'),
(206, 82, '_edit_last', '1'),
(207, 82, '_edit_lock', '1417653788:1'),
(208, 82, '_wp_page_template', 'page-launch.php'),
(209, 96, '_wp_attached_file', '2014/10/8wk-plan.jpg'),
(210, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:362;s:4:"file";s:20:"2014/10/8wk-plan.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"8wk-plan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"8wk-plan-300x217.jpg";s:5:"width";i:300;s:6:"height";i:217;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(211, 96, '_wp_attachment_image_alt', 'Cooper Calisthenics 8 Week Workout Plan'),
(212, 8, '_thumbnail_id', '96') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-10-06 20:52:22', '2014-10-06 20:52:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-10-06 20:52:22', '2014-10-06 20:52:22', '', 0, 'http://dev.coopercalisthenics.com/?p=1', 0, 'post', '', 1),
(4, 1, '2014-10-06 20:54:37', '2014-10-06 20:54:37', '<h2 style="text-align: center;"><i class="fa fa-left fa-instagram"></i> From Instagram</h2>', 'Home', '', 'private', 'closed', 'open', '', 'home', '', '', '2014-12-03 17:50:33', '2014-12-04 00:50:33', '', 0, 'http://dev.coopercalisthenics.com/?page_id=4', 0, 'page', '', 0),
(5, 1, '2014-10-06 20:54:37', '2014-10-06 20:54:37', '', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-06 20:54:37', '2014-10-06 20:54:37', '', 4, 'http://dev.coopercalisthenics.com/?p=5', 0, 'revision', '', 0),
(6, 1, '2014-10-06 20:55:20', '2014-10-06 20:55:20', '<h1>Ryan Cooper</h1>\r\n<p class="subhead">Personal Trainer</p>\r\n<p>My name is Ryan Cooper and I fell in love with calisthenics and functional training over 2 years ago. I started training in Houston, TX and now reside in Austin, TX as a personal trainer. I offer online coaching and have experience working with individuals around the world including Greece, Poland, Germany and Colombia.</p>\r\n<p>I live to help others and am willing to work with anyone at any fitness level. I am training to become a world class calisthenics athlete. I want to show you that when you set your mind on a goal, hard work and effort allow you to arrive.</p>\r\n<p><strong>— Ryan Cooper</strong></p>', 'About', '', 'private', 'closed', 'open', '', 'about', '', '', '2014-12-03 17:50:33', '2014-12-04 00:50:33', '', 0, 'http://dev.coopercalisthenics.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-10-06 20:55:20', '2014-10-06 20:55:20', '', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-10-06 20:55:20', '2014-10-06 20:55:20', '', 6, 'http://dev.coopercalisthenics.com/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-10-06 20:55:56', '2014-10-06 20:55:56', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.\r\n\r\n<h3><del>$50.00</del> $17.99</h3>\r\n[gravityform id="5" name="8-Week Workout Plan" title="false" description="false" ajax="true"]\r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i> View on Mac, PC, Phones and Tablets', 'Plan', '', 'private', 'closed', 'open', '', 'plan', '', '', '2014-12-03 22:20:57', '2014-12-04 05:20:57', '', 0, 'http://dev.coopercalisthenics.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2014-10-06 20:55:56', '2014-10-06 20:55:56', '', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-06 20:55:56', '2014-10-06 20:55:56', '', 8, 'http://dev.coopercalisthenics.com/?p=9', 0, 'revision', '', 0),
(10, 1, '2014-10-06 20:56:35', '2014-10-06 20:56:35', '<h1 style="text-align: center;">Gallery</h1>\r\n<p style="text-align: center;">[yinstagram]</p>', 'Gallery', '', 'private', 'closed', 'open', '', 'gallery', '', '', '2014-12-03 17:50:33', '2014-12-04 00:50:33', '', 0, 'http://dev.coopercalisthenics.com/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-10-06 20:56:35', '2014-10-06 20:56:35', '', 'Gallery', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-10-06 20:56:35', '2014-10-06 20:56:35', '', 10, 'http://dev.coopercalisthenics.com/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-10-06 20:56:59', '2014-10-07 03:56:59', '<h1>Privacy Policy</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\nNam odio nulla, accumsan eu bibendum nec, auctor a metus. Integer lobortis velit odio, non tincidunt augue tempor in. Sed ac quam in neque accumsan feugiat. Sed consectetur sollicitudin lacus, a mollis erat tincidunt nec. Suspendisse luctus venenatis augue eget suscipit.', 'Privacy Policy', '', 'private', 'closed', 'closed', '', 'privacy', '', '', '2014-12-03 17:50:33', '2014-12-04 00:50:33', '', 0, 'http://dev.coopercalisthenics.com/?page_id=12', 0, 'page', '', 0),
(13, 1, '2014-10-06 20:56:59', '2014-10-06 20:56:59', '', 'Privacy Policy', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-10-06 20:56:59', '2014-10-06 20:56:59', '', 12, 'http://dev.coopercalisthenics.com/?p=13', 0, 'revision', '', 0),
(14, 1, '2014-10-07 09:30:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-07 09:30:57', '0000-00-00 00:00:00', '', 0, 'http://dev.coopercalisthenics.com/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2014-10-07 09:30:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-07 09:30:57', '0000-00-00 00:00:00', '', 0, 'http://dev.coopercalisthenics.com/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2014-10-07 09:30:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-07 09:30:57', '0000-00-00 00:00:00', '', 0, 'http://dev.coopercalisthenics.com/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2014-10-07 09:30:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-07 09:30:57', '0000-00-00 00:00:00', '', 0, 'http://dev.coopercalisthenics.com/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2014-10-07 09:30:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-07 09:30:57', '0000-00-00 00:00:00', '', 0, 'http://dev.coopercalisthenics.com/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2014-10-07 09:30:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-10-07 09:30:57', '0000-00-00 00:00:00', '', 0, 'http://dev.coopercalisthenics.com/?p=19', 1, 'nav_menu_item', '', 0),
(21, 1, '2014-10-07 09:31:42', '2014-10-07 16:31:42', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2014-10-09 12:50:40', '2014-10-09 19:50:40', '', 0, 'http://dev.coopercalisthenics.com/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2014-10-07 09:31:42', '2014-10-07 16:31:42', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2014-10-09 12:50:40', '2014-10-09 19:50:40', '', 0, 'http://dev.coopercalisthenics.com/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2014-10-07 09:31:42', '2014-10-07 16:31:42', ' ', '', '', 'publish', 'open', 'open', '', '23', '', '', '2014-10-09 12:50:40', '2014-10-09 19:50:40', '', 0, 'http://dev.coopercalisthenics.com/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2014-10-07 09:31:42', '2014-10-07 16:31:42', ' ', '', '', 'publish', 'open', 'open', '', '24', '', '', '2014-10-09 12:50:40', '2014-10-09 19:50:40', '', 0, 'http://dev.coopercalisthenics.com/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2014-10-09 12:50:04', '2014-10-09 19:50:04', '<h1>Contact Ryan</h1>\r\n<p class="subhead">Send a message below</p>\r\n<p class="subhead">[gravityform id="2" name="Contact Ryan" title="false" description="false" ajax="true"]</p>\r\n&nbsp;', 'Contact', '', 'private', 'closed', 'open', '', 'contact', '', '', '2014-12-03 17:50:33', '2014-12-04 00:50:33', '', 0, 'http://dev.coopercalisthenics.com/?page_id=25', 0, 'page', '', 0),
(26, 1, '2014-10-09 12:50:04', '2014-10-09 19:50:04', '', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-10-09 12:50:04', '2014-10-09 19:50:04', '', 25, 'http://dev.coopercalisthenics.com/?p=26', 0, 'revision', '', 0),
(27, 1, '2014-10-09 12:50:40', '2014-10-09 19:50:40', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2014-10-09 12:50:40', '2014-10-09 19:50:40', '', 0, 'http://dev.coopercalisthenics.com/?p=27', 5, 'nav_menu_item', '', 0),
(28, 1, '2014-10-09 12:51:27', '2014-10-09 19:51:27', ' ', '', '', 'publish', 'open', 'open', '', '28', '', '', '2014-10-09 12:51:27', '2014-10-09 19:51:27', '', 0, 'http://dev.coopercalisthenics.com/?p=28', 6, 'nav_menu_item', '', 0),
(29, 1, '2014-10-09 12:51:27', '2014-10-09 19:51:27', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2014-10-09 12:51:27', '2014-10-09 19:51:27', '', 0, 'http://dev.coopercalisthenics.com/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2014-10-09 12:51:27', '2014-10-09 19:51:27', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2014-10-09 12:51:27', '2014-10-09 19:51:27', '', 0, 'http://dev.coopercalisthenics.com/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2014-10-09 12:51:27', '2014-10-09 19:51:27', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2014-10-09 12:51:27', '2014-10-09 19:51:27', '', 0, 'http://dev.coopercalisthenics.com/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2014-10-09 12:51:27', '2014-10-09 19:51:27', ' ', '', '', 'publish', 'open', 'open', '', '32', '', '', '2014-10-09 12:51:27', '2014-10-09 19:51:27', '', 0, 'http://dev.coopercalisthenics.com/?p=32', 2, 'nav_menu_item', '', 0),
(33, 1, '2014-10-09 12:51:27', '2014-10-09 19:51:27', ' ', '', '', 'publish', 'open', 'open', '', '33', '', '', '2014-10-09 12:51:27', '2014-10-09 19:51:27', '', 0, 'http://dev.coopercalisthenics.com/?p=33', 1, 'nav_menu_item', '', 0),
(35, 1, '2014-10-09 13:00:46', '2014-10-09 20:00:46', 'From Instagram\r\n<blockquote class="instagram-media" style="background: #FFF; border: 0; border-radius: 3px; box-shadow: 0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width: 658px; padding: 0; width: calc(100% - 2px);" data-instgrm-captioned="" data-instgrm-version="2">\r\n<div style="padding: 8px;">\r\n<div style="background: #F8F8F8; line-height: 0; margin-top: 40px; padding-bottom: 55%; padding-top: 45%; text-align: center; width: 100%;">\r\n<div style="position: relative;">\r\n<div style="-webkit-animation: dkaXkpbBxI 1s ease-out infinite; animation: dkaXkpbBxI 1s ease-out infinite; background: url(data:image/png; base64,ivborw0kggoaaaansuheugaaacwaaaascamaaaapwqozaaaagfbmveuiiii9pt0ehh4gib4hibkchbwchbwchbydr+jqaaaachrstlmaba4yhyqsm5jtamwaaadfsurbvdjl7zvbegmhcaqbaf//42xcnbpaqakcm0ftumfaaibe81iqbjds3ls6zs3bipb9wed3yyxfpmhrft8sgyrcp1x8ueuxlmznwelfoycv6mhwwwmzdpekhlhlw7nwjqkhc4uizphavdza2jpzudsbzzinae2s6owh8xpmx8g7zzgkeopuoyhvgz1tbcxmkd3kwnvbu0gkhkx+izilf77iofhry1nyfnb/lqpb79drwoyjva/davg9b/rlb4cc+nqgdz/tvbbbnr6gbreqn/nrmdgaqeej7whonozjf+y2i/fzou/qaaaaaelftksuqmcc); display: block; height: 44px; margin: 0 auto -44px; position: relative; top: -44px; width: 44px;"></div>\r\n<span style="color: #c9c8cd; font-family: Arial,sans-serif; font-size: 12px; font-style: normal; font-weight: bold; position: relative; top: 15px;">Loading</span>\r\n\r\n</div>\r\n</div>\r\n<p style="font-family: Arial,sans-serif; font-size: 14px; line-height: 17px; margin: 8px 0 0 0; padding: 0 4px; word-wrap: break-word;">Just started working on handstand balance...lots of work to do! #frankmedrano #calisthenics #barstarzz #barbrothers #coopercalisthenics</p>\r\n<p style="line-height: 32px; margin-bottom: 0; margin-top: 8px; padding: 0; text-align: center;"><a style="color: #c9c8cd; font-family: Arial,sans-serif; font-size: 14px; font-style: normal; font-weight: normal; text-decoration: none;" href="https://instagram.com/p/t8P4-iskPK/" target="_top"> View on Instagram</a></p>\r\n\r\n</div></blockquote>\r\n<script src="//platform.instagram.com/en_US/embeds.js" async="" defer="defer"></script>', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-09 13:00:46', '2014-10-09 20:00:46', '', 4, 'http://dev.coopercalisthenics.com/?p=35', 0, 'revision', '', 0),
(36, 1, '2014-10-09 13:01:46', '2014-10-09 20:01:46', '<h3 style="text-align: center;">From Instagram</h3>', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-09 13:01:46', '2014-10-09 20:01:46', '', 4, 'http://dev.coopercalisthenics.com/?p=36', 0, 'revision', '', 0),
(37, 1, '2014-10-09 13:36:04', '2014-10-09 20:36:04', '<h3 style="text-align: center;">From Instagram</h3>\r\n[iconosquare_widget]', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-09 13:36:04', '2014-10-09 20:36:04', '', 4, 'http://dev.coopercalisthenics.com/?p=37', 0, 'revision', '', 0),
(38, 1, '2014-10-09 13:37:04', '2014-10-09 20:37:04', '<h3 style="text-align: center;">From Instagram</h3>', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-09 13:37:04', '2014-10-09 20:37:04', '', 4, 'http://dev.coopercalisthenics.com/?p=38', 0, 'revision', '', 0),
(39, 1, '2014-10-09 13:59:53', '2014-10-09 20:59:53', '<h3 style="text-align: center;"><i class="fa fa-instagram"></i> From Instagram</h3>', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-09 13:59:53', '2014-10-09 20:59:53', '', 4, 'http://dev.coopercalisthenics.com/?p=39', 0, 'revision', '', 0),
(40, 1, '2014-10-09 14:00:05', '2014-10-09 21:00:05', '<h3 style="text-align: center;"><i class="fa fa-left fa-instagram"></i> From Instagram</h3>', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-09 14:00:05', '2014-10-09 21:00:05', '', 4, 'http://dev.coopercalisthenics.com/?p=40', 0, 'revision', '', 0),
(41, 1, '2014-10-09 14:46:07', '2014-10-09 21:46:07', '<h2 style="text-align: center;"><i class="fa fa-left fa-instagram"></i> From Instagram</h2>', 'Home', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2014-10-09 14:46:07', '2014-10-09 21:46:07', '', 4, 'http://dev.coopercalisthenics.com/?p=41', 0, 'revision', '', 0),
(43, 1, '2014-10-21 08:09:28', '2014-10-21 15:09:28', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna. Nam odio nulla, accumsan eu bibendum nec, auctor a metus. Integer lobortis velit odio, non tincidunt augue tempor in. Sed ac quam in neque accumsan feugiat. Sed consectetur sollicitudin lacus, a mollis erat tincidunt nec. Suspendisse luctus venenatis augue eget suscipit. Integer fermentum, arcu eu scelerisque laoreet, dui nunc varius ex, eget auctor sapien metus at libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris imperdiet nunc in urna tempor placerat. In vitae porta purus.\r\n\r\nDuis magna enim, accumsan ut imperdiet sed, pretium vitae tortor. Morbi convallis velit tellus, non ultrices neque mattis quis. Proin tempor pellentesque ligula cursus dignissim. In vitae lobortis nisi. Morbi imperdiet ultricies nunc vel maximus. Ut est urna, congue id sodales nec, volutpat id sapien. Donec semper dui id tellus scelerisque, sed tempus lorem gravida.\r\n\r\nMauris tempus pulvinar tellus sit amet vehicula. Nunc sollicitudin facilisis est sed molestie. Pellentesque dignissim, mi quis scelerisque tristique, nulla odio dictum leo, nec tincidunt velit nulla sit amet magna. Sed malesuada vitae nibh ut iaculis. Cras in elementum tortor. Cras semper quis purus a interdum. Morbi bibendum urna in convallis facilisis. Etiam nisi est, tristique vitae faucibus a, congue et sapien.', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-10-21 08:09:28', '2014-10-21 15:09:28', '', 6, 'http://dev.coopercalisthenics.com/?p=43', 0, 'revision', '', 0),
(44, 1, '2014-12-03 12:00:09', '2014-12-03 19:00:09', '<h1>Ryan Cooper</h1>\n<p class="subhead">Personal Trainer</p>\n<p class="subhead">My name is Ryan Cooper and I fell in love with calisthenics and functional training over 2 years ago. I started training in Houston, TX and now reside in Austin, TX as a personal trainer. I offer online coaching and have experience working with individuals around the world including Greece, Poland, Germany and Colombia.</p>\n<p class="subhead">I live to help others and am willing to work with anyone at any fitness level. I am training to become a world class calisthenics athlete, and to show</p>\n<p class="subhead"></p>\n\n<div>-fell in love with calisthenics and functional training 2 years ago</div>\n<div></div>\n<div>-I started training in Houston, TX and now I\'m in Austin, TX as personal trainer</div>\n<div></div>\n<div>-online coach for individuals around the world in Greece, Poland, Germany, and Colombia</div>\n<div></div>\n<div>-I live to help others and am willing to work with anyone of any fitness level</div>\n<div></div>\n<div>-I am training to become a world class calisthenics athlete, and to show others when you set your mind on a goal, hard work and effort allow you to arrive</div>', 'About', '', 'inherit', 'open', 'open', '', '6-autosave-v1', '', '', '2014-12-03 12:00:09', '2014-12-03 19:00:09', '', 6, 'http://dev.coopercalisthenics.com/?p=44', 0, 'revision', '', 0),
(45, 1, '2014-10-21 08:10:56', '2014-10-21 15:10:56', '<h1>Ryan Cooper</h1>\r\n<p class="subhead">Personal Trainer</p>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna. Nam odio nulla, accumsan eu bibendum nec, auctor a metus. Integer lobortis velit odio, non tincidunt augue tempor in. Sed ac quam in neque accumsan feugiat. Sed consectetur sollicitudin lacus, a mollis erat tincidunt nec. Suspendisse luctus venenatis augue eget suscipit. Integer fermentum, arcu eu scelerisque laoreet, dui nunc varius ex, eget auctor sapien metus at libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris imperdiet nunc in urna tempor placerat. In vitae porta purus.\r\n\r\nDuis magna enim, accumsan ut imperdiet sed, pretium vitae tortor. Morbi convallis velit tellus, non ultrices neque mattis quis. Proin tempor pellentesque ligula cursus dignissim. In vitae lobortis nisi. Morbi imperdiet ultricies nunc vel maximus. Ut est urna, congue id sodales nec, volutpat id sapien. Donec semper dui id tellus scelerisque, sed tempus lorem gravida.\r\n\r\nMauris tempus pulvinar tellus sit amet vehicula. Nunc sollicitudin facilisis est sed molestie. Pellentesque dignissim, mi quis scelerisque tristique, nulla odio dictum leo, nec tincidunt velit nulla sit amet magna. Sed malesuada vitae nibh ut iaculis. Cras in elementum tortor. Cras semper quis purus a interdum. Morbi bibendum urna in convallis facilisis. Etiam nisi est, tristique vitae faucibus a, congue et sapien.', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-10-21 08:10:56', '2014-10-21 15:10:56', '', 6, 'http://dev.coopercalisthenics.com/?p=45', 0, 'revision', '', 0),
(46, 1, '2014-10-21 08:11:39', '2014-10-21 15:11:39', '<h1>Ryan Cooper</h1>\r\n<p class="subhead">Personal Trainer</p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\nNam odio nulla, accumsan eu bibendum nec, auctor a metus. Integer lobortis velit odio, non tincidunt augue tempor in. Sed ac quam in neque accumsan feugiat. Sed consectetur sollicitudin lacus, a mollis erat tincidunt nec. Suspendisse luctus venenatis augue eget suscipit. Integer fermentum, arcu eu scelerisque laoreet, dui nunc varius ex, eget auctor sapien metus at libero. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris imperdiet nunc in urna tempor placerat. In vitae porta purus.\r\n\r\nDuis magna enim, accumsan ut imperdiet sed, pretium vitae tortor. Morbi convallis velit tellus, non ultrices neque mattis quis. Proin tempor pellentesque ligula cursus dignissim. In vitae lobortis nisi. Morbi imperdiet ultricies nunc vel maximus. Ut est urna, congue id sodales nec, volutpat id sapien. Donec semper dui id tellus scelerisque, sed tempus lorem gravida.', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-10-21 08:11:39', '2014-10-21 15:11:39', '', 6, 'http://dev.coopercalisthenics.com/?p=46', 0, 'revision', '', 0),
(47, 1, '2014-10-21 09:31:35', '2014-10-21 16:31:35', '<h1>Privacy Policy</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\nNam odio nulla, accumsan eu bibendum nec, auctor a metus. Integer lobortis velit odio, non tincidunt augue tempor in. Sed ac quam in neque accumsan feugiat. Sed consectetur sollicitudin lacus, a mollis erat tincidunt nec. Suspendisse luctus venenatis augue eget suscipit.', 'Privacy Policy', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-10-21 09:31:35', '2014-10-21 16:31:35', '', 12, 'http://dev.coopercalisthenics.com/?p=47', 0, 'revision', '', 0),
(48, 1, '2014-10-21 09:32:18', '2014-10-21 16:32:18', '<h1 style="text-align: center;">Gallery</h1>', 'Gallery', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-10-21 09:32:18', '2014-10-21 16:32:18', '', 10, 'http://dev.coopercalisthenics.com/?p=48', 0, 'revision', '', 0),
(49, 1, '2014-10-21 09:33:26', '2014-10-21 16:33:26', '<h1>Contact Ryan</h1>\n<p class="subhead">Send a message below</p>\n&nbsp;', 'Contact', '', 'inherit', 'open', 'open', '', '25-autosave-v1', '', '', '2014-10-21 09:33:26', '2014-10-21 16:33:26', '', 25, 'http://dev.coopercalisthenics.com/?p=49', 0, 'revision', '', 0),
(50, 1, '2014-10-21 09:33:31', '2014-10-21 16:33:31', '<h1>Contact Ryan</h1>\r\n<p class="subhead">Send a message below</p>\r\n&nbsp;', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-10-21 09:33:31', '2014-10-21 16:33:31', '', 25, 'http://dev.coopercalisthenics.com/?p=50', 0, 'revision', '', 0),
(51, 1, '2014-12-03 22:00:20', '2014-12-04 05:00:20', '<h1>Cooper Calisthenics\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\n<p class="subhead">A complete guide to building strength</p>\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.\n\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i> View on Mac, PC, Phones and Tablets\n\n$50.00 $17.99\n[gravityform id="5" name="8-Week Workout Plan" title="false" description="false" ajax="true"]', 'Plan', '', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2014-12-03 22:00:20', '2014-12-04 05:00:20', '', 8, 'http://dev.coopercalisthenics.com/?p=51', 0, 'revision', '', 0),
(52, 1, '2014-10-21 09:35:46', '2014-10-21 16:35:46', '<h1>[Book Title]</h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a href="#" class="btn btn-primary"><i class="fa fa-book fa-left"></i> Buy Now</a>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 09:35:46', '2014-10-21 16:35:46', '', 8, 'http://dev.coopercalisthenics.com/?p=52', 0, 'revision', '', 0),
(53, 1, '2014-10-21 09:43:04', '2014-10-21 16:43:04', '<h1><i class="fa fa-book fa-left"></i> Clever Title</h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a href="#" class="btn btn-primary"> Buy Now</a>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 09:43:04', '2014-10-21 16:43:04', '', 8, 'http://dev.coopercalisthenics.com/?p=53', 0, 'revision', '', 0),
(54, 1, '2014-10-21 09:43:38', '2014-10-21 16:43:38', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a href="#" class="btn btn-primary"> Buy Now</a>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 09:43:38', '2014-10-21 16:43:38', '', 8, 'http://dev.coopercalisthenics.com/?p=54', 0, 'revision', '', 0),
(55, 1, '2014-10-21 09:55:19', '2014-10-21 16:55:19', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<p><a href="#" class="btn btn-primary"> Buy Now</a></p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 09:55:19', '2014-10-21 16:55:19', '', 8, 'http://dev.coopercalisthenics.com/?p=55', 0, 'revision', '', 0),
(56, 1, '2014-10-21 09:57:49', '2014-10-21 16:57:49', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a href="#" class="btn btn-primary"> Buy Now</a>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 09:57:49', '2014-10-21 16:57:49', '', 8, 'http://dev.coopercalisthenics.com/?p=56', 0, 'revision', '', 0),
(57, 1, '2014-10-21 09:58:10', '2014-10-21 16:58:10', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<p><a href="#" class="btn btn-primary"> Buy Now</a></p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 09:58:10', '2014-10-21 16:58:10', '', 8, 'http://dev.coopercalisthenics.com/?p=57', 0, 'revision', '', 0),
(58, 1, '2014-10-21 10:18:43', '2014-10-21 17:18:43', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<p><a href="#" class="btn btn-primary"><i class="fa fa-paypal fa-left"></i> Buy Now</a></p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 10:18:43', '2014-10-21 17:18:43', '', 8, 'http://dev.coopercalisthenics.com/?p=58', 0, 'revision', '', 0),
(59, 1, '2014-10-21 10:26:33', '2014-10-21 17:26:33', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<p><a href="#" class="btn btn-primary"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a></p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 10:26:33', '2014-10-21 17:26:33', '', 8, 'http://dev.coopercalisthenics.com/?p=59', 0, 'revision', '', 0),
(60, 1, '2014-10-21 10:29:06', '2014-10-21 17:29:06', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<p><a style="margin-top:0px" href="#" class="btn btn-primary"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a></p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 10:29:06', '2014-10-21 17:29:06', '', 8, 'http://dev.coopercalisthenics.com/?p=60', 0, 'revision', '', 0),
(61, 1, '2014-10-21 11:04:23', '2014-10-21 18:04:23', '<h1>Contact Ryan</h1>\r\n<p class="subhead">Send a message below</p>\r\n<p class="subhead">[gravityform id="2" name="Contact Ryan" title="false" description="false" ajax="true"]</p>\r\n&nbsp;', 'Contact', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2014-10-21 11:04:23', '2014-10-21 18:04:23', '', 25, 'http://dev.coopercalisthenics.com/?p=61', 0, 'revision', '', 0),
(62, 1, '2014-10-21 11:10:45', '2014-10-21 18:10:45', '', 'jpeg', '', 'inherit', 'open', 'open', '', 'jpeg', '', '', '2014-10-21 11:11:08', '2014-10-21 18:11:08', '', 6, 'http://dev.coopercalisthenics.com/wp-content/uploads/2014/10/jpeg.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2014-10-21 11:18:44', '2014-10-21 18:18:44', '', 'Cooper Calisthenics Book', '', 'inherit', 'open', 'open', '', 'xbookplaceholder-jpg-pagespeed-ic-njfziazbae', '', '', '2014-10-21 11:18:53', '2014-10-21 18:18:53', '', 8, 'http://dev.coopercalisthenics.com/wp-content/uploads/2014/10/xBookPlaceholder.jpg.pagespeed.ic_.njFZiaZBAE.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2014-10-21 11:18:58', '2014-10-21 18:18:58', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\n&nbsp;', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 11:18:58', '2014-10-21 18:18:58', '', 8, 'http://dev.coopercalisthenics.com/?p=64', 0, 'revision', '', 0),
(65, 1, '2014-10-21 11:21:26', '2014-10-21 18:21:26', '', 'book-placeholder', '', 'inherit', 'open', 'open', '', 'book-placeholder', '', '', '2014-10-21 11:21:46', '2014-10-21 18:21:46', '', 8, 'http://dev.coopercalisthenics.com/wp-content/uploads/2014/10/book-placeholder.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2014-10-21 11:22:21', '2014-10-21 18:22:21', '<h1>Clever Title <i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\nFormat:  PDF Download', 'Book', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-21 11:22:21', '2014-10-21 18:22:21', '', 8, 'http://dev.coopercalisthenics.com/?p=66', 0, 'revision', '', 0),
(67, 1, '2014-10-21 11:27:50', '2014-10-21 18:27:50', '', 'Cooper Calisthenics', '', 'inherit', 'open', 'open', '', 'screen-shot-2014-10-21-at-1-25-24-pm', '', '', '2014-10-21 11:28:09', '2014-10-21 18:28:09', '', 25, 'http://dev.coopercalisthenics.com/wp-content/uploads/2014/10/Screen-Shot-2014-10-21-at-1.25.24-PM.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2014-10-21 11:34:00', '2014-10-21 18:34:00', '<h1>Schedule Training</h1>\r\nFill out the form below to schedule a training session with Ryan Cooper.\r\n\r\n[gravityform id="4" name="Schedule Training" title="false" description="false" ajax="true"]', 'Training', '', 'private', 'closed', 'open', '', 'training', '', '', '2014-12-03 17:50:33', '2014-12-04 00:50:33', '', 0, 'http://dev.coopercalisthenics.com/?page_id=68', 0, 'page', '', 0),
(69, 1, '2014-10-21 11:34:00', '2014-10-21 18:34:00', '<h1>Schedule Training</h1>\r\n<p class="subhead">Fill out the form below to schedule a training session with Ryan Cooper.</p>\r\n<p class="subhead">[gravityform id="2" name="Contact Ryan" title="false" description="false" ajax="true"]</p>\r\n&nbsp;', 'Training', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-10-21 11:34:00', '2014-10-21 18:34:00', '', 68, 'http://dev.coopercalisthenics.com/?p=69', 0, 'revision', '', 0),
(70, 1, '2014-10-21 11:41:31', '2014-10-21 18:41:31', '', 'Screen Shot 2014-10-21 at 1.23.48 PM', '', 'inherit', 'open', 'open', '', 'screen-shot-2014-10-21-at-1-23-48-pm', '', '', '2014-10-21 11:41:40', '2014-10-21 18:41:40', '', 68, 'http://dev.coopercalisthenics.com/wp-content/uploads/2014/10/Screen-Shot-2014-10-21-at-1.23.48-PM.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2014-10-21 11:42:14', '2014-10-21 18:42:14', '<h1>Schedule Training</h1>\r\n<p class="subhead">Fill out the form below to schedule a training session with Ryan Cooper.</p>\r\n<p class="subhead">[gravityform id="4" name="Schedule Training" title="false" description="false" ajax="true"]</p>\r\n&nbsp;', 'Training', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-10-21 11:42:14', '2014-10-21 18:42:14', '', 68, 'http://dev.coopercalisthenics.com/?p=71', 0, 'revision', '', 0),
(72, 1, '2014-10-21 11:50:22', '2014-10-21 18:50:22', '<h1>Schedule Training</h1>\r\n<p>Fill out the form below to schedule a training session with Ryan Cooper.</p>\r\n[gravityform id="4" name="Schedule Training" title="false" description="false" ajax="true"]', 'Training', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-10-21 11:50:22', '2014-10-21 18:50:22', '', 68, 'http://dev.coopercalisthenics.com/68-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2014-10-21 11:50:38', '2014-10-21 18:50:38', '<h1>Schedule Training</h1>\r\nFill out the form below to schedule a training session with Ryan Cooper.\r\n\r\n[gravityform id="4" name="Schedule Training" title="false" description="false" ajax="true"]', 'Training', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-10-21 11:50:38', '2014-10-21 18:50:38', '', 68, 'http://dev.coopercalisthenics.com/68-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2014-10-21 11:50:52', '2014-10-21 18:50:52', '<h1>Schedule Training</h1>\r\nFill out the form below to schedule a training session with Ryan Cooper.\r\n\r\n&nbsp;\r\n\r\n[gravityform id="4" name="Schedule Training" title="false" description="false" ajax="true"]', 'Training', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-10-21 11:50:52', '2014-10-21 18:50:52', '', 68, 'http://dev.coopercalisthenics.com/68-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2014-10-21 11:51:00', '2014-10-21 18:51:00', '<h1>Schedule Training</h1>\r\nFill out the form below to schedule a training session with Ryan Cooper.\r\n\r\n[gravityform id="4" name="Schedule Training" title="false" description="false" ajax="true"]', 'Training', '', 'inherit', 'open', 'open', '', '68-revision-v1', '', '', '2014-10-21 11:51:00', '2014-10-21 18:51:00', '', 68, 'http://dev.coopercalisthenics.com/68-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2014-10-21 12:16:06', '2014-10-21 19:16:06', '<h1 style="text-align: center;">Gallery</h1>\r\n[yinstagram]', 'Gallery', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-10-21 12:16:06', '2014-10-21 19:16:06', '', 10, 'http://dev.coopercalisthenics.com/10-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2014-10-21 12:16:20', '2014-10-21 19:16:20', '<h1 style="text-align: center;">Gallery</h1>\r\n<p style="text-align: center;">[yinstagram]</p>', 'Gallery', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-10-21 12:16:20', '2014-10-21 19:16:20', '', 10, 'http://dev.coopercalisthenics.com/10-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2014-12-03 11:52:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-12-03 11:52:36', '0000-00-00 00:00:00', '', 0, 'http://dev.coopercalisthenics.com/?p=78', 0, 'post', '', 0),
(79, 1, '2014-12-03 12:01:31', '2014-12-03 19:01:31', '<h1>Ryan Cooper</h1>\r\n<p class="subhead">Personal Trainer</p>\r\n<p class="subhead">My name is Ryan Cooper and I fell in love with calisthenics and functional training over 2 years ago. I started training in Houston, TX and now reside in Austin, TX as a personal trainer. I offer online coaching and have experience working with individuals around the world including Greece, Poland, Germany and Colombia.</p>\r\n<p class="subhead">I live to help others and am willing to work with anyone at any fitness level. I am training to become a world class calisthenics athlete. I want to show you that when you set your mind on a goal, hard work and effort allow you to arrive.</p>\r\n<p class="subhead"><strong>— Ryan Cooper</strong></p>', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-12-03 12:01:31', '2014-12-03 19:01:31', '', 6, 'http://dev.coopercalisthenics.com/6-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2014-12-03 12:01:57', '2014-12-03 19:01:57', '<h1>Ryan Cooper</h1>\r\n<p class="subhead">Personal Trainer</p>\r\n<p>My name is Ryan Cooper and I fell in love with calisthenics and functional training over 2 years ago. I started training in Houston, TX and now reside in Austin, TX as a personal trainer. I offer online coaching and have experience working with individuals around the world including Greece, Poland, Germany and Colombia.</p>\r\n<p>I live to help others and am willing to work with anyone at any fitness level. I am training to become a world class calisthenics athlete. I want to show you that when you set your mind on a goal, hard work and effort allow you to arrive.</p>\r\n<p class="subhead"><strong>— Ryan Cooper</strong></p>', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-12-03 12:01:57', '2014-12-03 19:01:57', '', 6, 'http://dev.coopercalisthenics.com/6-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2014-12-03 12:02:22', '2014-12-03 19:02:22', '<h1>Ryan Cooper</h1>\r\n<p class="subhead">Personal Trainer</p>\r\n<p>My name is Ryan Cooper and I fell in love with calisthenics and functional training over 2 years ago. I started training in Houston, TX and now reside in Austin, TX as a personal trainer. I offer online coaching and have experience working with individuals around the world including Greece, Poland, Germany and Colombia.</p>\r\n<p>I live to help others and am willing to work with anyone at any fitness level. I am training to become a world class calisthenics athlete. I want to show you that when you set your mind on a goal, hard work and effort allow you to arrive.</p>\r\n<p><strong>— Ryan Cooper</strong></p>', 'About', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-12-03 12:02:22', '2014-12-03 19:02:22', '', 6, 'http://dev.coopercalisthenics.com/6-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2014-12-03 17:45:23', '2014-12-04 00:45:23', '', 'Launch', '', 'publish', 'open', 'open', '', 'launch', '', '', '2014-12-03 17:45:23', '2014-12-04 00:45:23', '', 0, 'http://dev.coopercalisthenics.com/?page_id=82', 0, 'page', '', 0),
(83, 1, '2014-12-03 17:45:23', '2014-12-04 00:45:23', '', 'Launch', '', 'inherit', 'open', 'open', '', '82-revision-v1', '', '', '2014-12-03 17:45:23', '2014-12-04 00:45:23', '', 82, 'http://dev.coopercalisthenics.com/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2014-12-03 20:02:56', '2014-12-04 03:02:56', '<h1>Cooper Calisthenics 8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\nFormat:  PDF Download', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:02:56', '2014-12-04 03:02:56', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2014-12-03 20:06:46', '2014-12-04 03:06:46', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to getting totally ripped.</p>\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ex sem, sodales non luctus eu, tempus sit amet tellus. Ut vulputate turpis vel nisi laoreet vulputate. Curabitur eleifend, enim et ultricies pretium, lacus sapien placerat mauris, sit amet hendrerit eros enim eget libero. Quisque quis rutrum tellus, mollis elementum elit. Aliquam dapibus dolor eu nisi placerat, sit amet rhoncus sem lobortis. Morbi vitae turpis est. Nulla commodo, ipsum ut fermentum dapibus, urna mauris tincidunt libero, vel volutpat lorem eros ac magna.\r\n\r\nFormat:  PDF Download', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:06:46', '2014-12-04 03:06:46', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2014-12-03 20:15:58', '2014-12-04 03:15:58', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\nFormat:  PDF Download\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:15:58', '2014-12-04 03:15:58', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2014-12-03 20:22:35', '2014-12-04 03:22:35', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\n<i class="fa-file-pdf-o"></i> PDF Download\r\n<i class="fa-mobile-phone"></i> <i class="fa-desktop"></i> View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:22:35', '2014-12-04 03:22:35', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(88, 1, '2014-12-03 20:23:10', '2014-12-04 03:23:10', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\n<span class="fa-file-pdf-o"></span> PDF Download\r\n<span class="fa-mobile-phone"></span> <i class="fa-desktop"></i> View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:23:10', '2014-12-04 03:23:10', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2014-12-03 20:37:14', '2014-12-04 03:37:14', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\n<span class="fa fa-file-pdf-o"></span> PDF Download\r\n<span class="fa fa-mobile-phone"></span> <i class="fa-desktop"></i> View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:37:14', '2014-12-04 03:37:14', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2014-12-03 20:37:50', '2014-12-04 03:37:50', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\n<span class="fa fa-file-pdf-o"></span> PDF Download\r\n<span class="fa fa-mobile-phone"></span> <i class="fa fa-desktop"></i> View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:37:50', '2014-12-04 03:37:50', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2014-12-03 20:38:20', '2014-12-04 03:38:20', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\n<span class="fa fa-file-pdf-o fa-left"></span> PDF Download\r\n<span class="fa fa-mobile-phone"></span> <i class="fa fa-desktop fa-left"></i> View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:38:20', '2014-12-04 03:38:20', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2014-12-03 20:39:16', '2014-12-04 03:39:16', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop fa-left"></i> <span class="fa fa-mobile-phone fa-left"></i>  View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:39:16', '2014-12-04 03:39:16', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2014-12-03 20:39:35', '2014-12-04 03:39:35', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results. \r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <span class="fa fa-mobile-phone fa-left"></i>  View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:39:35', '2014-12-04 03:39:35', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2014-12-03 20:40:41', '2014-12-04 03:40:41', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\n<p>Tired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.</p>\r\n\r\n<p>\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <span class="fa fa-mobile-phone fa-left"></i>  View on Mac, PC, Phones and Tablets\r\n</p>\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:40:41', '2014-12-04 03:40:41', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2014-12-03 20:41:15', '2014-12-04 03:41:15', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\n\r\n<p>Tired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.</p>\r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i>  View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n\r\n\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 20:41:15', '2014-12-04 03:41:15', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2014-12-03 20:49:47', '2014-12-04 03:49:47', '', '8wk-plan', '', 'inherit', 'open', 'open', '', '8wk-plan', '', '', '2014-12-03 20:50:18', '2014-12-04 03:50:18', '', 8, 'http://dev.coopercalisthenics.com/wp-content/uploads/2014/10/8wk-plan.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2014-12-03 21:20:02', '2014-12-04 04:20:02', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.\r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i> View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">\r\n<input type="hidden" name="cmd" value="_s-xclick">\r\n<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----MIIHfwYJKoZIhvcNAQcEoIIHcDCCB2wCAQExggEwMIIBLAIBADCBlDCBjjELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtQYXlQYWwgSW5jLjETMBEGA1UECxQKbGl2ZV9jZXJ0czERMA8GA1UEAxQIbGl2ZV9hcGkxHDAaBgkqhkiG9w0BCQEWDXJlQHBheXBhbC5jb20CAQAwDQYJKoZIhvcNAQEBBQAEgYB7SV0DauupudteQ6W8MJEj4FATHemdUsM1xaw51e5Wl28YER88v3QOzo3x9n/b93UBhc45wihTaAIZbhbQkMqq47jzVX2riYmP5/Aslr1nQDFBudjS4o3wT40xptx6nSudsTqiXek4kripVqx4FCXGnGAMevHEspfAh4yazZZsQjELMAkGBSsOAwIaBQAwgfwGCSqGSIb3DQEHATAUBggqhkiG9w0DBwQI5XBFIYlvp2WAgdjCc+JG2Avc6Vemks5+OJDpbi/+xyL871IKd/XrLs/t2wVufVYB/q+//tgwH/l49QWQCf+m3LA9ah8mJzlzBNgmmCOYbKh5PsYpb4SZ4LBvJrvLrmlDnbZKZqJmruMWudnKviyoFQc+VJkUPPmV+glimxeHtac1wIBTNvu1ndprjcJYHqCuKnCbcuODT4fVrdNYDKw9frjWSYkhxo+TL+6hSB+zSrOoCOxaEoy2q5aR3ytbN0MrA/koouL6mJF+XrPW534pQjAj3t8zGaBAA014ZYbNpNUzkHegggOHMIIDgzCCAuygAwIBAgIBADANBgkqhkiG9w0BAQUFADCBjjELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtQYXlQYWwgSW5jLjETMBEGA1UECxQKbGl2ZV9jZXJ0czERMA8GA1UEAxQIbGl2ZV9hcGkxHDAaBgkqhkiG9w0BCQEWDXJlQHBheXBhbC5jb20wHhcNMDQwMjEzMTAxMzE1WhcNMzUwMjEzMTAxMzE1WjCBjjELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRYwFAYDVQQHEw1Nb3VudGFpbiBWaWV3MRQwEgYDVQQKEwtQYXlQYWwgSW5jLjETMBEGA1UECxQKbGl2ZV9jZXJ0czERMA8GA1UEAxQIbGl2ZV9hcGkxHDAaBgkqhkiG9w0BCQEWDXJlQHBheXBhbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMFHTt38RMxLXJyO2SmS+Ndl72T7oKJ4u4uw+6awntALWh03PewmIJuzbALScsTS4sZoS1fKciBGoh11gIfHzylvkdNe/hJl66/RGqrj5rFb08sAABNTzDTiqqNpJeBsYs/c2aiGozptX2RlnBktH+SUNpAajW724Nv2Wvhif6sFAgMBAAGjge4wgeswHQYDVR0OBBYEFJaffLvGbxe9WT9S1wob7BDWZJRrMIG7BgNVHSMEgbMwgbCAFJaffLvGbxe9WT9S1wob7BDWZJRroYGUpIGRMIGOMQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFjAUBgNVBAcTDU1vdW50YWluIFZpZXcxFDASBgNVBAoTC1BheVBhbCBJbmMuMRMwEQYDVQQLFApsaXZlX2NlcnRzMREwDwYDVQQDFAhsaXZlX2FwaTEcMBoGCSqGSIb3DQEJARYNcmVAcGF5cGFsLmNvbYIBADAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUAA4GBAIFfOlaagFrl71+jq6OKidbWFSE+Q4FqROvdgIONth+8kSK//Y/4ihuE4Ymvzn5ceE3S/iBSQQMjyvb+s2TWbQYDwcp129OPIbD9epdr4tJOUNiSojw7BHwYRiPh58S1xGlFgHFXwrEBb3dgNbMUa+u4qectsMAXpVHnD9wIyfmHMYIBmjCCAZYCAQEwgZQwgY4xCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEWMBQGA1UEBxMNTW91bnRhaW4gVmlldzEUMBIGA1UEChMLUGF5UGFsIEluYy4xEzARBgNVBAsUCmxpdmVfY2VydHMxETAPBgNVBAMUCGxpdmVfYXBpMRwwGgYJKoZIhvcNAQkBFg1yZUBwYXlwYWwuY29tAgEAMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNDEyMDQwNDE4MTJaMCMGCSqGSIb3DQEJBDEWBBQYKTgl0z8CmEDsCYYaXaq/UgAUkjANBgkqhkiG9w0BAQEFAASBgE693BxYbVA02W6a87x82h0zeYQbVx59Fdy3QfnojiJtybSJA9MFWbFngjJjU59i872R8CALJ8YEl92KZ5VrajSIB7jBCrK/ky4dHpV0MeQZxTR5Fe+yAP/b2HBGEzDTorur/j0qYU9eir4osJf9/1Zd7HC/fqGvQAytfoCB3XHJ-----END PKCS7-----\r\n">\r\n<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">\r\n<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">\r\n</form>\r\n', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 21:20:02', '2014-12-04 04:20:02', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2014-12-03 21:50:57', '2014-12-04 04:50:57', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.\r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i> View on Mac, PC, Phones and Tablets\r\n\r\n<a class="btn btn-primary" style="margin-top: 0px;" href="#"><i class="fa fa-paypal fa-left"></i> Buy Now with Paypal</a>\r\n\r\n[gravityform id="5" name="8-Week Workout Plan" title="false" description="false" ajax="true"]', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 21:50:57', '2014-12-04 04:50:57', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2014-12-03 21:53:24', '2014-12-04 04:53:24', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.\r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i> View on Mac, PC, Phones and Tablets\r\n[gravityform id="5" name="8-Week Workout Plan" title="false" description="false" ajax="true"]', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 21:53:24', '2014-12-04 04:53:24', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2014-12-03 22:00:47', '2014-12-04 05:00:47', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.\r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i> View on Mac, PC, Phones and Tablets\r\n<h3><del>$50.00</del> $17.99</h3>\r\n[gravityform id="5" name="8-Week Workout Plan" title="false" description="false" ajax="true"]', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 22:00:47', '2014-12-04 05:00:47', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2014-12-03 22:20:57', '2014-12-04 05:20:57', '<h1>Cooper Calisthenics\r\n8-Week Workout Plan<i class="fa fa-book fa-right"></i></h1>\r\n<p class="subhead">A complete guide to building strength</p>\r\nTired of the same old workout? Wish there was a better way to build real strength? Just follow Ryan Cooper\'s 8-Week Workout Plan. Get a solid path and work hard at a plan that will get you <i>real</i> results.\r\n\r\n<h3><del>$50.00</del> $17.99</h3>\r\n[gravityform id="5" name="8-Week Workout Plan" title="false" description="false" ajax="true"]\r\n\r\n<i class="fa fa-file-pdf-o fa-left"></i> PDF Download\r\n<i class="fa fa-desktop"></i> <i class="fa fa-mobile-phone fa-left"></i> View on Mac, PC, Phones and Tablets', 'Plan', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-12-03 22:20:57', '2014-12-04 05:20:57', '', 8, 'http://dev.coopercalisthenics.com/8-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form`
#
INSERT INTO `wp_rg_form` ( `id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Get Ryan\'s Workout Plan', '2014-10-21 17:30:36', 1, 0),
(2, 'Contact Ryan', '2014-10-21 17:31:51', 1, 0),
(3, 'Get Ryan\'s Workout Plan - Copy 1', '2014-10-21 18:36:01', 1, 1),
(4, 'Schedule Training', '2014-10-21 18:36:09', 1, 0),
(5, 'Cooper Calisthenics 8-Week Workout Plan', '2014-12-04 04:41:47', 1, 0) ;

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form_meta`
#
INSERT INTO `wp_rg_form_meta` ( `form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"Get Ryan\'s Workout Plan","description":"Learn Ryan Cooper\'s unique approach to Calisthenics and Functional Training. This is all you need to get started.","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Get Workout Plan","imageUrl":""},"fields":[{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":1,"inputName":"","isRequired":true,"label":"Email","noDuplicates":"","size":"large","type":"email","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":1,"descriptionPlacement":"below"}],"id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"cssClass":"gf-add-placeholder","enableHoneypot":"","enableAnimation":"","limitEntries":"","limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":"","scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":"","requireLoginMessage":"","notifications":{"5446983cbd9e0":{"isActive":true,"id":"5446983cbd9e0","name":"Admin Notification","event":"form_submission","to":"cooperwryan@gmail.com","toType":"email","bcc":"","subject":"New Sign Up for Workout Plan","message":"Someone new signed up to receive a workout plan. Nice Job!\\r\\n\\r\\n{all_fields}","from":"no-reply@coopercalisthenics.com","fromName":"Cooper Calisthenics","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""},"547f6172e4742":{"isActive":true,"id":"547f6172e4742","name":"User Notification","event":"form_submission","to":"1","toType":"field","bcc":"","subject":"Ryan Cooper\'s Workout Plan","message":"Hey,\\r\\n\\r\\nThanks for signing up to receive my workout plan.\\u00a0I hope it works well for you. Please let me know how it goes and if you need any help at all. You can reply to this email.\\r\\n\\r\\nYou can download the PDF plan here: http:\\/\\/dev.coopercalisthenics.com\\/1w4lkfdaso1.pdf\\r\\n\\r\\nEnjoy,\\r\\nRyan\\r\\n\\r\\nwww.coopercalisthenics.com","from":"cooperwryan@gmail.com","fromName":"Cooper Calisthenics","replyTo":"cooperwryan@gmail.com","routing":null,"conditionalLogic":null,"disableAutoformat":""}},"confirmations":{"5446983cbde8b":{"id":"5446983cbde8b","name":"Default Confirmation","isDefault":"1","type":"message","message":"Check your email! You should see the workout plan in your inbox in the next few minutes.","url":"","pageId":"","queryString":"","disableAutoformat":"","conditionalLogic":[]}}}', NULL, '{"5446983cbde8b":{"id":"5446983cbde8b","name":"Default Confirmation","isDefault":"1","type":"message","message":"Check your email! You should see the workout plan in your inbox in the next few minutes.","url":"","pageId":"","queryString":"","disableAutoformat":"","conditionalLogic":[]}}', '{"5446983cbd9e0":{"isActive":true,"id":"5446983cbd9e0","name":"Admin Notification","event":"form_submission","to":"cooperwryan@gmail.com","toType":"email","bcc":"","subject":"New Sign Up for Workout Plan","message":"Someone new signed up to receive a workout plan. Nice Job!\\r\\n\\r\\n{all_fields}","from":"no-reply@coopercalisthenics.com","fromName":"Cooper Calisthenics","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""},"547f6172e4742":{"isActive":true,"id":"547f6172e4742","name":"User Notification","event":"form_submission","to":"1","toType":"field","bcc":"","subject":"Ryan Cooper\'s Workout Plan","message":"Hey,\\r\\n\\r\\nThanks for signing up to receive my workout plan.\\u00a0I hope it works well for you. Please let me know how it goes. If you have questions or need any help at all you can reply to this email.\\r\\n\\r\\n<a href=\\"http:\\/\\/dev.coopercalisthenics.com\\/pdf\\/3jal7l2dfq9.pdf\\">Click here<\\/a> to\\u00a0download the Cooper Calisthenics 7-Day Workout Plan.\\r\\n\\r\\nWhen you are ready, go checkout my\\u00a0full <a href=\\"http:\\/\\/dev.coopercalisthenics.com\\/plan\\">8-week Workout Plan<\\/a>.\\r\\n\\r\\nEnjoy,\\r\\nRyan\\r\\n\\r\\nwww.coopercalisthenics.com","from":"cooperwryan@gmail.com","fromName":"Cooper Calisthenics","replyTo":"cooperwryan@gmail.com","routing":null,"conditionalLogic":null,"disableAutoformat":""}}'),
(2, '{"title":"Contact Ryan","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Send","imageUrl":""},"fields":[{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"gf_left_half","errorMessage":"","id":5,"inputName":"","isRequired":true,"label":"Name","noDuplicates":"","size":"medium","type":"text","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":2,"descriptionPlacement":"below"},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"gf_right_half","errorMessage":"","id":2,"inputName":"","isRequired":true,"label":"Email","noDuplicates":"","size":"medium","type":"email","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":2,"descriptionPlacement":"below"},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":3,"inputName":"","isRequired":true,"label":"Message","noDuplicates":"","size":"medium","type":"textarea","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":2,"descriptionPlacement":"below"},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":4,"inputName":"","isRequired":false,"label":"Get the latest news from Cooper Calisthenics","noDuplicates":"","size":"medium","type":"checkbox","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":[{"id":"4.1","label":"Yep, keep me in the loop","name":""}],"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","choices":[{"text":"Yep, keep me in the loop","value":"Yep, keep me in the loop","isSelected":false,"price":""}],"multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":2,"descriptionPlacement":"below"}],"id":2,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"notifications":{"544698874ac55":{"isActive":true,"id":"544698874ac55","name":"Admin Notification","event":"form_submission","to":"{admin_email}","toType":"email","bcc":"","subject":"New message from your website","message":"{all_fields}\\r\\n\\r\\n\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/ From coopercalisthenics.com \\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/","from":"{admin_email}","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""}},"confirmations":{"544698874af2b":{"id":"544698874af2b","name":"Default Confirmation","isDefault":"1","type":"message","message":"Thanks for contacting Ryan. He will get in touch with you shortly.","url":"","pageId":"","queryString":"","disableAutoformat":"","conditionalLogic":[]}},"cssClass":"gf-add-placeholder","enableHoneypot":"","enableAnimation":"","limitEntries":"","limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":"","scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":"","requireLoginMessage":""}', '', '{"544698874af2b":{"id":"544698874af2b","name":"Default Confirmation","isDefault":"1","type":"message","message":"Thanks for contacting Ryan. He will be in touch with you shortly.","url":"","pageId":"","queryString":"","disableAutoformat":"","conditionalLogic":[]}}', '{"544698874ac55":{"isActive":true,"id":"544698874ac55","name":"Admin Notification","event":"form_submission","to":"cooperwryan@gmail.com","toType":"email","bcc":"","subject":"New message from your website","message":"{all_fields}\\r\\n\\r\\n\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/ From coopercalisthenics.com \\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/","from":"{Email:2}","fromName":"{Name:5}","replyTo":"{Email:2}","routing":null,"conditionalLogic":null,"disableAutoformat":""}}'),
(3, '{"title":"Get Ryan\'s Workout Plan - Copy 1","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"id":1,"label":"Email","adminLabel":"","type":"email","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"descriptionPlacement":"below"}],"id":3,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', NULL, '{"5446983cbde8b":{"id":"5446983cbde8b","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"5446983cbd9e0":{"id":"5446983cbd9e0","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}'),
(4, '{"title":"Schedule Training","description":"","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"gf_left_half","errorMessage":"","id":5,"inputName":"","isRequired":true,"label":"Name","noDuplicates":"","size":"medium","type":"text","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":4,"descriptionPlacement":"below"},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"gf_right_half","errorMessage":"","id":2,"inputName":"","isRequired":true,"label":"Email","noDuplicates":"","size":"medium","type":"email","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":4,"descriptionPlacement":"below"},{"id":6,"label":"Prefered  Date","adminLabel":"","type":"date","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","dateType":"datedropdown","calendarIconType":"none","calendarIconUrl":"","allowsPrepopulate":false,"cssClass":"gf_left_half","formId":4,"pageNumber":1,"descriptionPlacement":"below"},{"id":7,"label":"Preferred Time","adminLabel":"","type":"time","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"cssClass":"gf_right_half","formId":4,"pageNumber":1,"descriptionPlacement":"below"},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":3,"inputName":"","isRequired":true,"label":"Message","noDuplicates":"","size":"medium","type":"textarea","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":null,"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":4,"descriptionPlacement":"below"},{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":4,"inputName":"","isRequired":false,"label":"Get the latest news from Cooper Calisthenics","noDuplicates":"","size":"medium","type":"checkbox","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":[{"id":"4.1","label":"Yep, keep me in the loop","name":""}],"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":"","basePrice":"","choices":[{"text":"Yep, keep me in the loop","value":"Yep, keep me in the loop","isSelected":false,"price":""}],"multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":4,"descriptionPlacement":"below"}],"id":4,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"cssClass":"gf-add-placeholder","enableHoneypot":"","enableAnimation":"","limitEntries":"","limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":"","scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":"","requireLoginMessage":"","notifications":{"544698874ac55":{"isActive":true,"id":"544698874ac55","name":"Admin Notification","event":"form_submission","to":"{admin_email}","toType":"email","bcc":"","subject":"New message from your website","message":"{all_fields}\\r\\n\\r\\n\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/ From coopercalisthenics.com \\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/","from":"{admin_email}","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""}},"confirmations":{"544698874af2b":{"id":"544698874af2b","name":"Default Confirmation","isDefault":"1","type":"message","message":"Thanks for requesting a training session. We will get in touch with you shortly.","url":"","pageId":"","queryString":"","disableAutoformat":"","conditionalLogic":[]}}}', NULL, '{"544698874af2b":{"id":"544698874af2b","name":"Default Confirmation","isDefault":"1","type":"message","message":"Thanks for requesting a training session. We will get in touch with you shortly.","url":"","pageId":"","queryString":"","disableAutoformat":"","conditionalLogic":[]}}', '{"544698874ac55":{"isActive":true,"id":"544698874ac55","name":"Admin Notification","event":"form_submission","to":"{admin_email}","toType":"email","bcc":"","subject":"New message from your website","message":"{all_fields}\\r\\n\\r\\n\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/ From coopercalisthenics.com \\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/","from":"{admin_email}","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""}}'),
(5, '{"title":"Cooper Calisthenics 8-Week Workout Plan","description":"A complete guide to building strength","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Buy Now With Paypal","imageUrl":""},"fields":[{"adminLabel":"","adminOnly":"","allowsPrepopulate":false,"defaultValue":"","description":"","content":"","cssClass":"","errorMessage":"","id":1,"inputName":"","isRequired":false,"label":"Cooper Calisthenics 8-Week Workout Plan","noDuplicates":"","size":"medium","type":"product","postCustomFieldName":"","displayAllCategories":false,"displayCaption":"","displayDescription":"","displayTitle":"","inputType":"hiddenproduct","rangeMin":"","rangeMax":"","calendarIconType":"","calendarIconUrl":"","dateType":"","dateFormat":"","phoneFormat":"","addressType":"","defaultCountry":"","defaultProvince":"","defaultState":"","hideAddress2":"","hideCountry":"","hideState":"","inputs":[{"id":1.1,"label":"Name","name":""},{"id":1.2,"label":"Price","name":""},{"id":1.3,"label":"Quantity","name":""}],"nameFormat":"","allowedExtensions":"","captchaType":"","pageNumber":1,"captchaTheme":"","simpleCaptchaSize":"","simpleCaptchaFontColor":"","simpleCaptchaBackgroundColor":"","failed_validation":"","productField":"","enablePasswordInput":"","maxLength":"","enablePrice":null,"basePrice":"$17.99","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"inputMask":false,"inputMaskValue":"","formId":5,"descriptionPlacement":"below"},{"id":2,"label":"Email","adminLabel":"","type":"email","isRequired":true,"size":"large","errorMessage":"","inputs":null,"multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":5,"pageNumber":1,"descriptionPlacement":"below"}],"id":5,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"cssClass":"gf-add-placeholder","enableHoneypot":"","enableAnimation":"","limitEntries":"","limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":"","scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":"","requireLoginMessage":"","notifications":{"547fe60b2341e":{"id":"547fe60b2341e","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}},"confirmations":{"547fe60b23e5c":{"id":"547fe60b23e5c","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}}', NULL, '{"547fe60b23e5c":{"id":"547fe60b23e5c","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"547fe60b2341e":{"id":"547fe60b2341e","to":"{admin_email}","name":"Admin Notification","event":"form_submission","toType":"email","subject":"New submission from {form_title}","message":"{all_fields}"}}') ;

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form_view`
#
INSERT INTO `wp_rg_form_view` ( `id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 2, '2014-10-21 18:04:29', '127.0.0.1', 12),
(2, 4, '2014-10-21 18:43:14', '127.0.0.1', 6),
(3, 4, '2014-10-21 19:32:56', '127.0.0.1', 3),
(4, 1, '2014-12-03 22:02:56', '127.0.0.1', 17),
(5, 1, '2014-12-03 23:00:02', '127.0.0.1', 6),
(6, 2, '2014-12-03 23:01:33', '127.0.0.1', 1),
(7, 1, '2014-12-04 00:45:00', '127.0.0.1', 1) ;

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead`
#
INSERT INTO `wp_rg_lead` ( `id`, `form_id`, `post_id`, `date_created`, `is_starred`, `is_read`, `ip`, `source_url`, `user_agent`, `currency`, `payment_status`, `payment_date`, `payment_amount`, `payment_method`, `transaction_id`, `is_fulfilled`, `created_by`, `transaction_type`, `status`) VALUES
(1, 5, NULL, '2014-12-04 04:51:16', 0, 0, '23.114.57.72', 'http://dev.coopercalisthenics.com/plan/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'USD', 'Processing', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(2, 5, NULL, '2014-12-04 05:02:29', 0, 0, '23.114.57.72', 'http://dev.coopercalisthenics.com/plan/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'USD', 'Processing', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active') ;

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_detail`
#
INSERT INTO `wp_rg_lead_detail` ( `id`, `lead_id`, `form_id`, `field_number`, `value`) VALUES
(1, 1, 5, '1.1', '8-Week Workout Plan'),
(2, 1, 5, '1.2', '$17.99'),
(3, 1, 5, '1.3', '1'),
(4, 2, 5, '1.1', 'Cooper Calisthenics 8-Week Workout Plan'),
(5, 2, 5, '1.2', '$17.99'),
(6, 2, 5, '1.3', '1') ;

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_meta`
#
INSERT INTO `wp_rg_lead_meta` ( `id`, `form_id`, `lead_id`, `meta_key`, `meta_value`) VALUES
(1, 5, 1, 'gravityformspaypal_is_fulfilled', '1'),
(2, 5, 1, 'processed_feeds', 'a:1:{s:18:"gravityformspaypal";a:1:{i:0;s:1:"1";}}'),
(3, 5, 1, 'payment_amount', '17.99'),
(4, 5, 1, 'payment_gateway', 'gravityformspaypal'),
(5, 5, 1, 'gform_product_info__', 'a:2:{s:8:"products";a:1:{i:1;a:3:{s:4:"name";s:19:"8-Week Workout Plan";s:5:"price";s:6:"$17.99";s:8:"quantity";s:1:"1";}}s:8:"shipping";a:3:{s:2:"id";s:0:"";s:4:"name";s:0:"";s:5:"price";b:0;}}'),
(6, 5, 2, 'gravityformspaypal_is_fulfilled', '1'),
(7, 5, 2, 'processed_feeds', 'a:1:{s:18:"gravityformspaypal";a:1:{i:0;s:1:"1";}}'),
(8, 5, 2, 'payment_amount', '17.99'),
(9, 5, 2, 'payment_gateway', 'gravityformspaypal'),
(10, 5, 2, 'gform_product_info__', 'a:2:{s:8:"products";a:1:{i:1;a:3:{s:4:"name";s:39:"Cooper Calisthenics 8-Week Workout Plan";s:5:"price";s:6:"$17.99";s:8:"quantity";s:1:"1";}}s:8:"shipping";a:3:{s:2:"id";s:0:"";s:4:"name";s:0:"";s:5:"price";b:0;}}') ;

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  `note_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(27, 2, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(33, 3, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 6) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'Ty Richards'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '78'),
(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'session_tokens', 'a:2:{s:64:"f571500caa4f2d48275687fb0a2ed4fe78ab70361b900356ebc413c438ff4845";i:1417805553;s:64:"7cd413bae98dcbb657fecabfa671a2fc2a1d05e86103e76b1a68b5466c97107c";i:1417840683;}'),
(18, 1, 'nav_menu_recently_edited', '3'),
(19, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&wplink=1&hidetb=1'),
(20, 1, 'wp_user-settings-time', '1417721298'),
(21, 2, 'nickname', 'Ryan Cooper'),
(22, 2, 'first_name', 'Ryan'),
(23, 2, 'last_name', 'Cooper'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(31, 2, 'wp_user_level', '7'),
(32, 2, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(33, 1, 'dismiss_paypal_menu', '1') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Ty Richards', '$P$B4MF54/Vz9.1OrIYB/I2fm.o43b6cU1', 'ty-richards', 'me@tyrichards.com', '', '2014-10-06 20:52:22', '', 0, 'Ty Richards'),
(2, 'Ryan Cooper', '$P$Bci4ALSjWt2mezGzqFc7ojgWAX3CqF.', 'ryan-cooper', 'cooperwryan@gmail.com', '', '2014-12-04 00:51:33', '', 0, 'Ryan Cooper') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#


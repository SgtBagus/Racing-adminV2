-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 14 Nov 2019 pada 07.59
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `racingEvenV2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `access_control_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `access`
--

INSERT INTO `access` (`id`, `access_control_id`, `role_id`, `status`) VALUES
(2, 94, 17, 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_control`
--

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL,
  `folder` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `access_control`
--

INSERT INTO `access_control` (`id`, `folder`, `class`, `method`, `val`) VALUES
(1, '', 'Access', '__construct', 'access/__construct'),
(2, '', 'Access', 'index', 'access/index'),
(3, '', 'Access', 'json', 'access/json'),
(4, '', 'Access', 'control', 'access/control'),
(5, '', 'Access', 'store', 'access/store'),
(6, '', 'Access', 'konfig', 'access/konfig'),
(7, '', 'Access', 'upload_file', 'access/upload_file'),
(8, '', 'Access', 'get_uri', 'access/get_uri'),
(9, '', 'Access', 'log_activity', 'access/log_activity'),
(10, '', 'Access', 'get_instance', 'access/get_instance'),
(11, '', 'Crud', '__construct', 'crud/__construct'),
(12, '', 'Crud', 'index', 'crud/index'),
(13, '', 'Crud', 'viewcode', 'crud/viewcode'),
(14, '', 'Crud', 'generate', 'crud/generate'),
(15, '', 'Crud', 'get_kolom', 'crud/get_kolom'),
(16, '', 'Crud', 'save_generate', 'crud/save_generate'),
(17, '', 'Crud', 'api', 'crud/api'),
(18, '', 'Crud', 'api_generate', 'crud/api_generate'),
(19, '', 'Crud', 'services', 'crud/services'),
(20, '', 'Crud', 'konfig', 'crud/konfig'),
(21, '', 'Crud', 'upload_file', 'crud/upload_file'),
(22, '', 'Crud', 'get_uri', 'crud/get_uri'),
(23, '', 'Crud', 'log_activity', 'crud/log_activity'),
(24, '', 'Crud', 'get_instance', 'crud/get_instance'),
(25, '', 'Crud_ajax', '__construct', 'crud_ajax/__construct'),
(26, '', 'Crud_ajax', 'index', 'crud_ajax/index'),
(27, '', 'Crud_ajax', 'ajaxGetTableCustomer', 'crud_ajax/ajaxgettablecustomer'),
(28, '', 'Crud_ajax', 'validate', 'crud_ajax/validate'),
(29, '', 'Crud_ajax', 'tambah', 'crud_ajax/tambah'),
(30, '', 'Crud_ajax', 'hapus', 'crud_ajax/hapus'),
(31, '', 'Crud_ajax', 'ajaxGetModalCustomer', 'crud_ajax/ajaxgetmodalcustomer'),
(32, '', 'Crud_ajax', 'edit', 'crud_ajax/edit'),
(33, '', 'Crud_ajax', 'konfig', 'crud_ajax/konfig'),
(34, '', 'Crud_ajax', 'upload_file', 'crud_ajax/upload_file'),
(35, '', 'Crud_ajax', 'get_uri', 'crud_ajax/get_uri'),
(36, '', 'Crud_ajax', 'log_activity', 'crud_ajax/log_activity'),
(37, '', 'Crud_ajax', 'get_instance', 'crud_ajax/get_instance'),
(38, '', 'Debug', '__construct', 'debug/__construct'),
(39, '', 'Debug', 'index', 'debug/index'),
(40, '', 'Debug', 'exportexcell', 'debug/exportexcell'),
(41, '', 'Debug', 'ecryprdecrypt', 'debug/ecryprdecrypt'),
(42, '', 'Debug', 'validation_form', 'debug/validation_form'),
(43, '', 'Debug', 'konfig', 'debug/konfig'),
(44, '', 'Debug', 'upload_file', 'debug/upload_file'),
(45, '', 'Debug', 'get_uri', 'debug/get_uri'),
(46, '', 'Debug', 'log_activity', 'debug/log_activity'),
(47, '', 'Debug', 'get_instance', 'debug/get_instance'),
(48, '', 'Dropdown', '__construct', 'dropdown/__construct'),
(49, '', 'Dropdown', 'index', 'dropdown/index'),
(50, '', 'Dropdown', 'generate', 'dropdown/generate'),
(51, '', 'Dropdown', 'konfig', 'dropdown/konfig'),
(52, '', 'Dropdown', 'upload_file', 'dropdown/upload_file'),
(53, '', 'Dropdown', 'get_uri', 'dropdown/get_uri'),
(54, '', 'Dropdown', 'log_activity', 'dropdown/log_activity'),
(55, '', 'Dropdown', 'get_instance', 'dropdown/get_instance'),
(56, '', 'Fitur', '__construct', 'fitur/__construct'),
(57, '', 'Fitur', 'ekspor', 'fitur/ekspor'),
(58, '', 'Fitur', 'impor', 'fitur/impor'),
(59, '', 'Fitur', 'importdata', 'fitur/importdata'),
(60, '', 'Fitur', 'access', 'fitur/access'),
(61, '', 'Fitur', 'exportreport', 'fitur/exportreport'),
(62, '', 'Fitur', 'toPdf', 'fitur/topdf'),
(63, '', 'Fitur', 'konfig', 'fitur/konfig'),
(64, '', 'Fitur', 'upload_file', 'fitur/upload_file'),
(65, '', 'Fitur', 'get_uri', 'fitur/get_uri'),
(66, '', 'Fitur', 'log_activity', 'fitur/log_activity'),
(67, '', 'Fitur', 'get_instance', 'fitur/get_instance'),
(68, '', 'Form_input', '__construct', 'form_input/__construct'),
(69, '', 'Form_input', 'index', 'form_input/index'),
(70, '', 'Form_input', 'ajaxGetAutocompleteCustomer', 'form_input/ajaxgetautocompletecustomer'),
(71, '', 'Form_input', 'ajaxGetSelectCustomer', 'form_input/ajaxgetselectcustomer'),
(72, '', 'Form_input', 'ajaxTambahCustomer', 'form_input/ajaxtambahcustomer'),
(73, '', 'Form_input', 'konfig', 'form_input/konfig'),
(74, '', 'Form_input', 'upload_file', 'form_input/upload_file'),
(75, '', 'Form_input', 'get_uri', 'form_input/get_uri'),
(76, '', 'Form_input', 'log_activity', 'form_input/log_activity'),
(77, '', 'Form_input', 'get_instance', 'form_input/get_instance'),
(78, '', 'Home', '__construct', 'home/__construct'),
(79, '', 'Home', 'index', 'home/index'),
(80, '', 'Home', 'chart', 'home/chart'),
(81, '', 'Home', 'get_autocomplete', 'home/get_autocomplete'),
(82, '', 'Home', 'konfig', 'home/konfig'),
(83, '', 'Home', 'upload_file', 'home/upload_file'),
(84, '', 'Home', 'get_uri', 'home/get_uri'),
(85, '', 'Home', 'log_activity', 'home/log_activity'),
(86, '', 'Home', 'get_instance', 'home/get_instance'),
(87, '', 'Login', '__construct', 'login/__construct'),
(88, '', 'Login', 'index', 'login/index'),
(89, '', 'Login', 'logout', 'login/logout'),
(90, '', 'Login', 'act_login', 'login/act_login'),
(91, '', 'Login', 'lockscreen', 'login/lockscreen'),
(92, '', 'Login', 'konfig', 'login/konfig'),
(93, '', 'Login', 'upload_file', 'login/upload_file'),
(94, '', 'Login', 'get_uri', 'login/get_uri'),
(95, '', 'Login', 'log_activity', 'login/log_activity'),
(96, '', 'Login', 'get_instance', 'login/get_instance'),
(97, '', 'Page', '__construct', 'page/__construct'),
(98, '', 'Page', 'portrait', 'page/portrait'),
(99, '', 'Page', 'landscape', 'page/landscape'),
(100, '', 'Page', 'konfig', 'page/konfig'),
(101, '', 'Page', 'upload_file', 'page/upload_file'),
(102, '', 'Page', 'get_uri', 'page/get_uri'),
(103, '', 'Page', 'log_activity', 'page/log_activity'),
(104, '', 'Page', 'get_instance', 'page/get_instance'),
(105, '', 'Rest_server', 'index', 'rest_server/index'),
(106, '', 'Rest_server', '__construct', 'rest_server/__construct'),
(107, '', 'Rest_server', 'get_instance', 'rest_server/get_instance'),
(108, '', 'Tablednd', '__construct', 'tablednd/__construct'),
(109, '', 'Tablednd', 'index', 'tablednd/index'),
(110, '', 'Tablednd', 'simpan', 'tablednd/simpan'),
(111, '', 'Tablednd', 'konfig', 'tablednd/konfig'),
(112, '', 'Tablednd', 'upload_file', 'tablednd/upload_file'),
(113, '', 'Tablednd', 'get_uri', 'tablednd/get_uri'),
(114, '', 'Tablednd', 'log_activity', 'tablednd/log_activity'),
(115, '', 'Tablednd', 'get_instance', 'tablednd/get_instance'),
(116, '', 'Tinymce', '__construct', 'tinymce/__construct'),
(117, '', 'Tinymce', 'index', 'tinymce/index'),
(118, '', 'Tinymce', 'konfig', 'tinymce/konfig'),
(119, '', 'Tinymce', 'upload_file', 'tinymce/upload_file'),
(120, '', 'Tinymce', 'get_uri', 'tinymce/get_uri'),
(121, '', 'Tinymce', 'log_activity', 'tinymce/log_activity'),
(122, '', 'Tinymce', 'get_instance', 'tinymce/get_instance'),
(123, '', 'UploadImage', '__construct', 'uploadimage/__construct'),
(124, '', 'UploadImage', 'index', 'uploadimage/index'),
(125, '', 'UploadImage', 'uploadAjax', 'uploadimage/uploadajax'),
(126, '', 'UploadImage', 'ajaxImageUnlink', 'uploadimage/ajaximageunlink'),
(127, '', 'UploadImage', 'konfig', 'uploadimage/konfig'),
(128, '', 'UploadImage', 'upload_file', 'uploadimage/upload_file'),
(129, '', 'UploadImage', 'get_uri', 'uploadimage/get_uri'),
(130, '', 'UploadImage', 'log_activity', 'uploadimage/log_activity'),
(131, '', 'UploadImage', 'get_instance', 'uploadimage/get_instance'),
(132, 'master', 'Activity', '__construct', 'master/activity/__construct'),
(133, 'master', 'Activity', 'index', 'master/activity/index'),
(134, 'master', 'Activity', 'create', 'master/activity/create'),
(135, 'master', 'Activity', 'validate', 'master/activity/validate'),
(136, 'master', 'Activity', 'store', 'master/activity/store'),
(137, 'master', 'Activity', 'json', 'master/activity/json'),
(138, 'master', 'Activity', 'edit', 'master/activity/edit'),
(139, 'master', 'Activity', 'update', 'master/activity/update'),
(140, 'master', 'Activity', 'delete', 'master/activity/delete'),
(141, 'master', 'Activity', 'status', 'master/activity/status'),
(142, 'master', 'Activity', 'konfig', 'master/activity/konfig'),
(143, 'master', 'Activity', 'upload_file', 'master/activity/upload_file'),
(144, 'master', 'Activity', 'get_uri', 'master/activity/get_uri'),
(145, 'master', 'Activity', 'log_activity', 'master/activity/log_activity'),
(146, 'master', 'Activity', 'get_instance', 'master/activity/get_instance'),
(147, 'master', 'Bahan_baku', '__construct', 'master/bahan_baku/__construct'),
(148, 'master', 'Bahan_baku', 'index', 'master/bahan_baku/index'),
(149, 'master', 'Bahan_baku', 'create', 'master/bahan_baku/create'),
(150, 'master', 'Bahan_baku', 'validate', 'master/bahan_baku/validate'),
(151, 'master', 'Bahan_baku', 'store', 'master/bahan_baku/store'),
(152, 'master', 'Bahan_baku', 'json', 'master/bahan_baku/json'),
(153, 'master', 'Bahan_baku', 'edit', 'master/bahan_baku/edit'),
(154, 'master', 'Bahan_baku', 'update', 'master/bahan_baku/update'),
(155, 'master', 'Bahan_baku', 'delete', 'master/bahan_baku/delete'),
(156, 'master', 'Bahan_baku', 'status', 'master/bahan_baku/status'),
(157, 'master', 'Bahan_baku', 'konfig', 'master/bahan_baku/konfig'),
(158, 'master', 'Bahan_baku', 'upload_file', 'master/bahan_baku/upload_file'),
(159, 'master', 'Bahan_baku', 'get_uri', 'master/bahan_baku/get_uri'),
(160, 'master', 'Bahan_baku', 'log_activity', 'master/bahan_baku/log_activity'),
(161, 'master', 'Bahan_baku', 'get_instance', 'master/bahan_baku/get_instance'),
(162, 'master', 'Bahan_baku_timeline', '__construct', 'master/bahan_baku_timeline/__construct'),
(163, 'master', 'Bahan_baku_timeline', 'index', 'master/bahan_baku_timeline/index'),
(164, 'master', 'Bahan_baku_timeline', 'create', 'master/bahan_baku_timeline/create'),
(165, 'master', 'Bahan_baku_timeline', 'validate', 'master/bahan_baku_timeline/validate'),
(166, 'master', 'Bahan_baku_timeline', 'store', 'master/bahan_baku_timeline/store'),
(167, 'master', 'Bahan_baku_timeline', 'json', 'master/bahan_baku_timeline/json'),
(168, 'master', 'Bahan_baku_timeline', 'edit', 'master/bahan_baku_timeline/edit'),
(169, 'master', 'Bahan_baku_timeline', 'update', 'master/bahan_baku_timeline/update'),
(170, 'master', 'Bahan_baku_timeline', 'delete', 'master/bahan_baku_timeline/delete'),
(171, 'master', 'Bahan_baku_timeline', 'status', 'master/bahan_baku_timeline/status'),
(172, 'master', 'Bahan_baku_timeline', 'konfig', 'master/bahan_baku_timeline/konfig'),
(173, 'master', 'Bahan_baku_timeline', 'upload_file', 'master/bahan_baku_timeline/upload_file'),
(174, 'master', 'Bahan_baku_timeline', 'get_uri', 'master/bahan_baku_timeline/get_uri'),
(175, 'master', 'Bahan_baku_timeline', 'log_activity', 'master/bahan_baku_timeline/log_activity'),
(176, 'master', 'Bahan_baku_timeline', 'get_instance', 'master/bahan_baku_timeline/get_instance'),
(177, 'master', 'Barang_jadi', '__construct', 'master/barang_jadi/__construct'),
(178, 'master', 'Barang_jadi', 'index', 'master/barang_jadi/index'),
(179, 'master', 'Barang_jadi', 'create', 'master/barang_jadi/create'),
(180, 'master', 'Barang_jadi', 'validate', 'master/barang_jadi/validate'),
(181, 'master', 'Barang_jadi', 'store', 'master/barang_jadi/store'),
(182, 'master', 'Barang_jadi', 'json', 'master/barang_jadi/json'),
(183, 'master', 'Barang_jadi', 'edit', 'master/barang_jadi/edit'),
(184, 'master', 'Barang_jadi', 'update', 'master/barang_jadi/update'),
(185, 'master', 'Barang_jadi', 'delete', 'master/barang_jadi/delete'),
(186, 'master', 'Barang_jadi', 'status', 'master/barang_jadi/status'),
(187, 'master', 'Barang_jadi', 'konfig', 'master/barang_jadi/konfig'),
(188, 'master', 'Barang_jadi', 'upload_file', 'master/barang_jadi/upload_file'),
(189, 'master', 'Barang_jadi', 'get_uri', 'master/barang_jadi/get_uri'),
(190, 'master', 'Barang_jadi', 'log_activity', 'master/barang_jadi/log_activity'),
(191, 'master', 'Barang_jadi', 'get_instance', 'master/barang_jadi/get_instance'),
(192, 'master', 'Bss', 'index', 'master/bss/index'),
(193, 'master', 'Bss', '__construct', 'master/bss/__construct'),
(194, 'master', 'Bss', 'konfig', 'master/bss/konfig'),
(195, 'master', 'Bss', 'upload_file', 'master/bss/upload_file'),
(196, 'master', 'Bss', 'get_uri', 'master/bss/get_uri'),
(197, 'master', 'Bss', 'log_activity', 'master/bss/log_activity'),
(198, 'master', 'Bss', 'get_instance', 'master/bss/get_instance'),
(199, 'master', 'Condition', '__construct', 'master/condition/__construct'),
(200, 'master', 'Condition', 'index', 'master/condition/index'),
(201, 'master', 'Condition', 'create', 'master/condition/create'),
(202, 'master', 'Condition', 'validate', 'master/condition/validate'),
(203, 'master', 'Condition', 'store', 'master/condition/store'),
(204, 'master', 'Condition', 'json', 'master/condition/json'),
(205, 'master', 'Condition', 'edit', 'master/condition/edit'),
(206, 'master', 'Condition', 'update', 'master/condition/update'),
(207, 'master', 'Condition', 'delete', 'master/condition/delete'),
(208, 'master', 'Condition', 'status', 'master/condition/status'),
(209, 'master', 'Condition', 'konfig', 'master/condition/konfig'),
(210, 'master', 'Condition', 'upload_file', 'master/condition/upload_file'),
(211, 'master', 'Condition', 'get_uri', 'master/condition/get_uri'),
(212, 'master', 'Condition', 'log_activity', 'master/condition/log_activity'),
(213, 'master', 'Condition', 'get_instance', 'master/condition/get_instance'),
(214, 'master', 'Currency', '__construct', 'master/currency/__construct'),
(215, 'master', 'Currency', 'index', 'master/currency/index'),
(216, 'master', 'Currency', 'create', 'master/currency/create'),
(217, 'master', 'Currency', 'validate', 'master/currency/validate'),
(218, 'master', 'Currency', 'store', 'master/currency/store'),
(219, 'master', 'Currency', 'json', 'master/currency/json'),
(220, 'master', 'Currency', 'edit', 'master/currency/edit'),
(221, 'master', 'Currency', 'update', 'master/currency/update'),
(222, 'master', 'Currency', 'delete', 'master/currency/delete'),
(223, 'master', 'Currency', 'status', 'master/currency/status'),
(224, 'master', 'Currency', 'konfig', 'master/currency/konfig'),
(225, 'master', 'Currency', 'upload_file', 'master/currency/upload_file'),
(226, 'master', 'Currency', 'get_uri', 'master/currency/get_uri'),
(227, 'master', 'Currency', 'log_activity', 'master/currency/log_activity'),
(228, 'master', 'Currency', 'get_instance', 'master/currency/get_instance'),
(229, 'master', 'Customer', '__construct', 'master/customer/__construct'),
(230, 'master', 'Customer', 'index', 'master/customer/index'),
(231, 'master', 'Customer', 'create', 'master/customer/create'),
(232, 'master', 'Customer', 'validate', 'master/customer/validate'),
(233, 'master', 'Customer', 'store', 'master/customer/store'),
(234, 'master', 'Customer', 'json', 'master/customer/json'),
(235, 'master', 'Customer', 'edit', 'master/customer/edit'),
(236, 'master', 'Customer', 'update', 'master/customer/update'),
(237, 'master', 'Customer', 'delete', 'master/customer/delete'),
(238, 'master', 'Customer', 'status', 'master/customer/status'),
(239, 'master', 'Customer', 'konfig', 'master/customer/konfig'),
(240, 'master', 'Customer', 'upload_file', 'master/customer/upload_file'),
(241, 'master', 'Customer', 'get_uri', 'master/customer/get_uri'),
(242, 'master', 'Customer', 'log_activity', 'master/customer/log_activity'),
(243, 'master', 'Customer', 'get_instance', 'master/customer/get_instance'),
(244, 'master', 'Grafik', '__construct', 'master/grafik/__construct'),
(245, 'master', 'Grafik', 'index', 'master/grafik/index'),
(246, 'master', 'Grafik', 'create', 'master/grafik/create'),
(247, 'master', 'Grafik', 'validate', 'master/grafik/validate'),
(248, 'master', 'Grafik', 'store', 'master/grafik/store'),
(249, 'master', 'Grafik', 'json', 'master/grafik/json'),
(250, 'master', 'Grafik', 'edit', 'master/grafik/edit'),
(251, 'master', 'Grafik', 'update', 'master/grafik/update'),
(252, 'master', 'Grafik', 'delete', 'master/grafik/delete'),
(253, 'master', 'Grafik', 'status', 'master/grafik/status'),
(254, 'master', 'Grafik', 'konfig', 'master/grafik/konfig'),
(255, 'master', 'Grafik', 'upload_file', 'master/grafik/upload_file'),
(256, 'master', 'Grafik', 'get_uri', 'master/grafik/get_uri'),
(257, 'master', 'Grafik', 'log_activity', 'master/grafik/log_activity'),
(258, 'master', 'Grafik', 'get_instance', 'master/grafik/get_instance'),
(259, 'master', 'Image', '__construct', 'master/image/__construct'),
(260, 'master', 'Image', 'index', 'master/image/index'),
(261, 'master', 'Image', 'create', 'master/image/create'),
(262, 'master', 'Image', 'validate', 'master/image/validate'),
(263, 'master', 'Image', 'store', 'master/image/store'),
(264, 'master', 'Image', 'json', 'master/image/json'),
(265, 'master', 'Image', 'edit', 'master/image/edit'),
(266, 'master', 'Image', 'update', 'master/image/update'),
(267, 'master', 'Image', 'delete', 'master/image/delete'),
(268, 'master', 'Image', 'status', 'master/image/status'),
(269, 'master', 'Image', 'konfig', 'master/image/konfig'),
(270, 'master', 'Image', 'upload_file', 'master/image/upload_file'),
(271, 'master', 'Image', 'get_uri', 'master/image/get_uri'),
(272, 'master', 'Image', 'log_activity', 'master/image/log_activity'),
(273, 'master', 'Image', 'get_instance', 'master/image/get_instance'),
(274, 'master', 'Jadwal', '__construct', 'master/jadwal/__construct'),
(275, 'master', 'Jadwal', 'index', 'master/jadwal/index'),
(276, 'master', 'Jadwal', 'create', 'master/jadwal/create'),
(277, 'master', 'Jadwal', 'validate', 'master/jadwal/validate'),
(278, 'master', 'Jadwal', 'store', 'master/jadwal/store'),
(279, 'master', 'Jadwal', 'json', 'master/jadwal/json'),
(280, 'master', 'Jadwal', 'edit', 'master/jadwal/edit'),
(281, 'master', 'Jadwal', 'update', 'master/jadwal/update'),
(282, 'master', 'Jadwal', 'delete', 'master/jadwal/delete'),
(283, 'master', 'Jadwal', 'status', 'master/jadwal/status'),
(284, 'master', 'Jadwal', 'konfig', 'master/jadwal/konfig'),
(285, 'master', 'Jadwal', 'upload_file', 'master/jadwal/upload_file'),
(286, 'master', 'Jadwal', 'get_uri', 'master/jadwal/get_uri'),
(287, 'master', 'Jadwal', 'log_activity', 'master/jadwal/log_activity'),
(288, 'master', 'Jadwal', 'get_instance', 'master/jadwal/get_instance'),
(289, 'master', 'Jenis_pekerjaan', '__construct', 'master/jenis_pekerjaan/__construct'),
(290, 'master', 'Jenis_pekerjaan', 'index', 'master/jenis_pekerjaan/index'),
(291, 'master', 'Jenis_pekerjaan', 'create', 'master/jenis_pekerjaan/create'),
(292, 'master', 'Jenis_pekerjaan', 'validate', 'master/jenis_pekerjaan/validate'),
(293, 'master', 'Jenis_pekerjaan', 'store', 'master/jenis_pekerjaan/store'),
(294, 'master', 'Jenis_pekerjaan', 'json', 'master/jenis_pekerjaan/json'),
(295, 'master', 'Jenis_pekerjaan', 'edit', 'master/jenis_pekerjaan/edit'),
(296, 'master', 'Jenis_pekerjaan', 'update', 'master/jenis_pekerjaan/update'),
(297, 'master', 'Jenis_pekerjaan', 'delete', 'master/jenis_pekerjaan/delete'),
(298, 'master', 'Jenis_pekerjaan', 'status', 'master/jenis_pekerjaan/status'),
(299, 'master', 'Jenis_pekerjaan', 'konfig', 'master/jenis_pekerjaan/konfig'),
(300, 'master', 'Jenis_pekerjaan', 'upload_file', 'master/jenis_pekerjaan/upload_file'),
(301, 'master', 'Jenis_pekerjaan', 'get_uri', 'master/jenis_pekerjaan/get_uri'),
(302, 'master', 'Jenis_pekerjaan', 'log_activity', 'master/jenis_pekerjaan/log_activity'),
(303, 'master', 'Jenis_pekerjaan', 'get_instance', 'master/jenis_pekerjaan/get_instance'),
(304, 'master', 'Keys', '__construct', 'master/keys/__construct'),
(305, 'master', 'Keys', 'index', 'master/keys/index'),
(306, 'master', 'Keys', 'create', 'master/keys/create'),
(307, 'master', 'Keys', 'validate', 'master/keys/validate'),
(308, 'master', 'Keys', 'store', 'master/keys/store'),
(309, 'master', 'Keys', 'json', 'master/keys/json'),
(310, 'master', 'Keys', 'edit', 'master/keys/edit'),
(311, 'master', 'Keys', 'update', 'master/keys/update'),
(312, 'master', 'Keys', 'delete', 'master/keys/delete'),
(313, 'master', 'Keys', 'status', 'master/keys/status'),
(314, 'master', 'Keys', 'konfig', 'master/keys/konfig'),
(315, 'master', 'Keys', 'upload_file', 'master/keys/upload_file'),
(316, 'master', 'Keys', 'get_uri', 'master/keys/get_uri'),
(317, 'master', 'Keys', 'log_activity', 'master/keys/log_activity'),
(318, 'master', 'Keys', 'get_instance', 'master/keys/get_instance'),
(319, 'master', 'Konfig', '__construct', 'master/konfig/__construct'),
(320, 'master', 'Konfig', 'index', 'master/konfig/index'),
(321, 'master', 'Konfig', 'create', 'master/konfig/create'),
(322, 'master', 'Konfig', 'validate', 'master/konfig/validate'),
(323, 'master', 'Konfig', 'store', 'master/konfig/store'),
(324, 'master', 'Konfig', 'json', 'master/konfig/json'),
(325, 'master', 'Konfig', 'edit', 'master/konfig/edit'),
(326, 'master', 'Konfig', 'update', 'master/konfig/update'),
(327, 'master', 'Konfig', 'delete', 'master/konfig/delete'),
(328, 'master', 'Konfig', 'status', 'master/konfig/status'),
(329, 'master', 'Konfig', 'konfig', 'master/konfig/konfig'),
(330, 'master', 'Konfig', 'upload_file', 'master/konfig/upload_file'),
(331, 'master', 'Konfig', 'get_uri', 'master/konfig/get_uri'),
(332, 'master', 'Konfig', 'log_activity', 'master/konfig/log_activity'),
(333, 'master', 'Konfig', 'get_instance', 'master/konfig/get_instance'),
(334, 'master', 'Master_sub_izin_usaha', '__construct', 'master/master_sub_izin_usaha/__construct'),
(335, 'master', 'Master_sub_izin_usaha', 'index', 'master/master_sub_izin_usaha/index'),
(336, 'master', 'Master_sub_izin_usaha', 'create', 'master/master_sub_izin_usaha/create'),
(337, 'master', 'Master_sub_izin_usaha', 'validate', 'master/master_sub_izin_usaha/validate'),
(338, 'master', 'Master_sub_izin_usaha', 'store', 'master/master_sub_izin_usaha/store'),
(339, 'master', 'Master_sub_izin_usaha', 'json', 'master/master_sub_izin_usaha/json'),
(340, 'master', 'Master_sub_izin_usaha', 'edit', 'master/master_sub_izin_usaha/edit'),
(341, 'master', 'Master_sub_izin_usaha', 'update', 'master/master_sub_izin_usaha/update'),
(342, 'master', 'Master_sub_izin_usaha', 'delete', 'master/master_sub_izin_usaha/delete'),
(343, 'master', 'Master_sub_izin_usaha', 'status', 'master/master_sub_izin_usaha/status'),
(344, 'master', 'Master_sub_izin_usaha', 'konfig', 'master/master_sub_izin_usaha/konfig'),
(345, 'master', 'Master_sub_izin_usaha', 'upload_file', 'master/master_sub_izin_usaha/upload_file'),
(346, 'master', 'Master_sub_izin_usaha', 'get_uri', 'master/master_sub_izin_usaha/get_uri'),
(347, 'master', 'Master_sub_izin_usaha', 'log_activity', 'master/master_sub_izin_usaha/log_activity'),
(348, 'master', 'Master_sub_izin_usaha', 'get_instance', 'master/master_sub_izin_usaha/get_instance'),
(349, 'master', 'Menu_master', '__construct', 'master/menu_master/__construct'),
(350, 'master', 'Menu_master', 'index', 'master/menu_master/index'),
(351, 'master', 'Menu_master', 'create', 'master/menu_master/create'),
(352, 'master', 'Menu_master', 'validate', 'master/menu_master/validate'),
(353, 'master', 'Menu_master', 'store', 'master/menu_master/store'),
(354, 'master', 'Menu_master', 'json', 'master/menu_master/json'),
(355, 'master', 'Menu_master', 'edit', 'master/menu_master/edit'),
(356, 'master', 'Menu_master', 'update', 'master/menu_master/update'),
(357, 'master', 'Menu_master', 'delete', 'master/menu_master/delete'),
(358, 'master', 'Menu_master', 'status', 'master/menu_master/status'),
(359, 'master', 'Menu_master', 'konfig', 'master/menu_master/konfig'),
(360, 'master', 'Menu_master', 'upload_file', 'master/menu_master/upload_file'),
(361, 'master', 'Menu_master', 'get_uri', 'master/menu_master/get_uri'),
(362, 'master', 'Menu_master', 'log_activity', 'master/menu_master/log_activity'),
(363, 'master', 'Menu_master', 'get_instance', 'master/menu_master/get_instance'),
(364, 'master', 'Produk', '__construct', 'master/produk/__construct'),
(365, 'master', 'Produk', 'index', 'master/produk/index'),
(366, 'master', 'Produk', 'create', 'master/produk/create'),
(367, 'master', 'Produk', 'validate', 'master/produk/validate'),
(368, 'master', 'Produk', 'store', 'master/produk/store'),
(369, 'master', 'Produk', 'json', 'master/produk/json'),
(370, 'master', 'Produk', 'edit', 'master/produk/edit'),
(371, 'master', 'Produk', 'update', 'master/produk/update'),
(372, 'master', 'Produk', 'delete', 'master/produk/delete'),
(373, 'master', 'Produk', 'status', 'master/produk/status'),
(374, 'master', 'Produk', 'konfig', 'master/produk/konfig'),
(375, 'master', 'Produk', 'upload_file', 'master/produk/upload_file'),
(376, 'master', 'Produk', 'get_uri', 'master/produk/get_uri'),
(377, 'master', 'Produk', 'log_activity', 'master/produk/log_activity'),
(378, 'master', 'Produk', 'get_instance', 'master/produk/get_instance'),
(379, 'master', 'Report', '__construct', 'master/report/__construct'),
(380, 'master', 'Report', 'index', 'master/report/index'),
(381, 'master', 'Report', 'create', 'master/report/create'),
(382, 'master', 'Report', 'validate', 'master/report/validate'),
(383, 'master', 'Report', 'store', 'master/report/store'),
(384, 'master', 'Report', 'json', 'master/report/json'),
(385, 'master', 'Report', 'edit', 'master/report/edit'),
(386, 'master', 'Report', 'update', 'master/report/update'),
(387, 'master', 'Report', 'delete', 'master/report/delete'),
(388, 'master', 'Report', 'status', 'master/report/status'),
(389, 'master', 'Report', 'generate', 'master/report/generate'),
(390, 'master', 'Report', 'konfig', 'master/report/konfig'),
(391, 'master', 'Report', 'upload_file', 'master/report/upload_file'),
(392, 'master', 'Report', 'get_uri', 'master/report/get_uri'),
(393, 'master', 'Report', 'log_activity', 'master/report/log_activity'),
(394, 'master', 'Report', 'get_instance', 'master/report/get_instance'),
(395, 'master', 'Role', '__construct', 'master/role/__construct'),
(396, 'master', 'Role', 'index', 'master/role/index'),
(397, 'master', 'Role', 'create', 'master/role/create'),
(398, 'master', 'Role', 'validate', 'master/role/validate'),
(399, 'master', 'Role', 'store', 'master/role/store'),
(400, 'master', 'Role', 'json', 'master/role/json'),
(401, 'master', 'Role', 'edit', 'master/role/edit'),
(402, 'master', 'Role', 'update', 'master/role/update'),
(403, 'master', 'Role', 'delete', 'master/role/delete'),
(404, 'master', 'Role', 'status', 'master/role/status'),
(405, 'master', 'Role', 'konfig', 'master/role/konfig'),
(406, 'master', 'Role', 'upload_file', 'master/role/upload_file'),
(407, 'master', 'Role', 'get_uri', 'master/role/get_uri'),
(408, 'master', 'Role', 'log_activity', 'master/role/log_activity'),
(409, 'master', 'Role', 'get_instance', 'master/role/get_instance'),
(410, 'master', 'Service', '__construct', 'master/service/__construct'),
(411, 'master', 'Service', 'index', 'master/service/index'),
(412, 'master', 'Service', 'create', 'master/service/create'),
(413, 'master', 'Service', 'validate', 'master/service/validate'),
(414, 'master', 'Service', 'store', 'master/service/store'),
(415, 'master', 'Service', 'json', 'master/service/json'),
(416, 'master', 'Service', 'edit', 'master/service/edit'),
(417, 'master', 'Service', 'update', 'master/service/update'),
(418, 'master', 'Service', 'delete', 'master/service/delete'),
(419, 'master', 'Service', 'status', 'master/service/status'),
(420, 'master', 'Service', 'konfig', 'master/service/konfig'),
(421, 'master', 'Service', 'upload_file', 'master/service/upload_file'),
(422, 'master', 'Service', 'get_uri', 'master/service/get_uri'),
(423, 'master', 'Service', 'log_activity', 'master/service/log_activity'),
(424, 'master', 'Service', 'get_instance', 'master/service/get_instance'),
(425, 'master', 'Site', '__construct', 'master/site/__construct'),
(426, 'master', 'Site', 'index', 'master/site/index'),
(427, 'master', 'Site', 'site_json', 'master/site/site_json'),
(428, 'master', 'Site', 'site_default', 'master/site/site_default'),
(429, 'master', 'Site', 'site_custom', 'master/site/site_custom'),
(430, 'master', 'Site', 'site_data', 'master/site/site_data'),
(431, 'master', 'Site', 'site_store', 'master/site/site_store'),
(432, 'master', 'Site', 'site_edit', 'master/site/site_edit'),
(433, 'master', 'Site', 'site_update', 'master/site/site_update'),
(434, 'master', 'Site', 'site_hidden', 'master/site/site_hidden'),
(435, 'master', 'Site', 'konfig', 'master/site/konfig'),
(436, 'master', 'Site', 'upload_file', 'master/site/upload_file'),
(437, 'master', 'Site', 'get_uri', 'master/site/get_uri'),
(438, 'master', 'Site', 'log_activity', 'master/site/log_activity'),
(439, 'master', 'Site', 'get_instance', 'master/site/get_instance'),
(440, 'master', 'Titleku', '__construct', 'master/titleku/__construct'),
(441, 'master', 'Titleku', 'index', 'master/titleku/index'),
(442, 'master', 'Titleku', 'create', 'master/titleku/create'),
(443, 'master', 'Titleku', 'validate', 'master/titleku/validate'),
(444, 'master', 'Titleku', 'store', 'master/titleku/store'),
(445, 'master', 'Titleku', 'json', 'master/titleku/json'),
(446, 'master', 'Titleku', 'edit', 'master/titleku/edit'),
(447, 'master', 'Titleku', 'update', 'master/titleku/update'),
(448, 'master', 'Titleku', 'delete', 'master/titleku/delete'),
(449, 'master', 'Titleku', 'status', 'master/titleku/status'),
(450, 'master', 'Titleku', 'konfig', 'master/titleku/konfig'),
(451, 'master', 'Titleku', 'upload_file', 'master/titleku/upload_file'),
(452, 'master', 'Titleku', 'get_uri', 'master/titleku/get_uri'),
(453, 'master', 'Titleku', 'log_activity', 'master/titleku/log_activity'),
(454, 'master', 'Titleku', 'get_instance', 'master/titleku/get_instance'),
(455, 'master', 'User', 'index', 'master/user/index'),
(456, 'master', 'User', 'json', 'master/user/json'),
(457, 'master', 'User', 'json_activity', 'master/user/json_activity'),
(458, 'master', 'User', 'store', 'master/user/store'),
(459, 'master', 'User', 'edit', 'master/user/edit'),
(460, 'master', 'User', 'editUser', 'master/user/edituser'),
(461, 'master', 'User', 'updateUser', 'master/user/updateuser'),
(462, 'master', 'User', 'update', 'master/user/update'),
(463, 'master', 'User', 'delete', 'master/user/delete'),
(464, 'master', 'User', 'password_check', 'master/user/password_check'),
(465, 'master', 'User', 'editUser_redirect', 'master/user/edituser_redirect'),
(466, 'master', 'User', '__construct', 'master/user/__construct'),
(467, 'master', 'User', 'konfig', 'master/user/konfig'),
(468, 'master', 'User', 'upload_file', 'master/user/upload_file'),
(469, 'master', 'User', 'get_uri', 'master/user/get_uri'),
(470, 'master', 'User', 'log_activity', 'master/user/log_activity'),
(471, 'master', 'User', 'get_instance', 'master/user/get_instance'),
(472, 'master', 'Usulan', '__construct', 'master/usulan/__construct'),
(473, 'master', 'Usulan', 'index', 'master/usulan/index'),
(474, 'master', 'Usulan', 'create', 'master/usulan/create'),
(475, 'master', 'Usulan', 'validate', 'master/usulan/validate'),
(476, 'master', 'Usulan', 'store', 'master/usulan/store'),
(477, 'master', 'Usulan', 'json', 'master/usulan/json'),
(478, 'master', 'Usulan', 'edit', 'master/usulan/edit'),
(479, 'master', 'Usulan', 'update', 'master/usulan/update'),
(480, 'master', 'Usulan', 'delete', 'master/usulan/delete'),
(481, 'master', 'Usulan', 'status', 'master/usulan/status'),
(482, 'master', 'Usulan', 'konfig', 'master/usulan/konfig'),
(483, 'master', 'Usulan', 'upload_file', 'master/usulan/upload_file'),
(484, 'master', 'Usulan', 'get_uri', 'master/usulan/get_uri'),
(485, 'master', 'Usulan', 'log_activity', 'master/usulan/log_activity'),
(486, 'master', 'Usulan', 'get_instance', 'master/usulan/get_instance'),
(487, 'master', 'Usulan_detail', '__construct', 'master/usulan_detail/__construct'),
(488, 'master', 'Usulan_detail', 'index', 'master/usulan_detail/index'),
(489, 'master', 'Usulan_detail', 'create', 'master/usulan_detail/create'),
(490, 'master', 'Usulan_detail', 'validate', 'master/usulan_detail/validate'),
(491, 'master', 'Usulan_detail', 'store', 'master/usulan_detail/store'),
(492, 'master', 'Usulan_detail', 'json', 'master/usulan_detail/json'),
(493, 'master', 'Usulan_detail', 'edit', 'master/usulan_detail/edit'),
(494, 'master', 'Usulan_detail', 'update', 'master/usulan_detail/update'),
(495, 'master', 'Usulan_detail', 'delete', 'master/usulan_detail/delete'),
(496, 'master', 'Usulan_detail', 'status', 'master/usulan_detail/status'),
(497, 'master', 'Usulan_detail', 'konfig', 'master/usulan_detail/konfig'),
(498, 'master', 'Usulan_detail', 'upload_file', 'master/usulan_detail/upload_file'),
(499, 'master', 'Usulan_detail', 'get_uri', 'master/usulan_detail/get_uri'),
(500, 'master', 'Usulan_detail', 'log_activity', 'master/usulan_detail/log_activity'),
(501, 'master', 'Usulan_detail', 'get_instance', 'master/usulan_detail/get_instance');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `ip` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `get` longtext DEFAULT NULL,
  `post` longtext DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activity`
--

INSERT INTO `activity` (`ip`, `link`, `get`, `post`, `user_id`, `created_at`) VALUES
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('182.0.231.50', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:10'),
('182.0.231.50', 'http://gatoko1.com/sop/report/users', '[]', '[]', 1, '2019-03-25 11:32:12'),
('182.0.231.50', 'http://gatoko1.com/sop/report/Users/ajaxall/', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"0\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"1\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"2\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"3\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"4\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"5\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"6\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"7\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"8\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"9\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"10\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:13'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:57'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:31:58'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:31:59'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53'),
('182.0.231.50', 'http://gatoko1.com/sop/index.php/master/user/editUser/rRntbEh0leW4k9gNhEWWCbHwo2zGf472OKDemzWpDYM~', '[]', '[]', 1, '2019-03-25 11:32:00'),
('182.0.231.50', 'http://gatoko1.com/sop/master/user/json_activity/9', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:01'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=ke', '{\"term\":\"ke\"}', '[]', 1, '2019-03-25 11:32:21'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:22'),
('182.0.231.173', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:23'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/home/get_autocomplete?term=kementr', '{\"term\":\"kementr\"}', '[]', 1, '2019-03-25 11:32:24'),
('182.0.197.180', 'http://gatoko1.com/sop/login/logout', '[]', '[]', 1, '2019-03-25 11:32:31'),
('182.0.197.180', 'http://gatoko1.com/sop/index.php/login', '[]', '[]', NULL, '2019-03-25 11:32:31'),
('182.0.231.125', 'http://gatoko1.com/sop/login/lockscreen?user=smartsoft', '{\"user\":\"smartsoft\"}', '[]', NULL, '2019-03-25 11:32:38'),
('182.0.231.125', 'http://gatoko1.com/sop/login/act_login', '[]', '{\"username\":\"smartsoft\",\"password\":\"admin\"}', NULL, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/', '[]', '[]', 1, '2019-03-25 11:32:41'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-03-25 11:32:45'),
('182.0.231.125', 'http://gatoko1.com/sop/master/user/json_activity/1', '[]', '{\"draw\":\"1\",\"columns\":[{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"false\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"created_at\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"ip\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"link\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"post\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}},{\"data\":\"get\",\"name\":\"\",\"searchable\":\"true\",\"orderable\":\"true\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}],\"order\":[{\"column\":\"1\",\"dir\":\"asc\"}],\"start\":\"0\",\"length\":\"10\",\"search\":{\"value\":\"\",\"regex\":\"false\"}}', 1, '2019-03-25 11:32:46'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 10:59:26'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/editUser/6XmR9kAQpXD-j2AwEhMiO54SOxC8fXgNJVwrdGbiesI~', '[]', '[]', 1, '2019-02-19 11:03:04'),
('118.136.148.201', 'http://gatoko1.com/sop/master/user/updateUser', '[]', '{\"ids\":\"1\",\"name\":\"Smartsoft Studio\",\"email\":\"smartsoftstudio1@mail.com\",\"desc\":\"asda\"}', 1, '2019-02-19 11:02:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `url`, `created_at`, `updated_at`) VALUES
(271, '6950c16c9bcc6995f376b297f163175942635.jpg', 'image/jpeg', 'webfiles/users/6950c16c9bcc6995f376b297f163175942635.jpg', 'user', 13, 'ENABLE', 'http://localhost:8080/webfiles/users/6950c16c9bcc6995f376b297f163175942635.jpg', '2019-10-02 09:46:54', '2019-10-02 09:58:43'),
(272, '6950c16c9bcc6995f376b297f163175930376.jpg', 'image/jpeg', 'webfiles/users/6950c16c9bcc6995f376b297f163175930376.jpg', 'user', 14, 'ENABLE', 'http://localhost:8080/webfiles/users/6950c16c9bcc6995f376b297f163175930376.jpg', '2019-10-02 09:46:54', '2019-10-02 09:58:51'),
(280, '6950c16c9bcc6995f376b297f163175928889.jpeg', 'image/jpeg', 'webfiles/team/6950c16c9bcc6995f376b297f163175928889.jpeg', 'tbl_team', 8, 'ENABLE', 'http://localhost:8000/webfiles/team/6950c16c9bcc6995f376b297f163175928889.jpeg', '2019-10-06 16:18:51', NULL),
(284, '6950c16c9bcc6995f376b297f163175989292.png', 'image/png', 'webfiles/manager/6950c16c9bcc6995f376b297f163175989292.png', 'tbl_manager', 5, 'ENABLE', 'http://localhost:8000/webfiles/manager/6950c16c9bcc6995f376b297f163175989292.png', '2019-10-02 20:27:08', NULL),
(285, '6950c16c9bcc6995f376b297f163175933310.png', 'image/png', 'webfiles/raider/6950c16c9bcc6995f376b297f163175933310.png', 'tbl_raider', 1, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f163175933310.png', '2019-10-02 22:02:28', NULL),
(287, '6950c16c9bcc6995f376b297f163175918963.png', 'image/png', 'webfiles/raider/6950c16c9bcc6995f376b297f163175918963.png', 'tbl_raider', 3, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f163175918963.png', '2019-10-02 22:06:53', NULL),
(290, '6950c16c9bcc6995f376b297f16317593914.jpg', 'image/jpeg', 'webfiles/raider/6950c16c9bcc6995f376b297f16317593914.jpg', 'tbl_raider', 4, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f16317593914.jpg', '2019-10-05 10:35:10', NULL),
(309, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 9, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-10-07 16:08:57', NULL),
(310, '6950c16c9bcc6995f376b297f163175982672.jpg', 'image/jpeg', 'webfiles/raider/6950c16c9bcc6995f376b297f163175982672.jpg', 'tbl_raider', 5, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f163175982672.jpg', '2019-10-07 16:27:51', NULL),
(313, '6950c16c9bcc6995f376b297f163175979711.jpg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175979711.jpg', 'master_gallery', 1, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175979711.jpg', '2019-10-22 08:59:58', NULL),
(314, '6950c16c9bcc6995f376b297f163175933661.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175933661.jpeg', 'master_gallery', 2, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175933661.jpeg', '2019-10-07 00:00:00', NULL),
(315, 'gallery_default.jpg', 'image/jpg', 'webfiles/covergallery/gallery_default.jpg', 'master_gallery', 3, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/gallery_default.jpg', '2019-10-07 00:00:00', NULL),
(316, '6950c16c9bcc6995f376b297f163175940137.jpg', 'image/jpeg', 'webfiles/team/6950c16c9bcc6995f376b297f163175940137.jpg', 'tbl_team', 10, 'ENABLE', 'http://localhost:8000/webfiles/team/6950c16c9bcc6995f376b297f163175940137.jpg', '2019-10-23 18:26:02', NULL),
(317, '6950c16c9bcc6995f376b297f163175965742.jpg', 'image/jpeg', 'webfiles/raider/6950c16c9bcc6995f376b297f163175965742.jpg', 'tbl_raider', 6, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f163175965742.jpg', '2019-10-20 12:22:49', NULL),
(320, '6950c16c9bcc6995f376b297f163175960803.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175960803.jpg', 'user', 15, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175960803.jpg', '2019-10-24 14:51:14', NULL),
(321, '6950c16c9bcc6995f376b297f16317591759.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f16317591759.jpg', 'user', 16, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f16317591759.jpg', '2019-10-24 14:52:03', NULL),
(322, '6950c16c9bcc6995f376b297f163175989657.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175989657.jpg', 'user', 17, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175989657.jpg', '2019-10-24 14:52:24', NULL),
(323, '6950c16c9bcc6995f376b297f163175944491.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175944491.jpg', 'user', 18, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175944491.jpg', '2019-10-24 14:52:54', NULL),
(324, '6950c16c9bcc6995f376b297f163175942326.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175942326.jpg', 'user', 19, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175942326.jpg', '2019-10-24 14:53:19', NULL),
(325, '6950c16c9bcc6995f376b297f163175919391.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175919391.jpg', 'user', 20, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175919391.jpg', '2019-10-24 14:53:37', NULL),
(326, '6950c16c9bcc6995f376b297f163175995708.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175995708.jpg', 'user', 21, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175995708.jpg', '2019-10-24 14:54:20', NULL),
(327, '6950c16c9bcc6995f376b297f163175982543.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175982543.jpg', 'user', 22, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175982543.jpg', '2019-10-24 14:54:47', NULL),
(328, '6950c16c9bcc6995f376b297f163175927830.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175927830.jpg', 'user', 23, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175927830.jpg', '2019-10-24 14:55:09', NULL),
(329, '6950c16c9bcc6995f376b297f163175914267.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175914267.jpg', 'user', 24, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175914267.jpg', '2019-10-24 14:55:38', NULL),
(330, '6950c16c9bcc6995f376b297f163175971310.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175971310.jpg', 'user', 25, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175971310.jpg', '2019-10-24 14:55:57', NULL),
(331, '6950c16c9bcc6995f376b297f16317598666.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f16317598666.jpg', 'user', 26, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f16317598666.jpg', '2019-10-24 14:56:49', NULL),
(332, '6950c16c9bcc6995f376b297f163175937491.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175937491.jpg', 'user', 27, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175937491.jpg', '2019-10-24 14:57:04', NULL),
(333, '6950c16c9bcc6995f376b297f163175963688.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175963688.jpg', 'user', 28, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175963688.jpg', '2019-10-24 14:57:44', NULL),
(334, '6950c16c9bcc6995f376b297f163175992064.jpg', 'image/png', 'webfiles/6950c16c9bcc6995f376b297f163175992064.jpg', 'user', 29, 'ENABLE', 'http://localhost:8080/webfiles/6950c16c9bcc6995f376b297f163175992064.jpg', '2019-10-24 14:58:06', NULL),
(335, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 11, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-10-24 15:06:28', NULL),
(336, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 7, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:07:37', NULL),
(337, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 8, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:08:28', NULL),
(338, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 9, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:09:18', NULL),
(339, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 12, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-10-24 15:11:26', NULL),
(340, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 10, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:12:19', NULL),
(341, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 11, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:12:59', NULL),
(342, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 12, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:13:36', NULL),
(343, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 13, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-10-24 15:17:12', NULL),
(344, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 13, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:18:37', NULL),
(345, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 14, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-24 15:19:37', NULL),
(346, '6950c16c9bcc6995f376b297f163175940476.jpg', 'image/jpeg', 'webfiles/team/6950c16c9bcc6995f376b297f163175940476.jpg', 'tbl_team', 14, 'ENABLE', 'http://localhost:8000/webfiles/team/6950c16c9bcc6995f376b297f163175940476.jpg', '2019-10-24 18:38:34', NULL),
(347, '6950c16c9bcc6995f376b297f163175936556.jpg', 'image/jpeg', 'webfiles/raider/6950c16c9bcc6995f376b297f163175936556.jpg', 'tbl_raider', 15, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f163175936556.jpg', '2019-10-24 16:51:16', NULL),
(348, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 15, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-10-24 17:33:42', NULL),
(349, '6950c16c9bcc6995f376b297f163175947693.jpg', 'image/jpeg', 'webfiles/raider/6950c16c9bcc6995f376b297f163175947693.jpg', 'tbl_raider', 16, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f163175947693.jpg', '2019-10-24 17:39:37', NULL),
(350, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 16, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-10-24 18:16:16', NULL),
(352, '6950c16c9bcc6995f376b297f163175983149.png', 'image/png', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175983149.png', 'tbl_blog', 2, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175983149.png', '2019-10-24 18:46:49', NULL),
(353, '6950c16c9bcc6995f376b297f163175938981.jpeg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f163175938981.jpeg', 'tbl_merchandise', 2, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f163175938981.jpeg', '2019-10-24 18:53:14', NULL),
(355, '6950c16c9bcc6995f376b297f163175990681.jpeg', 'image/jpeg', 'webfiles/wisata/6950c16c9bcc6995f376b297f163175990681.jpeg', 'tbl_wisata', 3, 'ENABLE', 'http://localhost:8080/webfiles/wisata/6950c16c9bcc6995f376b297f163175990681.jpeg', '2019-10-25 02:23:59', NULL),
(356, '6950c16c9bcc6995f376b297f163175962793.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175962793.jpeg', 'master_gallery', 5, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175962793.jpeg', '2019-10-25 02:30:38', NULL),
(357, '6950c16c9bcc6995f376b297f163175939436.png', 'image/png', 'webfiles/wisata/6950c16c9bcc6995f376b297f163175939436.png', 'tbl_wisata', 4, 'ENABLE', 'http://localhost:8080/webfiles/wisata/6950c16c9bcc6995f376b297f163175939436.png', '2019-10-25 02:52:12', NULL),
(359, '6950c16c9bcc6995f376b297f163175917096.png', 'image/png', 'webfiles/merchandise/6950c16c9bcc6995f376b297f163175917096.png', 'tbl_merchandise', 4, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f163175917096.png', '2019-10-25 03:02:23', NULL),
(360, '6950c16c9bcc6995f376b297f16317593953.pdf', 'application/pdf', 'webfiles/event/6950c16c9bcc6995f376b297f16317593953.pdf', 'event_rule', 4, 'ENABLE', 'http://localhost:8080/webfiles/event/6950c16c9bcc6995f376b297f16317593953.pdf', '2019-10-28 17:54:49', NULL),
(362, '6950c16c9bcc6995f376b297f163175998847.jpg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f163175998847.jpg', 'tbl_merchandise_detail', 5, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f163175998847.jpg', '2019-10-28 12:43:32', NULL),
(363, '6950c16c9bcc6995f376b297f1631759988471.jpg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f1631759988471.jpg', 'tbl_merchandise_detail', 5, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f1631759988471.jpg', '2019-10-28 12:43:32', NULL),
(364, '6950c16c9bcc6995f376b297f1631759988472.jpg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f1631759988472.jpg', 'tbl_merchandise_detail', 5, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f1631759988472.jpg', '2019-10-28 12:43:32', NULL),
(366, '6950c16c9bcc6995f376b297f16317595640.jpg', 'image/jpeg', 'webfiles/raider/6950c16c9bcc6995f376b297f16317595640.jpg', 'tbl_raider', 17, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f16317595640.jpg', '2019-10-28 13:01:22', NULL),
(367, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 18, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-28 15:32:43', NULL),
(369, '6950c16c9bcc6995f376b297f163175942003.jpeg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175942003.jpeg', 'tbl_blog', 4, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175942003.jpeg', '2019-10-28 15:35:52', NULL),
(378, '6950c16c9bcc6995f376b297f163175943376.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175943376.jpeg', 'master_gallery', 6, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175943376.jpeg', '2019-10-28 18:31:00', NULL),
(380, '6950c16c9bcc6995f376b297f163175914691.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175914691.jpeg', 'master_gallery', 7, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175914691.jpeg', '2019-10-28 18:38:16', NULL),
(381, '6950c16c9bcc6995f376b297f163175963248.png', 'image/png', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175963248.png', 'master_gallery', 8, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175963248.png', '2019-10-28 18:56:04', NULL),
(382, '6950c16c9bcc6995f376b297f163175956479.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175956479.jpg', 'tbl_gallery', 33, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175956479.jpg', '2019-10-28 19:17:03', NULL),
(383, '6950c16c9bcc6995f376b297f163175982074.jpg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175982074.jpg', 'master_gallery', 9, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175982074.jpg', '2019-10-28 19:31:32', NULL),
(384, '6950c16c9bcc6995f376b297f163175911445.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175911445.jpg', 'tbl_gallery', 34, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175911445.jpg', '2019-10-28 19:36:55', NULL),
(385, '6950c16c9bcc6995f376b297f1631759114451.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114451.jpg', 'tbl_gallery', 35, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114451.jpg', '2019-10-28 19:36:55', NULL),
(386, '6950c16c9bcc6995f376b297f1631759114452.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114452.jpg', 'tbl_gallery', 36, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114452.jpg', '2019-10-28 19:36:55', NULL),
(387, '6950c16c9bcc6995f376b297f1631759114453.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114453.jpg', 'tbl_gallery', 37, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114453.jpg', '2019-10-28 19:36:55', NULL),
(388, '6950c16c9bcc6995f376b297f1631759114454.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114454.jpg', 'tbl_gallery', 38, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114454.jpg', '2019-10-28 19:36:55', NULL),
(389, '6950c16c9bcc6995f376b297f1631759114455.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114455.jpg', 'tbl_gallery', 39, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114455.jpg', '2019-10-28 19:36:55', NULL),
(390, '6950c16c9bcc6995f376b297f1631759114456.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114456.jpg', 'tbl_gallery', 40, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114456.jpg', '2019-10-28 19:36:55', NULL),
(391, '6950c16c9bcc6995f376b297f1631759114457.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114457.jpg', 'tbl_gallery', 41, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114457.jpg', '2019-10-28 19:36:55', NULL),
(392, '6950c16c9bcc6995f376b297f1631759114458.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759114458.jpg', 'tbl_gallery', 42, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759114458.jpg', '2019-10-28 19:36:55', NULL),
(393, '6950c16c9bcc6995f376b297f163175935873.jpg', 'image/jpeg', 'webfiles/raider/6950c16c9bcc6995f376b297f163175935873.jpg', 'tbl_raider', 19, 'ENABLE', 'http://localhost:8000/webfiles/raider/6950c16c9bcc6995f376b297f163175935873.jpg', '2019-10-28 19:50:04', NULL),
(394, '6950c16c9bcc6995f376b297f163175929917.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175929917.jpg', 'tbl_gallery', 43, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175929917.jpg', '2019-10-28 19:54:13', NULL),
(395, '6950c16c9bcc6995f376b297f1631759299171.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299171.jpg', 'tbl_gallery', 44, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299171.jpg', '2019-10-28 19:54:13', NULL),
(396, '6950c16c9bcc6995f376b297f1631759299172.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299172.jpg', 'tbl_gallery', 45, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299172.jpg', '2019-10-28 19:54:13', NULL),
(397, '6950c16c9bcc6995f376b297f1631759299173.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299173.jpg', 'tbl_gallery', 46, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299173.jpg', '2019-10-28 19:54:13', NULL),
(398, '6950c16c9bcc6995f376b297f1631759299174.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299174.jpg', 'tbl_gallery', 47, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299174.jpg', '2019-10-28 19:54:13', NULL),
(399, '6950c16c9bcc6995f376b297f1631759299175.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299175.jpg', 'tbl_gallery', 48, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299175.jpg', '2019-10-28 19:54:13', NULL),
(400, '6950c16c9bcc6995f376b297f1631759299176.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299176.jpg', 'tbl_gallery', 49, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299176.jpg', '2019-10-28 19:54:13', NULL),
(401, '6950c16c9bcc6995f376b297f1631759299177.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299177.jpg', 'tbl_gallery', 50, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299177.jpg', '2019-10-28 19:54:13', NULL),
(402, '6950c16c9bcc6995f376b297f1631759299178.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299178.jpg', 'tbl_gallery', 51, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299178.jpg', '2019-10-28 19:54:13', NULL),
(403, '6950c16c9bcc6995f376b297f1631759299179.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759299179.jpg', 'tbl_gallery', 52, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759299179.jpg', '2019-10-28 19:54:13', NULL),
(404, '6950c16c9bcc6995f376b297f16317592991710.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991710.jpg', 'tbl_gallery', 53, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991710.jpg', '2019-10-28 19:54:13', NULL),
(405, '6950c16c9bcc6995f376b297f16317592991711.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991711.jpg', 'tbl_gallery', 54, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991711.jpg', '2019-10-28 19:54:13', NULL),
(406, '6950c16c9bcc6995f376b297f16317592991712.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991712.jpg', 'tbl_gallery', 55, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991712.jpg', '2019-10-28 19:54:13', NULL),
(407, '6950c16c9bcc6995f376b297f16317592991713.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991713.jpg', 'tbl_gallery', 56, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991713.jpg', '2019-10-28 19:54:13', NULL),
(408, '6950c16c9bcc6995f376b297f16317592991714.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991714.jpg', 'tbl_gallery', 57, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991714.jpg', '2019-10-28 19:54:13', NULL),
(409, '6950c16c9bcc6995f376b297f16317592991715.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991715.jpg', 'tbl_gallery', 58, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991715.jpg', '2019-10-28 19:54:13', NULL),
(410, '6950c16c9bcc6995f376b297f16317592991716.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991716.jpg', 'tbl_gallery', 59, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991716.jpg', '2019-10-28 19:54:13', NULL),
(411, '6950c16c9bcc6995f376b297f16317592991717.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991717.jpg', 'tbl_gallery', 60, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991717.jpg', '2019-10-28 19:54:13', NULL),
(412, '6950c16c9bcc6995f376b297f16317592991718.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991718.jpg', 'tbl_gallery', 61, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991718.jpg', '2019-10-28 19:54:13', NULL),
(413, '6950c16c9bcc6995f376b297f16317592991719.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592991719.jpg', 'tbl_gallery', 62, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592991719.jpg', '2019-10-28 19:54:13', NULL),
(415, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 339, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-29 20:49:56', NULL),
(418, '6950c16c9bcc6995f376b297f163175992326.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175992326.jpeg', 'tbl_gallery', 63, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175992326.jpeg', '2019-10-30 18:41:33', NULL),
(419, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 340, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-31 11:03:16', NULL),
(420, '6950c16c9bcc6995f376b297f163175974708.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175974708.jpeg', 'tbl_gallery', 64, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175974708.jpeg', '2019-10-31 12:03:58', NULL),
(421, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 111, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-10-31 12:18:33', NULL),
(422, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 341, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-31 12:19:29', NULL),
(423, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 342, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-31 12:20:12', NULL),
(424, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 343, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-31 12:20:57', NULL),
(425, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 344, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-31 20:19:47', NULL),
(426, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 345, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-10-31 20:27:47', NULL),
(429, '6950c16c9bcc6995f376b297f163175985731.jpg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175985731.jpg', 'master_gallery', 10, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175985731.jpg', '2019-10-31 22:22:35', NULL),
(434, '6950c16c9bcc6995f376b297f163175984477.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175984477.jpg', 'tbl_gallery', 71, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175984477.jpg', '2019-10-31 22:32:24', NULL),
(435, '6950c16c9bcc6995f376b297f1631759844771.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844771.jpg', 'tbl_gallery', 72, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844771.jpg', '2019-10-31 22:32:24', NULL),
(436, '6950c16c9bcc6995f376b297f1631759844772.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844772.jpg', 'tbl_gallery', 73, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844772.jpg', '2019-10-31 22:32:24', NULL),
(437, '6950c16c9bcc6995f376b297f1631759844773.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844773.jpg', 'tbl_gallery', 74, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844773.jpg', '2019-10-31 22:32:24', NULL),
(438, '6950c16c9bcc6995f376b297f1631759844774.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844774.jpg', 'tbl_gallery', 75, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844774.jpg', '2019-10-31 22:32:24', NULL),
(439, '6950c16c9bcc6995f376b297f1631759844775.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844775.jpg', 'tbl_gallery', 76, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844775.jpg', '2019-10-31 22:32:24', NULL),
(440, '6950c16c9bcc6995f376b297f1631759844776.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844776.jpg', 'tbl_gallery', 77, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844776.jpg', '2019-10-31 22:32:24', NULL),
(441, '6950c16c9bcc6995f376b297f1631759844777.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844777.jpg', 'tbl_gallery', 78, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844777.jpg', '2019-10-31 22:32:25', NULL),
(442, '6950c16c9bcc6995f376b297f1631759844778.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844778.jpg', 'tbl_gallery', 79, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844778.jpg', '2019-10-31 22:32:25', NULL),
(443, '6950c16c9bcc6995f376b297f1631759844779.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759844779.jpg', 'tbl_gallery', 80, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759844779.jpg', '2019-10-31 22:32:25', NULL),
(444, '6950c16c9bcc6995f376b297f16317598447710.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447710.jpg', 'tbl_gallery', 81, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447710.jpg', '2019-10-31 22:32:25', NULL),
(445, '6950c16c9bcc6995f376b297f16317598447711.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447711.jpg', 'tbl_gallery', 82, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447711.jpg', '2019-10-31 22:32:25', NULL),
(446, '6950c16c9bcc6995f376b297f16317598447712.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447712.jpg', 'tbl_gallery', 83, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447712.jpg', '2019-10-31 22:32:25', NULL),
(447, '6950c16c9bcc6995f376b297f16317598447713.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447713.jpg', 'tbl_gallery', 84, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447713.jpg', '2019-10-31 22:32:25', NULL),
(448, '6950c16c9bcc6995f376b297f16317598447714.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447714.jpg', 'tbl_gallery', 85, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447714.jpg', '2019-10-31 22:32:25', NULL),
(449, '6950c16c9bcc6995f376b297f16317598447715.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447715.jpg', 'tbl_gallery', 86, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447715.jpg', '2019-10-31 22:32:25', NULL),
(450, '6950c16c9bcc6995f376b297f16317598447716.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447716.jpg', 'tbl_gallery', 87, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447716.jpg', '2019-10-31 22:32:25', NULL),
(451, '6950c16c9bcc6995f376b297f16317598447717.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447717.jpg', 'tbl_gallery', 88, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447717.jpg', '2019-10-31 22:32:25', NULL),
(452, '6950c16c9bcc6995f376b297f16317598447718.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447718.jpg', 'tbl_gallery', 89, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447718.jpg', '2019-10-31 22:32:25', NULL),
(453, '6950c16c9bcc6995f376b297f16317598447719.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317598447719.jpg', 'tbl_gallery', 90, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317598447719.jpg', '2019-10-31 22:32:25', NULL),
(454, '6950c16c9bcc6995f376b297f163175941532.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175941532.jpeg', 'tbl_gallery', 91, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175941532.jpeg', '2019-10-31 22:38:57', NULL),
(455, '6950c16c9bcc6995f376b297f163175933315.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175933315.jpeg', 'tbl_gallery', 92, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175933315.jpeg', '2019-10-31 22:39:18', NULL),
(456, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 346, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-01 01:08:47', NULL),
(459, '6950c16c9bcc6995f376b297f163175962448.jpg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175962448.jpg', 'master_gallery', 11, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175962448.jpg', '2019-11-01 12:59:43', NULL),
(460, '6950c16c9bcc6995f376b297f163175945404.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175945404.jpg', 'tbl_gallery', 93, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175945404.jpg', '2019-11-01 13:00:21', NULL),
(461, '6950c16c9bcc6995f376b297f1631759454041.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454041.jpg', 'tbl_gallery', 94, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454041.jpg', '2019-11-01 13:00:22', NULL),
(462, '6950c16c9bcc6995f376b297f1631759454042.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454042.jpg', 'tbl_gallery', 95, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454042.jpg', '2019-11-01 13:00:23', NULL),
(463, '6950c16c9bcc6995f376b297f1631759454043.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454043.jpg', 'tbl_gallery', 96, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454043.jpg', '2019-11-01 13:00:23', NULL),
(464, '6950c16c9bcc6995f376b297f1631759454044.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454044.jpg', 'tbl_gallery', 97, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454044.jpg', '2019-11-01 13:00:23', NULL),
(465, '6950c16c9bcc6995f376b297f1631759454045.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454045.jpg', 'tbl_gallery', 98, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454045.jpg', '2019-11-01 13:00:24', NULL),
(466, '6950c16c9bcc6995f376b297f1631759454046.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454046.jpg', 'tbl_gallery', 99, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454046.jpg', '2019-11-01 13:00:24', NULL),
(467, '6950c16c9bcc6995f376b297f1631759454047.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454047.jpg', 'tbl_gallery', 100, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454047.jpg', '2019-11-01 13:00:25', NULL),
(468, '6950c16c9bcc6995f376b297f1631759454048.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454048.jpg', 'tbl_gallery', 101, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454048.jpg', '2019-11-01 13:00:25', NULL),
(469, '6950c16c9bcc6995f376b297f1631759454049.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759454049.jpg', 'tbl_gallery', 102, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759454049.jpg', '2019-11-01 13:00:26', NULL),
(470, '6950c16c9bcc6995f376b297f16317594540410.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540410.jpg', 'tbl_gallery', 103, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540410.jpg', '2019-11-01 13:00:26', NULL),
(471, '6950c16c9bcc6995f376b297f16317594540411.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540411.jpg', 'tbl_gallery', 104, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540411.jpg', '2019-11-01 13:00:26', NULL),
(472, '6950c16c9bcc6995f376b297f16317594540412.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540412.jpg', 'tbl_gallery', 105, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540412.jpg', '2019-11-01 13:00:27', NULL),
(473, '6950c16c9bcc6995f376b297f16317594540413.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540413.jpg', 'tbl_gallery', 106, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540413.jpg', '2019-11-01 13:00:27', NULL),
(474, '6950c16c9bcc6995f376b297f16317594540414.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540414.jpg', 'tbl_gallery', 107, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540414.jpg', '2019-11-01 13:00:27', NULL),
(475, '6950c16c9bcc6995f376b297f16317594540415.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540415.jpg', 'tbl_gallery', 108, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540415.jpg', '2019-11-01 13:00:27', NULL),
(476, '6950c16c9bcc6995f376b297f16317594540416.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540416.jpg', 'tbl_gallery', 109, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540416.jpg', '2019-11-01 13:00:28', NULL),
(477, '6950c16c9bcc6995f376b297f16317594540417.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540417.jpg', 'tbl_gallery', 110, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540417.jpg', '2019-11-01 13:00:28', NULL),
(478, '6950c16c9bcc6995f376b297f16317594540418.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540418.jpg', 'tbl_gallery', 111, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540418.jpg', '2019-11-01 13:00:28', NULL),
(479, '6950c16c9bcc6995f376b297f16317594540419.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317594540419.jpg', 'tbl_gallery', 112, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317594540419.jpg', '2019-11-01 13:00:29', NULL),
(480, '6950c16c9bcc6995f376b297f163175990470.jpg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175990470.jpg', 'tbl_blog', 7, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175990470.jpg', '2019-11-01 13:02:26', NULL),
(482, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 347, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-01 16:37:25', NULL),
(483, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 348, 'ENABLE', 'http://dev.karyastudio.com/nso_mobile2/webfiles/raider/raider_default.png', '2019-11-01 16:46:06', NULL),
(484, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 349, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-01 18:12:23', NULL),
(485, '6950c16c9bcc6995f376b297f163175948996.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175948996.jpeg', 'master_gallery', 12, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175948996.jpeg', '2019-11-01 18:27:46', NULL),
(486, '6950c16c9bcc6995f376b297f163175956742.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175956742.jpeg', 'tbl_gallery', 113, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175956742.jpeg', '2019-11-01 18:28:24', NULL),
(487, '6950c16c9bcc6995f376b297f1631759567421.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567421.jpeg', 'tbl_gallery', 114, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567421.jpeg', '2019-11-01 18:28:24', NULL),
(488, '6950c16c9bcc6995f376b297f1631759567422.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567422.jpeg', 'tbl_gallery', 115, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567422.jpeg', '2019-11-01 18:28:24', NULL),
(489, '6950c16c9bcc6995f376b297f1631759567423.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567423.jpeg', 'tbl_gallery', 116, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567423.jpeg', '2019-11-01 18:28:24', NULL),
(490, '6950c16c9bcc6995f376b297f1631759567424.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567424.jpeg', 'tbl_gallery', 117, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567424.jpeg', '2019-11-01 18:28:24', NULL),
(491, '6950c16c9bcc6995f376b297f1631759567425.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567425.jpeg', 'tbl_gallery', 118, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567425.jpeg', '2019-11-01 18:28:24', NULL),
(492, '6950c16c9bcc6995f376b297f1631759567426.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567426.jpeg', 'tbl_gallery', 119, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567426.jpeg', '2019-11-01 18:28:24', NULL),
(493, '6950c16c9bcc6995f376b297f1631759567427.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567427.jpeg', 'tbl_gallery', 120, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567427.jpeg', '2019-11-01 18:28:24', NULL),
(494, '6950c16c9bcc6995f376b297f1631759567428.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759567428.jpeg', 'tbl_gallery', 121, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759567428.jpeg', '2019-11-01 18:28:24', NULL),
(495, '6950c16c9bcc6995f376b297f163175974480.pdf', 'application/pdf', 'webfiles/juara/6950c16c9bcc6995f376b297f163175974480.pdf', 'paket_file', 16, 'ENABLE', 'http://localhost:8080/webfiles/juara/6950c16c9bcc6995f376b297f163175974480.pdf', '2019-11-01 20:09:40', NULL),
(496, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 350, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-01 20:26:55', NULL),
(497, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 351, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-02 09:14:46', NULL),
(498, '6950c16c9bcc6995f376b297f163175921139.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175921139.jpeg', 'master_gallery', 13, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175921139.jpeg', '2019-11-02 10:58:47', NULL),
(499, '6950c16c9bcc6995f376b297f163175947420.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175947420.jpeg', 'tbl_gallery', 122, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175947420.jpeg', '2019-11-02 11:00:28', NULL),
(500, '6950c16c9bcc6995f376b297f1631759474201.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474201.jpeg', 'tbl_gallery', 123, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474201.jpeg', '2019-11-02 11:00:28', NULL),
(501, '6950c16c9bcc6995f376b297f1631759474202.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474202.jpeg', 'tbl_gallery', 124, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474202.jpeg', '2019-11-02 11:00:28', NULL),
(502, '6950c16c9bcc6995f376b297f1631759474203.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474203.jpeg', 'tbl_gallery', 125, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474203.jpeg', '2019-11-02 11:00:28', NULL),
(503, '6950c16c9bcc6995f376b297f1631759474204.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474204.jpeg', 'tbl_gallery', 126, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474204.jpeg', '2019-11-02 11:00:28', NULL),
(504, '6950c16c9bcc6995f376b297f1631759474205.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474205.jpeg', 'tbl_gallery', 127, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474205.jpeg', '2019-11-02 11:00:28', NULL),
(505, '6950c16c9bcc6995f376b297f1631759474206.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474206.jpeg', 'tbl_gallery', 128, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474206.jpeg', '2019-11-02 11:00:28', NULL),
(506, '6950c16c9bcc6995f376b297f1631759474207.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474207.jpeg', 'tbl_gallery', 129, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474207.jpeg', '2019-11-02 11:00:28', NULL),
(507, '6950c16c9bcc6995f376b297f1631759474208.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474208.jpeg', 'tbl_gallery', 130, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474208.jpeg', '2019-11-02 11:00:29', NULL),
(508, '6950c16c9bcc6995f376b297f1631759474209.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759474209.jpeg', 'tbl_gallery', 131, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759474209.jpeg', '2019-11-02 11:00:29', NULL),
(509, '6950c16c9bcc6995f376b297f163175976436.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175976436.jpeg', 'master_gallery', 14, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175976436.jpeg', '2019-11-02 18:31:27', NULL),
(510, '6950c16c9bcc6995f376b297f163175993217.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175993217.jpeg', 'tbl_gallery', 132, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175993217.jpeg', '2019-11-02 18:34:20', NULL),
(511, '6950c16c9bcc6995f376b297f1631759932171.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932171.jpeg', 'tbl_gallery', 133, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932171.jpeg', '2019-11-02 18:34:20', NULL),
(512, '6950c16c9bcc6995f376b297f1631759932172.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932172.jpeg', 'tbl_gallery', 134, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932172.jpeg', '2019-11-02 18:34:20', NULL),
(513, '6950c16c9bcc6995f376b297f1631759932173.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932173.jpeg', 'tbl_gallery', 135, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932173.jpeg', '2019-11-02 18:34:20', NULL),
(514, '6950c16c9bcc6995f376b297f1631759932174.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932174.jpeg', 'tbl_gallery', 136, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932174.jpeg', '2019-11-02 18:34:20', NULL),
(515, '6950c16c9bcc6995f376b297f1631759932175.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932175.jpeg', 'tbl_gallery', 137, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932175.jpeg', '2019-11-02 18:34:20', NULL),
(516, '6950c16c9bcc6995f376b297f1631759932176.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932176.jpeg', 'tbl_gallery', 138, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932176.jpeg', '2019-11-02 18:34:20', NULL),
(517, '6950c16c9bcc6995f376b297f1631759932177.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932177.jpeg', 'tbl_gallery', 139, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932177.jpeg', '2019-11-02 18:34:20', NULL),
(518, '6950c16c9bcc6995f376b297f1631759932178.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932178.jpeg', 'tbl_gallery', 140, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932178.jpeg', '2019-11-02 18:34:20', NULL),
(519, '6950c16c9bcc6995f376b297f1631759932179.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759932179.jpeg', 'tbl_gallery', 141, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759932179.jpeg', '2019-11-02 18:34:20', NULL),
(520, '6950c16c9bcc6995f376b297f16317599321710.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317599321710.jpeg', 'tbl_gallery', 142, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317599321710.jpeg', '2019-11-02 18:34:20', NULL),
(521, '6950c16c9bcc6995f376b297f16317599321711.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317599321711.jpeg', 'tbl_gallery', 143, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317599321711.jpeg', '2019-11-02 18:34:20', NULL),
(522, '6950c16c9bcc6995f376b297f16317599321712.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317599321712.jpeg', 'tbl_gallery', 144, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317599321712.jpeg', '2019-11-02 18:34:20', NULL),
(523, '6950c16c9bcc6995f376b297f16317599321713.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317599321713.jpeg', 'tbl_gallery', 145, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317599321713.jpeg', '2019-11-02 18:34:20', NULL),
(524, '6950c16c9bcc6995f376b297f16317599321714.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317599321714.jpeg', 'tbl_gallery', 146, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317599321714.jpeg', '2019-11-02 18:34:20', NULL),
(525, '6950c16c9bcc6995f376b297f163175976054.pdf', 'application/pdf', 'webfiles/juara/6950c16c9bcc6995f376b297f163175976054.pdf', 'paket_file', 17, 'ENABLE', 'http://localhost:8080/webfiles/juara/6950c16c9bcc6995f376b297f163175976054.pdf', '2019-11-03 00:25:06', NULL);
INSERT INTO `file` (`id`, `name`, `mime`, `dir`, `table`, `table_id`, `status`, `url`, `created_at`, `updated_at`) VALUES
(526, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 352, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-02 21:06:35', NULL),
(527, 'team_default.png', 'image/png', 'webfiles/team/team_default.png', 'tbl_team', 113, 'ENABLE', 'http://localhost:8000/webfiles/team/team_default.png', '2019-11-03 00:27:03', NULL),
(529, '6950c16c9bcc6995f376b297f163175964947.pdf', 'application/pdf', 'webfiles/juara/6950c16c9bcc6995f376b297f163175964947.pdf', 'paket_file', 19, 'ENABLE', 'http://localhost:8080/webfiles/juara/6950c16c9bcc6995f376b297f163175964947.pdf', '2019-11-03 21:14:51', NULL),
(530, '6950c16c9bcc6995f376b297f163175930433.pdf', 'application/pdf', 'webfiles/juara/6950c16c9bcc6995f376b297f163175930433.pdf', 'paket_file', 20, 'ENABLE', 'http://localhost:8080/webfiles/juara/6950c16c9bcc6995f376b297f163175930433.pdf', '2019-11-03 21:22:45', NULL),
(532, '6950c16c9bcc6995f376b297f163175977696.jpg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175977696.jpg', 'tbl_blog', 9, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175977696.jpg', '2019-11-04 21:03:04', NULL),
(533, '6950c16c9bcc6995f376b297f163175934582.jpg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175934582.jpg', 'tbl_blog', 10, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175934582.jpg', '2019-11-04 21:10:34', NULL),
(534, '6950c16c9bcc6995f376b297f163175927455.jpg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175927455.jpg', 'tbl_blog', 11, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175927455.jpg', '2019-11-04 21:11:15', NULL),
(535, '6950c16c9bcc6995f376b297f163175928953.jpg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175928953.jpg', 'tbl_blog', 12, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175928953.jpg', '2019-11-04 21:12:03', NULL),
(536, '6950c16c9bcc6995f376b297f163175924343.jpg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175924343.jpg', 'tbl_blog', 13, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175924343.jpg', '2019-11-04 21:13:59', NULL),
(537, '6950c16c9bcc6995f376b297f163175947977.jpeg', 'image/jpeg', 'webfiles/blogs/6950c16c9bcc6995f376b297f163175947977.jpeg', 'tbl_blog', 14, 'ENABLE', 'http://localhost:8080/webfiles/blogs/6950c16c9bcc6995f376b297f163175947977.jpeg', '2019-11-04 21:15:24', NULL),
(538, '6950c16c9bcc6995f376b297f163175943601.jpeg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f163175943601.jpeg', 'tbl_merchandise', 6, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f163175943601.jpeg', '2019-11-04 21:48:16', NULL),
(539, '6950c16c9bcc6995f376b297f1631759436011.jpeg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f1631759436011.jpeg', 'tbl_merchandise_detail', 6, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f1631759436011.jpeg', '2019-11-04 21:48:16', NULL),
(540, '6950c16c9bcc6995f376b297f1631759436012.jpeg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f1631759436012.jpeg', 'tbl_merchandise_detail', 6, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f1631759436012.jpeg', '2019-11-04 21:48:16', NULL),
(541, '6950c16c9bcc6995f376b297f1631759436013.jpeg', 'image/jpeg', 'webfiles/merchandise/6950c16c9bcc6995f376b297f1631759436013.jpeg', 'tbl_merchandise_detail', 6, 'ENABLE', 'http://localhost:8080/webfiles/merchandise/6950c16c9bcc6995f376b297f1631759436013.jpeg', '2019-11-04 21:48:16', NULL),
(542, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 353, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-05 18:16:20', NULL),
(543, '6950c16c9bcc6995f376b297f163175984636.jpg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175984636.jpg', 'master_gallery', 15, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175984636.jpg', '2019-11-05 21:43:27', NULL),
(544, '6950c16c9bcc6995f376b297f163175918614.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175918614.jpg', 'tbl_gallery', 147, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175918614.jpg', '2019-11-05 21:44:12', NULL),
(545, '6950c16c9bcc6995f376b297f1631759186141.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186141.jpg', 'tbl_gallery', 148, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186141.jpg', '2019-11-05 21:44:12', NULL),
(546, '6950c16c9bcc6995f376b297f1631759186142.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186142.jpg', 'tbl_gallery', 149, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186142.jpg', '2019-11-05 21:44:12', NULL),
(547, '6950c16c9bcc6995f376b297f1631759186143.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186143.jpg', 'tbl_gallery', 150, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186143.jpg', '2019-11-05 21:44:12', NULL),
(548, '6950c16c9bcc6995f376b297f1631759186144.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186144.jpg', 'tbl_gallery', 151, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186144.jpg', '2019-11-05 21:44:12', NULL),
(549, '6950c16c9bcc6995f376b297f1631759186145.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186145.jpg', 'tbl_gallery', 152, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186145.jpg', '2019-11-05 21:44:12', NULL),
(550, '6950c16c9bcc6995f376b297f1631759186146.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186146.jpg', 'tbl_gallery', 153, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186146.jpg', '2019-11-05 21:44:12', NULL),
(551, '6950c16c9bcc6995f376b297f1631759186147.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186147.jpg', 'tbl_gallery', 154, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186147.jpg', '2019-11-05 21:44:12', NULL),
(552, '6950c16c9bcc6995f376b297f1631759186148.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186148.jpg', 'tbl_gallery', 155, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186148.jpg', '2019-11-05 21:44:12', NULL),
(553, '6950c16c9bcc6995f376b297f1631759186149.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759186149.jpg', 'tbl_gallery', 156, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759186149.jpg', '2019-11-05 21:44:12', NULL),
(554, '6950c16c9bcc6995f376b297f16317591861410.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861410.jpg', 'tbl_gallery', 157, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861410.jpg', '2019-11-05 21:44:13', NULL),
(555, '6950c16c9bcc6995f376b297f16317591861411.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861411.jpg', 'tbl_gallery', 158, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861411.jpg', '2019-11-05 21:44:13', NULL),
(556, '6950c16c9bcc6995f376b297f16317591861412.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861412.jpg', 'tbl_gallery', 159, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861412.jpg', '2019-11-05 21:44:13', NULL),
(557, '6950c16c9bcc6995f376b297f16317591861413.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861413.jpg', 'tbl_gallery', 160, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861413.jpg', '2019-11-05 21:44:13', NULL),
(558, '6950c16c9bcc6995f376b297f16317591861414.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861414.jpg', 'tbl_gallery', 161, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861414.jpg', '2019-11-05 21:44:13', NULL),
(559, '6950c16c9bcc6995f376b297f16317591861415.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861415.jpg', 'tbl_gallery', 162, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861415.jpg', '2019-11-05 21:44:13', NULL),
(560, '6950c16c9bcc6995f376b297f16317591861416.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861416.jpg', 'tbl_gallery', 163, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861416.jpg', '2019-11-05 21:44:13', NULL),
(561, '6950c16c9bcc6995f376b297f16317591861417.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861417.jpg', 'tbl_gallery', 164, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861417.jpg', '2019-11-05 21:44:13', NULL),
(562, '6950c16c9bcc6995f376b297f16317591861418.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861418.jpg', 'tbl_gallery', 165, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861418.jpg', '2019-11-05 21:44:13', NULL),
(563, '6950c16c9bcc6995f376b297f16317591861419.jpg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317591861419.jpg', 'tbl_gallery', 166, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317591861419.jpg', '2019-11-05 21:44:13', NULL),
(564, '6950c16c9bcc6995f376b297f163175932990.jpeg', 'image/jpeg', 'webfiles/covergallery/6950c16c9bcc6995f376b297f163175932990.jpeg', 'master_gallery', 16, 'ENABLE', 'http://localhost:8080/webfiles/covergallery/6950c16c9bcc6995f376b297f163175932990.jpeg', '2019-11-06 14:26:49', NULL),
(565, '6950c16c9bcc6995f376b297f163175921087.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f163175921087.jpeg', 'tbl_gallery', 167, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f163175921087.jpeg', '2019-11-06 14:27:45', NULL),
(566, '6950c16c9bcc6995f376b297f1631759210871.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210871.jpeg', 'tbl_gallery', 168, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210871.jpeg', '2019-11-06 14:27:45', NULL),
(567, '6950c16c9bcc6995f376b297f1631759210872.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210872.jpeg', 'tbl_gallery', 169, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210872.jpeg', '2019-11-06 14:27:45', NULL),
(568, '6950c16c9bcc6995f376b297f1631759210873.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210873.jpeg', 'tbl_gallery', 170, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210873.jpeg', '2019-11-06 14:27:45', NULL),
(569, '6950c16c9bcc6995f376b297f1631759210874.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210874.jpeg', 'tbl_gallery', 171, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210874.jpeg', '2019-11-06 14:27:45', NULL),
(570, '6950c16c9bcc6995f376b297f1631759210875.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210875.jpeg', 'tbl_gallery', 172, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210875.jpeg', '2019-11-06 14:27:45', NULL),
(571, '6950c16c9bcc6995f376b297f1631759210876.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210876.jpeg', 'tbl_gallery', 173, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210876.jpeg', '2019-11-06 14:27:45', NULL),
(572, '6950c16c9bcc6995f376b297f1631759210877.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210877.jpeg', 'tbl_gallery', 174, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210877.jpeg', '2019-11-06 14:27:45', NULL),
(573, '6950c16c9bcc6995f376b297f1631759210878.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210878.jpeg', 'tbl_gallery', 175, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210878.jpeg', '2019-11-06 14:27:45', NULL),
(574, '6950c16c9bcc6995f376b297f1631759210879.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f1631759210879.jpeg', 'tbl_gallery', 176, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f1631759210879.jpeg', '2019-11-06 14:27:45', NULL),
(575, '6950c16c9bcc6995f376b297f16317592108710.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108710.jpeg', 'tbl_gallery', 177, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108710.jpeg', '2019-11-06 14:27:45', NULL),
(576, '6950c16c9bcc6995f376b297f16317592108711.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108711.jpeg', 'tbl_gallery', 178, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108711.jpeg', '2019-11-06 14:27:45', NULL),
(577, '6950c16c9bcc6995f376b297f16317592108712.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108712.jpeg', 'tbl_gallery', 179, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108712.jpeg', '2019-11-06 14:27:45', NULL),
(578, '6950c16c9bcc6995f376b297f16317592108713.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108713.jpeg', 'tbl_gallery', 180, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108713.jpeg', '2019-11-06 14:27:45', NULL),
(579, '6950c16c9bcc6995f376b297f16317592108714.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108714.jpeg', 'tbl_gallery', 181, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108714.jpeg', '2019-11-06 14:27:45', NULL),
(580, '6950c16c9bcc6995f376b297f16317592108715.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108715.jpeg', 'tbl_gallery', 182, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108715.jpeg', '2019-11-06 14:27:45', NULL),
(581, '6950c16c9bcc6995f376b297f16317592108716.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108716.jpeg', 'tbl_gallery', 183, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108716.jpeg', '2019-11-06 14:27:45', NULL),
(582, '6950c16c9bcc6995f376b297f16317592108717.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108717.jpeg', 'tbl_gallery', 184, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108717.jpeg', '2019-11-06 14:27:45', NULL),
(583, '6950c16c9bcc6995f376b297f16317592108718.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108718.jpeg', 'tbl_gallery', 185, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108718.jpeg', '2019-11-06 14:27:45', NULL),
(584, '6950c16c9bcc6995f376b297f16317592108719.jpeg', 'image/jpeg', 'webfiles/gallery/6950c16c9bcc6995f376b297f16317592108719.jpeg', 'tbl_gallery', 186, 'ENABLE', 'http://localhost:8080/webfiles/gallery/6950c16c9bcc6995f376b297f16317592108719.jpeg', '2019-11-06 14:27:45', NULL),
(585, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 354, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-06 15:34:43', NULL),
(586, 'raider_default.png', 'image/png', 'webfiles/raider/raider_default.png', 'tbl_raider', 355, 'ENABLE', 'http://localhost:8000/webfiles/raider/raider_default.png', '2019-11-06 15:44:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grafik`
--

CREATE TABLE `grafik` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `grafik`
--

INSERT INTO `grafik` (`id`, `name`, `value`) VALUES
(1, 'Testing', '-30'),
(2, 'Testing 2', '20'),
(3, 'Testing 2', '30'),
(4, 'testing2', '40'),
(5, 'testing 2', '50'),
(6, 'testing 2', '20'),
(7, 'testing 2', '10'),
(8, 'testing 2', '15'),
(9, 'testing 2', '20'),
(10, 'testing 2', '25'),
(11, 'testing 2', '35'),
(12, 'testing 2', '45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `ignore_limits` varchar(255) DEFAULT NULL,
  `is_private_key` varchar(255) DEFAULT NULL,
  `ip_addresses` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '35d3d08c3d7b7f445ceb8e726a87b26c', '0', '0', '0', '123', '2017-10-12 13:34:33', 'ENABLE', NULL, '2019-02-18 17:04:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfig`
--

CREATE TABLE `konfig` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfig`
--

INSERT INTO `konfig` (`id`, `slug`, `value`, `status`, `created_at`, `updated_at`) VALUES
(6, 'APPLICATION', 'Never Say Old', 'ENABLE', '2019-02-18 15:28:44', '2019-06-26 13:56:36'),
(7, 'LOGO', 'http://localhost:8000/assets/img/logo2.jpg', 'ENABLE', '2019-02-18 15:29:32', '2019-04-29 10:56:09'),
(8, 'LOGIN_BACKGROUND', 'background-image: url(\'http://coloredbrain.com/wp-content/uploads/2016/07/login-background.jpg\');background-size: cover;background-position: center;', 'ENABLE', '2019-02-18 15:29:52', '2019-04-29 10:57:19'),
(9, 'COLOR_HEADER', 'background: linear-gradient(to right,#0052D4,#65C7F7);', 'DISABLE', '2019-02-18 15:30:24', '2019-02-18 15:31:08'),
(10, 'VERSION', '1.0.0', 'ENABLE', '2019-02-18 15:30:39', NULL),
(11, 'COPYRIGHT', '© 2019 <a href=\"http://karyastudio.com/\" target=\"_blank\">Karya Studio Teknologi Digital</a>.</strong> All rights     reserved.', 'ENABLE', '2019-02-18 15:32:01', '2019-02-19 10:27:32'),
(12, 'SKIN', 'skin-black', 'ENABLE', '2019-02-18 15:34:01', '2019-09-05 13:03:19'),
(13, 'TITLE_APPLICATION', 'NSO | Admin', 'ENABLE', '2019-02-18 15:39:54', NULL),
(14, 'APPLICATION_SMALL', 'NSO', 'ENABLE', '2019-02-18 15:42:41', '2019-02-18 15:43:24'),
(15, 'LOGIN_BOX', 'background : #fff !important ; ', 'ENABLE', '2019-02-18 15:45:53', '2019-02-18 15:58:53'),
(16, 'TITLE_LOGIN_APPLICATION', 'NSO| Login', 'ENABLE', '2019-02-18 15:47:41', NULL),
(17, 'LOGIN_TITLE', 'LOGIN ADMIN', 'ENABLE', '2019-02-18 15:48:55', NULL),
(24, 'LOGIN', '1', 'ENABLE', '2019-02-21 14:12:14', '2019-02-21 16:33:07'),
(25, 'email-template', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <meta name=\"viewport\" content=\"width=device-width\" />\r\n\r\n\r\n    <style type=\"text/css\">\r\n        /* Your custom styles go here */\r\n        * {\r\n            margin: 0;\r\n            padding: 0;\r\n            font-size: 100%;\r\n            font-family: \'Avenir Next\', \"Helvetica Neue\", \"Helvetica\", Helvetica, Arial, sans-serif;\r\n            line-height: 1.65;\r\n        }\r\n\r\n        img {\r\n            max-width: 100%;\r\n            margin: 0 auto;\r\n            display: block;\r\n        }\r\n\r\n        body,\r\n        .body-wrap {\r\n            width: 100% !important;\r\n            height: 100%;\r\n            background: #f8f8f8;\r\n        }\r\n\r\n        a {\r\n            color: #71bc37;\r\n            text-decoration: none;\r\n        }\r\n\r\n        a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n        .text-center {\r\n            text-align: center;\r\n        }\r\n\r\n        .text-right {\r\n            text-align: right;\r\n        }\r\n\r\n        .text-left {\r\n            text-align: left;\r\n        }\r\n\r\n        .button {\r\n            display: inline-block;\r\n            color: white;\r\n            background: #71bc37;\r\n            border: solid #71bc37;\r\n            border-width: 10px 20px 8px;\r\n            font-weight: bold;\r\n            border-radius: 4px;\r\n        }\r\n\r\n        .button:hover {\r\n            text-decoration: none;\r\n        }\r\n\r\n        h1,\r\n        h2,\r\n        h3,\r\n        h4,\r\n        h5,\r\n        h6 {\r\n            margin-bottom: 20px;\r\n            line-height: 1.25;\r\n        }\r\n\r\n        h1 {\r\n            font-size: 32px;\r\n        }\r\n\r\n        h2 {\r\n            font-size: 28px;\r\n        }\r\n\r\n        h3 {\r\n            font-size: 24px;\r\n        }\r\n\r\n        h4 {\r\n            font-size: 20px;\r\n        }\r\n\r\n        h5 {\r\n            font-size: 16px;\r\n        }\r\n\r\n        p,\r\n        ul,\r\n        ol {\r\n            font-size: 16px;\r\n            font-weight: normal;\r\n            margin-bottom: 20px;\r\n        }\r\n\r\n        .container {\r\n            display: block !important;\r\n            clear: both !important;\r\n            margin: 0 auto !important;\r\n            max-width: 580px !important;\r\n        }\r\n\r\n        .container table {\r\n            width: 100% !important;\r\n            border-collapse: collapse;\r\n        }\r\n\r\n        .container .masthead {\r\n            padding: 80px 0;\r\n            background: #71bc37;\r\n            color: white;\r\n        }\r\n\r\n        .container .masthead h1 {\r\n            margin: 0 auto !important;\r\n            max-width: 90%;\r\n            text-transform: uppercase;\r\n        }\r\n\r\n        .container .content {\r\n            background: white;\r\n            padding: 30px 35px;\r\n        }\r\n\r\n        .container .content.footer {\r\n            background: none;\r\n        }\r\n\r\n        .container .content.footer p {\r\n            margin-bottom: 0;\r\n            color: #888;\r\n            text-align: center;\r\n            font-size: 14px;\r\n        }\r\n\r\n        .container .content.footer a {\r\n            color: #888;\r\n            text-decoration: none;\r\n            font-weight: bold;\r\n        }\r\n\r\n        .container .content.footer a:hover {\r\n            text-decoration: underline;\r\n        }\r\n\r\n    </style>\r\n</head>\r\n\r\n<body>\r\n    <table class=\"body-wrap\">\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td align=\"center\" class=\"masthead\">\r\n\r\n                            <h1>Something Big...</h1>\r\n\r\n                        </td>\r\n                    </tr>\r\n                    <tr>\r\n                        <td class=\"content\">\r\n\r\n                            <h2>Hi Stranger,</h2>\r\n\r\n                            <p>Kielbasa venison ball tip shankle. Boudin prosciutto landjaeger, pancetta jowl turkey tri-tip porchetta beef pork loin drumstick. Frankfurter short ribs kevin pig ribeye drumstick bacon kielbasa. Pork loin brisket biltong, pork belly filet mignon ribeye pig ground round porchetta turducken turkey. Pork belly beef ribs sausage ham hock, ham doner frankfurter pork chop tail meatball beef pig meatloaf short ribs shoulder. Filet mignon ham hock kielbasa beef ribs shank. Venison swine beef ribs sausage pastrami shoulder.</p>\r\n\r\n                            <table>\r\n                                <tr>\r\n                                    <td align=\"center\">\r\n                                        <p>\r\n                                            <a href=\"#\" class=\"button\">Share the Awesomeness</a>\r\n                                        </p>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                            <p>By the way, if you\'re wondering where you can find more of this fine meaty filler, visit <a href=\"http://baconipsum.com\">Bacon Ipsum</a>.</p>\r\n\r\n                            <p><em>– Mr. Pen</em></p>\r\n\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"container\">\r\n\r\n                <!-- Message start -->\r\n                <table>\r\n                    <tr>\r\n                        <td class=\"content footer\" align=\"center\">\r\n                            <p>Sent by <a href=\"#\">Company Name</a>, 1234 Yellow Brick Road, OZ, 99999</p>\r\n                            <p><a href=\"mailto:\">hello@company.com</a> | <a href=\"#\">Unsubscribe</a></p>\r\n                        </td>\r\n                    </tr>\r\n                </table>\r\n\r\n            </td>\r\n        </tr>\r\n    </table>\r\n</body>\r\n\r\n</html>\r\n', 'ENABLE', NULL, NULL),
(26, 'MARQUEE', '', 'ENABLE', '2019-10-27 00:00:00', '2019-11-01 19:45:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_created_at` datetime NOT NULL,
  `log_created_by` int(11) NOT NULL,
  `log_action` varchar(500) NOT NULL,
  `log_tablename` varchar(500) NOT NULL,
  `log_jsondata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(1, '2019-09-30 16:36:09', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"3\",\"cm_nama\":\"ddfdf\",\"cm_data\":\"dfdfdf\",\"status\":\"DISABLE\",\"created_at\":\"2019-09-30 16:25:21\",\"updated_at\":null}'),
(2, '2019-10-01 10:22:47', 1, 'deleteData', 'contohmaster', '{\"conn_id\":{\"affected_rows\":null,\"client_info\":null,\"client_version\":null,\"connect_errno\":null,\"connect_error\":null,\"errno\":null,\"error\":null,\"error_list\":null,\"field_count\":null,\"host_info\":null,\"info\":null,\"insert_id\":null,\"server_info\":null,\"server_version\":null,\"stat\":null,\"sqlstate\":null,\"protocol_version\":null,\"thread_id\":null,\"warning_count\":null},\"result_id\":{\"current_field\":null,\"field_count\":null,\"lengths\":null,\"num_rows\":null,\"type\":null},\"result_array\":[],\"result_object\":[],\"custom_result_object\":[],\"current_row\":0,\"num_rows\":null,\"row_data\":null}'),
(3, '2019-10-01 10:29:38', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"6\",\"cm_nama\":\"tes\",\"cm_data\":\"asdsd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:27:04\",\"updated_at\":null}{\"cm_id\":\"7\",\"cm_nama\":\"dssd\",\"cm_data\":\"ddssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:27:10\",\"updated_at\":null}'),
(4, '2019-10-01 10:35:34', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":null}'),
(5, '2019-10-01 10:43:29', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:35:34\"}'),
(6, '2019-10-01 10:43:35', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sddssd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:43:29\"}'),
(7, '2019-10-01 10:56:08', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:43:35\"}'),
(8, '2019-10-01 10:56:51', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:08\"}'),
(9, '2019-10-01 10:56:54', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssdssa\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:51\"}'),
(10, '2019-10-01 10:57:18', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"8\",\"cm_nama\":\"sdsd\",\"cm_data\":\"ssdssa\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 10:33:35\",\"updated_at\":\"2019-10-01 10:56:51\"}'),
(11, '2019-10-01 10:58:10', 1, 'updateData', 'contohmaster', '{\"cm_id\":\"9\",\"cm_nama\":\"tes\",\"cm_data\":\"sdsd\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 10:33:41\",\"updated_at\":null}'),
(12, '2019-10-01 10:58:15', 1, 'deleteData', 'contohmaster', '{\"cm_id\":\"9\",\"cm_nama\":\"tes\",\"cm_data\":\"sdsd\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 10:33:41\",\"updated_at\":null}'),
(13, '2019-10-01 11:18:04', 1, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"SMARTSOFT SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-06-26 13:56:36\"}'),
(14, '2019-10-01 14:21:22', 1, 'updateData', 'user', '{\"id\":\"11\",\"nip\":\"oplos\",\"name\":\"Oplos\",\"email\":\"oplos@oplos.com\",\"password\":\"0192023a7bbd73250516f069df18b500\",\"role_id\":\"18\",\"desc\":\"-\\r\\n\",\"status\":\"0\",\"created_at\":\"2018-11-15 16:47:11\",\"updated_at\":\"2019-06-26 11:36:03\"}'),
(15, '2019-10-01 14:23:04', 1, 'updateData', 'customer', '{\"id\":\"5\",\"nama\":\"Bayu Briyan El Roy\",\"email\":\"bayubriyanelroy@gmail.com\",\"telp\":\"08123000801\",\"alamat\":\"address\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:44:50\",\"updated_at\":\"2019-08-15 07:48:37\"}'),
(16, '2019-10-01 14:27:47', 1, 'updateData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"jdf\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-08-15 09:46:19\"}'),
(17, '2019-10-01 15:17:03', 1, 'updateData', 'customer', '{\"id\":\"7\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(18, '2019-10-01 15:17:09', 1, 'deleteData', 'file', '{\"id\":\"177\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"7\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(19, '2019-10-01 15:17:09', 1, 'deleteData', 'customer', '{\"id\":\"7\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:15:09\",\"updated_at\":null}'),
(20, '2019-10-01 15:19:31', 1, 'updateData', 'customer', '{\"id\":\"8\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(21, '2019-10-01 15:19:37', 1, 'deleteData', 'file', '{\"id\":\"178\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"8\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(22, '2019-10-01 15:19:37', 1, 'deleteData', 'customer', '{\"id\":\"8\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:19:10\",\"updated_at\":null}'),
(23, '2019-10-01 15:21:15', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:15\",\"status\":\"ENABLE\"}'),
(24, '2019-10-01 15:21:15', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":9,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\"}'),
(25, '2019-10-01 15:21:27', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:27\",\"status\":\"ENABLE\"}'),
(26, '2019-10-01 15:21:27', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":10,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\"}'),
(27, '2019-10-01 15:21:59', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:21:59\",\"status\":\"ENABLE\"}'),
(28, '2019-10-01 15:21:59', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":11,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\"}'),
(29, '2019-10-01 15:22:01', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:22:01\",\"status\":\"ENABLE\"}'),
(30, '2019-10-01 15:22:01', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":12,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\"}'),
(31, '2019-10-01 15:22:20', 1, 'insertData', 'customer', '{\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:22:20\",\"status\":\"ENABLE\"}'),
(32, '2019-10-01 15:22:21', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":13,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:21\"}'),
(33, '2019-10-01 15:23:02', 1, 'updateData', 'customer', '{\"id\":\"13\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:20\",\"updated_at\":null}'),
(34, '2019-10-01 15:23:04', 1, 'updateData', 'customer', '{\"id\":\"12\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(35, '2019-10-01 15:23:05', 1, 'updateData', 'customer', '{\"id\":\"11\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(36, '2019-10-01 15:23:06', 1, 'updateData', 'customer', '{\"id\":\"10\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(37, '2019-10-01 15:23:08', 1, 'updateData', 'customer', '{\"id\":\"9\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(38, '2019-10-01 15:23:12', 1, 'deleteData', 'file', '{\"id\":\"179\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"9\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(39, '2019-10-01 15:23:12', 1, 'deleteData', 'customer', '{\"id\":\"9\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:15\",\"updated_at\":null}'),
(40, '2019-10-01 15:24:27', 1, 'deleteData', 'file', '{\"id\":\"183\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"13\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:21\",\"updated_at\":null}'),
(41, '2019-10-01 15:24:27', 1, 'deleteData', 'customer', '{\"id\":\"13\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:22:20\",\"updated_at\":null}'),
(42, '2019-10-01 15:25:05', 1, 'deleteData', 'file', '{\"id\":\"182\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"12\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(43, '2019-10-01 15:25:05', 1, 'deleteData', 'customer', '{\"id\":\"12\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:22:01\",\"updated_at\":null}'),
(44, '2019-10-01 15:25:32', 1, 'deleteData', 'file', '{\"id\":\"180\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"10\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(45, '2019-10-01 15:25:32', 1, 'deleteData', 'customer', '{\"id\":\"10\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:27\",\"updated_at\":null}'),
(46, '2019-10-01 15:25:36', 1, 'deleteData', 'file', '{\"id\":\"181\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"11\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(47, '2019-10-01 15:25:36', 1, 'deleteData', 'customer', '{\"id\":\"11\",\"nama\":\"Rahmatss\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:21:59\",\"updated_at\":null}'),
(48, '2019-10-01 15:28:17', 1, 'insertData', 'customer', '{\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 15:28:17\",\"status\":\"ENABLE\"}'),
(49, '2019-10-01 15:28:17', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":14,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\"}'),
(50, '2019-10-01 15:30:39', 1, 'updateData', 'customer', '{\"id\":\"14\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(51, '2019-10-01 15:31:05', 1, 'deleteData', 'file', '{\"id\":\"184\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"14\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(52, '2019-10-01 15:31:05', 1, 'deleteData', 'customer', '{\"id\":\"14\",\"nama\":\"Rahmat\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 15:28:17\",\"updated_at\":null}'),
(53, '2019-10-01 17:09:44', 1, 'insertData', 'customer', '{\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"created_at\":\"2019-10-01 17:09:44\",\"status\":\"ENABLE\"}'),
(54, '2019-10-01 17:09:44', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":15,\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\"}'),
(55, '2019-10-01 17:09:50', 1, 'updateData', 'customer', '{\"id\":\"15\",\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(56, '2019-10-01 17:09:55', 1, 'deleteData', 'file', '{\"id\":\"185\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":\"15\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(57, '2019-10-01 17:09:55', 1, 'deleteData', 'customer', '{\"id\":\"15\",\"nama\":\"tes tamba\",\"email\":\"hmdrahmat8@gmail.com\",\"telp\":\"0032880\",\"alamat\":\"test\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-01 17:09:44\",\"updated_at\":null}'),
(58, '2019-10-15 09:53:06', 1, 'deleteData', 'customer', '{\"id\":\"5\",\"nama\":\"Bayu Briyan El Roy\",\"email\":\"bayubriyanelroy@gmail.com\",\"telp\":\"08123000801\",\"alamat\":\"address\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:44:50\",\"updated_at\":\"2019-10-01 14:23:04\"}'),
(59, '2019-10-15 09:58:06', 1, 'insertData', 'customer', '{\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"created_at\":\"2019-10-15 09:58:06\",\"status\":\"ENABLE\"}'),
(60, '2019-10-15 09:58:06', 1, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"customer\",\"table_id\":16,\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\"}'),
(61, '2019-10-22 11:47:44', 1, 'updateData', 'konfig', '{\"id\":\"7\",\"slug\":\"LOGO\",\"value\":\"http:\\/\\/www.pertanian.go.id\\/img\\/logo.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:29:32\",\"updated_at\":\"2019-04-29 10:56:09\"}'),
(62, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(63, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(64, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":2}'),
(65, '2019-10-22 13:14:57', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":3}'),
(66, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(67, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(68, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(69, '2019-10-22 13:15:02', 1, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}'),
(70, '2019-10-22 13:26:52', 1, 'updateData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"jdf\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-10-01 14:27:47\"}'),
(71, '2019-10-22 13:27:06', 1, 'updateData', 'customer', '{\"id\":\"3\",\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"238137\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"created_at\":null,\"updated_at\":\"2019-08-15 07:42:48\"}'),
(72, '2019-10-22 13:35:26', 1, 'deleteData', 'customer', '{\"id\":\"6\",\"nama\":\"kjs\",\"email\":\"a@gmial.com\",\"telp\":\"898\",\"alamat\":\"18\",\"status\":\"ENABLE\",\"created_at\":\"2019-08-15 07:54:51\",\"updated_at\":\"2019-10-22 13:26:52\"}'),
(73, '2019-10-22 13:35:47', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":null}'),
(74, '2019-10-22 13:35:57', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asdfadsf\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-10-22 13:35:47\"}'),
(75, '2019-10-22 13:36:30', 1, 'updateData', 'customer', '{\"id\":\"16\",\"nama\":\"Iqbal luthfi\",\"email\":\"sistem.mikir@gmail.com\",\"telp\":\"2342\",\"alamat\":\"asem\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-15 09:58:06\",\"updated_at\":\"2019-10-22 13:35:57\"}'),
(76, '2019-11-02 15:49:56', 1, 'deleteData', 'access', '{\"id\":\"2\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}'),
(77, '2019-11-02 15:50:26', 1, 'deleteData', 'access', '{\"id\":\"3\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"4\",\"access_control_id\":\"293\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"5\",\"access_control_id\":\"294\",\"role_id\":\"17\",\"status\":\"active\"}'),
(78, '2019-11-02 15:50:43', 1, 'insertData', 'customer', '{\"nama\":\"1\",\"email\":\"2\",\"telp\":\"3\",\"alamat\":\"17\",\"created_at\":\"2019-11-02 15:50:43\",\"status\":\"ENABLE\"}'),
(79, '2019-11-02 15:51:31', 1, 'deleteData', 'access', '{\"id\":\"8\",\"access_control_id\":\"149\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"7\",\"access_control_id\":\"147\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"6\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}'),
(80, '2019-11-02 15:51:48', 1, 'deleteData', 'access', '{\"id\":\"11\",\"access_control_id\":\"147\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"10\",\"access_control_id\":\"146\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"9\",\"access_control_id\":\"94\",\"role_id\":\"17\",\"status\":\"active\"}{\"id\":\"12\",\"access_control_id\":\"149\",\"role_id\":\"17\",\"status\":\"active\"}'),
(81, '2019-11-08 09:48:39', 1, 'insertData', 'customer', '{\"nama\":\"Tesing\",\"email\":\"testing@gmail.com\",\"telp\":\"1\",\"alamat\":\"1\",\"created_at\":\"2019-11-08 09:48:39\",\"status\":\"ENABLE\"}'),
(82, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"Soleh\",\"email\":\"soleh@gmail.com\",\"telp\":\"081249812947\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":0}'),
(83, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"Solihun\",\"email\":\"solihun@gmail.com\",\"telp\":\"089182491928\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":1}'),
(84, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"Gatot\",\"email\":\"gatot@gmail.com\",\"telp\":\"089128498129\",\"alamat\":\"-\",\"status\":\"ENABLE\",\"urutan\":2}'),
(85, '2019-11-11 07:18:16', 13, 'insertData', 'customer_dnd', '{\"nama\":\"\",\"email\":\"\",\"telp\":\"\",\"alamat\":\"\",\"status\":\"ENABLE\",\"urutan\":3}'),
(86, '2019-11-12 10:14:53', 13, 'insertData', 'customer', '{\"nama\":\"khj\",\"email\":\"hjh\",\"telp\":\"khkj\",\"alamat\":\"hjkh\",\"created_at\":\"2019-11-12 10:14:53\",\"status\":\"ENABLE\"}'),
(87, '2019-11-12 10:40:10', 13, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-05-01 09:53:50\"}'),
(88, '2019-11-12 10:49:10', 13, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-11-12 10:40:10\"}'),
(89, '2019-11-12 10:56:18', 13, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-11-12 10:49:10\"}'),
(90, '2019-11-12 10:57:01', 13, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-11-12 10:56:18\"}'),
(91, '2019-11-12 10:57:20', 13, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-11-12 10:57:01\"}'),
(92, '2019-11-12 11:02:13', 13, 'updateData', 'konfig', '{\"id\":\"12\",\"slug\":\"SKIN\",\"value\":\"skin-black-light\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:34:01\",\"updated_at\":\"2019-11-12 10:57:20\"}'),
(93, '2019-11-13 19:00:30', 13, 'insertData', 'contohmaster', '{\"cm_nama\":\"Eng\",\"cm_data\":\"123\",\"created_by\":\"13\",\"created_at\":\"2019-11-13 19:00:30\",\"status\":\"ENABLE\"}'),
(94, '2019-11-13 19:00:34', 13, 'insertData', 'contohmaster', '{\"cm_nama\":\"Eng\",\"cm_data\":\"123\",\"created_by\":\"13\",\"created_at\":\"2019-11-13 19:00:34\",\"status\":\"ENABLE\"}'),
(95, '2019-11-13 19:00:39', 13, 'insertData', 'contohmaster', '{\"cm_nama\":\"Eng\",\"cm_data\":\"123\",\"created_by\":\"13\",\"created_at\":\"2019-11-13 19:00:39\",\"status\":\"ENABLE\"}'),
(96, '2019-11-13 19:00:41', 13, 'insertData', 'contohmaster', '{\"cm_nama\":\"Eng\",\"cm_data\":\"123\",\"created_by\":\"13\",\"created_at\":\"2019-11-13 19:00:41\",\"status\":\"ENABLE\"}'),
(97, '2019-11-13 19:03:56', 13, 'insertData', 'contohmaster', '{\"cm_nama\":\"En\",\"cm_data\":\"123\",\"created_by\":\"13\",\"created_at\":\"2019-11-13 19:03:56\",\"status\":\"ENABLE\"}'),
(98, '2019-11-13 19:03:56', 13, 'insertData', 'file', '{\"id\":\"\",\"name\":\"\",\"mime\":\"\",\"dir\":\"\",\"table\":\"contohmaster\",\"table_id\":10,\"status\":\"ENABLE\",\"created_at\":\"2019-11-13 19:03:56\"}'),
(99, '2019-11-13 19:05:32', 13, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"KARYA STUDIO SOP\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-10-01 11:18:04\"}'),
(100, '2019-11-13 19:05:41', 13, 'updateData', 'konfig', '{\"id\":\"6\",\"slug\":\"APPLICATION\",\"value\":\"https:\\/\\/www.karyastudio.com\\/assets\\/images\\/logos\\/favicon.png\",\"status\":\"ENABLE\",\"created_at\":\"2019-02-18 15:28:44\",\"updated_at\":\"2019-11-13 19:05:32\"}'),
(101, '2019-11-13 19:05:53', 13, 'updateData', 'konfig', '{\"id\":\"26\",\"slug\":\"FAVICON\",\"value\":\"-\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-13 19:04:41\",\"updated_at\":null}'),
(102, '2019-11-14 11:00:33', 14, 'updateData', 'menu_master', '{\"id\":\"39\",\"name\":\"Rider\",\"icon\":\"fa fa-motorcycle\",\"link\":\"rider\",\"urutan\":\"2\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:10:13\",\"updated_at\":\"2019-10-02 18:48:36\"}'),
(103, '2019-11-14 11:02:47', 14, 'updateData', 'menu_master', '{\"id\":\"38\",\"name\":\"Team\",\"icon\":\"fa fa-users\",\"link\":\"team\",\"urutan\":\"0\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:09:30\",\"updated_at\":\"2019-10-02 11:46:30\"}'),
(104, '2019-11-14 11:05:03', 14, 'updateData', 'menu_master', '{\"id\":\"41\",\"name\":\"Event\",\"icon\":\"fa fa-star\",\"link\":\"event\",\"urutan\":\"0\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:21:36\",\"updated_at\":\"2019-10-02 08:28:00\"}'),
(105, '2019-11-14 11:07:00', 14, 'updateData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"eventregister\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":null}'),
(106, '2019-11-14 11:08:42', 14, 'updateData', 'menu_master', '{\"id\":\"56\",\"name\":\"Data Juara\",\"icon\":\"fa fa-star\",\"link\":\"juara\",\"urutan\":\"2\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-23 09:38:23\",\"updated_at\":null}'),
(107, '2019-11-14 11:12:33', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"eventdokumentasi\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":null}'),
(108, '2019-11-14 11:14:45', 14, 'updateData', 'menu_master', '{\"id\":\"60\",\"name\":\"Wisata\",\"icon\":\"fa fa-star\",\"link\":\"wisata\",\"urutan\":\"0\",\"parent\":\"55\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-23 09:45:58\",\"updated_at\":null}'),
(109, '2019-11-14 11:20:00', 14, 'updateData', 'menu_master', '{\"id\":\"43\",\"name\":\"Blog \\/ Informasi\",\"icon\":\"fa fa-newspaper-o\",\"link\":\"blogs\",\"urutan\":\"4\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:25:20\",\"updated_at\":\"2019-10-23 09:36:36\"}'),
(110, '2019-11-14 11:22:27', 14, 'updateData', 'menu_master', '{\"id\":\"54\",\"name\":\"Gallery Group\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/imagegroup\",\"urutan\":\"2\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-06 00:00:00\",\"updated_at\":\"2019-10-31 22:26:10\"}'),
(111, '2019-11-14 11:25:13', 14, 'updateData', 'menu_master', '{\"id\":\"64\",\"name\":\"Gallery Items\",\"icon\":\"fa fa-picture-o\",\"link\":\"gallery\",\"urutan\":\"1\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-31 22:23:23\",\"updated_at\":\"2019-10-31 22:27:17\"}'),
(112, '2019-11-14 13:10:21', 14, 'updateData', 'menu_master', '{\"id\":\"48\",\"name\":\"Admin Users\",\"icon\":\"fa fa-user\",\"link\":\"users\",\"urutan\":\"7\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:33:44\",\"updated_at\":\"2019-10-23 09:37:08\"}'),
(113, '2019-11-14 13:10:25', 14, 'updateData', 'menu_master', '{\"id\":\"43\",\"name\":\"Blog \\/ Informasi\",\"icon\":\"fa fa-newspaper-o\",\"link\":\"master\\/Tbl_blog\",\"urutan\":\"4\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:25:20\",\"updated_at\":\"2019-11-14 11:20:00\"}'),
(114, '2019-11-14 13:10:27', 14, 'updateData', 'menu_master', '{\"id\":\"63\",\"name\":\"Config\",\"icon\":\"fa fa-link\",\"link\":\"config\",\"urutan\":\"0\",\"parent\":\"62\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-25 19:25:14\",\"updated_at\":\"2019-10-25 19:26:05\"}'),
(115, '2019-11-14 13:10:27', 14, 'updateData', 'menu_master', '{\"id\":\"63\",\"name\":\"Config\",\"icon\":\"fa fa-link\",\"link\":\"config\",\"urutan\":\"0\",\"parent\":\"62\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-25 19:25:14\",\"updated_at\":\"2019-10-25 19:26:05\"}'),
(116, '2019-11-14 13:10:30', 14, 'updateData', 'menu_master', '{\"id\":\"37\",\"name\":\"Data\",\"icon\":\"fa fa-check-square-o\",\"link\":\"#\",\"urutan\":\"1\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:08:53\",\"updated_at\":\"2019-10-02 08:27:23\"}'),
(117, '2019-11-14 13:10:33', 14, 'updateData', 'menu_master', '{\"id\":\"56\",\"name\":\"Data Juara\",\"icon\":\"fa fa-star\",\"link\":\"master\\/Tbl_paket\",\"urutan\":\"2\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-23 09:38:23\",\"updated_at\":\"2019-11-14 11:08:42\"}'),
(118, '2019-11-14 13:10:34', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(119, '2019-11-14 13:10:35', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(120, '2019-11-14 13:10:35', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(121, '2019-11-14 13:10:35', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(122, '2019-11-14 13:10:35', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(123, '2019-11-14 13:10:36', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(124, '2019-11-14 13:10:36', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(125, '2019-11-14 13:10:36', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(126, '2019-11-14 13:10:36', 14, 'updateData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(127, '2019-11-14 13:10:38', 14, 'updateData', 'menu_master', '{\"id\":\"40\",\"name\":\"Event\",\"icon\":\"fa fa-map-o\",\"link\":\"#\",\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:20:54\",\"updated_at\":null}'),
(128, '2019-11-14 13:10:40', 14, 'updateData', 'menu_master', '{\"id\":\"41\",\"name\":\"Event\",\"icon\":\"fa fa-star\",\"link\":\"master\\/Tbl_event\",\"urutan\":\"0\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:21:36\",\"updated_at\":\"2019-11-14 11:05:03\"}'),
(129, '2019-11-14 13:10:41', 14, 'updateData', 'menu_master', '{\"id\":\"41\",\"name\":\"Event\",\"icon\":\"fa fa-star\",\"link\":\"master\\/Tbl_event\",\"urutan\":\"0\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:21:36\",\"updated_at\":\"2019-11-14 11:05:03\"}'),
(130, '2019-11-14 13:10:43', 14, 'updateData', 'menu_master', '{\"id\":\"44\",\"name\":\"Gallery\",\"icon\":\"fa fa-picture-o\",\"link\":\"#\",\"urutan\":\"5\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:25:46\",\"updated_at\":\"2019-10-31 22:27:02\"}'),
(131, '2019-11-14 13:10:45', 14, 'updateData', 'menu_master', '{\"id\":\"54\",\"name\":\"Gallery Group\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Master_imagegroup\",\"urutan\":\"2\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-06 00:00:00\",\"updated_at\":\"2019-11-14 11:22:27\"}'),
(132, '2019-11-14 13:10:47', 14, 'updateData', 'menu_master', '{\"id\":\"64\",\"name\":\"Gallery Items\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"1\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-31 22:23:23\",\"updated_at\":\"2019-11-14 11:25:13\"}'),
(133, '2019-11-14 13:10:47', 14, 'updateData', 'menu_master', '{\"id\":\"64\",\"name\":\"Gallery Items\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"1\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-31 22:23:23\",\"updated_at\":\"2019-11-14 11:25:13\"}'),
(134, '2019-11-14 13:10:49', 14, 'updateData', 'menu_master', '{\"id\":\"65\",\"name\":\"Komentar\",\"icon\":\"fa fa-comments-o\",\"link\":\"comment\",\"urutan\":\"3\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-11 11:34:53\",\"updated_at\":null}'),
(135, '2019-11-14 13:10:56', 14, 'updateData', 'menu_master', '{\"id\":\"53\",\"name\":\"Manajer\",\"icon\":\"fa fa-user\",\"link\":\"manager\",\"urutan\":\"1\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 18:47:27\",\"updated_at\":\"2019-10-02 18:48:27\"}'),
(136, '2019-11-14 13:10:58', 14, 'updateData', 'menu_master', '{\"id\":\"49\",\"name\":\"Master\",\"icon\":\"fa fa-database\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:34:02\",\"updated_at\":\"2019-10-23 09:37:14\"}'),
(137, '2019-11-14 13:10:58', 14, 'updateData', 'menu_master', '{\"id\":\"49\",\"name\":\"Master\",\"icon\":\"fa fa-database\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:34:02\",\"updated_at\":\"2019-10-23 09:37:14\"}'),
(138, '2019-11-14 13:10:58', 14, 'updateData', 'menu_master', '{\"id\":\"49\",\"name\":\"Master\",\"icon\":\"fa fa-database\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:34:02\",\"updated_at\":\"2019-10-23 09:37:14\"}'),
(139, '2019-11-14 13:10:58', 14, 'updateData', 'menu_master', '{\"id\":\"49\",\"name\":\"Master\",\"icon\":\"fa fa-database\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:34:02\",\"updated_at\":\"2019-10-23 09:37:14\"}'),
(140, '2019-11-14 13:11:00', 14, 'updateData', 'menu_master', '{\"id\":\"45\",\"name\":\"Merchandise\",\"icon\":\"fa fa-cubes\",\"link\":\"#\",\"urutan\":\"6\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:26:29\",\"updated_at\":\"2019-10-23 09:37:00\"}'),
(141, '2019-11-14 13:11:01', 14, 'updateData', 'menu_master', '{\"id\":\"45\",\"name\":\"Merchandise\",\"icon\":\"fa fa-cubes\",\"link\":\"#\",\"urutan\":\"6\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:26:29\",\"updated_at\":\"2019-10-23 09:37:00\"}'),
(142, '2019-11-14 13:11:01', 14, 'updateData', 'menu_master', '{\"id\":\"45\",\"name\":\"Merchandise\",\"icon\":\"fa fa-cubes\",\"link\":\"#\",\"urutan\":\"6\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:26:29\",\"updated_at\":\"2019-10-23 09:37:00\"}'),
(143, '2019-11-14 13:11:02', 14, 'updateData', 'menu_master', '{\"id\":\"46\",\"name\":\"Merchandise\",\"icon\":\"fa fa-table\",\"link\":\"merchandise\",\"urutan\":\"0\",\"parent\":\"45\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:29:00\",\"updated_at\":null}'),
(144, '2019-11-14 13:11:03', 14, 'updateData', 'menu_master', '{\"id\":\"46\",\"name\":\"Merchandise\",\"icon\":\"fa fa-table\",\"link\":\"merchandise\",\"urutan\":\"0\",\"parent\":\"45\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:29:00\",\"updated_at\":null}'),
(145, '2019-11-14 13:11:03', 14, 'updateData', 'menu_master', '{\"id\":\"46\",\"name\":\"Merchandise\",\"icon\":\"fa fa-table\",\"link\":\"merchandise\",\"urutan\":\"0\",\"parent\":\"45\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:29:00\",\"updated_at\":null}'),
(146, '2019-11-14 13:11:05', 14, 'updateData', 'menu_master', '{\"id\":\"52\",\"name\":\"Motor\",\"icon\":\"fa fa-motorcycle\",\"link\":\"master\\/motor\",\"urutan\":\"1\",\"parent\":\"49\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 15:54:20\",\"updated_at\":\"2019-10-02 15:55:26\"}'),
(147, '2019-11-14 13:11:05', 14, 'updateData', 'menu_master', '{\"id\":\"52\",\"name\":\"Motor\",\"icon\":\"fa fa-motorcycle\",\"link\":\"master\\/motor\",\"urutan\":\"1\",\"parent\":\"49\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 15:54:20\",\"updated_at\":\"2019-10-02 15:55:26\"}'),
(148, '2019-11-14 13:11:05', 14, 'updateData', 'menu_master', '{\"id\":\"52\",\"name\":\"Motor\",\"icon\":\"fa fa-motorcycle\",\"link\":\"master\\/motor\",\"urutan\":\"1\",\"parent\":\"49\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 15:54:20\",\"updated_at\":\"2019-10-02 15:55:26\"}'),
(149, '2019-11-14 13:11:06', 14, 'updateData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_event_register\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":\"2019-11-14 11:07:00\"}'),
(150, '2019-11-14 13:11:07', 14, 'updateData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_event_register\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":\"2019-11-14 11:07:00\"}'),
(151, '2019-11-14 13:11:07', 14, 'updateData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_event_register\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":\"2019-11-14 11:07:00\"}'),
(152, '2019-11-14 13:11:07', 14, 'updateData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_event_register\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":\"2019-11-14 11:07:00\"}'),
(153, '2019-11-14 13:11:07', 14, 'updateData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_event_register\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":\"2019-11-14 11:07:00\"}'),
(154, '2019-11-14 13:11:07', 14, 'updateData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_event_register\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":\"2019-11-14 11:07:00\"}'),
(155, '2019-11-14 13:11:10', 14, 'updateData', 'menu_master', '{\"id\":\"39\",\"name\":\"Rider\",\"icon\":\"fa fa-motorcycle\",\"link\":\"master\\/Tbl_raider\",\"urutan\":\"2\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:10:13\",\"updated_at\":\"2019-11-14 11:00:33\"}'),
(156, '2019-11-14 13:11:11', 14, 'updateData', 'menu_master', '{\"id\":\"62\",\"name\":\"Setting\",\"icon\":\"fa fa-link\",\"link\":\"#\",\"urutan\":\"9\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-25 19:25:00\",\"updated_at\":\"2019-10-25 19:25:47\"}'),
(157, '2019-11-14 13:11:12', 14, 'updateData', 'menu_master', '{\"id\":\"62\",\"name\":\"Setting\",\"icon\":\"fa fa-link\",\"link\":\"#\",\"urutan\":\"9\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-25 19:25:00\",\"updated_at\":\"2019-10-25 19:25:47\"}'),
(158, '2019-11-14 13:11:14', 14, 'updateData', 'menu_master', '{\"id\":\"38\",\"name\":\"Team\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_team\",\"urutan\":\"0\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-02 08:09:30\",\"updated_at\":\"2019-11-14 11:02:47\"}'),
(159, '2019-11-14 13:11:16', 14, 'updateData', 'menu_master', '{\"id\":\"55\",\"name\":\"Wisata\",\"icon\":\"fa fa-star\",\"link\":\"#\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-23 09:36:26\",\"updated_at\":\"2019-10-23 09:42:41\"}'),
(160, '2019-11-14 13:11:16', 14, 'updateData', 'menu_master', '{\"id\":\"55\",\"name\":\"Wisata\",\"icon\":\"fa fa-star\",\"link\":\"#\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:36:26\",\"updated_at\":\"2019-10-23 09:42:41\"}'),
(161, '2019-11-14 13:11:18', 14, 'updateData', 'menu_master', '{\"id\":\"60\",\"name\":\"Wisata\",\"icon\":\"fa fa-star\",\"link\":\"master\\/Tbl_wisata\",\"urutan\":\"0\",\"parent\":\"55\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-10-23 09:45:58\",\"updated_at\":\"2019-11-14 11:14:45\"}'),
(162, '2019-11-14 13:11:24', 14, 'deleteData', 'menu_master', '{\"id\":\"48\",\"name\":\"Admin Users\",\"icon\":\"fa fa-user\",\"link\":\"users\",\"urutan\":\"7\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:33:44\",\"updated_at\":\"2019-10-23 09:37:08\"}'),
(163, '2019-11-14 13:11:58', 14, 'updateData', 'menu_master', '{\"id\":\"66\",\"name\":\"Event\",\"icon\":\"fa fa-start\",\"link\":\"#\",\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:11:45\",\"updated_at\":null}'),
(164, '2019-11-14 13:12:42', 14, 'deleteData', 'menu_master', '{\"id\":\"43\",\"name\":\"Blog \\/ Informasi\",\"icon\":\"fa fa-newspaper-o\",\"link\":\"master\\/Tbl_blog\",\"urutan\":\"4\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:25:20\",\"updated_at\":\"2019-11-14 11:20:00\"}'),
(165, '2019-11-14 13:12:46', 14, 'deleteData', 'menu_master', '{\"id\":\"63\",\"name\":\"Config\",\"icon\":\"fa fa-link\",\"link\":\"config\",\"urutan\":\"0\",\"parent\":\"62\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-25 19:25:14\",\"updated_at\":\"2019-10-25 19:26:05\"}'),
(166, '2019-11-14 13:12:51', 14, 'deleteData', 'menu_master', '{\"id\":\"53\",\"name\":\"Manajer\",\"icon\":\"fa fa-user\",\"link\":\"manager\",\"urutan\":\"1\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 18:47:27\",\"updated_at\":\"2019-10-02 18:48:27\"}'),
(167, '2019-11-14 13:12:53', 14, 'deleteData', 'menu_master', '{\"id\":\"37\",\"name\":\"Data\",\"icon\":\"fa fa-check-square-o\",\"link\":\"#\",\"urutan\":\"1\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:08:53\",\"updated_at\":\"2019-10-02 08:27:23\"}'),
(168, '2019-11-14 13:12:56', 14, 'deleteData', 'menu_master', '{\"id\":\"56\",\"name\":\"Data Juara\",\"icon\":\"fa fa-star\",\"link\":\"master\\/Tbl_paket\",\"urutan\":\"2\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:23\",\"updated_at\":\"2019-11-14 11:08:42\"}'),
(169, '2019-11-14 13:12:59', 14, 'deleteData', 'menu_master', '{\"id\":\"57\",\"name\":\"Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"3\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:38:52\",\"updated_at\":\"2019-11-14 11:12:33\"}'),
(170, '2019-11-14 13:13:01', 14, 'deleteData', 'menu_master', '{\"id\":\"40\",\"name\":\"Event\",\"icon\":\"fa fa-map-o\",\"link\":\"#\",\"urutan\":\"2\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:20:54\",\"updated_at\":null}'),
(171, '2019-11-14 13:13:04', 14, 'deleteData', 'menu_master', '{\"id\":\"41\",\"name\":\"Event\",\"icon\":\"fa fa-star\",\"link\":\"master\\/Tbl_event\",\"urutan\":\"0\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:21:36\",\"updated_at\":\"2019-11-14 11:05:03\"}'),
(172, '2019-11-14 13:13:06', 14, 'deleteData', 'menu_master', '{\"id\":\"44\",\"name\":\"Gallery\",\"icon\":\"fa fa-picture-o\",\"link\":\"#\",\"urutan\":\"5\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:25:46\",\"updated_at\":\"2019-10-31 22:27:02\"}'),
(173, '2019-11-14 13:13:09', 14, 'deleteData', 'menu_master', '{\"id\":\"54\",\"name\":\"Gallery Group\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Master_imagegroup\",\"urutan\":\"2\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-06 00:00:00\",\"updated_at\":\"2019-11-14 11:22:27\"}'),
(174, '2019-11-14 13:13:12', 14, 'deleteData', 'menu_master', '{\"id\":\"64\",\"name\":\"Gallery Items\",\"icon\":\"fa fa-picture-o\",\"link\":\"master\\/Tbl_gallery\",\"urutan\":\"1\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-31 22:23:23\",\"updated_at\":\"2019-11-14 11:25:13\"}'),
(175, '2019-11-14 13:13:15', 14, 'deleteData', 'menu_master', '{\"id\":\"65\",\"name\":\"Komentar\",\"icon\":\"fa fa-comments-o\",\"link\":\"comment\",\"urutan\":\"3\",\"parent\":\"44\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-11-11 11:34:53\",\"updated_at\":null}'),
(176, '2019-11-14 13:13:17', 14, 'deleteData', 'menu_master', '{\"id\":\"49\",\"name\":\"Master\",\"icon\":\"fa fa-database\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:34:02\",\"updated_at\":\"2019-10-23 09:37:14\"}'),
(177, '2019-11-14 13:13:22', 14, 'deleteData', 'menu_master', '{\"id\":\"45\",\"name\":\"Merchandise\",\"icon\":\"fa fa-cubes\",\"link\":\"#\",\"urutan\":\"6\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:26:29\",\"updated_at\":\"2019-10-23 09:37:00\"}'),
(178, '2019-11-14 13:13:24', 14, 'deleteData', 'menu_master', '{\"id\":\"46\",\"name\":\"Merchandise\",\"icon\":\"fa fa-table\",\"link\":\"merchandise\",\"urutan\":\"0\",\"parent\":\"45\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:29:00\",\"updated_at\":null}'),
(179, '2019-11-14 13:13:27', 14, 'deleteData', 'menu_master', '{\"id\":\"52\",\"name\":\"Motor\",\"icon\":\"fa fa-motorcycle\",\"link\":\"master\\/motor\",\"urutan\":\"1\",\"parent\":\"49\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 15:54:20\",\"updated_at\":\"2019-10-02 15:55:26\"}'),
(180, '2019-11-14 13:13:30', 14, 'deleteData', 'menu_master', '{\"id\":\"42\",\"name\":\"Pendaftar Event\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_event_register\",\"urutan\":\"1\",\"parent\":\"40\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:24:04\",\"updated_at\":\"2019-11-14 11:07:00\"}'),
(181, '2019-11-14 13:13:33', 14, 'deleteData', 'menu_master', '{\"id\":\"50\",\"name\":\"Pengaturan\",\"icon\":\"fa fa-link\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:35:08\",\"updated_at\":\"2019-10-02 08:35:33\"}'),
(182, '2019-11-14 13:13:36', 14, 'deleteData', 'menu_master', '{\"id\":\"39\",\"name\":\"Rider\",\"icon\":\"fa fa-motorcycle\",\"link\":\"master\\/Tbl_raider\",\"urutan\":\"2\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:10:13\",\"updated_at\":\"2019-11-14 11:00:33\"}'),
(183, '2019-11-14 13:13:39', 14, 'deleteData', 'menu_master', '{\"id\":\"62\",\"name\":\"Setting\",\"icon\":\"fa fa-link\",\"link\":\"#\",\"urutan\":\"9\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-25 19:25:00\",\"updated_at\":\"2019-10-25 19:25:47\"}'),
(184, '2019-11-14 13:13:41', 14, 'deleteData', 'menu_master', '{\"id\":\"38\",\"name\":\"Team\",\"icon\":\"fa fa-users\",\"link\":\"master\\/Tbl_team\",\"urutan\":\"0\",\"parent\":\"37\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:09:30\",\"updated_at\":\"2019-11-14 11:02:47\"}'),
(185, '2019-11-14 13:13:44', 14, 'deleteData', 'menu_master', '{\"id\":\"47\",\"name\":\"Transaksi Merchandise\",\"icon\":\"fa fa-money \",\"link\":\"transaction\",\"urutan\":\"1\",\"parent\":\"45\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-02 08:30:04\",\"updated_at\":null}'),
(186, '2019-11-14 13:13:47', 14, 'deleteData', 'menu_master', '{\"id\":\"55\",\"name\":\"Wisata\",\"icon\":\"fa fa-star\",\"link\":\"#\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:36:26\",\"updated_at\":\"2019-10-23 09:42:41\"}'),
(187, '2019-11-14 13:13:51', 14, 'deleteData', 'menu_master', '{\"id\":\"60\",\"name\":\"Wisata\",\"icon\":\"fa fa-star\",\"link\":\"master\\/Tbl_wisata\",\"urutan\":\"0\",\"parent\":\"55\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:45:58\",\"updated_at\":\"2019-11-14 11:14:45\"}');
INSERT INTO `log_aktivitas` (`log_id`, `log_created_at`, `log_created_by`, `log_action`, `log_tablename`, `log_jsondata`) VALUES
(188, '2019-11-14 13:13:53', 14, 'deleteData', 'menu_master', '{\"id\":\"61\",\"name\":\"Wisata Dokumentasi\",\"icon\":\"fa fa-picture-o\",\"link\":\"wisatadokumentasi\",\"urutan\":\"1\",\"parent\":\"55\",\"notif\":\"\",\"status\":\"DISABLE\",\"created_at\":\"2019-10-23 09:46:14\",\"updated_at\":null}'),
(189, '2019-11-14 13:15:33', 14, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"PANITIA\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"37\\\",\\\"38\\\",\\\"39\\\",\\\"40\\\",\\\"41\\\",\\\"42\\\",\\\"56\\\",\\\"57\\\",\\\"55\\\",\\\"60\\\",\\\"43\\\",\\\"44\\\",\\\"54\\\",\\\"64\\\",\\\"65\\\",\\\"45\\\",\\\"46\\\",\\\"48\\\",\\\"49\\\",\\\"52\\\",\\\"62\\\",\\\"63\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-11-11 11:35:06\"}'),
(190, '2019-11-14 13:15:57', 14, 'updateData', 'menu_master', '{\"id\":\"68\",\"name\":\"Data Event\",\"icon\":\"fa fa-star\",\"link\":\"#\",\"urutan\":\"1\",\"parent\":\"66\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:14:53\",\"updated_at\":null}'),
(191, '2019-11-14 13:16:13', 14, 'updateData', 'menu_master', '{\"id\":\"68\",\"name\":\"Data Event\",\"icon\":\"fa fa-star-o\",\"link\":\"#\",\"urutan\":\"1\",\"parent\":\"66\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:14:53\",\"updated_at\":\"2019-11-14 13:15:57\"}'),
(192, '2019-11-14 13:16:25', 14, 'updateData', 'menu_master', '{\"id\":\"68\",\"name\":\"Data Event\",\"icon\":\"fa fa-map-o\",\"link\":\"#\",\"urutan\":\"1\",\"parent\":\"66\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:14:53\",\"updated_at\":\"2019-11-14 13:16:13\"}'),
(193, '2019-11-14 13:16:32', 14, 'updateData', 'menu_master', '{\"id\":\"66\",\"name\":\"Event\",\"icon\":\"fa fa-start\",\"link\":\"#\",\"urutan\":\"1\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:11:45\",\"updated_at\":\"2019-11-14 13:11:58\"}'),
(194, '2019-11-14 13:17:47', 14, 'updateData', 'menu_master', '{\"id\":\"70\",\"name\":\"Wisata\",\"icon\":\"fa fa-picutre-o\",\"link\":\"#\",\"urutan\":\"3\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:16:51\",\"updated_at\":null}'),
(195, '2019-11-14 13:19:47', 14, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"PANITIA\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"66\\\",\\\"67\\\",\\\"68\\\",\\\"69\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-11-14 13:15:33\"}'),
(196, '2019-11-14 13:21:55', 14, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"PANITIA\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"66\\\",\\\"67\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"71\\\",\\\"72\\\",\\\"73\\\",\\\"74\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-11-14 13:19:47\"}'),
(197, '2019-11-14 13:22:16', 14, 'updateData', 'menu_master', '{\"id\":\"75\",\"name\":\"Data Motor\",\"icon\":\"fa fa-motorcycle-o\",\"link\":\"#\",\"urutan\":\"7\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:20:54\",\"updated_at\":null}'),
(198, '2019-11-14 13:22:26', 14, 'updateData', 'menu_master', '{\"id\":\"76\",\"name\":\"Data Sponsor\",\"icon\":\"fa-handshake-o\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:21:45\",\"updated_at\":null}'),
(199, '2019-11-14 13:23:28', 14, 'updateData', 'menu_master', '{\"id\":\"76\",\"name\":\"Data Sponsor\",\"icon\":\"fa-handshake\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:21:45\",\"updated_at\":\"2019-11-14 13:22:26\"}'),
(200, '2019-11-14 13:23:42', 14, 'updateData', 'menu_master', '{\"id\":\"76\",\"name\":\"Data Sponsor\",\"icon\":\" fa-check\",\"link\":\"#\",\"urutan\":\"8\",\"parent\":\"0\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:21:45\",\"updated_at\":\"2019-11-14 13:23:28\"}'),
(201, '2019-11-14 13:26:13', 14, 'updateData', 'role', '{\"id\":\"17\",\"role\":\"PANITIA\",\"status\":\"ENABLE\",\"menu\":\"[\\\"1\\\",\\\"66\\\",\\\"67\\\",\\\"68\\\",\\\"69\\\",\\\"70\\\",\\\"71\\\",\\\"72\\\",\\\"73\\\",\\\"74\\\",\\\"75\\\",\\\"76\\\"]\",\"created_at\":\"2018-10-12 17:03:59\",\"updated_at\":\"2019-11-14 13:21:55\"}'),
(202, '2019-11-14 13:39:12', 14, 'updateData', 'menu_master', '{\"id\":\"68\",\"name\":\"Data Event\",\"icon\":\"fa fa-star-o\",\"link\":\"#\",\"urutan\":\"1\",\"parent\":\"66\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:14:53\",\"updated_at\":\"2019-11-14 13:16:25\"}'),
(203, '2019-11-14 13:39:29', 14, 'updateData', 'menu_master', '{\"id\":\"67\",\"name\":\"Buat Event\",\"icon\":\"fa fa-plus\",\"link\":\"#\",\"urutan\":\"0\",\"parent\":\"66\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:12:33\",\"updated_at\":null}'),
(204, '2019-11-14 13:39:51', 14, 'updateData', 'menu_master', '{\"id\":\"67\",\"name\":\"Buat Event\",\"icon\":\"fa fa-plus\",\"link\":\"Tbl_event\\/create\",\"urutan\":\"0\",\"parent\":\"66\",\"notif\":\"\",\"status\":\"ENABLE\",\"created_at\":\"2019-11-14 13:12:33\",\"updated_at\":\"2019-11-14 13:39:29\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_backupdb`
--

CREATE TABLE `log_backupdb` (
  `bdb_id` int(11) NOT NULL,
  `bdb_file` varchar(500) NOT NULL,
  `bdb_size` varchar(500) NOT NULL,
  `bdb_sizedisplay` varchar(500) NOT NULL,
  `bdb_created_at` datetime NOT NULL,
  `bdb_created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_backupdb`
--

INSERT INTO `log_backupdb` (`bdb_id`, `bdb_file`, `bdb_size`, `bdb_sizedisplay`, `bdb_created_at`, `bdb_created_by`) VALUES
(1, 'backup-on-2019-09-25-17-18-20.zip', '26893', '26.26 KB', '2019-09-25 17:18:20', 1),
(2, 'backup-on-2019-09-25-17-19-15.zip', '26964', '26.33 KB', '2019-09-25 17:19:15', 1),
(3, 'backup-on-2019-09-30-17-04-07.zip', '27346', '26.71 KB', '2019-09-30 17:04:07', 1),
(4, 'backup-on-2019-10-03-16-55-55.zip', '29539', '28.85 KB', '2019-10-03 16:55:55', 1),
(5, 'backup-on-2019-10-15-09-53-59.zip', '29571', '28.88 KB', '2019-10-15 09:53:59', 1),
(6, 'backup-on-2019-10-16-14-00-26.zip', '29760', '29.06 KB', '2019-10-16 14:00:26', 1),
(7, 'backup-on-2019-11-08-09-47-08.zip', '30655', '29.94 KB', '2019-11-08 09:47:08', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_imagegroup`
--

CREATE TABLE `master_imagegroup` (
  `id` int(11) NOT NULL,
  `id_event` int(11) DEFAULT NULL,
  `value` varchar(225) DEFAULT NULL,
  `public` enum('ENABLE','DISABLE') NOT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_imagegroup`
--

INSERT INTO `master_imagegroup` (`id`, `id_event`, `value`, `public`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(1, NULL, 'Pembukaan Indonesia Enduro Rally Championship 2019', 'ENABLE', 'DISABLE', '2019-10-06 11:27:57', '2019-10-22 08:59:58', NULL),
(2, NULL, 'SUV', 'DISABLE', 'DISABLE', '2019-10-06 12:33:25', '2019-10-06 15:53:04', NULL),
(3, NULL, 'groub 3', 'DISABLE', 'DISABLE', '2019-10-06 00:00:00', NULL, NULL),
(4, NULL, 'Ululu.', 'ENABLE', 'DISABLE', '2019-10-16 18:32:56', NULL, NULL),
(5, NULL, 'MAT EIGHT', 'ENABLE', 'ENABLE', '2019-10-25 02:30:38', '2019-10-28 19:32:44', NULL),
(6, NULL, 'VENUE IERC 2019 - BANYUWANGI', 'ENABLE', 'ENABLE', '2019-10-28 18:31:00', NULL, NULL),
(7, NULL, 'ARTIS PUN MENJADI PEMBALAP DI IERC 2019', 'ENABLE', 'ENABLE', '2019-10-28 18:38:16', NULL, NULL),
(8, NULL, 'LOGO IERC 2019', 'ENABLE', 'ENABLE', '2019-10-28 18:56:04', '2019-10-31 22:37:35', NULL),
(9, NULL, 'MAT EIGHT 2019', 'ENABLE', 'ENABLE', '2019-10-28 19:31:32', NULL, NULL),
(10, NULL, 'MERIAHNYA PEMBUKAAN IERC 2019', 'ENABLE', 'ENABLE', '2019-10-31 22:22:35', '2019-10-31 22:36:00', NULL),
(11, NULL, 'Start IERC 2019', 'ENABLE', 'ENABLE', '2019-11-01 12:59:43', NULL, NULL),
(12, 4, 'Track IERC Day 1', 'ENABLE', 'ENABLE', '2019-11-01 18:27:46', NULL, NULL),
(13, 4, 'Suasana START DAY 2 IERC 2019', 'ENABLE', 'ENABLE', '2019-11-02 10:58:47', NULL, NULL),
(14, 4, 'TRACK MOMENT DAY 2 IERC 2019', 'ENABLE', 'ENABLE', '2019-11-02 18:31:27', NULL, NULL),
(15, NULL, 'THE MOMENT IERC 2019', 'ENABLE', 'ENABLE', '2019-11-05 21:43:27', NULL, NULL),
(16, 4, 'THE TRACK IERC 2019', 'ENABLE', 'ENABLE', '2019-11-06 14:26:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_motor`
--

CREATE TABLE `master_motor` (
  `id` int(11) NOT NULL,
  `value` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLED') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_motor`
--

INSERT INTO `master_motor` (`id`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'KTM', 'ENABLE', '2019-10-03 18:54:57', NULL),
(2, 'HUSQVARNA', 'ENABLE', '2019-10-03 18:55:18', NULL),
(3, 'SHERCO', 'ENABLE', '2019-10-03 18:55:24', NULL),
(4, 'GASGAS', 'ENABLE', '2019-10-03 18:55:29', NULL),
(5, 'YAMAHA', 'ENABLE', '2019-10-03 18:55:33', NULL),
(6, 'HONDA', 'ENABLE', '2019-10-03 18:55:37', NULL),
(7, 'SUZUKI', 'ENABLE', '2019-10-03 18:55:41', NULL),
(8, 'VIAR', 'ENABLE', '2019-10-03 18:55:45', NULL),
(9, 'KAWASAKI', 'ENABLE', '2019-10-03 18:55:48', NULL),
(10, 'CUSTOM', 'ENABLE', '2019-10-03 18:55:51', NULL),
(11, 'NONE', 'ENABLE', '2019-10-03 18:55:55', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_master`
--

CREATE TABLE `menu_master` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `icon` varchar(225) DEFAULT NULL,
  `link` varchar(225) DEFAULT NULL,
  `urutan` varchar(225) DEFAULT NULL,
  `parent` varchar(225) DEFAULT NULL,
  `notif` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu_master`
--

INSERT INTO `menu_master` (`id`, `name`, `icon`, `link`, `urutan`, `parent`, `notif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', '/', '0', '0', '', 'ENABLE', '2019-01-17 14:33:33', '2019-10-02 08:10:30'),
(66, 'Event', 'fa fa-star-o', '#', '1', '0', '', 'ENABLE', '2019-11-14 13:11:45', '2019-11-14 13:16:32'),
(67, 'Buat Event', 'fa fa-plus', 'master/Tbl_event/create', '0', '66', '', 'ENABLE', '2019-11-14 13:12:33', '2019-11-14 13:39:51'),
(68, 'Data Event', 'fa fa-star-o', 'master/Tbl_event', '1', '66', '', 'ENABLE', '2019-11-14 13:14:53', '2019-11-14 13:39:12'),
(69, 'Data Pendaftar', 'fa fa-list', '#', '2', '0', '', 'ENABLE', '2019-11-14 13:15:23', NULL),
(70, 'Wisata', 'fa fa-star', '#', '3', '0', '', 'ENABLE', '2019-11-14 13:16:51', '2019-11-14 13:17:47'),
(71, 'News', 'fa fa-newspaper-o', '#', '4', '0', '', 'ENABLE', '2019-11-14 13:17:22', NULL),
(72, 'Gallery', 'fa fa-picture-o', '#', '4', '0', '', 'ENABLE', '2019-11-14 13:18:08', NULL),
(73, 'Merchandise', 'fa fa-cubes', '#', '6', '0', '', 'ENABLE', '2019-11-14 13:18:53', NULL),
(74, 'Data Admin', 'fa fa-user', '#', '7', '0', '', 'ENABLE', '2019-11-14 13:19:26', NULL),
(75, 'Data Motor', 'fa fa-motorcycle', '#', '7', '0', '', 'ENABLE', '2019-11-14 13:20:54', '2019-11-14 13:22:16'),
(76, 'Data Sponsor', 'fa  fa-check', '#', '8', '0', '', 'ENABLE', '2019-11-14 13:21:45', '2019-11-14 13:23:42'),
(77, 'Konfigurasi', 'fa fa-link', '#', '9', '0', '', 'ENABLE', '2019-11-14 13:24:28', NULL),
(78, 'Nomor Admin', 'fa fa-phone', '#', '0', '77', '', 'ENABLE', '2019-11-14 13:25:34', NULL),
(79, 'Teks Sponsor', 'fa fa-check', '#', '1', '77', '', 'ENABLE', '2019-11-14 13:26:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` enum('DISABLE','ENABLE') DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`, `status`, `menu`, `created_at`, `updated_at`) VALUES
(17, 'PANITIA', 'ENABLE', '[\"1\",\"66\",\"67\",\"68\",\"69\",\"70\",\"71\",\"72\",\"73\",\"74\",\"75\",\"76\",\"77\",\"78\",\"79\"]', '2018-10-12 17:03:59', '2019-11-14 13:26:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `TABLE 27`
--

CREATE TABLE `TABLE 27` (
  `COL 1` varchar(3) DEFAULT NULL,
  `COL 2` varchar(3) DEFAULT NULL,
  `COL 3` varchar(21) DEFAULT NULL,
  `COL 4` varchar(10) DEFAULT NULL,
  `COL 5` varchar(10) DEFAULT NULL,
  `COL 6` varchar(10) DEFAULT NULL,
  `COL 7` varchar(4) DEFAULT NULL,
  `COL 8` varchar(10) DEFAULT NULL,
  `COL 9` varchar(3) DEFAULT NULL,
  `COL 10` varchar(10) DEFAULT NULL,
  `COL 11` varchar(10) DEFAULT NULL,
  `COL 12` varchar(10) DEFAULT NULL,
  `COL 13` varchar(10) DEFAULT NULL,
  `COL 14` varchar(10) DEFAULT NULL,
  `COL 15` varchar(10) DEFAULT NULL,
  `COL 16` varchar(10) DEFAULT NULL,
  `COL 17` varchar(6) DEFAULT NULL,
  `COL 18` varchar(10) DEFAULT NULL,
  `COL 19` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `TABLE 27`
--

INSERT INTO `TABLE 27` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`) VALUES
('101', '51', 'DAVID', '', '', '', '87', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('102', '51', 'GOGIK ', '', '', '', '34', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('103', '51', 'NANTO', '', '', '', '16', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('104', '51', 'SUNU', '', '', '', '503', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('105', '52', 'EEN BOLANG', '', '', '', '994', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('106', '52', 'ENO AJI ', '', '', '', '26', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('107', '51', 'IWAN BALAW', '', '', '', '18', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('108', '53', 'ICAN ', '', '', '', '111', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('109', '52', 'KABAYAN', '', '', '', '777', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('110', '54', 'PROF', '', '', '', '555', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('111', '54', 'AMA RIDO', '', '', '', '512', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('112', '52', 'SETIAWAN FIT', '', '', '', '96', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('113', '55', 'ANGGA F', '', '', '', '997', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('114', '55', 'RNX ', '', '', '', '453', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('115', '52', 'KABOEL', '', '', '', '111', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('116', '56', 'RUDI MBEK ', '', '', '', '35', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('117', '57', 'W2 ', '', '', '', '301', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('118', '57', 'PUJIBONDOL', '', '', '', '22', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('119', '53', 'ADHIE 68 ', '', '', '', '68', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('120', '58', 'ALX', '', '', '', '63', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('121', '58', 'HOSEN', '', '', '', '23', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('122', '54', 'BABE', '', '', '', '52', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('123', '59', 'BUDI BGR', '', '', '', '81', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('124', '59', 'ROBI', '', '', '', '5', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('125', '54', 'OEMAR', '', '', '', '321', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('126', '60', 'MR. KM ', '', '', '', '15', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('127', '60', 'PICON', '', '', '', '57', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('128', '54', 'GARRY ', '', '', '', '18', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('129', '61', 'BAYU MCC ', '', '', '', '55', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('130', '61', 'DHARMA ', '', '', '', '7', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('131', '62', 'R. POA ', '', '', '', '153', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('132', '62', 'EDY ', '', '', '', '117', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('133', '62', 'DURY BELONA ', '', '', '', '212', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('134', '63', 'ARY ', '', '', '', '26', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('135', '63', 'PHILLIPS ', '', '', '', '46', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('136', '63', 'SIDIQ', '', '', '', '179', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('137', '64', 'DANANG ', '', '', '', '11', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('138', '64', 'POMO SU ', '', '', '', '888', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('139', '64', 'BOBY ', '', '', '', '2', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('140', '65', 'IRMA ', '', '', '', '25', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('141', '65', 'AW ', '', '', '', '2', '', 'S', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('142', '65', 'AGIE ', '', '', '', '17', '', 'S', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('143', '66', 'ARDI IDRA', '', '', '', '168', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('144', '66', 'EDI LAGA', '', '', '', '29', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('145', '66', 'JIK ANOM', '', '', '', '678', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('146', '67', 'MIING', '', '', '', '808', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('147', '67', 'ARDA OZAWA', '', '', '', '55', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('148', '67', 'CAPTAIN DEDY', '', '', '', '178', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('149', '68', 'JARAN ALAS', '', '', '', '69', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('150', '68', 'ABAH HERU', '', '', '', '18', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('151', '68', 'SUHADAK SUMOLEWO', '', '', '', '818', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('152', '69', 'TRONDOL', '', '', '', '26', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('153', '69', 'AMBAR ', '', '', '', '81', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('154', '69', 'JOE PANTAU ', '', '', '', '43', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('155', '70', 'ERIKSEN ', '', '', '', '168', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('156', '70', 'AGOES ', '', '', '', '72', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('157', '70', 'KUMPRUNG EDAN', '', '', '', '21', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('158', '71', 'GEMAK ', '', '', '', '8', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('159', '71', 'DR. TEDJO', '', '', '', '70', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('160', '71', 'KISWADI DTSP', '', '', '', '45', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('161', '72', 'HERJUNO ', '', '', '', '22', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('162', '72', '@FENDY_ERBE', '', '', '', '83', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('163', '72', 'SI DUR ', '', '', '', '52', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('164', '73', 'DAVID JS ', '', '', '', '8', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('165', '73', 'F. MUCHTAR', '', '', '', '360', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('166', '73', 'O?BOY ', '', '', '', '5', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('167', '74', 'APU ', '', '', '', '218', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('168', '74', 'ANFAUZI ', '', '', '', '6666', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('169', '74', 'SYAMSUDIN (BM) ', '', '', '', '57', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('170', '75', 'D?JHONEZ', '', '', '', '12', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('171', '75', 'HENDRIE SEBO ', '', '', '', '11', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('172', '75', 'AGUNG WP ', '', '', '', '21', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('173', '76', 'ADITYA SABRINK ', '', '', '', '31', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('174', '76', 'LURAE ', '', '', '', '87', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('175', '76', 'SI OS ', '', '', '', '5', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('176', '77', 'KELIK ', '', '', '', '51', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('177', '77', 'SEMUT IRENG ', '', '', '', '51', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('178', '77', 'DORI ', '', '', '', '51', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('179', '78', 'MANTAN ', '', '', '', '505', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('180', '78', 'BRAM ', '', '', '', '89', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('181', '78', 'CHOLID ', '', '', '', '7', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('182', '79', 'RIZQON ', '', '', '', '79', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('183', '79', 'OPA FUAD ', '', '', '', '21', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('184', '79', 'RAJIV ', '', '', '', '333', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('185', '80', 'HARTONO ', '', '', '', '125', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('186', '80', 'ROU PUBLIK ', '', '', '', '208', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('187', '80', 'SION ', '', '', '', '48', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('188', '81', 'JILOND', '', '', '', '57', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('189', '81', 'C-GATE', '', '', '', '46', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('190', '81', 'H. PENCENK', '', '', '', '81', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('191', '82', 'ISNOMO ', '', '', '', '16', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('192', '82', 'DHE MARNO', '', '', '', '10', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('193', '82', 'ADIT ', '', '', '', '23', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('194', '83', 'DIEGO ROFIK ', '', '', '', '7', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('195', '83', 'W4HYU D@YIRI ', '', '', '', '29', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('196', '83', '4FIF AMRULLAH ', '', '', '', '11', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('197', '84', 'RUDIKOE L', '', '', '', '71', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('198', '84', 'HADE XL', '', '', '', '74', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('199', '84', 'BORLY L', '', '', '', '191', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('200', '85', 'DAVIDNL ', '', '', '', '68', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('201', '85', 'CHEF CEDRIC ', '', '', '', '6', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('202', '85', 'SPIRIT ', '', '', '', '94', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('203', '86', 'ISKANDAR', '', '', '', '4', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('204', '86', 'JIBRIL ATAMA', '', '', '', '27', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('205', '86', 'SULTAN', '', '', '', '2', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('206', '87', 'KURNIA JAYA ', '', '', '', '44', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('207', '87', 'AGUS BIMA', '', '', '', '178', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('208', '87', 'ADIE THEMPOEL', '', '', '', '92', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('209', '88', 'BOCAHGADUR ', '', '', '', '12', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('210', '88', 'PANDOLO ', '', '', '', '138', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('211', '88', 'DYA ', '', '', '', '77', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('212', '89', 'MOHD ZAMURINA BESAR ', '', '', '', '131', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('213', '89', 'NUR NASHRULLAH B ', '', '', '', '34', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('214', '89', 'MAHAT SHARIFF ', '', '', '', '164', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('215', '90', 'AZIZ ARIFFIN XXL', '', '', '', '67', '', 'XXL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('216', '90', 'MOHD HAIKAL L', '', '', '', '630', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('217', '90', 'MD SARAFUDIN KHALID L', '', '', '', '117', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('218', '91', 'SYAHRUL ', '', '', '', '101', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('219', '91', 'HANTU LAUT ', '', '', '', '44', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('220', '91', 'CHONX ', '', '', '', '122', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('221', '92', 'BHANUATAM ', '', '', '', '81', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('222', '92', 'HUDA ', '', '', '', '26', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('223', '92', 'SANTIKO ', '', '', '', '57', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('224', '93', 'IAN ', '', '', '', '73', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('225', '93', 'TEDDY LAHEM ', '', '', '', '168', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('226', '93', 'TANZIEL ', '', '', '', '82', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('227', '94', 'LUCAS ', '', '', '', '513', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('228', '94', 'XTRAIL ', '', '', '', '69', '', 'S', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('229', '94', 'XTRAIL ', '', '', '', '75', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('230', '95', 'BAGYO ', '', '', '', '846', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('231', '95', 'XTRAIL ', '', '', '', '87', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('232', '95', 'XTRAIL ', '', '', '', '87', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('233', '96', 'ALPHA3 XL', '', '', '', '94', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('234', '96', 'NGGANK XL', '', '', '', '69', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('235', '96', 'WENK XL', '', '', '', '55', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('236', '97', 'X TRAIL ', '', '', '', 'X', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('237', '97', 'X TRAIL ', '', '', '', '44', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('238', '97', 'X TRAIL ', '', '', '', '41', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('239', '98', 'RONI ', '', '', '', '31', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('240', '98', 'AGUS ', '', '', '', '28', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('241', '98', 'PENDIK PUTRA ', '', '', '', '99', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('242', '99', 'YULI WARDANA ', '', '', '', '44', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('243', '99', 'RULLY B ', '', '', '', '182', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('244', '99', 'NUR KHOLIS ', '', '', '', '27', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('245', '100', 'BUDI F ', '', '', '', '75', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('246', '100', 'DJARIANTO ', '', '', '', 'D7R', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('247', '101', 'AYAH STRAC ', '', '', '', '450', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('248', '101', 'PAK T ', '', '', '', '15', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('249', '101', 'NDARU ', '', '', '', '297', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('250', '102', 'TANSIL ', '', '', '', '118', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('251', '102', 'ANDY AH ', '', '', '', '817', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('252', '102', 'KRIWIL ', '', '', '', '279', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('253', '103', 'ANDI ', '', '', '', '8', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('254', '104', 'A-HER ', '', '', '', '29', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('255', '104', 'SIIFUL ', '', '', '', '212', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('256', '104', 'SRODONG ', '', '', '', '282', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('257', '105', 'KODEI XL', '', '', '', '29', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('258', '105', 'TUYE L', '', '', '', '21', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('259', '106', 'HADI', '', '', '', '77', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('260', '106', 'BINTANG', '', '', '', '146', '', 'M', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('261', '106', 'NANDO', '', '', '', '192', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('262', '107', 'UTOMO', '', '', '', '689', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('263', '107', 'RIDWAN', '', '', '', '313', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('264', '107', 'BENNY F', '', '', '', '41', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('265', '108', 'AMBARA', '', '', '', '58', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('266', '108', 'YANTO', '', '', '', '46', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('267', '108', 'DHE', '', '', '', '14', '', 'L', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('268', '109', 'IDNAS', '', '', '', '99', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('269', '109', 'JIMMY', '', '', '', '6', '', 'XL', '', '', '', '', '', '', '', 'ENABLE', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `title`, `deskripsi`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'ARE U READY FOR IERC 2019', '<p>IERC 2019 adalah kompetisi pertama kali digelar di Indonesia yang menghgunakan konsep GPS SYSTEM, kompetisi ini akan dilaksanakan selama 3 hari mulai tanggal 1 sampai dengan 3 November 2019 yang akan melalui rute dari banyuwangi sampai ke gunung bromo.</p><p>puluhan team papan atas indonesia akan bergabung di kopetisi IERC 2019 ini.</p>', 'ENABLE', '2019-10-24 18:46:49', '2019-10-28 17:14:27', NULL),
(4, 'BANYUWANGI DAN BROMO JADI TRACK IERC 2019', '<p>Banyuwangi dan Bromo kenapa menjadi lokasi event IERC 2019, panitia penyelenggara memilih lokasi tersebut dikarenakan lokasi tersebut masih menjadi magnet untuk para petualang di Indonesia.</p>', 'ENABLE', '2019-10-28 15:34:33', '2019-10-31 22:40:36', NULL),
(7, 'IERC 2019, Reli Off-road Pertama Berbasis Teknologi GPS', '<p>Sebuah reli  off-road berkelas digelar di Banyuwangi Jumat (1/11/19). Event bertajuk Indonesia Enduro Rally Championship (IERC) 2019 ini merupakan reli off-road yang berbasis teknologi untuk memandu para riders-nya. <br><br>Penyelenggara mengklaim ini even reli off-road pertama di Indonesia, bahkan Asia Tenggara, yang menggunakan teknologi seperti ini. \"Selama ini masih menggunakan rambu dan tanda-tanda. Sehingga tidak ada sampah dari penempelan rambu dan tanda di hutan. Kami Ingin ada perubahan. Naik level dan ada sedikit kompetisi,\"  kata Ketua Panitia IERC 2019 Edy Kampang,  Jumat (1/11/19).<br><br>Reli ini mengambil start di Banyuwangi dan finis di area Gunung Bromo. Jarak lintasan sekitar 450 km yang akan ditempuh selama tiga hari. <br><br>Hari pertama, start di Banyuwangi kota dan finis di wilayah Kecamatan Kalibaru. Hari kedua dari Kalibaru finis di Lumajang. Dan hari ketiga,  start Lumajang finis di Bromo. <br><br>Pesertanya tidak hanya dari Indonesia, tetapi juga riders dari mancanegara. Ada juga riders dari kaum hawa yang berparas cantik dan memiliki prestasi tingkat nasional.<br><br>\"Pesertanya berasal dari berbagai kota di Indonesia. Ada tim dari Jogja, Kalimantan, Lombok, Lampung, Banjarnegara. Ada juga peserta dari luar negeri seperti dari Malaysia,  Australia, Italia, dan Rumania,\" jelas Edy.<br><br><br>Pada IERC 2019 ini, lintasan reli dibuat dengan menggunakan teknologi berbasis GPS. Setiap tim terdiri dari tiga riders. Masing-masing tim akan mendapatkan tracker yang berfungsi sebagai pemandu sekaligus alat untuk menyimpan data reli dan memberikan penilaian tim. Tracker ini juga berfungsi untuk menyampaikan informasi jika ada riders yang mengalami keadaan emergency.<br><br>\"Jika ada kejadian emergency, tinggal tekan tombol merah. Maka tracker akan mengirim pesan emergency kepada panitia agar tim rescue bisa segera bisa meluncur ke lokasi dan segera dilakukan evakuasi,\" ungkap Edy.<br><br>Peserta tidak perlu takut kehilangan sinyal. Sebab, tracker tidak menggunakan sinyal telepon seluler, tapi  langsung menggunakan satelit.<br><br>Dengan aplikasi yang sudah disiapkan, bisa diketahui posisi setiap tim. Begitu juga jika ada tim yang memotong lintasan, maka akan langsung terlihat dan terekam tracker.<br><br>Banyuwangi dan Probolinggo dipilih sebagai lintasan IERC 2019 karena Jawa Timur masih menjadi maskot event di Indonesia. Selain itu, di Jatim ada dua destinasi wisata unggulan, yakni di Banyuwangi ada Gunung Ijen dan di Probolinggo ada Gunung Bromo.<br><br>\"Jadi, sambil reli, riders bisa sambil berwisata. Ini sekaligus mempromosikan objek wisata yang ada di sekitar lintasan yang kita lewati,\" kata Edy.<br><br>Sumber : jatimtimes.com</p>', 'ENABLE', '2019-11-01 13:02:26', NULL, NULL),
(9, 'Tiga Riders Cantik Ramaikan Reli Off-Road IERC 2019 Berbasis Tekhnologi', '<p><strong>Kabartoday, </strong><em>BANYUWANGI – </em>Reli Off-Road berkelas digelar di Banyuwangi Jumat (1/11/19). Event bertajuk Indonesia Enduro Rally Championship (IERC) 2019 ini merupakan reli off-road yang berbasis teknologi untuk memandu para riders-nya.</p>\r\n<p>Penyelenggara mengklaim ini even reli off-road pertama di Indonesia, bahkan Asia Tenggara, yang menggunakan teknologi seperti ini.</p>\r\n<div></div>\r\n<p>“Selama ini masih menggunakan rambu dan tanda-tanda. Sehingga tidak ada sampah dari penempelan rambu dan tanda di hutan. Kami Ingin ada perubahan. Naik level dan ada sedikit kompetisi,” lontar Ketua Panitia IERC 2019 Edy Kampang, Kamis (31/10/19) malam,\r\n    saat jumpa pers di Luminor Hotel Banyuwangi.</p>\r\n<p>Reli ini, lanjut Edy, mengambil start di Banyuwangi dan finis di area Gunung Bromo. Jarak lintasan sekitar 450 km yang akan ditempuh selama tiga hari.</p>\r\n\r\n<p>Hari pertama, start di Banyuwangi kota dan finis di wilayah Kecamatan Kalibaru. Hari kedua dari Kalibaru finish di Lumajang. Dan hari ketiga, start Lumajang finish di Bromo.</p>\r\n<p>Pesertanya tidak hanya dari Indonesia, namun juga ada riders dari mancanegara. Bahkan yang menarik ada juga riders dari kaum hawa berparas cantik dan memiliki prestasi tingkat nasional.</p>\r\n<p>“Pesertanya berasal dari berbagai kota di Indonesia. Ada tim dari Jogja, Kalimantan, Lombok, Lampung, Banjarnegara. Ada juga peserta dari luar negeri seperti dari Malaysia, Australia, Italia, dan Rumania,” jelas Edy lagi.</p>\r\n\r\nPada IERC 2019 ini, lintasan reli dibuat dengan menggunakan teknologi berbasis GPS. Setiap tim terdiri dari tiga riders. Masing-masing tim akan mendapatkan tracker yang berfungsi sebagai pemandu sekaligus alat untuk menyimpan data reli dan memberikan\r\npenilaian tim. Tracker ini juga berfungsi untuk menyampaikan informasi jika ada riders yang mengalami keadaan emergency.\r\n\r\n<br>\r\n\r\n<p>“Jika ada kejadian emergency, tinggal tekan tombol merah. Maka tracker akan mengirim pesan emergency kepada panitia agar tim rescue bisa segera bisa meluncur ke lokasi dan segera dilakukan evakuasi,” ungkap Edy.</p>\r\n<p>Peserta tidak perlu takut kehilangan sinyal. Sebab, tracker tidak menggunakan sinyal telepon seluler, tapi langsung menggunakan satelit.</p>\r\n\r\n\r\n\r\n<p>Dengan aplikasi yang sudah disiapkan, bisa diketahui posisi setiap tim. Begitu juga jika ada tim yang memotong lintasan, maka akan langsung terlihat dan terekam tracker.</p>\r\n<p>Banyuwangi dan Probolinggo dipilih sebagai lintasan IERC 2019 karena Jawa Timur masih menjadi maskot event di Indonesia. Selain itu, di Jatim ada dua destinasi wisata unggulan, yakni di Banyuwangi ada Gunung Ijen dan di Probolinggo ada Gunung Bromo.</p>\r\n<p>“Jadi, sambil reli, riders bisa sambil berwisata. Ini sekaligus mempromosikan objek wisata yang ada di sekitar lintasan yang kita lewati,” pungkas Edy. <strong><em>(HS)</em></strong></p>\r\n\r\n<br>Sumber : kabartoday.co.id<br>', 'ENABLE', '2019-11-04 21:03:04', NULL, NULL),
(10, 'Pebalap Cewek Sampai Artis Tertantang Ikut Indonesia Enduro Rally Championship 2019', '<p>\r\n\r\n<p><strong>BANYUWANGI</strong>&nbsp;- Kata siapa nge-trail hanya diminati kaum Adam. Di JPX Indonesia Enduro Rally Championship 2019 para rider cewek turut ambil bagian menaklukkan lintasan menantang menyisiri hutan, pegunungan, pantai sampai medan terjal.</p><p>Salah satu tim dengan formasi kalangan Hawa itu berjuluk Anatidae Team Indonesia. Semua rider-nya cewek. Dua dari tiga pebalapnya malah berhijab. Mereka terdiri dari Irma Febriana, Awerus Ayu Windari, Agie Frisilia dengan jersey kebesaran berwarna pink.</p><p>Ketiganya berparas cantik nan sexy. Bisa dibilang tidak tampak perawakan sebagai pemotor apalagi kelas enduro yang menjelajah belantara hutan dan pegunungan ketika mengenakan busana harian.</p><p>Tapi itu berbalik 360 derajat saat nangkring di atas kuda besi. Tangannya terampil membetot gas motor. Kaki-kakinya yang jenjang bahkan lincah menjejakkan ke tanah begitu keseimbangan tubuhnya tak terkendali di atas motor. Ketiganya lihai memacu motor seperti rider cowok.</p><p>\"Untuk perempuan tampil di dunia cowok pasti banyak tantangan. Tapi ini untuk memotivasi para perempuan lain agar bisa sejajar dengan kalangan pria. Sensasinya di jalur oke banget karena medannya ekstrim,\" beber ketiganya saling menimpali. </p><p>\r\n\r\n<p>Adventure trail sudah familiar di Nusantara. Namun mencari lintasan menggunakan GPS baru pertama di Indonesia. Sebagai tim kebanggaan Indonesia tentu harus ambil bagian.</p><p>\"Rally di sirkuit sudah biasa. Namun enduro jelas beda,\" ujar tiga srikandi yang tahun lalu menjuarai Asia Cross Cauntry kelas cewek di Kamboja.</p><p>Disamping pebalap cewek, ada pula pebalap dari kalangan artis. Ada Darius Sinathrya, Al Fatir Muhtar dan David. Ketiganya familiar sebagai presenter wisata adventure.</p><p>Menurut Panitia Rally,  Edi Kampang, etape pertama akan menempuh jalur ekstrim. Panjang lintasan 107 km membentang dari Banyuwangi - Kalibaru. Untuk hari kedua medan yang dilewati kategori panjang dari Kalibaru - Jember - Lumajang.</p><p>\"Etape ketiga, dari Lumajang menuju Bromo akan kembali melalui trek ekstrim. Tiga etape menggunakan GPS yang merupakan pertama di Indonesia,\" ulasnya. <strong>SUBAHRODIN YUSUF</strong></p>\r\n\r\nSumber :&nbsp;suksesinews.net</p>\r\n\r\n<br></p>', 'ENABLE', '2019-11-04 21:10:34', NULL, NULL),
(11, 'Indonesia Enduro Rally Championship 2019, Banyuwangi - Lumajang Cuma Dipandu GPS', '<p>\r\n\r\n<p><strong>BANYUWANGI</strong>&nbsp;- Indonesia Enduro Rally Championship 2019 resmi digeber Jumat (1/11/2019). Pebalap nasional dan mancanegara ambil bagian di ajang balapan pertama di Nusantara yang menggunakan panduan global positioning system (GPS) dalam menyusuri lintasan.</p><p>\"Penggunaan GPS mengurangi sampah dan perusakan pohon di hutan karena tidak memasang penunjuk arah manual. Kami tidak ingin itu lagi. Dan GPS ini berbasis satelit sehingga sinyal dijamin bagus,\" ucap Panitia Indonesia Enduro Rally Championship 2019, Edi Kampang.</p><p>Para rider akan menjelajahi trek yang dominan hutan serta pegunungan dengan jarak tempuh sekitar 350 kilometer. Rute itu, lanjut Edi, membentang di 4 kabupaten dan harus dilalui selama tiga hari.</p><p>\"Etape pertama start dari Banyuwangi lalu finish di Kalibaru. Hari kedua, para pemotor akan bergerak menuju Lumajang melalui jalur lintas selatan Jember. Dari Lumajang para pebalap akan menuju Bromo,\" paparnya kala jumpa pers di Hotel Luminor Banyuwangi, Kamis (31/10/2019) malam.</p><p>Jawa Timur dipilih sebagai lokasi acara karena masih menjadi mascot enduro di Indonesia. Didukung lagi ada dua destinasi wisata kelas dunia, yakni Ijen dan Bromo.</p><p>\"Ada rider dari Australia, Rumania, Italia, Malaysia. Mereka disewa oleh tim asal Jogjakarta. Aturan lomba, satu tim tiga orang. Start dan finish peserta tim wajib utuh. Apabila kurang akan dikenakan penalti,\" tambahnya.</p><p>Perencana lintasan, Mas Blek, menekankan agar para rider memperhatikan zona merah dan waktu maksimal perlombaan tiap etape. Sebab dua hal itu akan mempengaruhi catatan waktu hasil lomba.</p><p>\"Etape pertama 107 km, kedua 158 km. Etape pertama dan kedua finish maksimal pukul 19.00 WIB. Dan para pebalap tidak boleh menyimpang dari rute. Batas toleransi nya 500 meter ke kanan serta kiri. Lebih dari itu dikenakan penalti. Tiap meter dikurangi 10 menit,\" tandasnya.</p><p>Zona merah sengaja disiapkan bagi para pebalap untuk istirahat serta keperluan lain. Termasuk Jumat yang merupakan start perdana. Di zona merah itu para rider dapat memanfaatkannya untuk Sholat Jumat, makan, minum, tidur serta urusan yang lain.</p><p>\"Zona merah etape pertama ada di titik 48. Selama di zona merah waktu tidak dihitung. Itu secara otomatis akan terdeteksi melalui server panitia. Begitu keluar zona merah timer akan berjalan lagi,\" pungkasnya. <strong>SUBAHRODIN YUSUF</strong></p>\r\n\r\nSumber :&nbsp;suksesinews.net</p>', 'ENABLE', '2019-11-04 21:11:15', NULL, NULL),
(12, 'IERC 2019 Banyuwangi - Bromo, Ajang Motorcross Berbasis GPS Pertama di Indonesia', '<p>\r\n\r\n<p>BANYUWANGI - Ratusan crosser meramaikan ajang Indonesia Enduro Rally Championship 2019 (IERC) Banyuwangi - Bromo 2019 yang digelar Jumat hingga Minggu (1-3/11/2019). Dalam ajang motorcross berbasis teknologi GPS satelit pertama di Indonesia ini, para crosser akan menyusuri medan sejauh 450 Kilometer.</p><p>Selain diikuti oleh puluhan tim dari Indonesia, sejumlah negara lain, seperti Italia, Rumania, Malaysia juga mengikuti event balap motor yang lebih pantas disebut adventure ini.</p><p>\"Dikatakan pertama di Indonesia, ini karena IERC 2019 Banyuwangi - Bromo, satu-satunya rally yang menggunakan GPS sebagai pemandu rutenya,\" kata Edy Kampang, ketua panitia event tersebut.</p>\r\n\r\n\r\n\r\n<p>Setiap crosser, kata Edy, telah dibekali teknologi yang disebut tracker. Selain berfungsi sebagai pemandu rute, alat tersebut juga mampu merecord waktu tempuh dari masing-masing tim. Sehingga, skor untuk tiap tim langsung diaplikasikan secara real-time.</p><p>\"Selain itu, tracker dapat melaporkan segala bentuk macam pelanggaran. Seperti melenceng dari jalur atau nerabas (potong jalur). Bahkan ini juga berfungsi untuk menyampaikan informasi jika ada crosser yang mengalami keadaan emergency,\" katanya.</p><p>Dalam ajang IERC 2019, kata Edy, crosser tidak bisa asal main gas saja. Sebab, mereka melaju atas nama tim yang terdiri dari 3 orang crosser. Artinya, mereka harus melakukan start bertiga dan finish juga bertiga. </p><p>\"Apabila ada anggota yang terkendala atau berhenti dijalan, yang kita harapkan adalah kerjasama tim. Karena jika melanggar, pinalti akan dibebankan pada tim, bukan per orangnya,\" katanya.</p><p>Untuk jalur sendiri, secara keseluruhan dibagi menjadi 3 etape, selama 3 hari. Masing-masing etape memiliki ciri khas tersendiri. Etape pertama, crosser akan menyusuri rute dari Glagah menuju Kalibaru dengan lintasan 95 persen track off-road dengan kategori medan ekstrim.</p><p>\"Hari kedua dari Kalibaru finish di Lumajang, ini rute on-road. Sedangkan etape terakhir, dari lumajang finis di Bromo, ini juga merupakan rute off-road ekstrim,\" katanya.</p><p>Alasan dipilihnya Banyuwangi dan Probolinggo sebagai lintasan IERC 2019 ini, karena Jawa Timur masih menjadi icon event di Indonesia. Jawa Timur juga memiliki dua destinasi yang populer hingga di tingkat internasional, yakni Gunung Ijen dan di Gunung Bromo.</p><p>\"Selain ada titik safe zone, yang memungkinkan mereka untuk berfoto dan berkuliner, dalam lintasan pun mereka akan melewati rute-rute wisata. Ya semoga saja para pembalap ini tidak kepincut keindahannya dan justru memilih berwisata daripada melanjutkan perjalanan,\" kata Edy.</p>\r\n\r\nSumber :&nbsp;suaraindonesia.co.id</p>', 'ENABLE', '2019-11-04 21:12:03', NULL, NULL),
(13, '3 Srikandi Cantik Ramaikan Indonesia Enduro Rally Championship 2019', '<p>\r\n\r\n<p>BANYUWANGI – Arena balap motorcross biasanya selalu identik dengan para kaum pria. Selain memacu adrenalin, olahraga ini sangat beresiko tinggi bagi para pembalapnya. Hal inilah yang membuat ajang motorcross jarang digemari oleh kaum hawa.</p><p>Namun hal tersebut tidak berlaku bagi tiga crosser berparas cantik ini. Irma Ferdiansyah, Ayu Windari, dan Agie Frisilia justru sangat akrab dan mencintai ajang balap motorcross. Mereka bertiga bergabung dalam satu tim untuk mengikuti Indonesia Enduro Rally Championship 2019 Banyuwangi-Bromo, yang digelar hari Jumat hingga Minggu (1-3/11/2019).</p><p>“Kita bergabung di Tim Anatidae. Karena ini event rally yang pertama kali di Indonesia, tentunya kita harus ikut dong, sebagai bentuk kebanggaan Tim Indonesia,” kata Ayu Windari saat ditemui Suaraindonesia.co.id.</p>\r\n\r\n\r\n\r\n<p>Menurut Ayu, track yang harus dilalui crosser dalam ajang IERC 2019 cukup menantang dan memicu adrenalin. Mengingat medan yang harus dilalui mayoritas track off-road kategori ekstrim. </p><p>“Sangat menantang. Track lengkap, ada batu, open track, ada tantangan alam yang menjadi ciri khas alam Indonesia, yang ekstrim. Sensasinya di jalur yang pasti keren banget. Sesuai dengan tema alam Indonesia,” ungkapnya. </p><p>Meski harus bersaing dengan ratusan crosser pria, tiga srikandi cantik ini mengaku tidak minder. Bahkan, bagi mereka even ini menjadi ajang unjuk gigi bagi crosser wanita bahwa mereka bisa bersaing dengan kaum adam.</p><p>“Tampil di dunia cowok tentu banyak tantangan. Untuk itu kita juga sekaligus memotivasi kaum perempuan yang lain, bahwa kita juga setara dengan cowok. Bagi perempuan yang memiliki hobi ekstrim seperti motorcross atau yang lainnya, tidak perlu minder untuk bersaing dengan kaum adam,” kata Irma &nbsp;Ferdiansyah.</p><p>Hobi menunggangi kuda besi ini tidak hanya sebatas hobi semata. Berkat latihan dan kerja keras yang mereka lakukan, tiga crosser berparas ayu ini berhasil meraih prestasi yang membanggakan bagi Ibu Pertiwi. </p><p>Tahun 2018 lalu, mereka berhasil menjadi juara umum dalam ajang Asia cross contry rally Thailand-Kamboja untuk class women. “Alhamdulillah tahun 2018 lalu, kita dari Indonesia menjadi juara Asia Cross Country Rally Thailand-Cambodja untuk class women,” imbuhnya.</p>\r\n\r\nSumber :&nbsp;suaraindonesia.co.id</p>', 'ENABLE', '2019-11-04 21:13:59', NULL, NULL),
(14, 'IERC 2019 Banyuwangi-Bromo, Balap Motor Trail yang Berbasis GPS', '<p>\r\n\r\n<b>Banyuwangi</b>&nbsp;- Banyuwangi menjadi bagian dari ajang Indonesia Enduro Rally Championship 2019 (IERC). Event<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.detik.com/tag/balap-motor\">&nbsp;balap motor </a>trail pertama di Indonesia yang menggunakan sistem teknologi GPS satelit.<br><br>Ratusan riders dari segala penjuru tanah air dan mancanegara melintasi segala bentuk medan sejauh lebih dari 450 kilometer. Dari Banyuwangi menuju Bromo.<br><br>Event itu tidak hanya diikuti oleh puluhan tim dari Indonesia. Sejumlah pembalap dari negara lain seperti Italia, Rumania dan Malaysia juga mengikuti event balap motor yang lebih pantas disebut adventure ini.\r\n\r\n<br><br></p><p>\r\n\r\n\"Dikatakan pertama di Indonesia, ini karena IERC 2019 Banyuwangi-Bromo satu-satunya rally yang menggunakan GPS sebagai pemandu rutenya,\" kata Edy Kampang, ketua panitia event kepada detikcom, saat pelaksanaan lomba, Sabtu (2/11/2019).<br><br>Para pembalap diberikan alat yang disebut tracker, yang akan memandu rute perjalanan. Secara otomatis alat tersebut mampu merekam waktu yang ditempuh dari masing-masing tim. Sehingga skor untuk tiap tim langsung diaplikasikan secara real-time.<br><br>\"Selain itu, tracker dapat melaporkan segala bentuk macam pelanggaran. Seperti melenceng dari jalur atau nerabas (potong jalur). Bahkan ini juga berfungsi untuk menyampaikan informasi jika ada riders yang mengalami keadaan emergency,\" imbuhnya.&nbsp;</p><p>\r\n\r\nDi sini tidak asal main gas saja, kata Edy, karena mereka bakal melaju atas nama tim. Dalam satu tim terdiri dari 3 orang. Sedangkan untuk aturannya, pemenang akan ditentukan dari jumlah total waktu yang didapat. Otomatis, mereka harus melakukan start bertiga dan finish juga bertiga.</p><p>\r\n\r\n\"Hari kedua dari Kalibaru finish di Lumajang, ini rute on-road. Sedangkan etape terakhir dari Lumajang finis di Bromo, ini juga merupakan rute off-road ekstrem,\" katanya.<br><br>Alasan dipilihnya Banyuwangi dan Probolinggo sebagai lintasan IERC 2019 ini karena Jawa Timur masih menjadi icon event di Indonesia. Selain itu, di Jatim ada dua destinasi yang populer hingga ditingkat internasional. Yakni, Gunung Ijen dan Gunung Bromo.<br><br>\"Selain ada titik safe zone, yang memungkinkan mereka untuk berfoto dan berkuliner, dalam lintasan pun mereka akan melewati rute-rute wisata. Ya semoga saja para pembalap ini tidak kepincut keindahannya dan justru memilih berwisata daripada melanjutkan perjalanan,\" pungkasnya.&nbsp;</p><p>\"Apabila ada anggota yang terkendala atau berhenti di jalan, yang kita harapkan adalah kerjasama tim. Karena jika melanggar, penalti akan dibebankan pada tim, bukan per orangnya,\" katanya.<br><br>Untuk jalur, secara keseluruhan dibagi menjadi 3 etape, selama 3 hari. Di mana, masing-masing etape memiliki ciri khas tersendiri. Misalnya saja etape pertama, start di Kecamatan Glagah dan finish di wilayah Kecamatan Kalibaru. Di mana, sekitar 95 persen etape pertama merupakan track off-road dengan kategori medan ekstrem.&nbsp;\r\n</p><p><br>sumber : news.detik.com &nbsp;<br>\r\n\r\n<br></p>', 'ENABLE', '2019-11-04 21:15:24', '2019-11-04 21:22:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `imagegroup_id` int(11) DEFAULT NULL,
  `id_raider` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `imagegroup_id`, `id_raider`, `id_user`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(4, 16, NULL, 14, 'Ini Komentar ku Ubah', 'ENABLE', '2019-11-11 12:30:18', '2019-11-11 12:41:35'),
(6, 15, NULL, 14, 'THE MOMENT IERC 2019 aku komentari', 'ENABLE', '2019-11-11 12:42:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_event`
--

CREATE TABLE `tbl_event` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `tgleventStart` date DEFAULT NULL,
  `tgleventEnd` date DEFAULT NULL,
  `harga` varchar(225) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kota` varchar(225) DEFAULT NULL,
  `tipe_pendaftaran` enum('Individu','Team') DEFAULT NULL,
  `minraider` int(11) DEFAULT NULL,
  `maxraider` int(11) DEFAULT NULL,
  `TglCloseDaftar` date DEFAULT NULL,
  `live_url` text DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `statusEvent` enum('DIBUKA','DITUTUP','BERJALAN','COMMINGSOON') NOT NULL,
  `tipeEvent` enum('UTAMA','TIDAKUTAMA') NOT NULL,
  `public` enum('ENABLE','DISABLE') DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_event_register`
--

CREATE TABLE `tbl_event_register` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `approve` enum('APPROVE','REJECT','WAITING') DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_event_register`
--

INSERT INTO `tbl_event_register` (`id`, `team_id`, `event_id`, `approve`, `note`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(4, 10, 4, 'WAITING', '', 'ENABLE', '2019-10-20 12:23:09', NULL, NULL),
(5, 10, 4, 'WAITING', '', 'ENABLE', '2019-10-20 12:23:35', NULL, NULL),
(11, 51, 4, 'APPROVE', '', 'ENABLE', '2019-10-28 15:48:34', '2019-10-28 15:49:46', NULL),
(12, 52, 4, 'APPROVE', '', 'ENABLE', '2019-10-28 15:48:34', '2019-10-28 15:49:46', NULL),
(13, 53, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(14, 54, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(15, 55, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(16, 56, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(17, 57, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(18, 58, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(19, 59, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(20, 60, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(21, 61, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(22, 62, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(23, 63, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(24, 64, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(25, 65, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(26, 66, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(27, 67, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(28, 68, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(29, 69, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(30, 70, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(31, 71, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(32, 72, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(33, 73, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(34, 74, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(35, 75, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(36, 76, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(37, 77, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(38, 78, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(39, 79, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(40, 80, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(41, 81, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(42, 82, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(43, 83, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(44, 84, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(45, 85, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(46, 86, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(47, 87, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(48, 88, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(49, 89, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(50, 90, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(51, 91, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(52, 92, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(53, 93, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(54, 94, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(55, 95, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(56, 96, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(57, 97, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(58, 98, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(59, 99, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(60, 100, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(61, 101, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(62, 102, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(63, 103, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(64, 104, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(65, 105, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(66, 106, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(67, 107, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(68, 108, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(69, 110, 4, 'APPROVE', '', 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(70, 111, 4, 'APPROVE', NULL, 'ENABLE', '0000-00-00 00:00:00', NULL, NULL),
(71, 112, 4, 'APPROVE', NULL, 'ENABLE', '2019-11-02 00:00:00', NULL, NULL),
(72, 113, 4, 'APPROVE', '-', 'ENABLE', '2019-11-03 00:00:00', NULL, NULL),
(73, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:35:11', NULL, NULL),
(74, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:35:18', NULL, NULL),
(75, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:35:26', NULL, NULL),
(76, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:35:33', NULL, NULL),
(77, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:35:40', NULL, NULL),
(78, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:35:47', NULL, NULL),
(79, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:35:53', NULL, NULL),
(80, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 15:36:00', NULL, NULL),
(81, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:00', NULL, NULL),
(82, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:07', NULL, NULL),
(83, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:15', NULL, NULL),
(84, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:28', NULL, NULL),
(85, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:37', NULL, NULL),
(86, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:44', NULL, NULL),
(87, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:52', NULL, NULL),
(88, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:05:59', NULL, NULL),
(89, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:06:06', NULL, NULL),
(90, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:06:14', NULL, NULL),
(91, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:06:26', NULL, NULL),
(92, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:06:34', NULL, NULL),
(93, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:06:41', NULL, NULL),
(94, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:06:47', NULL, NULL),
(95, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:06:54', NULL, NULL),
(96, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:07:03', NULL, NULL),
(97, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:11:59', NULL, NULL),
(98, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:06', NULL, NULL),
(99, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:13', NULL, NULL),
(100, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:20', NULL, NULL),
(101, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:27', NULL, NULL),
(102, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:34', NULL, NULL),
(103, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:39', NULL, NULL),
(104, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:41', NULL, NULL),
(105, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:47', NULL, NULL),
(106, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:48', NULL, NULL),
(107, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:12:56', NULL, NULL),
(108, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:01', NULL, NULL),
(109, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:06', NULL, NULL),
(110, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:10', NULL, NULL),
(111, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:17', NULL, NULL),
(112, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:24', NULL, NULL),
(113, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:34', NULL, NULL),
(114, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:41', NULL, NULL),
(115, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:51', NULL, NULL),
(116, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:13:59', NULL, NULL),
(117, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:14:06', NULL, NULL),
(118, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:14:15', NULL, NULL),
(119, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:14:22', NULL, NULL),
(120, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:14:29', NULL, NULL),
(121, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:14:36', NULL, NULL),
(122, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:25:20', NULL, NULL),
(123, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:25:29', NULL, NULL),
(124, 0, 7, 'WAITING', '', 'ENABLE', '2019-11-06 16:25:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_event_register_raider`
--

CREATE TABLE `tbl_event_register_raider` (
  `id` int(11) NOT NULL,
  `event_register_id` int(11) DEFAULT NULL,
  `raider_id` int(11) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_event_register_raider`
--

INSERT INTO `tbl_event_register_raider` (`id`, `event_register_id`, `raider_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 101, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 11, 102, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 11, 103, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 12, 104, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 12, 105, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 12, 106, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 13, 107, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 13, 108, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 13, 109, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 14, 110, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 14, 111, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 14, 112, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 15, 113, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 15, 114, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 15, 115, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 116, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 16, 117, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 16, 118, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 17, 119, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 17, 120, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 17, 121, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 18, 122, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 18, 123, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 18, 124, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 19, 125, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 19, 126, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 19, 127, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 20, 128, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 20, 129, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 20, 130, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 21, 131, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 21, 132, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 21, 133, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 22, 134, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 22, 135, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 22, 136, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 23, 137, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 23, 138, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 23, 139, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 24, 140, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 24, 141, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 24, 142, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 25, 143, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 25, 144, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 25, 145, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 26, 146, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 26, 147, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 26, 148, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 27, 149, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 27, 150, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 27, 151, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 28, 152, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 28, 153, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 28, 154, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 29, 155, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 29, 156, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 29, 157, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 30, 158, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 30, 159, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 30, 160, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 31, 161, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 31, 162, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 31, 163, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 32, 164, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 32, 165, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 32, 166, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 33, 167, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 33, 168, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 33, 169, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 34, 170, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 34, 171, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 34, 172, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 35, 173, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 35, 174, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 35, 175, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 36, 176, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 36, 177, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 36, 178, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 37, 179, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 37, 180, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 37, 181, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 38, 182, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 38, 183, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 38, 184, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 39, 185, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 39, 186, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 39, 187, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 40, 188, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 40, 189, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 40, 190, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 41, 191, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 41, 192, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 41, 193, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 42, 194, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 42, 195, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 42, 196, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 43, 197, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 43, 198, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 43, 199, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 44, 200, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 44, 201, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 44, 202, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 45, 203, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 45, 204, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 45, 205, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 46, 206, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 46, 207, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 46, 208, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 47, 209, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 47, 210, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 47, 211, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 48, 212, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 48, 213, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 48, 214, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 49, 215, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 49, 216, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 49, 217, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 50, 218, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 50, 219, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 50, 220, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 51, 221, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 51, 222, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 51, 223, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 52, 224, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 52, 225, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 52, 226, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 53, 227, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 53, 228, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 53, 229, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 54, 230, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 54, 231, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 54, 232, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 55, 233, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 55, 234, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 55, 235, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 56, 236, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 56, 237, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 56, 238, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 57, 239, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 57, 240, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 57, 241, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 58, 242, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 58, 243, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 58, 244, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 59, 245, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 59, 246, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 59, 247, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 60, 248, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 60, 249, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 60, 250, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 61, 251, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 61, 252, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 61, 253, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 62, 254, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 62, 255, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 62, 256, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 63, 257, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 63, 258, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 63, 259, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 64, 260, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 64, 261, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 64, 262, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 65, 263, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 65, 264, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 65, 265, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 66, 266, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 66, 267, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 66, 268, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 67, 269, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 67, 270, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 67, 271, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 68, 272, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 68, 273, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 68, 274, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 69, 275, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 69, 276, 'ENABLE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 70, 341, 'ENABLE', NULL, NULL),
(178, 70, 342, 'ENABLE', NULL, NULL),
(179, 70, 343, 'ENABLE', NULL, NULL),
(180, 73, 354, 'ENABLE', '2019-11-06 15:35:11', NULL),
(181, 74, 354, 'ENABLE', '2019-11-06 15:35:18', NULL),
(182, 75, 354, 'ENABLE', '2019-11-06 15:35:26', NULL),
(183, 76, 354, 'ENABLE', '2019-11-06 15:35:33', NULL),
(184, 77, 354, 'ENABLE', '2019-11-06 15:35:40', NULL),
(185, 78, 354, 'ENABLE', '2019-11-06 15:35:47', NULL),
(186, 79, 354, 'ENABLE', '2019-11-06 15:35:53', NULL),
(187, 80, 354, 'ENABLE', '2019-11-06 15:36:00', NULL),
(188, 81, 354, 'ENABLE', '2019-11-06 16:05:00', NULL),
(189, 82, 354, 'ENABLE', '2019-11-06 16:05:07', NULL),
(190, 83, 354, 'ENABLE', '2019-11-06 16:05:15', NULL),
(191, 84, 354, 'ENABLE', '2019-11-06 16:05:28', NULL),
(192, 85, 354, 'ENABLE', '2019-11-06 16:05:37', NULL),
(193, 86, 354, 'ENABLE', '2019-11-06 16:05:44', NULL),
(194, 87, 354, 'ENABLE', '2019-11-06 16:05:52', NULL),
(195, 88, 354, 'ENABLE', '2019-11-06 16:05:59', NULL),
(196, 89, 354, 'ENABLE', '2019-11-06 16:06:06', NULL),
(197, 90, 354, 'ENABLE', '2019-11-06 16:06:14', NULL),
(198, 91, 354, 'ENABLE', '2019-11-06 16:06:26', NULL),
(199, 92, 354, 'ENABLE', '2019-11-06 16:06:34', NULL),
(200, 93, 354, 'ENABLE', '2019-11-06 16:06:41', NULL),
(201, 94, 354, 'ENABLE', '2019-11-06 16:06:47', NULL),
(202, 95, 354, 'ENABLE', '2019-11-06 16:06:54', NULL),
(203, 96, 354, 'ENABLE', '2019-11-06 16:07:03', NULL),
(204, 97, 355, 'ENABLE', '2019-11-06 16:11:59', NULL),
(205, 98, 355, 'ENABLE', '2019-11-06 16:12:06', NULL),
(206, 99, 355, 'ENABLE', '2019-11-06 16:12:13', NULL),
(207, 100, 355, 'ENABLE', '2019-11-06 16:12:20', NULL),
(208, 101, 355, 'ENABLE', '2019-11-06 16:12:27', NULL),
(209, 102, 355, 'ENABLE', '2019-11-06 16:12:34', NULL),
(210, 103, 354, 'ENABLE', '2019-11-06 16:12:39', NULL),
(211, 104, 355, 'ENABLE', '2019-11-06 16:12:41', NULL),
(212, 105, 354, 'ENABLE', '2019-11-06 16:12:47', NULL),
(213, 106, 355, 'ENABLE', '2019-11-06 16:12:48', NULL),
(214, 107, 354, 'ENABLE', '2019-11-06 16:12:56', NULL),
(215, 108, 355, 'ENABLE', '2019-11-06 16:13:01', NULL),
(216, 109, 354, 'ENABLE', '2019-11-06 16:13:06', NULL),
(217, 110, 355, 'ENABLE', '2019-11-06 16:13:10', NULL),
(218, 111, 355, 'ENABLE', '2019-11-06 16:13:17', NULL),
(219, 112, 355, 'ENABLE', '2019-11-06 16:13:24', NULL),
(220, 113, 355, 'ENABLE', '2019-11-06 16:13:34', NULL),
(221, 114, 355, 'ENABLE', '2019-11-06 16:13:41', NULL),
(222, 115, 355, 'ENABLE', '2019-11-06 16:13:51', NULL),
(223, 116, 355, 'ENABLE', '2019-11-06 16:13:59', NULL),
(224, 117, 355, 'ENABLE', '2019-11-06 16:14:06', NULL),
(225, 118, 355, 'ENABLE', '2019-11-06 16:14:15', NULL),
(226, 119, 355, 'ENABLE', '2019-11-06 16:14:22', NULL),
(227, 120, 355, 'ENABLE', '2019-11-06 16:14:29', NULL),
(228, 121, 355, 'ENABLE', '2019-11-06 16:14:36', NULL),
(229, 122, 354, 'ENABLE', '2019-11-06 16:25:20', NULL),
(230, 123, 354, 'ENABLE', '2019-11-06 16:25:29', NULL),
(231, 124, 354, 'ENABLE', '2019-11-06 16:25:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `imagegroup_id` int(11) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `caption` text DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `imagegroup_id`, `title`, `caption`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(33, 8, 'IERC 2019', '1,2,3 NOVEMBER 2019\r\nBANHYUWANGI - BROMO', 'ENABLE', '2019-10-28 19:17:03', '2019-10-28 19:39:10', NULL),
(34, 5, 'MAT EIGHT OPENING', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(35, 5, 'MAT EIGHT OPENING', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(36, 5, 'MAT EIGHT OPENING', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(37, 5, 'MAT EIGHT OPENING', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(38, 5, 'MAT EIGHT OPENING', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(39, 5, 'GRAND PRIZED', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(40, 5, 'GRAND PRIZED', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(41, 5, 'GRAND PRIZED', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(42, 5, 'MAT EIGHT OPENING', '', 'ENABLE', '2019-10-28 19:36:55', NULL, NULL),
(43, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(44, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(45, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(46, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(47, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(48, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(49, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(50, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(51, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(52, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(53, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(54, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(55, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(56, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(57, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(58, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(59, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(60, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(61, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(62, 5, 'MAT EIGHT', '', 'ENABLE', '2019-10-28 19:54:13', NULL, NULL),
(63, 8, 'WELCOME RIDER', 'IERC 2019', 'ENABLE', '2019-10-30 18:41:33', NULL, NULL),
(64, 8, 'welcome to IERC 2019', '- fathir\r\n- edy sudarmaji', 'ENABLE', '2019-10-31 12:03:57', NULL, NULL),
(71, 10, '', '', 'ENABLE', '2019-10-31 22:32:24', NULL, NULL),
(72, 10, '', '', 'ENABLE', '2019-10-31 22:32:24', NULL, NULL),
(73, 10, '', '', 'ENABLE', '2019-10-31 22:32:24', NULL, NULL),
(74, 10, '', '', 'ENABLE', '2019-10-31 22:32:24', NULL, NULL),
(75, 10, '', '', 'ENABLE', '2019-10-31 22:32:24', NULL, NULL),
(76, 10, '', '', 'ENABLE', '2019-10-31 22:32:24', NULL, NULL),
(77, 10, '', '', 'ENABLE', '2019-10-31 22:32:24', NULL, NULL),
(78, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(79, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(80, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(81, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(82, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(83, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(84, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(85, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(86, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(87, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(88, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(89, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(90, 10, '', '', 'ENABLE', '2019-10-31 22:32:25', NULL, NULL),
(91, 7, '', '', 'ENABLE', '2019-10-31 22:38:57', NULL, NULL),
(92, 6, '', '', 'ENABLE', '2019-10-31 22:39:18', NULL, NULL),
(93, 11, '', '', 'ENABLE', '2019-11-01 13:00:21', NULL, NULL),
(94, 11, '', '', 'ENABLE', '2019-11-01 13:00:22', NULL, NULL),
(95, 11, '', '', 'ENABLE', '2019-11-01 13:00:22', NULL, NULL),
(96, 11, '', '', 'ENABLE', '2019-11-01 13:00:23', NULL, NULL),
(97, 11, '', '', 'ENABLE', '2019-11-01 13:00:23', NULL, NULL),
(98, 11, '', '', 'ENABLE', '2019-11-01 13:00:24', NULL, NULL),
(99, 11, '', '', 'ENABLE', '2019-11-01 13:00:24', NULL, NULL),
(100, 11, '', '', 'ENABLE', '2019-11-01 13:00:25', NULL, NULL),
(101, 11, '', '', 'ENABLE', '2019-11-01 13:00:25', NULL, NULL),
(102, 11, '', '', 'ENABLE', '2019-11-01 13:00:25', NULL, NULL),
(103, 11, '', '', 'ENABLE', '2019-11-01 13:00:26', NULL, NULL),
(104, 11, '', '', 'ENABLE', '2019-11-01 13:00:26', NULL, NULL),
(105, 11, '', '', 'ENABLE', '2019-11-01 13:00:26', NULL, NULL),
(106, 11, '', '', 'ENABLE', '2019-11-01 13:00:27', NULL, NULL),
(107, 11, '', '', 'ENABLE', '2019-11-01 13:00:27', NULL, NULL),
(108, 11, '', '', 'ENABLE', '2019-11-01 13:00:27', NULL, NULL),
(109, 11, '', '', 'ENABLE', '2019-11-01 13:00:27', NULL, NULL),
(110, 11, '', '', 'ENABLE', '2019-11-01 13:00:28', NULL, NULL),
(111, 11, '', '', 'ENABLE', '2019-11-01 13:00:28', NULL, NULL),
(112, 11, '', '', 'ENABLE', '2019-11-01 13:00:28', NULL, NULL),
(113, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(114, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(115, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(116, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(117, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(118, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(119, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(120, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(121, 12, '', '', 'ENABLE', '2019-11-01 18:28:24', NULL, NULL),
(122, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(123, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(124, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(125, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(126, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(127, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(128, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(129, 13, '', '', 'ENABLE', '2019-11-02 11:00:28', NULL, NULL),
(130, 13, '', '', 'ENABLE', '2019-11-02 11:00:29', NULL, NULL),
(131, 13, '', '', 'ENABLE', '2019-11-02 11:00:29', NULL, NULL),
(132, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(133, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(134, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(135, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(136, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(137, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(138, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(139, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(140, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(141, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(142, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(143, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(144, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(145, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(146, 14, '', '', 'ENABLE', '2019-11-02 18:34:20', NULL, NULL),
(147, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(148, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(149, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(150, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(151, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(152, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(153, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(154, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(155, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(156, 15, '', '', 'ENABLE', '2019-11-05 21:44:12', NULL, NULL),
(157, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(158, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(159, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(160, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(161, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(162, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(163, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(164, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(165, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(166, 15, '', '', 'ENABLE', '2019-11-05 21:44:13', NULL, NULL),
(167, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(168, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(169, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(170, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(171, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(172, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(173, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(174, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(175, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(176, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(177, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(178, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(179, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(180, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(181, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(182, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(183, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(184, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(185, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL),
(186, 16, '', '', 'ENABLE', '2019-11-06 14:27:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_manager`
--

CREATE TABLE `tbl_manager` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nowa` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_manager`
--

INSERT INTO `tbl_manager` (`id`, `team_id`, `name`, `alamat`, `nowa`, `status`, `created_at`, `updated_at`) VALUES
(5, 8, 'Manager', 'disana ', '2131231232', 'ENABLE', '2019-10-02 19:38:00', '2019-10-02 20:27:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_merchandise`
--

CREATE TABLE `tbl_merchandise` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_merchandise`
--

INSERT INTO `tbl_merchandise` (`id`, `title`, `deskripsi`, `harga`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(2, 'LIMITED EDITION HELMET IERC 2019', '<p>HELM INI DIPRODUKSI HANYA 200 PCS.</p>', 650000, '628122223827', 'ENABLE', '2019-10-24 18:53:14', '2019-11-05 21:57:42'),
(4, 'TSHIRT IERC 2019', '<p>LIMITED EDITION MERCHANDISE IERC 2019</p>', 130000, '628122223827', 'ENABLE', '2019-10-25 03:02:23', '2019-11-05 21:57:36'),
(6, 'Helm JPX LIMITED EDITION IERC 2019', '<p>Helm JPX LIMITED EDITION IERC 2019 harga Rp 650.000 belum ongkos kirim<br></p>', 650000, '628122223827', 'ENABLE', '2019-11-04 21:48:16', '2019-11-05 21:57:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id` int(11) NOT NULL,
  `id_event` int(11) DEFAULT NULL,
  `title` varchar(225) DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_paket`
--

INSERT INTO `tbl_paket` (`id`, `id_event`, `title`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(7, 1, 'Juara Hari ke 1', 'ENABLE', '2019-10-24 17:11:34', NULL, NULL),
(8, 1, 'Juara Hari ke 2', 'ENABLE', '2019-10-24 18:29:23', NULL, NULL),
(9, 1, 'Juara Hari ke 3', 'ENABLE', '2019-10-24 18:29:32', NULL, NULL),
(10, 1, 'Juara Umum', 'ENABLE', '2019-10-24 18:29:41', NULL, NULL),
(16, 4, 'IERC Day 1  - 01 November 2019 ', 'ENABLE', '2019-11-01 19:32:59', '2019-11-01 20:09:54', NULL),
(17, 4, 'IERC Day 2 - 02 November 2019	', 'ENABLE', '2019-11-02 20:56:56', '2019-11-03 00:25:05', NULL),
(19, 4, 'IERC Day 3 - 03 November 2019	', 'ENABLE', '2019-11-03 21:14:51', NULL, NULL),
(20, 4, 'IERC Juara Umum', 'ENABLE', '2019-11-03 21:22:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_paket_detail`
--

CREATE TABLE `tbl_paket_detail` (
  `id` int(11) NOT NULL,
  `id_paket` int(11) DEFAULT NULL,
  `id_team` int(11) DEFAULT NULL,
  `id_raider` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` enum('"ENABLE"','"DISABLE"') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_paket_detail`
--

INSERT INTO `tbl_paket_detail` (`id`, `id_paket`, `id_team`, `id_raider`, `number`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(5, 7, 14, 15, 1, 'Juara 1', '', '2019-10-24 17:12:00', NULL),
(6, 8, 14, 15, 1, 'Juara 1', '', '2019-10-24 18:30:05', NULL),
(7, 8, 11, 7, 2, 'Juara 2', '', '2019-10-24 18:30:56', NULL),
(8, 8, 11, 9, 3, 'Juara 3', '', '2019-10-24 18:31:54', NULL),
(10, 11, 53, 0, 1, 'Juara Pertama', '', '2019-10-29 14:36:48', '2019-10-29 15:18:05'),
(11, 11, 54, 0, 2, 'Juara Kedua', '', '2019-10-29 14:37:03', '2019-10-29 15:13:37'),
(12, 11, 72, 0, 3, 'Juara Ke tiga', '', '2019-10-29 14:37:15', '2019-10-29 15:03:31'),
(13, 12, 9, 0, 2, 'Juara Dua', '', '2019-10-29 15:19:40', '2019-10-29 15:21:39'),
(14, 12, 10, 0, 1, 'Juara Satu', '', '2019-10-29 15:19:56', '2019-10-29 15:24:07'),
(15, 12, 72, 0, 3, 'Juara Ke 3', '', '2019-10-29 15:20:15', NULL),
(21, 16, 61, 0, 2, 'Urutan 2', '', '2019-11-01 19:37:40', NULL),
(22, 16, 72, 0, 1, 'Urutan 1', '', '2019-11-01 19:38:40', NULL),
(23, 16, 100, 0, 3, 'Urutan 3', '', '2019-11-01 19:39:28', NULL),
(24, 17, 113, 0, 1, 'Urutan 1', '', '2019-11-02 20:57:58', '2019-11-03 00:27:49'),
(25, 17, 61, 0, 2, 'Urutan 2', '', '2019-11-02 20:58:18', '2019-11-03 00:25:43'),
(27, 17, 100, 0, 3, 'Urutan 3', '', '2019-11-02 21:07:17', '2019-11-03 00:25:59'),
(31, 19, 61, 0, 1, 'Urutan 1', '', '2019-11-03 21:15:06', NULL),
(32, 19, 72, 0, 2, 'Urutan 2', '', '2019-11-03 21:15:21', NULL),
(33, 19, 113, 0, 3, 'Urutan 3', '', '2019-11-03 21:15:40', NULL),
(34, 20, 61, 0, 1, 'Urutan 1', '', '2019-11-03 21:23:02', NULL),
(35, 20, 72, 0, 2, 'Urutan 2', '', '2019-11-03 21:23:14', NULL),
(36, 20, 113, 0, 3, 'Urutan 3', '', '2019-11-03 21:23:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `desk` text DEFAULT NULL,
  `tglwisataStart` datetime DEFAULT NULL,
  `tglwisataEnd` datetime DEFAULT NULL,
  `status` enum('ENABLE','DISABLE') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id`, `title`, `desk`, `tglwisataStart`, `tglwisataEnd`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(3, 'PERSEWAAN MOTOR TRAIL', '<p>Wisata adventure trail adalah wisata yang saat ini sedang digandrungi para wisatawan, untuk menunjang wisata anda, kami menyewakan paket adventure trail ataupun hanya motor trailnya saja.</p><p>Cukup dengan harga Rp. 300.000 anda sudah bisa menikmati berkeling menggunakan motor trail seharian.</p><p>Harga tersebut hanya untuk persewaan 1 unit motor trail, tidak termasuk bbm dan peralatan lainya.</p>', '2019-10-24 00:00:00', '2019-12-31 00:00:00', 'ENABLE', '2019-10-25 02:23:58', NULL, NULL),
(4, 'AIRPORT SHUTTLE MALANG - JUANDA', '<p></p><p>AIRPORT SHUTTLE&nbsp;<br></p><p></p><p>MALANG TUJUAN JUANDA</p><p>JUANDA TUJUAN MALANG</p><p></p><p>BERANGKAT SETIAP JAM<br></p><p></p><p><br></p><p>Reservasi :</p><p>0341 333037</p><p><br></p>', '2019-10-24 00:00:00', '2019-12-31 00:00:00', 'ENABLE', '2019-10-25 02:52:12', '2019-10-25 03:04:06', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` int(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `telepon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nip`, `name`, `email`, `password`, `role_id`, `desc`, `status`, `created_at`, `updated_at`, `telepon`) VALUES
(13, 'bagus a', 'Bagus', 'bagus@gmail.com', '17b38fc02fd7e92f3edeb6318e3066d8', 17, 'gkdshagdsj', '0', '2019-07-02 09:55:20', '2019-10-02 09:58:43', '085'),
(14, 'Admin', 'Super Admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 17, 'Super Admin', '0', '2019-09-05 12:56:42', '2019-10-02 09:58:51', ''),
(15, 'EDI KAMPANG', 'EDI KAMPANG', 'edikampang@gmail.com', 'f7953ed435f9fb3009128e280748a1c4', 17, '-', '0', '2019-10-24 14:51:14', NULL, ''),
(16, 'NUNGKI', 'NUNGKI', 'nugki@gmail.com', 'ecfdd9db700edc0be0bedc6571a34acb', 17, '-', '0', '2019-10-24 14:52:03', NULL, ''),
(17, 'BLACK', 'BLACK', 'black@gmail.com', 'ee3266de375c447cc820bb67352b5c86', 17, '-', '0', '2019-10-24 14:52:24', NULL, ''),
(18, 'SUNGKOWO', 'SUNGKOWO', 'sungkowo@gmail.com', '3433f4aabe2a8d300823165b7f9ac19d', 17, '-', '0', '2019-10-24 14:52:54', NULL, ''),
(19, 'GONDO', 'GONDO', 'gondo@gmail.com', 'ab54eb94f98c825612e0ff9a47f567b6', 17, '-', '0', '2019-10-24 14:53:19', NULL, ''),
(20, 'APRI', 'APRI', 'apri@gmail.com', '44edb4f9d13757b1fa730fc874e59fee', 17, '-', '0', '2019-10-24 14:53:37', NULL, ''),
(21, 'NANANG', 'NANANG', 'nanag@gmail.com', '7ea63a81e77bd08d36cb071aa2fa8f69', 17, '-', '0', '2019-10-24 14:54:20', NULL, ''),
(22, 'RAMA', 'RAMA', 'rama@gmail.com', '36226b453eb255f672f118a1ecc1e4ec', 17, '-', '0', '2019-10-24 14:54:47', NULL, ''),
(23, 'BUNDER', 'BUNDER', 'bunder@gmail.com', '58829ee04152f508afe9d0a04847fcbe', 17, '-', '0', '2019-10-24 14:55:09', NULL, ''),
(24, 'FAISHOL', 'FAISHOL', 'faishol@gmail.com', 'b0d714232a378d38053be08dab8bbab6', 17, '-', '0', '2019-10-24 14:55:38', NULL, ''),
(25, 'BOTOL', 'BOTOL', 'botol@gmail.com', '8d56c3c3c246144b3d11cd95b66e2238', 17, '-', '0', '2019-10-24 14:55:57', NULL, ''),
(26, 'UL', 'UL', 'ul@gmail.com', '8e22837f36b8a1d461407185db9a2093', 17, '-', '0', '2019-10-24 14:56:49', NULL, ''),
(27, 'DANIEL', 'DANIEL', 'daniel@gmail.com', 'b5ea8985533defbf1d08d5ed2ac8fe9b', 17, '-', '0', '2019-10-24 14:57:04', NULL, ''),
(28, 'HERMAN', 'HERMAN', 'herman@gmail.com', '0dd328fd38ac3b7534ab6125f9b3bde0', 17, '-', '0', '2019-10-24 14:57:44', NULL, ''),
(29, 'MUKLIS', 'MUKLIS', 'muklis@gmail.com', 'da4140a5e1e05ba76860aea1a1985767', 17, '-', '0', '2019-10-24 14:58:06', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `grafik`
--
ALTER TABLE `grafik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konfig`
--
ALTER TABLE `konfig`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`log_id`);

--
-- Indeks untuk tabel `log_backupdb`
--
ALTER TABLE `log_backupdb`
  ADD PRIMARY KEY (`bdb_id`);

--
-- Indeks untuk tabel `master_imagegroup`
--
ALTER TABLE `master_imagegroup`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_motor`
--
ALTER TABLE `master_motor`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_event_register`
--
ALTER TABLE `tbl_event_register`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_event_register_raider`
--
ALTER TABLE `tbl_event_register_raider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_manager`
--
ALTER TABLE `tbl_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_merchandise`
--
ALTER TABLE `tbl_merchandise`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_paket_detail`
--
ALTER TABLE `tbl_paket_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT untuk tabel `grafik`
--
ALTER TABLE `grafik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `konfig`
--
ALTER TABLE `konfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT untuk tabel `log_backupdb`
--
ALTER TABLE `log_backupdb`
  MODIFY `bdb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `master_imagegroup`
--
ALTER TABLE `master_imagegroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `master_motor`
--
ALTER TABLE `master_motor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_event_register`
--
ALTER TABLE `tbl_event_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `tbl_event_register_raider`
--
ALTER TABLE `tbl_event_register_raider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT untuk tabel `tbl_manager`
--
ALTER TABLE `tbl_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_merchandise`
--
ALTER TABLE `tbl_merchandise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_paket`
--
ALTER TABLE `tbl_paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_paket_detail`
--
ALTER TABLE `tbl_paket_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

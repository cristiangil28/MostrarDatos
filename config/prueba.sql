-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2019 a las 19:28:04
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vtiger_users`
--

CREATE TABLE `vtiger_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_hash` varchar(32) DEFAULT NULL,
  `google_userid` varchar(200) DEFAULT NULL,
  `cal_color` varchar(25) DEFAULT '#E6FAD8',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `reports_to_id` varchar(36) DEFAULT NULL,
  `is_admin` varchar(3) DEFAULT '0',
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `description` text,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `signature` text,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(25) DEFAULT NULL,
  `address_postalcode` varchar(9) DEFAULT NULL,
  `user_preferences` text,
  `tz` varchar(30) DEFAULT NULL,
  `holidays` varchar(60) DEFAULT NULL,
  `namedays` varchar(60) DEFAULT NULL,
  `workdays` varchar(30) DEFAULT NULL,
  `weekstart` int(11) DEFAULT NULL,
  `date_format` varchar(200) DEFAULT NULL,
  `hour_format` varchar(30) DEFAULT 'am/pm',
  `start_hour` varchar(30) DEFAULT '10:00',
  `end_hour` varchar(30) DEFAULT '23:00',
  `activity_view` varchar(200) DEFAULT 'Today',
  `lead_view` varchar(200) DEFAULT 'Today',
  `imagename` varchar(250) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `confirm_password` varchar(300) DEFAULT NULL,
  `internal_mailer` varchar(3) NOT NULL DEFAULT '1',
  `reminder_interval` varchar(100) DEFAULT NULL,
  `reminder_next_time` varchar(100) DEFAULT NULL,
  `crypt_type` varchar(20) NOT NULL DEFAULT 'MD5',
  `accesskey` varchar(36) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `time_zone` varchar(200) DEFAULT NULL,
  `currency_grouping_pattern` varchar(100) DEFAULT NULL,
  `currency_decimal_separator` varchar(2) DEFAULT NULL,
  `currency_grouping_separator` varchar(2) DEFAULT NULL,
  `currency_symbol_placement` varchar(20) DEFAULT NULL,
  `no_of_currency_decimals` varchar(2) DEFAULT NULL,
  `truncate_trailing_zeros` varchar(3) DEFAULT NULL,
  `dayoftheweek` varchar(100) DEFAULT NULL,
  `callduration` varchar(100) DEFAULT NULL,
  `othereventduration` varchar(100) DEFAULT NULL,
  `calendarsharedtype` varchar(100) DEFAULT NULL,
  `default_record_view` varchar(10) DEFAULT NULL,
  `leftpanelhide` varchar(3) DEFAULT NULL,
  `rowheight` varchar(10) DEFAULT NULL,
  `defaulteventstatus` varchar(50) DEFAULT NULL,
  `defaultactivitytype` varchar(50) DEFAULT NULL,
  `hidecompletedevents` int(11) DEFAULT NULL,
  `phone_crm_extension` varchar(100) DEFAULT NULL,
  `is_owner` varchar(5) DEFAULT NULL,
  `change_password` int(1) NOT NULL DEFAULT '0',
  `send_report` int(1) NOT NULL DEFAULT '0',
  `send_report_weekly` int(1) NOT NULL DEFAULT '0',
  `nick_name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vtiger_users`
--

INSERT INTO `vtiger_users` (`id`, `user_name`, `user_password`, `user_hash`, `google_userid`, `cal_color`, `first_name`, `last_name`, `reports_to_id`, `is_admin`, `currency_id`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `secondaryemail`, `status`, `signature`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `user_preferences`, `tz`, `holidays`, `namedays`, `workdays`, `weekstart`, `date_format`, `hour_format`, `start_hour`, `end_hour`, `activity_view`, `lead_view`, `imagename`, `deleted`, `confirm_password`, `internal_mailer`, `reminder_interval`, `reminder_next_time`, `crypt_type`, `accesskey`, `theme`, `language`, `time_zone`, `currency_grouping_pattern`, `currency_decimal_separator`, `currency_grouping_separator`, `currency_symbol_placement`, `no_of_currency_decimals`, `truncate_trailing_zeros`, `dayoftheweek`, `callduration`, `othereventduration`, `calendarsharedtype`, `default_record_view`, `leftpanelhide`, `rowheight`, `defaulteventstatus`, `defaultactivitytype`, `hidecompletedevents`, `phone_crm_extension`, `is_owner`, `change_password`, `send_report`, `send_report_weekly`, `nick_name`) VALUES
(1, 'admin', '$1$ad000000$eDKLzKTOjqjSfB1m1ccT50', '3aeeaae3fd32176188230d83ae1a8f9f', NULL, '#E6FAD8', '', 'Administrator', '', 'on', 1, '', '2018-09-25 15:13:14', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'correo@empresa.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '12', '00:00', '', 'This Week', 'Today', '', 0, '$1$ad000000$eDKLzKTOjqjSfB1m1ccT50', '1', '1 Minute', NULL, 'PHP5.3MD5', '3MU6ed0NGYvk0Cuk', 'datacrm', 'es_co', 'America/Bogota', '123,456,789', '.', ',', '$1.0', '2', '1', 'Sunday', '00:05', '00:15', 'public', 'Summary', '1', 'medium', 'Seleccione una opción', 'Seleccione una opción', 0, '', '1', 0, 0, 0, NULL),
(6, 'gerente', '$1$ge000000$jmhisGKMrE4nnggJPfg8V1', '25d55ad283aa400af464c76d713c07ad', NULL, '#E6FAD8', '', 'Gerente', '', 'on', 1, '', '2018-09-25 15:15:36', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'correo@empresa.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '12', '08:00', '', 'This Week', 'Today', '', 0, '$1$ge000000$jmhisGKMrE4nnggJPfg8V1', '1', '', NULL, 'PHP5.3MD5', 'emSpdpBQCdWNm3DX', 'datacrm', 'es_co', 'America/Bogota', '123,456,789', '.', ',', '$1.0', '0', '1', 'Sunday', '00:05', '00:15', 'public', 'Summary', '1', 'medium', 'Planned', 'Call', 0, '', '1', 0, 0, 0, ''),
(7, 'comercial01', '$1$co000000$AzSc3wqiBbfxN6PHX8v7C/', '25d55ad283aa400af464c76d713c07ad', NULL, '#E6FAD8', 'Comercial', '01', '', 'on', 1, '', '2018-09-25 15:13:14', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'comercial@tudominio.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$co000000$AzSc3wqiBbfxN6PHX8v7C/', '1', 'None', NULL, 'PHP5.3MD5', 'pf2ZXEPhyKZNdTD5', 'datacrm', 'es_co', 'America/Bogota', '123,456,789', '.', ',', '$1.0', '2', '1', 'Sunday', '00:05', '00:15', 'public', 'Summary', '1', 'medium', 'Planned', 'Call', 0, '', '1', 0, 0, 0, NULL),
(11, 'comercial02', '$1$co000000$AzSc3wqiBbfxN6PHX8v7C/', '25d55ad283aa400af464c76d713c07ad', NULL, '#E6FAD8', 'Comercial', '02', '', 'off', 1, '', '2018-09-25 15:13:14', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'comercial@tudominio.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$co000000$AzSc3wqiBbfxN6PHX8v7C/', '0', '', NULL, 'PHP5.3MD5', 'kX1nU3j1FvlRQNME', 'datacrm', 'es_co', 'America/Bogota', '123,456,789', '.', ',', '$1.0', '2', '1', 'Sunday', '00:05', '00:15', 'public', 'Summary', '1', 'medium', 'Planned', 'Call', 0, '', '0', 0, 0, 0, NULL),
(16, 'administrador', '$1$ad000000$wvUf9HhHd4cq30Aryti9d.', '5e8667a439c68f5145dd2fcbecf02209', NULL, '#E6FAD8', 'Administrador', 'Empresa', '', 'on', 1, '', '2018-09-25 15:13:14', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'correo@empresa.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'yyyy-mm-dd', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$ad000000$wvUf9HhHd4cq30Aryti9d.', '0', '', NULL, 'PHP5.3MD5', 'a5vqyIzNzCniG1FH', 'datacrm', 'es_co', 'America/Bogota', '123,456,789', '.', ',', '$1.0', '2', '0', 'Monday', '00:05', '00:15', 'public', 'Summary', '1', 'medium', 'Planned', 'Call', 0, '', '1', 0, 0, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vtiger_users`
--
ALTER TABLE `vtiger_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_user_name_idx` (`user_name`),
  ADD KEY `user_user_password_idx` (`user_password`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vtiger_users`
--
ALTER TABLE `vtiger_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

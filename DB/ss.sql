-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2018 a las 23:47:44
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ss`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdminPro` (IN `id` INT)  NO SQL
select r.t_u_name as ROL , a.t_u_name as NAME , a.t_u_lastname as LASTNAME, a.t_u_area as AREA ,u.t_u_email as EMAIL,U.t_u_datecreate AS DATECREATE ,u.t_u_token as TOKEN
FROM t_rol  r inner JOIN t_users u ON r.t_u_id=u.t_u_rol 
inner JOIN t_admin a on u.t_u_id=a.t_u_id_user
WHERE u.t_u_id=id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CompanyPro` (IN `id` INT)  NO SQL
select r.t_u_name as ROL , c.t_u_razon as RAZONSOCIAL , C.t_u_address as ADDRESS, C.t_u_phone AS PHONE,C.t_u_email_contac AS EMAILCOMPANY,C.t_u_name_contac AS 'RESPONSABLE' ,u.t_u_email as EMAIL,U.t_u_datecreate AS DATECREATE ,u.t_u_token as TOKEN
FROM t_rol  r inner JOIN t_users u ON r.t_u_id=u.t_u_rol 
inner JOIN t_company c on u.t_u_id=C.t_u_id_user
WHERE u.t_u_id=id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SERVICEPRO` (IN `id` INT)  NO SQL
SELECT r.t_u_name , u.t_u_email , u.t_u_token , u.t_u_datecreate , com.t_u_razon , com.t_u_address , com.t_u_phone , com.t_u_email_contac , com.t_u_name_contac , 
s.t_s_name ,s.t_s_price,s.t_s_discount,s.t_s_description,s.t_s_date,s.t_s_status,c.t_c_name
FROM t_rol r inner join t_users u on r.t_u_id=u.t_u_rol
inner JOIN t_company com on com.t_u_id_user=u.t_u_id 
inner JOIN t_service s on s.t_c_id_company=com.t_u_id_user
inner JOIN t_category c on s.t_c_id=c.t_c_id
where s.t_s_id=id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_admin`
--

CREATE TABLE `t_admin` (
  `t_u_id_user` int(11) DEFAULT NULL,
  `t_u_name` varchar(255) NOT NULL,
  `t_u_lastname` varchar(255) NOT NULL,
  `t_u_area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_admin`
--

INSERT INTO `t_admin` (`t_u_id_user`, `t_u_name`, `t_u_lastname`, `t_u_area`) VALUES
(1, 'administador1', 'admin', 'logistica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_category`
--

CREATE TABLE `t_category` (
  `t_c_id` int(11) NOT NULL,
  `t_c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_category`
--

INSERT INTO `t_category` (`t_c_id`, `t_c_name`) VALUES
(1, 'paginas web '),
(2, 'diseño ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_company`
--

CREATE TABLE `t_company` (
  `t_u_id_user` int(11) DEFAULT NULL,
  `t_u_razon` varchar(255) NOT NULL,
  `t_u_address` varchar(255) NOT NULL,
  `t_u_phone` varchar(15) NOT NULL,
  `t_u_email_contac` varchar(255) NOT NULL,
  `t_u_name_contac` varchar(255) NOT NULL,
  `t_c_logo` text NOT NULL,
  `t_rol_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_company`
--

INSERT INTO `t_company` (`t_u_id_user`, `t_u_razon`, `t_u_address`, `t_u_phone`, `t_u_email_contac`, `t_u_name_contac`, `t_c_logo`, `t_rol_id`) VALUES
(2, '610', 'plaza1', '22222222', 'correo@610.mx', '610 admin', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_feature`
--

CREATE TABLE `t_feature` (
  `t_f_id` int(11) NOT NULL,
  `t_f_name` varchar(255) NOT NULL,
  `t_f_price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_feature`
--

INSERT INTO `t_feature` (`t_f_id`, `t_f_name`, `t_f_price`) VALUES
(1, '123', '1500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_key_application`
--

CREATE TABLE `t_key_application` (
  `t_k_id` int(11) NOT NULL,
  `t_k_date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_k_status` int(11) NOT NULL,
  `t_u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_password`
--

CREATE TABLE `t_password` (
  `t_pw_id` int(11) NOT NULL,
  `t_pw_date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_pw_date_aspiration` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_project`
--

CREATE TABLE `t_project` (
  `t_p_id` int(11) NOT NULL,
  `t_s_id` int(11) NOT NULL,
  `t_c_id` int(11) NOT NULL,
  `t_p_date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_p_status` int(11) NOT NULL,
  `t_p_date_finaly` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_p_date_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_r_id` int(11) NOT NULL,
  `t_quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_quotation`
--

CREATE TABLE `t_quotation` (
  `t_quo_id` int(11) NOT NULL,
  `t_quo_comment` varchar(255) NOT NULL,
  `t_quo_overall` text NOT NULL,
  `t_quo_date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_quo_date_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_quo_id_service` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_renewal`
--

CREATE TABLE `t_renewal` (
  `t_r_id` int(11) NOT NULL,
  `t_r_date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_r_date_finaly` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_r_date_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `t_r_status` int(11) DEFAULT NULL,
  `t_s_id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_rol`
--

CREATE TABLE `t_rol` (
  `t_r_id` int(11) NOT NULL,
  `t_u_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_rol`
--

INSERT INTO `t_rol` (`t_r_id`, `t_u_name`) VALUES
(1, 'administrador'),
(2, 'Usuario'),
(3, 'Estandar'),
(4, 'Profesional'),
(5, 'Empresarial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_service`
--

CREATE TABLE `t_service` (
  `t_s_id` int(11) NOT NULL,
  `t_s_name` varchar(255) NOT NULL,
  `t_s_price` text NOT NULL,
  `t_s_discount` text NOT NULL,
  `t_s_description` varchar(255) NOT NULL,
  `t_s_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_s_status` int(11) DEFAULT NULL,
  `t_c_id` int(11) NOT NULL,
  `t_f_id` int(11) NOT NULL,
  `t_c_id_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_service`
--

INSERT INTO `t_service` (`t_s_id`, `t_s_name`, `t_s_price`, `t_s_discount`, `t_s_description`, `t_s_date`, `t_s_status`, `t_c_id`, `t_f_id`, `t_c_id_company`) VALUES
(5, 'paginas web ', '4500', '15%', 'diseño', '2018-08-29 05:00:00', 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_sub_company`
--

CREATE TABLE `t_sub_company` (
  `t_s_c_id` int(11) NOT NULL,
  `t_s_c_razon` varchar(255) NOT NULL,
  `t_s_c_address` varchar(255) NOT NULL,
  `t_s_c_email_contac` varchar(50) NOT NULL,
  `t_s_c_ephone_contac` varchar(15) NOT NULL,
  `t_s_name_contac` varchar(15) NOT NULL,
  `t_p_id` int(11) DEFAULT NULL,
  `t_c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_users`
--

CREATE TABLE `t_users` (
  `t_u_id` int(11) NOT NULL,
  `t_u_email` varchar(250) NOT NULL,
  `t_u_password` text NOT NULL,
  `t_u_token` text NOT NULL,
  `t_u_datecreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_u_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_users`
--

INSERT INTO `t_users` (`t_u_id`, `t_u_email`, `t_u_password`, `t_u_token`, `t_u_datecreate`, `t_u_rol`) VALUES
(1, 'correo1@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '2018-08-29 19:35:42', 1),
(2, 'correo2@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '12345687', '2018-08-29 20:54:03', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_admin`
--
ALTER TABLE `t_admin`
  ADD KEY `t_u_id_user` (`t_u_id_user`);

--
-- Indices de la tabla `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`t_c_id`);

--
-- Indices de la tabla `t_company`
--
ALTER TABLE `t_company`
  ADD KEY `t_company_ibfk_1` (`t_u_id_user`),
  ADD KEY `t_rol_id` (`t_rol_id`);

--
-- Indices de la tabla `t_feature`
--
ALTER TABLE `t_feature`
  ADD PRIMARY KEY (`t_f_id`);

--
-- Indices de la tabla `t_key_application`
--
ALTER TABLE `t_key_application`
  ADD PRIMARY KEY (`t_k_id`),
  ADD KEY `t_u_id` (`t_u_id`);

--
-- Indices de la tabla `t_password`
--
ALTER TABLE `t_password`
  ADD PRIMARY KEY (`t_pw_id`),
  ADD KEY `t_u_id` (`t_u_id`);

--
-- Indices de la tabla `t_project`
--
ALTER TABLE `t_project`
  ADD PRIMARY KEY (`t_p_id`),
  ADD KEY `t_r_id` (`t_r_id`),
  ADD KEY `t_s_id` (`t_s_id`),
  ADD KEY `t_quo_id` (`t_quo_id`),
  ADD KEY `t_c_id` (`t_c_id`);

--
-- Indices de la tabla `t_quotation`
--
ALTER TABLE `t_quotation`
  ADD PRIMARY KEY (`t_quo_id`);

--
-- Indices de la tabla `t_renewal`
--
ALTER TABLE `t_renewal`
  ADD PRIMARY KEY (`t_r_id`),
  ADD KEY `t_s_id_service` (`t_s_id_service`);

--
-- Indices de la tabla `t_rol`
--
ALTER TABLE `t_rol`
  ADD PRIMARY KEY (`t_r_id`) USING BTREE;

--
-- Indices de la tabla `t_service`
--
ALTER TABLE `t_service`
  ADD PRIMARY KEY (`t_s_id`),
  ADD KEY `t_c_id` (`t_c_id`),
  ADD KEY `t_f_id` (`t_f_id`),
  ADD KEY `t_c_id_company` (`t_c_id_company`);

--
-- Indices de la tabla `t_sub_company`
--
ALTER TABLE `t_sub_company`
  ADD PRIMARY KEY (`t_s_c_id`),
  ADD KEY `t_c_id` (`t_c_id`),
  ADD KEY `t_p_id` (`t_p_id`);

--
-- Indices de la tabla `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`t_u_id`),
  ADD KEY `t_u_rol` (`t_u_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_category`
--
ALTER TABLE `t_category`
  MODIFY `t_c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_feature`
--
ALTER TABLE `t_feature`
  MODIFY `t_f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_key_application`
--
ALTER TABLE `t_key_application`
  MODIFY `t_k_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_password`
--
ALTER TABLE `t_password`
  MODIFY `t_pw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_project`
--
ALTER TABLE `t_project`
  MODIFY `t_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_quotation`
--
ALTER TABLE `t_quotation`
  MODIFY `t_quo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_renewal`
--
ALTER TABLE `t_renewal`
  MODIFY `t_r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_rol`
--
ALTER TABLE `t_rol`
  MODIFY `t_r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `t_service`
--
ALTER TABLE `t_service`
  MODIFY `t_s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `t_sub_company`
--
ALTER TABLE `t_sub_company`
  MODIFY `t_s_c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_users`
--
ALTER TABLE `t_users`
  MODIFY `t_u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_admin`
--
ALTER TABLE `t_admin`
  ADD CONSTRAINT `t_admin_ibfk_1` FOREIGN KEY (`t_u_id_user`) REFERENCES `t_users` (`t_u_id`);

--
-- Filtros para la tabla `t_company`
--
ALTER TABLE `t_company`
  ADD CONSTRAINT `t_company_ibfk_1` FOREIGN KEY (`t_u_id_user`) REFERENCES `t_users` (`t_u_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `t_company_ibfk_2` FOREIGN KEY (`t_rol_id`) REFERENCES `t_rol` (`t_r_id`);

--
-- Filtros para la tabla `t_key_application`
--
ALTER TABLE `t_key_application`
  ADD CONSTRAINT `t_key_application_ibfk_1` FOREIGN KEY (`t_u_id`) REFERENCES `t_users` (`t_u_id`);

--
-- Filtros para la tabla `t_password`
--
ALTER TABLE `t_password`
  ADD CONSTRAINT `t_password_ibfk_1` FOREIGN KEY (`t_u_id`) REFERENCES `t_users` (`t_u_id`);

--
-- Filtros para la tabla `t_project`
--
ALTER TABLE `t_project`
  ADD CONSTRAINT `t_project_ibfk_2` FOREIGN KEY (`t_r_id`) REFERENCES `t_renewal` (`t_r_id`),
  ADD CONSTRAINT `t_project_ibfk_3` FOREIGN KEY (`t_s_id`) REFERENCES `t_service` (`t_s_id`),
  ADD CONSTRAINT `t_project_ibfk_4` FOREIGN KEY (`t_quo_id`) REFERENCES `t_quotation` (`t_quo_id`),
  ADD CONSTRAINT `t_project_ibfk_5` FOREIGN KEY (`t_c_id`) REFERENCES `t_company` (`t_u_id_user`);

--
-- Filtros para la tabla `t_service`
--
ALTER TABLE `t_service`
  ADD CONSTRAINT `t_service_ibfk_1` FOREIGN KEY (`t_c_id`) REFERENCES `t_category` (`t_c_id`),
  ADD CONSTRAINT `t_service_ibfk_2` FOREIGN KEY (`t_f_id`) REFERENCES `t_feature` (`t_f_id`),
  ADD CONSTRAINT `t_service_ibfk_3` FOREIGN KEY (`t_c_id_company`) REFERENCES `t_company` (`t_u_id_user`);

--
-- Filtros para la tabla `t_sub_company`
--
ALTER TABLE `t_sub_company`
  ADD CONSTRAINT `t_sub_company_ibfk_1` FOREIGN KEY (`t_c_id`) REFERENCES `t_company` (`t_u_id_user`),
  ADD CONSTRAINT `t_sub_company_ibfk_2` FOREIGN KEY (`t_p_id`) REFERENCES `t_project` (`t_p_id`);

--
-- Filtros para la tabla `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `t_users_ibfk_1` FOREIGN KEY (`t_u_rol`) REFERENCES `t_rol` (`t_r_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

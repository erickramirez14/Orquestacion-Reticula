-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2022 a las 08:22:47
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `materias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int NOT NULL AUTO_INCREMENT,
  `semestre` int DEFAULT NULL,
  `nombre_materia` varchar(200) DEFAULT NULL,
  `horas_trabajo` varchar(6) DEFAULT NULL,
  `especificacion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_materia`)
);

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `semestre`, `nombre_materia`, `horas_trabajo`, `especificacion`) VALUES
(1, 1,'Cálculo Diferencial','3-2-5','ACF-0901'),
(2, 1,'Matemáticas Discretas','3-2-5','AEF-1041'),
(3, 1,'Fundamentos de programación','2-3-5','AED-1285'),
(4, 1,'Taller de Administración','1-3-4','SCH-1024'),
(5, 1,'Fundamentos de Investigación','2-2-4','ACC-0906'),
(6, 1,'Taller de ética','0-4-4','ACA-0907'),
(7, 2,'Cálculo Integral','3-2-5','ACF-0902'),
(8, 2,'Algebra Lineal','3-2-5','ACF-0903'),
(9, 2,'Programación orientada a objetos','2-3-5','AED-1286'),
(10, 2,'Contabilidad Financiera','2-2-4','AEC-1008'),
(11, 2,'Química','2-2-4','AEC-1058'),
(12, 2,'Probabilidad y Estadí­stica','3-2-5','AEF-1052'),
(13, 3,'Cálculo Vectorial','3-2-5','ACF-0904'),
(14, 3,'Investigación de Operaciones','2-2-4','SCC-1013'),
(15, 3,'Estructura de Datos','2-3-5','AED-1026'),
(16, 3,'Cultura Empresarial','2-2-4','SCC-1005'),
(17, 3,'Desarrollo Sustentable','2-3-5','ACD-0908'),
(18, 3,'Física General','3-2-5','SCF-1006'),
(19, 4,'Ecuaciones Diferenciales','3-2-5','ACF-0905'),
(20, 4,'Fundamentos de Bases de Datos','3-2-5','AEF-1031'),
(21, 4,'Tópicos Avanzados de Programación','2-3-5','SCD-1027'),
(22, 4,'Simulación','2-3-5','SCD-1022'),
(23, 4,'Métodos Numéricos','2-2-4','SCC-1017'),
(24, 4,'Principios Eléctricos y Aplicaciones Digitales','2-3-5','SCD-1018'),
(25, 5,'Fundamentos de Ingeniería de Software','2-2-4','SCC-1007'),
(26, 5,'Taller de bases de datos','0-4-4','SCA-1025'),
(27, 5,'Sistemas Operativos','2-2-4','AEC-1061'),
(28, 5,'Graficación','2-2-4','SCC-1010'),
(29, 5,'Fundamentos de Telecomunicaciones','2-2-4','AEC-1034'),
(30, 5,'Arquitectura de Computadoras','2-3-5','SCD-1003'),
(31, 6,'Ingeniería de Software','2-3-5','SCD-1011'),
(32, 6,'Administración de Bases de Datos','1-4-5','SCB-1001'),
(33, 6,'Lenguajes y Autómatas I','2-3-5','SCD-1015'),
(34, 6,'Taller de Sistemas Operativos','0-4-4','SCA-1026'),
(35, 6,'Redes de Computadora','2-3-5','SCD-1021'),
(36, 6,'Lenguajes de interfaz','2-2-4','SCC-1014'),
(37, 7,'Gestión de Proyectos de Software','3-3-6','SCG-1009'),
(38, 7,'Taller de Investigación I','0-4-4','ACA-0909'),
(39, 7,'Lenguajes y Autómatas II','2-3-5','SCD-1016'),
(40, 7,'Redes inalámbricas','2-3-5','RAD-2001'),
(41, 7,'Conmutación y Enrutamiento de Redes de Datos','2-3-5','SCD-1004'),
(42, 7,'Sistemas Programables','2-2-4','SCC-1023'),
(43, 8,'Programación Lógica y Funcional','2-2-4','SCC-1019'),
(44, 8,'Taller de Investigación II','0-4-4','ACA-0910'),
(45, 8,'Actividades Complementarias','5','AC'),
(46, 8,'Dise~no de redes','2-3-5','RAD2002'),
(47, 8,'Administración de Redes','0-4-4','SCA-1002'),
(48, 8,'Fundamentos de IoT','1-4-5','RAD2003'),
(49, 9,'Inteligencia Artificial','2-2-4','SCC-1012'),
(50, 9,'Programación Web','1-4-5','AEB-1055'),
(51, 9,'Despliegue de aplicaciones','2-3-5','RAD2005'),
(52, 9,'Seguridad en Redes','2-3-5','RAD-2004'),
(53, 9,'Servicio Social','10','S1'),
(54, 9,'Residencia','10','R1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

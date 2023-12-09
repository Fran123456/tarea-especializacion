-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 09-12-2023 a las 21:18:36
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `logs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs_s3`
--

CREATE TABLE `logs_s3` (
  `id` int NOT NULL,
  `comentario` text COLLATE utf8mb4_bin NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipo` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Volcado de datos para la tabla `logs_s3`
--

INSERT INTO `logs_s3` (`id`, `comentario`, `fecha`, `tipo`) VALUES
(1, 'Error, no se ha podido subir el archivo dimfecha a S3 carpetas stage ', '2023-12-09 01:29:06', NULL),
(4, 'Se ha subido la dimfecha a la carpeta stage ', '2023-12-09 01:34:31', NULL),
(5, 'Se ha subido la dimfecha a la carpeta stage ', '2023-12-09 01:40:15', NULL),
(6, 'Se ha subido la dimfecha a la carpeta stage ', '2023-12-09 01:49:53', 'subida-dimfecha'),
(7, 'Se ha subido la dimfecha a la carpeta stage ', '2023-12-09 02:03:26', 'subida-dimfecha'),
(8, 'Se ha subido la dimfecha a la carpeta stage ', '2023-12-09 02:07:13', 'subida-dimfecha'),
(9, 'Se ha copiado el archivo de supplier.csv a la carpeta stage ', '2023-12-09 03:23:35', 'copiar-csv-supplier'),
(10, 'Se ha copiado el archivo de supplier.csv a la carpeta stage ', '2023-12-09 03:25:58', 'copiar-csv-supplier'),
(11, 'Se ha  generado un error al enviar el archivo de supplier.csv a la carpeta stage ', '2023-12-09 03:27:10', 'copiar-csv-supplier'),
(12, 'Se ha  generado un error al enviar el archivo de supplier.csv a la carpeta stage ', '2023-12-09 03:27:57', 'copiar-csv-supplier'),
(13, 'Se ha  generado un error al enviar el archivo de supplier.csv a la carpeta stage ', '2023-12-09 03:28:28', 'copiar-csv-supplier'),
(14, 'Se ha  generado un error al enviar el archivo de supplier.csv a la carpeta stage ', '2023-12-09 03:30:49', 'copiar-csv-supplier'),
(15, 'Se ha copiado el archivo de supplier.csv a la carpeta stage ', '2023-12-09 03:31:07', 'copiar-csv-supplier'),
(16, 'Se ha cargado la dimfecha a redshift ', '2023-12-09 04:01:13', 'redshift-dimsupplier'),
(17, 'Se ha cargado la dimfecha a redshift ', '2023-12-09 04:01:53', 'redshift-dimsupplier'),
(18, 'Se ha copiado el archivo de item.csv a la carpeta stage ', '2023-12-09 04:15:46', 'copiar-csv-item'),
(19, 'Error no se pudo cargar la dimitem a redshift ', '2023-12-09 04:27:21', 'redshift-dimitem'),
(20, 'Se ha copiado el archivo de supplier.csv a la carpeta stage ', '2023-12-09 04:28:47', 'copiar-csv-supplier'),
(21, 'Se ha  generado un error al enviar el archivo de item.csv a la carpeta stage ', '2023-12-09 04:29:37', 'copiar-csv-item'),
(22, 'Se ha copiado el archivo de item.csv a la carpeta stage ', '2023-12-09 04:30:26', 'copiar-csv-item'),
(23, 'Error no se pudo cargar la dimitem a redshift ', '2023-12-09 04:30:38', 'redshift-dimitem'),
(24, 'Se ha cargado la dimitem a redshift ', '2023-12-09 04:32:24', 'redshift-dimitem'),
(25, 'Se ha cargado la dimitem a redshift ', '2023-12-09 04:33:33', 'redshift-dimitem'),
(26, 'Se ha cargado la dimitem a redshift ', '2023-12-09 04:35:01', 'redshift-dimitem'),
(27, 'Se ha cargado la dimitem a redshift ', '2023-12-09 04:36:26', 'redshift-dimitem'),
(28, 'Se ha  generado un error al enviar el archivo de Orden Compra.csv a la carpeta stage ', '2023-12-09 05:30:41', 'copiar-csv-orden-compra'),
(29, 'Se ha  generado un error al enviar el archivo de Orden Compra.csv a la carpeta stage ', '2023-12-09 05:31:25', 'copiar-csv-orden-compra'),
(30, 'Se ha  generado un error al enviar el archivo de Orden Compra.csv a la carpeta stage ', '2023-12-09 05:33:22', 'copiar-csv-orden-compra'),
(31, 'Se ha copiado el archivo de Orden Compra.csv a la carpeta stage ', '2023-12-09 05:34:25', 'copiar-csv-orden-compra'),
(32, 'Se ha migrado la data a redshift de la dimordencompra ', '2023-12-09 07:41:34', 'redshift-dimordencompra'),
(33, 'Se ha  generado un error al enviar el archivo de PurchaseOrdenFact.csv a la carpeta stage ', '2023-12-09 16:13:59', 'copiar-csv-PurchaseOrdenFact'),
(34, 'Se ha copiado el archivo de PurchaseOrdenFact.csv a la carpeta stage ', '2023-12-09 16:14:53', 'copiar-csv-PurchaseOrdenFact'),
(35, 'Se ha copiado y mapeado el archivo de PurchaseOrderDetail.csv a la carpeta stage ', '2023-12-09 18:55:18', 's3-PurchaseOrderDetail.csv');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `logs_s3`
--
ALTER TABLE `logs_s3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `logs_s3`
--
ALTER TABLE `logs_s3`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-12-2016 a las 04:01:58
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_hack`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_datosalerta`
--

CREATE TABLE `db_datosalerta` (
  `id` int(8) UNSIGNED NOT NULL,
  `categoria` int(3) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `necesidad` varchar(1024) NOT NULL,
  `lon` decimal(13,10) NOT NULL,
  `lat` decimal(13,10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `db_datosalerta`
--

INSERT INTO `db_datosalerta` (`id`, `categoria`, `nombre`, `direccion`, `necesidad`, `lon`, `lat`) VALUES
(1, 1, 'Aldana', 'Corrientes, 25 de Mayo 1041', 'Necesito ayuda!!', '-58.8009220000', '-27.9502780000'),
(2, 1, 'JosÃ©', 'Corrientes, 25 de Mayo 1041', 'Necesito ayuda!!', '-58.2460860000', '-27.2761940000'),
(3, 3, 'Emiliano', 'Corrientes, 25 de Mayo 1041', 'Necesito ayuda!!', '-58.7761760000', '-27.4990330000'),
(4, 2, 'EstefanÃ­a', 'Corrientes, 25 de Mayo 1041', 'Necesito ayuda!!', '-58.8552020000', '-27.4717010000'),
(7, 1, 'Test', 'Corrientes, 25 de Mayo 1041', 'Necesito ayuda!!', '-58.8288730000', '-27.4918700000'),
(8, 1, 'Test', 'Corrientes, 25 de Mayo 1041', 'Necesito ayuda!!', '-58.7859580000', '-27.4655990000'),
(9, 1, 'Test', 'Corrientes, 25 de Mayo 1041', 'Necesito ayuda!!', '-58.8262800000', '-27.4993430000'),
(12, 1, 'Francisco', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '0.0000000000', '0.0000000000'),
(13, 1, 'Francisco', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '0.0000000000', '0.0000000000'),
(14, 1, 'Mariano', 'Corrientes, 25 de Mayo 1041', 'Asistencia mÃ©dica', '0.0000000000', '0.0000000000'),
(15, 1, 'Diego', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '0.0000000000', '0.0000000000'),
(16, 1, 'Diego', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '-58.8370150000', '-27.4663005000'),
(17, 1, 'Diego', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '-58.8370150000', '-27.4663005000'),
(18, 1, 'Julio', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '-58.8370150000', '-27.4663005000'),
(19, 2, 'Nico', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '0.0000000000', '0.0000000000'),
(20, 2, 'Nico', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '0.0000000000', '0.0000000000'),
(21, 2, 'Federico', 'Perrando', 'agua', '-58.9855547000', '-27.4518622000'),
(22, 1, 'Pedro', 'Corrientes, 25 de Mayo 1041', 'Necesita alimentos.', '0.0000000000', '0.0000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `donacion`
--

CREATE TABLE `donacion` (
  `id` int(11) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `asignado` tinyint(4) NOT NULL DEFAULT '0',
  `fecharegistro` date NOT NULL,
  `destino` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `donacion`
--

INSERT INTO `donacion` (`id`, `tipo`, `descripcion`, `cantidad`, `asignado`, `fecharegistro`, `destino`) VALUES
(1, 'Salud', 'Paquete de Gasas x20', 50, 0, '2016-11-12', NULL),
(2, 'Mobiliario', 'Colchon de 1 plaza', 5, 0, '2016-11-13', 'San Lorenzo 1066');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospital`
--

CREATE TABLE `hospital` (
  `nombre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_siisa` bigint(14) DEFAULT NULL,
  `domicilio` varchar(34) CHARACTER SET utf8 DEFAULT NULL,
  `localidad` varchar(41) CHARACTER SET utf8 DEFAULT NULL,
  `departamento` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `region_sanitaria` int(1) DEFAULT NULL,
  `dependencia` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` varchar(23) CHARACTER SET utf8 DEFAULT NULL,
  `codigo_postal` int(4) DEFAULT NULL,
  `tipologia` varchar(55) CHARACTER SET utf8 DEFAULT NULL,
  `descripcion` varchar(79) CHARACTER SET utf8 DEFAULT NULL,
  `autor` varchar(53) CHARACTER SET utf8 DEFAULT NULL,
  `lat` decimal(13,10) DEFAULT NULL,
  `lon` decimal(13,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `hospital`
--

INSERT INTO `hospital` (`nombre`, `codigo_siisa`, `domicilio`, `localidad`, `departamento`, `region_sanitaria`, `dependencia`, `telefono`, `codigo_postal`, `tipologia`, `descripcion`, `autor`, `lat`, `lon`) VALUES
('Hospital Juan Ramon Vidal', 10180142139044, 'Pedro Sánchez 812', 'Berón de Astrada', 'Berón de Astrada', 1, 'Provincial', '(03781) 420050', 3481, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.5509460000', '-57.5281930000'),
('Hosp. Pediatrico Juan Pablo Ii', 11180212139076, 'Av. Artigas 1435', 'Corrientes', 'Capital', 1, 'Provincial', '(0379) 4475300/ 4475304', 3400, 'Alto riesgo con terapia intensiva especializada', 'Establecimiento de salud con internación especializada en pediatría', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4757290000', '-58.8190610000'),
('Hosp. Jose Ramon Vidal', 10180212139042, 'Necochea 1050', 'Corrientes', 'Capital', 1, 'Provincial', '(0379) 4428453/ 4421373', 3400, 'Alto riesgo con terapia intensiva', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4794017979', '-58.8389626140'),
('Hosp. Geriatrico de Agudos Juana Francisca Cabral', 15180212139083, 'Belgrano 1353', 'Corrientes', 'Capital', 1, 'Provincial', '(0379) 4420696', 3400, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación especializada en tercera edad', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4721590000', '-58.8344050000'),
('Hosp. Escuela Jose Francisco de San Martin', 10180212139039, 'Rivadavia 1250', 'Corrientes', 'Capital', 1, 'Provincial', '(0379) 4430113/ 4421361', 3400, 'Alto riesgo con terapia intensiva especializada', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4755550000', '-58.8358560000'),
('Hosp. Angela Iglesia de Llano', 10180212139021, 'Ayacucho 3288', 'Corrientes', 'Capital', 1, 'Provincial', '(0379) 4421345', 3400, 'Alto riesgo con terapia intensiva', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4720840000', '-58.8105820000'),
('Instituto de Cardiologia Juana Francisca Cabral', 14180212139082, 'Cordoba 1334', 'Corrientes', 'Capital', 1, 'Provincial-Privado', '(0379) 4479480', 3400, 'Alto riesgo con terapia intensiva especializada', 'Establecimiento de salud con internación especializada en otras especialidades', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4713130000', '-58.8342990000'),
('Hosp. de Salud Mental San Francisco de Asis', 13180212139080, 'Velez Sarfield 99', 'Corrientes', 'Capital', 1, 'Provincial', '(0379) 4423726/ 4425795', 3400, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación especializada en salud mental', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4598770000', '-58.8188920000'),
('Hospital Santa Rosa', 10180282139059, 'Ruta Nacional 118 Km 62', 'Santa Rosa', 'Concepción', 2, 'Provincial', '(03782) 494016', 3421, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.2659000000', '-58.1206920000'),
('Hospital Inmaculada Concepcion', 10180282139040, 'Capitan Arbo y Blanco 1355', 'Concepción', 'Concepción', 2, 'Provincial', '(03782) 497000', 3344, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.3915950000', '-57.8854620000'),
('Hospital Virgen de Itati', 10180282139060, 'Pedro Rios y Constitucion Nacional', 'Tabay', 'Concepción', 2, 'Provincial', '(03782) 499318', 3400, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.3106500000', '-58.2902500000'),
('Hospital San Pedro', 10180352139054, 'Juan Pujol S/N y Ruta 24', 'Perugorría', 'Curuzú Cuatiá', 4, 'Provincial', '(03773) 494087', 3461, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.3360750000', '-58.6025850000'),
('Hospital Dr. Jaime Mario Davila', 10180422139033, 'Mendoza S/N', 'Empedrado', 'Empedrado', 1, 'Provincial', '(03783) 491285', 3418, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.9542180000', '-58.8134260000'),
('Hospital San Roque', 10180492139056, 'Moreno y Antartida Argentina', 'Esquina', 'Esquina', 3, 'Provincial', '(03777) 460116', 3196, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-30.0059480000', '-59.5299330000'),
('Hospital Dr. Miguel Sussini', 10180562139035, 'Belgrano 1428', 'Alvear', 'General Alvear', 5, 'Provincial', '(03772) 470005/ 470011', 3344, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.0927260000', '-56.5498290000'),
('Hospital Inmaculada Concepcion', 10180632139041, 'San Martin Esquina Belgrano', 'Itá Ibaté', 'General Paz', 5, 'Provincial', '(03781) 495183', 3480, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.4247270000', '-57.3372980000'),
('Hospital Reg. de Goya Prof. Dr. Camilo Muniagurria', 10180702139048, 'Av. Tomas Mazzanti 550', 'Goya', 'Goya', 3, 'Provincial', '(03777) 422289/ 422283', 3450, 'Alto riesgo con terapia intensiva', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.1366750000', '-59.2463920000'),
('Hospital Dr. Ricardo Billinghurts', 10180842139037, 'Av Apipe y Posadas', 'Ituzaingó', 'Ituzaingó', 5, 'Provincial', '(03786) 420101/ 420105', 3302, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.5817680000', '-56.6815000000'),
('Hospital Angela de Lopez Lavalle', 10180912139020, 'Av. San Martin 1215', 'Gobernador Juan E. Martínez', 'Lavalle', 3, 'Provincial', '(03777) 493086', 3306, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.9099210000', '-58.9382260000'),
('Hospital las Mercedes', 10181052139046, 'Dr. Juan Ramon Lacour 1050', 'Mercedes', 'Mercedes', 4, 'Provincial', '(03773) 420031', 3470, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.1892350000', '-58.0786970000'),
('Hospital Samuel W. Robinson', 10181122139049, 'Mitre y San Martin', 'Monte Caseros', 'Monte Caseros', 4, 'Provincial', '(03775) 422431/ 422230', 3220, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-30.2531050000', '-57.6233820000'),
('Hospital de Carlos Pellegrini', 10181472139029, 'Nº 25 y 5', 'Colonia Carlos Pellegrini', 'San Martín', 4, 'Provincial', '(03773) 422040', 3403, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.5380560000', '-57.1704770000'),
('Hospital San Antonio de Padua', 10181472139050, 'Av Mario Augusto Ballester', 'La Cruz', 'San Martín', 5, 'Provincial', '(03772) 491015', 3346, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.1727960000', '-56.6472640000'),
('Hospital Daniel Vergara', 10181472139028, 'San Lorenzo', 'Yapeyú', 'San Martín', 5, 'Provincial', '(03772) 493014', 3231, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.4692840000', '-56.8179340000'),
('Hospital Dr. Jose Rodolfo Piñeiro', 10181542139022, 'Comercio y Julian Gonzalez', 'Loreto', 'San Miguel', 1, 'Provincial', '(03781) 497029', 3483, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.7638220000', '-57.2751120000'),
('Hospital Jose Ramon Vidal', 10181542139043, 'Av. San Martin y Brasil', 'San Miguel', 'San Miguel', 1, 'Provincial', '(03781) 483031', 3485, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.9983530000', '-57.5946670000'),
('Hospital Juan Romero', 10181612139045, 'Santa Fe y Caa Guazu', '9 de Julio (Est. Pueblo 9 de Julio)', 'San Roque', 2, 'Provincial', '(03777) 424030', 3449, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.8436030000', '-58.8277260000'),
('Hospital San Roque', 10181612139055, 'Daniel Artaza 811', 'San Roque', 'San Roque', 2, 'Provincial', '(03777) 478004', 3448, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.5752660000', '-58.7097890000'),
('Hospital Dr. Miguel Sussini', 10181682139036, 'Av. Lavalle 939', 'Gobernador Igr. Valentín Virasoro', 'Santo Tomé', 5, 'Provincial', '(03756) 481225', 3448, 'Alto riesgo con terapia intensiva', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.0544220000', '-56.0147960000'),
('Hospital San Juan Bautista', 10181682139052, 'Beltran 451', 'Santo Tomé', 'Santo Tomé', 5, 'Provincial', '(03756) 420288/ 420282', 3340, 'Alto riesgo con terapia intensiva', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.5549820000', '-56.0388670000'),
('Hospital Maria Auxiliadora', 10181262139025, 'Alvear 750', 'Saladas', 'Saladas', 2, 'Provincial', '(03782) 421082', 3420, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.2589580000', '-58.6278540000'),
('Hospital Dr. Eduardo Andres Cicconetti', 10181332139031, 'Mendoza 555 - Paso de la Patria', 'Paso de la Patria', 'San Cosme', 1, 'Provincial', '(03783) 498385', 3409, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.3203970000', '-58.5756750000'),
('Hospital Julio C. Rivero', 10181332139024, 'Jose R. Vidal y Dr. Valenzuela', 'San Cosme', 'San Cosme', 1, 'Provincial', '(03783) 496034', 3412, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.3705840000', '-58.5115680000'),
('Hospital San Jose', 10181192139051, 'Esteban Alisio 650', 'Paso de los Libres', 'Paso de los Libres', 4, 'Provincial', '(03772) 424411', 3230, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.7122050000', '-57.0806560000'),
('Hospital San Antonio de Padua', 10180982139026, 'San Antonio 450 - Pago Arias', 'Mburucuyá', 'Mburucuyá', 2, 'Provincial', '(03782) 498087', 3427, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.0404470000', '-58.2347040000'),
('Hospital Base Mocoreta', 10181122139027, 'Buenos Aires 164', 'Mocoretá', 'Monte Caseros', 4, 'Provincial', '(03775) 498148', 3226, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-30.6206270000', '-57.9642240000'),
('Hospital Santa Rosa', 10181752139058, 'Rosa de Wetzel 1451', 'Sauce', 'Sauce', 4, 'Provincial', '(03774) 480019/ 494016', 3463, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-30.0930440000', '-58.7860920000'),
('Hospital Dr. Fernando Irastorza', 10180352139032, 'Beron de Astrada 1350', 'Curuzú Cuatiá', 'Curuzú Cuatiá', 4, 'Provincial', '(03774) 422507/ 422733', 3460, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-29.7901550000', '-58.0631980000'),
('Hospital San Vicente de Paul', 10180632139057, 'Juan Bautista Alberdi 251', 'Nuestra Señora del Rosario de Caá Catí', 'General Paz', 1, 'Provincial', '(03781) 420117/ 420181', 3545, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.7484140000', '-57.6217710000'),
('Hospital el Salvador', 10180072139023, 'Montevideo y Sucre', 'Bella Vista', 'Bella Vista', 2, 'Provincial', '(03777) 451063/ 451064', 3432, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.5227050000', '-59.0446260000'),
('Hospital Dres. Juan C. y Alberto J. Garcia', 10180772139038, 'Manuel Belgrano S/Nº', 'Itatí', 'Itatí', 1, 'Provincial', '(03783) 493323', 3414, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.2740850000', '-58.2483710000'),
('Hospital Psiquiatrico Eugenio F. Ramirez', 13181402139081, 'Misiones 1150', 'San Luis del Palmar', 'San Luis del Palmar', 1, 'Provincial', '(03783) 492023', 3403, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación especializada en salud mental', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.5170070000', '-58.5552390000'),
('Hospital Dr. Juan Ramon Gomez', 10180912139034, 'Sarmiento 211', 'Santa Lucía', 'Lavalle', 3, 'Provincial', '(03777) 480220', 3445, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.9910030000', '-59.1024590000'),
('Hospital Pedro R. Fernandez', 10181612139047, 'Piragini Niveyro', 'Pedro R. Fernández', 'San Roque', 2, 'Provincial', '(03777) 477087', 3446, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-28.7524410000', '-58.6571090000'),
('Hospital de Colonia Liebigs', 10180842139030, 'Almirante Brown S/N', 'Colonia Liebig''S', 'Ituzaingó', 5, 'Provincial', '(03758) 423131', 3358, 'Mediano riesgo con internación con cuidados especiales', 'Establecimiento de salud con internación general', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.9148030000', '-55.8208890000'),
('Hospital Presidente Raul Alfonsin', 13181402139081, 'Misiones 1150', 'San Luis del Palmar', 'San Luis del Palmar', 1, 'Provincial', '(03783) 492023', 3403, 'Bajo riesgo con internación simple', 'Establecimiento de salud con internación especializada en salud mental', 'Ministerio de Salud Pública \\ Dirección de Sistemas', '-27.5817486377', '-58.7400745376');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voluntario`
--

CREATE TABLE `voluntario` (
  `nombre` varchar(100) NOT NULL,
  `fecharegistro` date NOT NULL,
  `dni` int(11) NOT NULL,
  `especialidad` varchar(60) NOT NULL,
  `formacion` varchar(60) DEFAULT NULL,
  `telefono` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `sangre` varchar(15) NOT NULL DEFAULT 'No soy donante'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `voluntario`
--

INSERT INTO `voluntario` (`nombre`, `fecharegistro`, `dni`, `especialidad`, `formacion`, `telefono`, `password`, `fechanacimiento`, `sexo`, `sangre`) VALUES
('Roth, Isabella Y.', '2015-12-08', 5487691, 'Medicina', 'Policia', '(578) 330-4126', '9703', '2016-04-15', 'Mujer', 'AB-'),
('Oliver, Nigel L.', '2017-03-16', 5530308, 'Psicologia', 'Enfermero', '(704) 637-9030', '6169', '2016-01-08', 'Hombre', '0+'),
('Summers, Scarlett X.', '2016-07-25', 6731889, 'Veterinaria', 'Policia', '(870) 695-8823', '9479', '2016-03-12', 'Hombre', '0+'),
('Chavez, Cassidy R.', '2016-09-07', 6743489, 'Veterinaria', 'Clinico', '(282) 684-9542', '4513', '2017-07-07', 'Mujer', 'AB+'),
('Watson, Illana T.', '2017-10-19', 6786206, 'Veterinaria', 'Clinico', '(415) 901-9402', '5282', '2016-04-12', 'Mujer', 'AB-'),
('Gill, Amir O.', '2017-10-04', 8444214, 'Enfermeria', 'Clinico', '(677) 752-2712', '9034', '2017-04-01', 'Mujer', '0-'),
('Lindsey, Kennedy R.', '2016-03-29', 8744061, 'Veterinaria', 'Clinico', '(810) 123-5620', '9659', '2016-03-14', 'Mujer', 'A+'),
('Vasquez, Lana Y.', '2016-09-06', 8838628, 'Seguridad', 'Clinico', '(172) 153-2972', '6710', '2016-10-23', 'Hombre', 'AB-'),
('Alston, Cassady G.', '2016-11-22', 9120784, 'Psicologia', 'Clinico', '(971) 615-4011', '3804', '2016-03-20', 'Hombre', '0-'),
('Vega, Nerea Z.', '2016-06-27', 9227405, 'Psicologia', 'Clinico', '(326) 280-9528', '7853', '2016-08-02', 'Mujer', '0+'),
('Glover, Tatyana S.', '2016-12-11', 9283999, 'Psicologia', 'Policia', '(422) 147-5720', '5529', '2016-12-08', 'Hombre', 'A-'),
('Freeman, Lydia P.', '2017-04-17', 9653754, 'Enfermeria', 'Oftalmologo', '(163) 245-7122', '8211', '2016-08-26', 'Mujer', 'No soy donante'),
('Swanson, Ramona H.', '2016-02-08', 11971971, 'Veterinaria', 'Oftalmologo', '(757) 706-5385', '5455', '2016-12-07', 'Mujer', 'A-'),
('Moreno, Lyle D.', '2016-01-05', 12905519, 'Enfermeria', 'Policia', '(977) 319-2568', '1452', '2017-10-28', 'Hombre', '0+'),
('Sullivan, Daryl K.', '2017-10-15', 12926391, 'Veterinaria', 'Oftalmologo', '(984) 482-5260', '5257', '2016-10-24', 'Mujer', 'A+'),
('Huffman, Alisa W.', '2016-04-14', 13033274, 'Seguridad', 'Enfermero', '(689) 746-5058', '2068', '2016-12-29', 'Mujer', '0+'),
('Kerr, Patience S.', '2017-03-29', 14557413, 'Enfermeria', 'Enfermero', '(671) 130-6702', '2495', '2017-08-03', 'Hombre', 'A-'),
('Schneider, Regan F.', '2017-09-27', 14644279, 'Enfermeria', 'Clinico', '(452) 465-4090', '4673', '2017-07-29', 'Hombre', '0-'),
('Chen, Harper B.', '2017-10-17', 14834825, 'Seguridad', 'Oftalmologo', '(338) 796-9232', '4919', '2017-10-17', 'Hombre', 'A-'),
('Rice, Kevin I.', '2016-05-05', 15509522, 'Veterinaria', 'Enfermero', '(205) 538-0214', '2250', '2017-08-29', 'Mujer', 'A+'),
('Fry, Jorden B.', '2016-02-24', 15573331, 'Veterinaria', 'Policia', '(740) 424-5665', '6111', '2017-10-23', 'Hombre', 'AB-'),
('Callahan, Rebecca K.', '2017-06-25', 16193540, 'Seguridad', 'Oftalmologo', '(573) 838-3554', '6259', '2017-03-03', 'Hombre', 'No soy donante'),
('Johnston, Edward K.', '2015-12-29', 16383391, 'Seguridad', 'Policia', '(836) 279-8090', '8983', '2016-05-20', 'Mujer', 'B+'),
('House, Angela K.', '2017-09-24', 17731045, 'Seguridad', 'Enfermero', '(343) 233-8847', '7917', '2016-10-06', 'Hombre', 'AB+'),
('Carey, Candice P.', '2016-09-08', 18634660, 'Enfermeria', 'Policia', '(327) 975-0614', '7447', '2017-02-14', 'Mujer', 'AB+'),
('Higgins, Charde U.', '2017-05-10', 19296479, 'Medicina', 'Clinico', '(606) 292-7265', '2027', '2017-02-22', 'Hombre', 'No soy donante'),
('Frazier, Harlan Y.', '2015-12-04', 19372761, 'Enfermeria', 'Oftalmologo', '(103) 962-5535', '8919', '2017-08-23', 'Mujer', 'A-'),
('Barnett, Sybill H.', '2017-09-25', 19768426, 'Enfermeria', 'Oftalmologo', '(543) 622-5647', '2293', '2016-11-10', 'Hombre', 'AB+'),
('Hinton, Illiana A.', '2017-01-31', 20127433, 'Veterinaria', 'Enfermero', '(358) 647-0119', '9331', '2017-06-06', 'Mujer', 'AB-'),
('Pennington, Keelie T.', '2016-06-10', 20176169, 'Medicina', 'Enfermero', '(537) 255-3237', '7526', '2016-12-14', 'Hombre', 'A+'),
('Barrera, Marny E.', '2016-06-04', 20498265, 'Psicologia', 'Enfermero', '(807) 590-1202', '4320', '2016-03-31', 'Hombre', 'B+'),
('Sawyer, Tatum E.', '2016-09-25', 20949928, 'Psicologia', 'Oftalmologo', '(986) 880-4099', '2678', '2016-12-01', 'Mujer', 'No soy donante'),
('Whitehead, Melvin I.', '2017-01-18', 21079232, 'Enfermeria', 'Oftalmologo', '(197) 752-4243', '7062', '2016-07-13', 'Mujer', '0+'),
('Glover, Jenette Q.', '2016-05-26', 21416521, 'Veterinaria', 'Policia', '(464) 955-8351', '5441', '2017-03-19', 'Hombre', '0+'),
('Oliver, Logan A.', '2016-04-25', 21442044, 'Seguridad', 'Oftalmologo', '(360) 806-2879', '4649', '2016-09-29', 'Mujer', '0+'),
('Gilmore, Nola S.', '2016-04-27', 21704573, 'Psicologia', 'Enfermero', '(452) 880-5498', '6326', '2016-03-06', 'Hombre', 'AB+'),
('Bright, Palmer M.', '2016-05-11', 21979131, 'Seguridad', 'Clinico', '(333) 529-6412', '2771', '2015-11-18', 'Mujer', '0+'),
('Pollard, Belle A.', '2016-10-06', 22240664, 'Veterinaria', 'Oftalmologo', '(623) 504-3613', '3830', '2017-07-12', 'Hombre', 'A+'),
('Peters, Yuri Y.', '2016-12-24', 22644618, 'Psicologia', 'Oftalmologo', '(318) 915-1585', '4664', '2017-06-19', 'Mujer', 'A+'),
('Dominguez, Madaline B.', '2016-10-13', 22928244, 'Veterinaria', 'Oftalmologo', '(430) 800-0647', '4199', '2016-09-21', 'Hombre', '0+'),
('Patrick, Colt P.', '2016-02-16', 23275761, 'Psicologia', 'Oftalmologo', '(415) 456-8242', '7740', '2017-03-18', 'Hombre', 'B-'),
('Le, Vielka Y.', '2016-02-01', 23492780, 'Veterinaria', 'Oftalmologo', '(442) 885-0629', '1852', '2017-01-18', 'Mujer', 'AB-'),
('Gonzalez, Ariana X.', '2016-07-27', 24068663, 'Seguridad', 'Enfermero', '(464) 769-2711', '7681', '2016-02-10', 'Hombre', 'B-'),
('Davenport, Calista I.', '2016-11-24', 24781903, 'Veterinaria', 'Policia', '(830) 406-3611', '5874', '2016-12-28', 'Mujer', 'AB+'),
('Williamson, Laurel K.', '2017-10-04', 25084640, 'Psicologia', 'Enfermero', '(729) 779-1206', '1461', '2016-11-15', 'Hombre', '0+'),
('Reyes, Mariam P.', '2016-08-25', 25183140, 'Enfermeria', 'Enfermero', '(689) 202-1588', '4224', '2017-02-23', 'Mujer', 'AB+'),
('Sanford, Kaden F.', '2016-04-08', 25291812, 'Seguridad', 'Policia', '(679) 943-6459', '5404', '2016-09-19', 'Hombre', '0+'),
('Hensley, Indigo U.', '2017-05-17', 25379633, 'Enfermeria', 'Clinico', '(762) 522-7925', '5618', '2016-08-12', 'Mujer', 'B-'),
('Henson, Gary V.', '2017-06-12', 25500876, 'Seguridad', 'Enfermero', '(790) 267-5990', '4335', '2017-02-11', 'Hombre', 'B+'),
('Wagner, Aretha P.', '2017-01-06', 26104087, 'Seguridad', 'Oftalmologo', '(366) 811-0436', '7962', '2016-05-10', 'Hombre', 'A+'),
('Banks, Aurelia W.', '2016-11-10', 26508998, 'Veterinaria', 'Clinico', '(588) 533-9567', '9683', '2016-06-17', 'Hombre', 'AB-'),
('Stevenson, Quentin R.', '2017-03-18', 26866268, 'Enfermeria', 'Clinico', '(348) 270-3911', '2115', '2016-11-13', 'Mujer', 'AB+'),
('Downs, Kiayada U.', '2017-08-19', 26956378, 'Psicologia', 'Policia', '(587) 403-9424', '3878', '2017-07-27', 'Mujer', 'No soy donante'),
('Blankenship, Alec Q.', '2016-12-03', 27018872, 'Enfermeria', 'Policia', '(640) 718-5258', '3286', '2016-10-06', 'Mujer', 'AB+'),
('Maynard, Abbot Q.', '2016-01-30', 27184206, 'Enfermeria', 'Policia', '(934) 716-9799', '1126', '2015-12-23', 'Mujer', 'AB+'),
('Cochran, Solomon G.', '2017-10-21', 27361020, 'Veterinaria', 'Enfermero', '(463) 121-7729', '6759', '2016-03-06', 'Hombre', 'B-'),
('Richard, Kibo W.', '2017-03-31', 27722777, 'Seguridad', 'Oftalmologo', '(549) 154-0233', '9217', '2016-08-30', 'Mujer', 'B-'),
('Aguilar, Nicole K.', '2017-10-07', 28142626, 'Seguridad', 'Enfermero', '(591) 990-0541', '4882', '2017-04-07', 'Mujer', 'AB-'),
('Hines, Lisandra O.', '2016-11-19', 30509633, 'Psicologia', 'Clinico', '(293) 916-0174', '9923', '2016-01-24', 'Mujer', 'AB-'),
('Bender, Wing W.', '2017-04-18', 31769406, 'Veterinaria', 'Enfermero', '(450) 493-5663', '5215', '2016-06-20', 'Mujer', 'A+'),
('Harper, Hollee W.', '2017-06-12', 31834394, 'Medicina', 'Policia', '(830) 387-6666', '6574', '2017-03-12', 'Mujer', 'AB+'),
('Holder, Doris P.', '2017-07-20', 32366385, 'Medicina', 'Enfermero', '(835) 342-9036', '9594', '2016-09-01', 'Hombre', 'A+'),
('Church, Marshall A.', '2016-12-25', 33378536, 'Medicina', 'Oftalmologo', '(620) 415-9190', '9648', '2016-06-27', 'Mujer', 'B-'),
('Dodson, Germane B.', '2017-01-25', 33590581, 'Enfermeria', 'Clinico', '(522) 506-9204', '1563', '2016-11-29', 'Hombre', 'A+'),
('Diaz, Sylvia M.', '2016-02-08', 33918767, 'Enfermeria', 'Policia', '(744) 621-4022', '6634', '2016-10-21', 'Mujer', 'B+'),
('Murray, Melodie U.', '2017-02-28', 33986533, 'Psicologia', 'Clinico', '(866) 703-8830', '3768', '2017-11-05', 'Mujer', 'A-'),
('Alford, Robert K.', '2016-02-09', 35947935, 'Medicina', 'Enfermero', '(278) 215-2853', '9725', '2016-02-09', 'Hombre', 'A-'),
('Wyatt, Rina K.', '2017-03-12', 36574805, 'Psicologia', 'Enfermero', '(868) 788-4749', '5036', '2017-03-01', 'Mujer', 'AB+'),
('Erickson, Jayme P.', '2016-02-10', 36697481, 'Enfermeria', 'Oftalmologo', '(803) 425-1719', '7956', '2017-05-14', 'Hombre', 'AB+'),
('Nixon, Leah L.', '2017-11-02', 36697865, 'Psicologia', 'Oftalmologo', '(454) 439-6672', '6854', '2016-01-26', 'Hombre', 'A+'),
('Goff, Hayden Q.', '2016-02-09', 37493328, 'Seguridad', 'Enfermero', '(320) 315-1095', '9488', '2016-12-29', 'Hombre', 'B-'),
('Guzman, Lareina N.', '2016-06-16', 38531577, 'Veterinaria', 'Oftalmologo', '(500) 956-1490', '5377', '2017-06-05', 'Hombre', 'B+'),
('Franklin, Samson E.', '2017-03-14', 38816828, 'Veterinaria', 'Clinico', '(417) 395-1735', '6164', '2016-09-03', 'Hombre', 'No soy donante'),
('Arnold, Hilary R.', '2016-03-30', 39078932, 'Psicologia', 'Policia', '(822) 531-6501', '6322', '2017-03-19', 'Hombre', 'AB+'),
('Cobb, Igor S.', '2017-05-27', 39269412, 'Seguridad', 'Clinico', '(966) 852-8910', '2526', '2016-11-23', 'Hombre', 'No soy donante'),
('Nicholson, Cherokee Q.', '2016-02-14', 39794071, 'Psicologia', 'Policia', '(801) 659-7238', '3857', '2015-12-25', 'Mujer', '0+'),
('Short, Valentine Q.', '2016-04-23', 39866804, 'Enfermeria', 'Enfermero', '(477) 934-2906', '6568', '2017-08-25', 'Hombre', 'AB-'),
('Giles, Pamela H.', '2016-08-26', 40036287, 'Medicina', 'Clinico', '(264) 549-5516', '2735', '2017-08-14', 'Hombre', '0+'),
('Macdonald, Hilel M.', '2016-02-02', 40384746, 'Veterinaria', 'Policia', '(523) 123-0078', '9847', '2017-10-11', 'Mujer', 'A+'),
('Sheppard, Aretha O.', '2016-07-16', 40509114, 'Veterinaria', 'Enfermero', '(252) 558-1298', '2023', '2015-12-09', 'Mujer', 'A+'),
('Poole, Meredith X.', '2016-07-22', 41084054, 'Seguridad', 'Enfermero', '(452) 481-3763', '2667', '2016-11-01', 'Hombre', 'B-'),
('Dale, Aaron F.', '2016-04-14', 41222929, 'Seguridad', 'Oftalmologo', '(737) 115-1965', '1289', '2017-08-24', 'Mujer', 'AB-'),
('Reilly, Lacey T.', '2017-08-29', 42119616, 'Enfermeria', 'Clinico', '(604) 664-8404', '3354', '2017-06-20', 'Mujer', 'AB+'),
('Mason, Judith K.', '2015-12-12', 42258361, 'Medicina', 'Oftalmologo', '(569) 160-8349', '8142', '2016-08-20', 'Hombre', '0+'),
('Medina, Tanisha G.', '2016-07-18', 42780935, 'Seguridad', 'Clinico', '(473) 709-8230', '7632', '2016-10-29', 'Hombre', 'A+'),
('Wynn, Frances T.', '2017-06-10', 43149764, 'Medicina', 'Oftalmologo', '(735) 489-9888', '2781', '2017-06-15', 'Mujer', 'AB-'),
('Wyatt, Tara X.', '2017-09-01', 43287112, 'Seguridad', 'Enfermero', '(218) 622-7805', '5164', '2016-09-24', 'Hombre', 'A-'),
('Floyd, Hilda N.', '2017-04-18', 43824392, 'Medicina', 'Enfermero', '(172) 264-6005', '3879', '2017-03-17', 'Mujer', 'AB-'),
('Moran, Dante C.', '2017-08-15', 43966186, 'Seguridad', 'Enfermero', '(940) 929-2814', '9446', '2016-04-24', 'Mujer', 'A+'),
('Frank, Dale C.', '2016-05-22', 45868469, 'Seguridad', 'Oftalmologo', '(697) 356-4209', '8018', '2015-12-04', 'Mujer', '0+'),
('Cooley, Elijah E.', '2016-09-13', 46555101, 'Medicina', 'Clinico', '(822) 692-5091', '3638', '2015-12-17', 'Mujer', 'AB+'),
('Sherman, Deborah R.', '2017-09-04', 47238461, 'Enfermeria', 'Enfermero', '(179) 587-1533', '7120', '2017-08-25', 'Hombre', 'B+'),
('English, Velma A.', '2016-04-18', 47282714, 'Seguridad', 'Enfermero', '(356) 144-9078', '2773', '2016-01-09', 'Mujer', 'A-'),
('Langley, Boris C.', '2016-04-22', 47588846, 'Psicologia', 'Policia', '(588) 635-5343', '2534', '2017-02-09', 'Mujer', 'A-'),
('Bender, Shelby Q.', '2016-04-13', 47744275, 'Psicologia', 'Clinico', '(522) 644-9569', '6217', '2017-10-24', 'Hombre', 'A-'),
('Hawkins, Raja O.', '2016-04-22', 48792119, 'Psicologia', 'Enfermero', '(517) 530-4500', '2643', '2016-12-03', 'Mujer', 'A-'),
('Wade, Camilla L.', '2015-11-25', 49028895, 'Psicologia', 'Clinico', '(370) 557-5235', '2887', '2017-09-13', 'Hombre', '0+'),
('Perry, Kasimir T.', '2017-10-11', 49211572, 'Psicologia', 'Enfermero', '(911) 559-2022', '8177', '2016-03-12', 'Hombre', 'No soy donante'),
('Whitehead, Gillian N.', '2017-06-06', 50202534, 'Seguridad', 'Oftalmologo', '(418) 676-1178', '9053', '2016-09-11', 'Hombre', '0-'),
('Sharpe, Lev H.', '2017-07-24', 50262573, 'Psicologia', 'Enfermero', '(172) 186-4342', '3178', '2015-11-18', 'Hombre', '0+');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `db_datosalerta`
--
ALTER TABLE `db_datosalerta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `donacion`
--
ALTER TABLE `donacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `voluntario`
--
ALTER TABLE `voluntario`
  ADD PRIMARY KEY (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `db_datosalerta`
--
ALTER TABLE `db_datosalerta`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `donacion`
--
ALTER TABLE `donacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

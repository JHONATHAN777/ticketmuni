-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2021 a las 23:14:29
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ticket`
--
CREATE DATABASE IF NOT EXISTS `ticket` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ticket`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE `administrador` (
  `id_admin` int(11) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `nombre_admin` varchar(60) NOT NULL,
  `clave` text NOT NULL,
  `email_admin` varchar(100) NOT NULL,
  `cargo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombre_completo`, `nombre_admin`, `clave`, `email_admin`, `cargo`) VALUES
(1, 'Super Administrador', 'Admin', 'e961199797e17888da03eb39db68f224', 'administrador@gmail.com', 'SUPER ADMINISTRADOR'),
(2, 'ARAGON ESCOBAR, JAIME EDUARDO', 'jaragon', '81dc9bdb52d04dc20036dbd8313ed055', 'j.aragon@munilapunta.gob.pe', 'ADMINISTRADOR DE REDES'),
(4, 'SALDAÑA LEYVA, AUGUSTO ALEXANDER', 'asaldana', 'e10adc3949ba59abbe56e057f20f883e', 'asaldana@munilapunta.gob.pe', 'tecnico'),
(5, 'CUYA UGARTE, GERARDO TOMAS', 'TCUYA', '81dc9bdb52d04dc20036dbd8313ed055', 't.cuya@munilapunta.gob.pe', 'PROGRAMADOR'),
(6, ' SAIRE GARCIA, WILFREDO', 'WSAIRE', '81dc9bdb52d04dc20036dbd8313ed055', 'W.SAIRE@MUNILAPUNTA.GOB.PE', 'tecnico'),
(7, 'RIVAS RUIZ, MOISES LUIS', 'MRIVAS', '81dc9bdb52d04dc20036dbd8313ed055', 'M.RIVAS@MUNILAPUNTA.GOB.PE', 'tecnico'),
(8, 'VIACAVA BREIDING, GERARDO PAUL ', 'GVIACAVA', '81dc9bdb52d04dc20036dbd8313ed055', 'G.VIACADA@MUNILAPUNTA.GOB.PE', 'ADMINISTRATIVO'),
(9, 'VIGO LIMAS, MIKE JHON', 'MVIGO', '81dc9bdb52d04dc20036dbd8313ed055', 'M.VIGO@MUNILAPUNTA.GOB.PE', 'tecnico'),
(10, 'HUAMAN RUBINA, JAVIER EDUARDO ', 'JHUAMAN', '81dc9bdb52d04dc20036dbd8313ed055', 'J.HUAMAN@MUNILAPUNTA.GOB.PE', 'PROGRAMADOR JR'),
(11, 'PERCY CONDORI', 'PCONDORI', '81dc9bdb52d04dc20036dbd8313ed055', 'P.CONDORI@MUNILAPUNTA.GOB.PE', 'GERENTE DE UTI'),
(12, 'MARY ISABEL  MENDIETA', 'MMENDIETA', '81dc9bdb52d04dc20036dbd8313ed055', 'M.MENDIETA@MUNILAPUNTA.GOB.PE', 'ADMINISTRATIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` text COLLATE utf8_spanish2_ci NOT NULL,
  `area` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_completo`, `nombre_usuario`, `email_cliente`, `clave`, `area`) VALUES
(3, 'Maria isabel medieta', 'mmendieta', 'm.mendieta@munilapunta.gob.pe', 'e10adc3949ba59abbe56e057f20f883e', 'UNIDAD DE TECNOLOGIA DE LA  INFORMACION'),
(4, 'prueba', 'prueba', 'prueba@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(5, 'NICHO GUEVARA FIORELA  AIDA', 'AUDITORIA', 'a.uditoria@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'ORGANO DE CONTROL INSTITUCIONAL'),
(6, 'PIGNANO DE GONZALEZ TERESA  ADELINA', 'TPIGNANO', 't.pignano@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE SEGURIDAD CIUDADANA Y POLICIA MUN'),
(7, 'NARREA SAN MIGUEL ALBINO DANIEL', 'DNARREA', 'd.narrea@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(8, 'BAUTISTA ARTEAGA ELIZABET RUTH', 'EBAUTISTA', 'e.bautista@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(9, 'ARANA SILVA OSCAR GUILLERMO', 'OARANA', 'o.arana@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE SECRETARIA GENERAL, ARCHIVO Y COMU'),
(10, 'ROJAS TRISANO EDDA CECILIA LUISA', 'EROJAS', 'e.rojas@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE SALUD '),
(11, 'PENAFIEL NAVARRO MARISOL ROCIO', 'MPENAFIEL', 'm.penafiel@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ' DEPORTE'),
(12, 'HAMM CARRION GUSTAVO', 'GHAMM', 'g.hamm@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'LIMPIEZA PUBLICA'),
(13, 'CABREJOS HUILLCAMISA EVELYN STEPHANIE', 'SCABREJOS', 's.cabrejos@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'ALCALDIA'),
(14, 'BEJARANO BRICENO JUAN JOSE', 'JBEJARANO', 'j.bejarano@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE SEGURIDAD CIUDADANA Y POLICIA MUN'),
(15, 'CHIMOY MOLLEDA ERIKA  MARGARITA', 'ECHIMOY', 'e.chimoy@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(16, 'ALVA GUZMAN JORGE ANTONIO', 'JALVA', 'j.alva@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE ASESORIA JURIDICA'),
(17, 'SAAVEDRA LOPEZ BETZABE DIOCELINA', 'BSAAVEDRA', 'b.saavedra@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE SECRETARIA GENERAL, ARCHIVO Y COMU'),
(18, 'GONZALES DELGADILLO EDDIE ELIAS', 'EGONZALES', 'e.gonzales@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'PROCURADURIA'),
(19, 'DIAZ PACHECO ALBERTO TOMAS', 'ADIAZ', 'a.diaz@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'TRAMITE DOCUMENTARIO'),
(20, 'RIMAYHUAMAN ORUE LOURDES MELISSA', 'LRIMAYHUAMAN', 'l.rimayhuaman@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'ALCALDIA'),
(21, 'PODESTA HERNANDEZ JORGE LUIS', 'JMANTILLA', 'j.mantilla@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE MEDIO AMBIENTE'),
(22, 'SUFLING COLLAZOS SANTIAGO GERARDO', 'SSUFLING', 's.sufling@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(23, 'MENA NIEVES JUAN JOSE VALENTIN', 'JMENA', 'j.mena@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(24, 'JERI MEDINA JAIRO YORDANO', 'JJERI', 'j.jeri@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE LIMPIEZA PUBLICA, AREAS VERDES SE'),
(25, 'GARGUREVICH LEGUIA MARIA ANGELICA ASUNCI', 'MGARGUREVICH', 'm.gargurevich@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE EDUCACION Y CULTURA'),
(26, 'RAMIREZ NEYRA ELVIRA LETICIA', 'ERAMIREZ', 'e.ramirez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE CONTABILIDAD'),
(27, 'ONTANEDA CORDOVA DANIEL ALBERTO', 'DONTANEDA', 'd.ontaneda@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'LIMPIEZA PUBLICA'),
(28, 'MESIAS ACOSTA MARCELA PATRICIA', 'MMESIAS', 'm.mesias@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(29, 'SANCHEZ PIZARRO CARMEN IRENE', 'CSANCHEZ', 'c.sanchez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE EDUCACION Y CULTURA'),
(30, 'GINOCCHIO GIRALDO ANTONIO ROBERTO', 'AGINOCCHIO', 'a.ginocchio@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(31, 'BENVENUTO ZAVALETA JOSE  ANTONIO', 'JBENVENUTO', 'j.benvenuto@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA MUNICIPAL'),
(32, 'DVILLANUEVA                             ', 'DVILLANUEVA', 'd.villanueva@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TESORERIA'),
(34, 'DAGA ORUE WALTER RAFAEL', 'WDAGA', 'w.daga@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(35, 'VEINTIMILLA URRUNAGA EMMA BELEN', 'EVEINTIMILLA', 'e.veintimilla@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO'),
(36, 'PAREDES RIVAS VANESA LUCIA', 'ASALDANA', 'a.saldana@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(37, 'CEVALLOS MARCELO DE VILLANUEVA NORKA MEL', 'NCEVALLOS', 'n.cevallos@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA MUNICIPAL'),
(38, 'SANTIVANEZ ARMAS GUSTAVO RAUL', 'GSANTIVANEZ', 'g.santivanez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'ORGANO DE CONTROL INSTITUCIONAL'),
(39, 'UGAZ ROQUE NELIDA', 'NUGAZ', 'n.ugaz@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(40, 'CERQUERA TASSARA JOHN BRYAN', 'JCERQUERA', 'j.cerquera@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO URBANO'),
(41, 'RIVAS NAVARRO JORGE RAUL', 'JRIVAS', 'j.rivas@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'PROGRAMA TRATAMIENTO DE DROGAS'),
(42, 'HERRERA CASTILLO SILVIA ZAID', 'SHERRERA', 's.herrera@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO HUMANO'),
(43, 'TORANZO CARDENAS ANGEL RAFAEL', 'ATORANZO', 'a.toranzo@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(44, 'BECERRA MORANTE ANDRES', 'ABECERRA', 'a.becerra@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE LIMPIEZA PUBLICA, AREAS VERDES SE'),
(45, 'DELGADO AMADO GISELLA ANDREA', 'GDELGADO', 'g.delgado@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TESORERIA'),
(46, 'YANEZ ESPICHAN EDUARDO', 'EYANEZ', 'e.yanez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO HUMANO'),
(47, 'PONCE BARRAZA ABRAHAM TADEO', 'APONCE', 'a.ponce@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE CONTABILIDAD'),
(48, 'CACERES SIERRALTA SHELLMY OLENKA', 'SCACERES', 's.caceres@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(49, 'MALPARTIDA FLORES YOLY ANN', 'YMALPARTIDA', 'y.malpartida@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE MEDIO AMBIENTE'),
(50, 'GONZALES OCHOA SANDRO', 'SGONZALES', 's.gonzales@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(51, 'HORNA BARRIGA RAFAEL  ANTONIO', 'RHORNA', 'r.horna@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO URBANO'),
(52, 'MALPARTIDA OCHOA SANDRA PATRICIA', 'SMALPARTIDA', 's.malpartida@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO'),
(53, 'ROMERO ZARATE PATRICIA  RAQUEL', 'PROMERO', 'p.romero@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE EDUCACION Y CULTURA'),
(54, 'FRANKO COHAILA PATRICIA VERONICA', 'PFRANKO', 'p.franko@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO'),
(55, 'BALDOCEDA SANCHEZ VERONICA  CONSUELO', 'VBALDOCEDA', 'v.baldoceda@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE CONTABILIDAD'),
(56, 'TRUJILLO TAPIA WALTER HAROLD', 'WTRUJILLO', 'w.trujillo@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(57, 'CARRANZA DE LA CRUZ CLAUDIA SOFIA', 'CCARRANZA', 'c.carranza@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(58, 'MIRANDA ORLANDINI VANNESSA MARIA', 'MORTEGAS', 'm.ortegas@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO URBANO'),
(59, 'BAZAN VASQUEZ CESAR  MARTIN', 'CBAZAN', 'c.bazan@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(60, 'MARROQUIN SALDARRIAGA ESTEFANY', 'EMARROQUIN', 'e.marroquin@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE CONTABILIDAD'),
(61, 'TARAZONA REYES JAIME ORLANDO', 'JTARAZONA', 'j.tarazona@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO'),
(62, 'CONDORI CONDORI PERCY GERMAN', 'PCONDORI', 'p.condori@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(63, 'HENRICI ENCINAS GREIS AMINTA', 'GHENRICI', 'g.henrici@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO HUMANO'),
(64, 'ZAZZALI DE LAS CASAS CATERINA', 'CZAZZALI', 'c.zazzali@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'PROGRAMA DEL VASO DE LECHE'),
(65, 'ARAGON ESCOBAR JAIME EDUARDO', 'JARAGON', 'j.aragon@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ' UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(66, 'CHURAMPI LADERA MARIEL KATERYN', 'MCHURAMPI', 'm.churampi@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE SECRETARIA GENERAL, ARCHIVO Y COMU'),
(67, 'SALAZAR VILLARAN PIO FERNANDO', 'PSALAZAR', 'p.salazar@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ' ALCALDIA'),
(68, 'NOZIGLIA MONTEVERDE ORNELLA', 'ONOZIGLIA', 'o.noziglia@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE SEG. CIUDADANA Y DEFENSA CIVIL'),
(69, 'FERREYRA VALCARCEL LUIS  EDUARDO', 'LFERREYRA', 'l.ferreyra@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIVISION DE LIMPIEZA PUBLICA, AREAS VERDES SE'),
(70, 'CRISANTO CHUNGA CESAR', 'CCRISANTO', 'c.crisanto@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA MUNICIPAL'),
(71, 'GUERRERO PENALOZA MARIEL FIORELLA', 'MGUERRERO', 'm.guerrero@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'LIMPIEZA PUBLICA'),
(72, 'BARRERA VENTOCILLA NILDA ZONIA', 'ZBARRERA', 'z.barrera@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE CONTABILIDAD'),
(73, 'VALENZUELA LINO OSCAR CLAUDIO', 'OVALENZUELA', 'o.valenzuela@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(74, 'TORRES TORRES ARQUIMEDES', 'ATORRES', 'a.torres@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(75, 'MOGOLLON GAMBOA PAOLA LETICIA', 'PMOGOLLON', 'p.mogollon@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA MUNICIPAL'),
(76, 'OJEDA GELDRES JORGE LIZANDRO', 'JOJEDA', 'j.ojeda@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO HUMANO'),
(77, 'PANIAGUA HARTLEY ELVA REBECA', 'EPANIAGUA', 'e.paniagua@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE ASESORIA JURIDICA'),
(78, 'MORALES RODRIGUEZ CARLOS AUGUSTO', 'CMORALES', 'c.morales@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE RENTAS'),
(79, 'MIRANDA ORLANDINI VANNESSA MARIA', 'VMIRANDA', 'v.miranda@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE DESARROLLO URBANO'),
(80, 'CEGARRA SARMIENTO MARIA DEL MILAGRO', 'MCEGARRA', 'm.cegarra@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'REGISTRO CIVIL'),
(81, 'RODRIGUEZ CARRANZA MARISA VERONICA', 'VRODRIGUEZ', 'v.rodriguez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA DE RENTAS'),
(82, 'SALVIZ ESPINOZA RODOLFO', 'RSALVIZ', 'r.salviz@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE CONTABILIDAD'),
(83, 'RODRIGUEZ LARA RICARDO', 'RRODRIGUEZ', 'r.rodriguez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ' TRAMITE DOCUMENTARIO'),
(84, 'CARRENO BAJONERO JACQUELINE', 'JCARRENO', 'j.carreno@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(85, 'HUANCA BRAVO VILMA', 'VHUANCA', 'v.huanca@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DPTO DE ATENCIÓN AL VECINO'),
(86, 'FONSECA GARCIA MILAGROS JENNY', 'JFONSECA', 'j.fonseca@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TESORERIA'),
(87, 'DARCOURT HERRERA RICARDO JUAN', 'RDARCOURT', 'r.darcourt@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DPTO DE ATENCIÓN AL VECINO'),
(88, 'DANINO BRINGAS ANGGELO FABRICIO', 'ADANINO', 'a.danino@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TESORERIA'),
(89, 'BOERO BOZZO MIGUEL ALFONSO', 'MBOERO', 'm.boero@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DEPORTE'),
(90, 'HERRADA GUERRERO MARIA LUISA', 'MHERRADA', 'm.herrada@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(91, 'PRADO MALVACEDA RUBEN RODOLFO', 'RPRADO', 'r.prado@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TESORERIA'),
(92, 'ANGELDONIS ARMESTAR MARCO FRANCESCO', 'MANGELDONIS', 'm.angeldonis@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TESORERIA'),
(93, 'DAVILA MUNIZ FELIX', 'FDAVILA', 'f.davila@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO'),
(94, 'SCHENONE CHAVEZ ORLANDO GASTON', 'OSCHENONE', 'o.schenone@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ' UNIDAD DE CONTABILIDAD'),
(95, 'NEGRETE SALAZAR MIGUEL ANGEL', 'MNEGRETE', 'm.negrete@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ' UNIDAD DE TESORERIA'),
(96, 'ARANA DIAZ ESTHER MERCEDES GIOCONDA', 'EARANA', 'e.arana@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'PARTICIPACION VECINAL'),
(97, 'PEQUENO PENA HERNAN', 'HPEQUENO', 'h.pequeno@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(98, 'PEREZ NOYA PILAR KARINA', 'PPEREZ', 'p.perez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO'),
(99, 'RIOS QUISEL BERTHA', 'BRIOS', 'b.rios@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA MUNICIPAL'),
(100, 'FIGUEROA MORALES LUIS FELIPE', 'LFIGUEROA', 'l.figueroa@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(101, 'ARNADO MANCILLA NORLLY MARISELL', 'NARNADO', 'n.arnado@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE CONTABILIDAD'),
(102, 'PASTOR ORTIZ JUDITH CARMEN', 'JPASTOR', 'j.pastor@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(103, 'BUENDIA SCHIATTINO MARISOL  MARGARITA', 'MBUENDIA', 'm.buendia@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ' DPTO DE ATENCIÓN AL VECINO'),
(104, 'CARBONEL TEJADA JESUS VICTOR OSWALDO', 'JCARBONEL', 'j.carbonel@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'EJECUCION COACTIVA'),
(105, 'BULNES ZAMORA OSWALDO MARCIAL', 'OBULNES', 'o.bulnes@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE RECURSOS HUMANOS'),
(106, 'LOPEZ SILUPU EDINSON', 'ELOPEZ', 'e.lopez@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'GERENCIA MUNICIPAL'),
(107, 'BLACIDO ESPINOZA NATHALIE BREIDY', 'NBLACIDO', 'n.blacido@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(108, 'VIACAVA BREIDING GERARDO PAUL', 'GVIACAVA', 'g.viacava@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(109, 'MORAN RIVASPLATA LUISA MILAGROS', 'LMORAN', 'l.moran@munilapunta.gob.pe', '81dc9bdb52d04dc20036dbd8313ed055', 'DIV DE GESTIÓN DE RIESGO DE DESASTRES Y DEFEN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `fecha` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `serie` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_ticket` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `email_cliente` varchar(60) COLLATE utf8_spanish2_ci NOT NULL,
  `departamento` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `asunto` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `mensaje` text COLLATE utf8_spanish2_ci NOT NULL,
  `solucion` text COLLATE utf8_spanish2_ci NOT NULL,
  `tecnico` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_solucion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `codequipo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `area` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`id`, `fecha`, `serie`, `estado_ticket`, `nombre_usuario`, `email_cliente`, `departamento`, `asunto`, `mensaje`, `solucion`, `tecnico`, `fecha_solucion`, `codequipo`, `area`) VALUES
(35, '23/03/2021', 'TK53N35', 'Resuelto', 'CONDORI CONDORI PERC', 'p.condori@munilapunta.gob.pe', 'Software', 'AGREGAR  LISTBOX EN EL ASUNTO SEGUN FICHA DE SOPORTE TECNICO', 'EN EL SISTEMA DE TICKETS DE SOPORTE TECNICO SE DEBE AGREGAR EL LISTBOX  SEGUN FICHA DE SOPORTE TECNICO - COORDINAR CON JAIME ARAGON Y GERARDO VIACAVA ...', 'se procedi con la actualizacin del software de soporte tcnico segn lo requerido ', 'HUAMAN RUBINA, JAVIER EDUARDO', '24/03/2021 16:24', '', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(36, '23/03/2021', 'TK27N36', 'Resuelto', 'MOISES LUIS RIVAS RU', 'M.RIVAS@MUNILAPUNTA.GOB.PE', 'Software', 'ZOOM', 'APOYO PARA EL ZOOM', 'SE APOYO AL USUARIO CON EL PROGRAMA ZOOM', 'RIVAS RUIZ, MOISES LUIS', '25/03/2021 08:29', '', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(37, '23/03/2021', 'TK37N37', 'Resuelto', 'MOISES LUIS RIVAS RU', 'M.RIVAS@MUNILAPUNTA.GOB.PE', 'software', 'NO PUEDE INGRESAR A SU PERFIL DEL USUARIO', 'SE RESTABLECIO LA CONTRASE?A DEL USUARIO DE OPP', 'SE PUSO CONTRASEA AL USUARIO', 'RIVAS RUIZ, MOISES LUIS', '24/03/2021 16:25', '', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(38, '23/03/2021', 'TK68N38', 'Resuelto', 'FRANKO COHAILA PATRI', 'p.franko@munilapunta.gob.pe', 'Software', 'NO RECONOCE USB', 'PUEDE VENIR UN TECNICO A SOLUCIONAR EL PROBLEMA, DE PREFERENCIA EL TECNICO MOISES.', 'SE LE AYUDO AL USUARIO CON SU USB', 'RIVAS RUIZ, MOISES LUIS', '24/03/2021 16:25', '', 'OFICINA DE PLANEAMIENTO Y PRESUPUESTO'),
(41, '26/03/2021   11:02:37  am', 'TK41N5', 'Resuelto', 'MIRANDA ORLANDINI VA', 'm.ortegas@munilapunta.gob.pe', 'software', 'NO TIENE INTERNET', 'EL USUARIO  ANGIE INOFUENTE RISCO NO TIENE INTERNET, POR FAVOR QUE A LA BREVEDAD POSIBLE VENGA UN TECNICO A FIN DE RESOLVER EL PROBLEMA.\r\n', 'se cambio el conector rj45 del cable de red y funciona correctamente', 'ARAGON ESCOBAR, JAIME EDUARDO', '26/03/2021 14:25', '', 'GERENCIA DE DESARROLLO URBANO'),
(42, '26/03/2021   11:03:54  am', 'TK23N6', 'Resuelto', 'MIRANDA ORLANDINI VA', 'm.ortegas@munilapunta.gob.pe', 'Software', 'NO HAY CONEXION CON LA IMPRESORA', 'ESTIMADOS, AGRADECER? QUE PUEDAN ACERCARSE A FIN DE REVISAR LA COMPUTADORA DEL GERENTE DAVID MENDOZA, EN VISTA DE QUE NO TIENE CONEXION A LA IMPRESORA.', 'no se conecta a la impresora kyocera pero cuando mandas imprimir desde el usuario sale pantalla azul y se cuelga la pc en la pc que esta conectada la impresora el disco duro esta fallando.', 'ARAGON ESCOBAR, JAIME EDUARDO', '30/03/2021 10:35', '<br />\r\n<b>Notice</b>:  Undefined index: codequipo in <b>C:xampphtdocsTicketSystemTICKETadminticketedit-view.php</b> on line <b>269</b><br />\r\n', 'GERENCIA DE DESARROLLO URBANO'),
(43, '26/03/2021   12:16:34  pm', 'TK18N7', 'Resuelto', 'MARY ISABEL MENDIETA', 'M.MENDIETA@MUNILAPUNTA.GOB.PE', 'software', 'APOYO TECNICO OPTICAL IP', 'APOYO TECNICO.', 'Se apoyo al T?cnico de Optical para coordinaciones de Fibra Optica entre los locales de Palacio Municipal / Palacio Municipal', 'ARAGON ESCOBAR, JAIME EDUARDO', '30/03/2021 10:19', 'S/N ', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(44, '26/03/2021   01:02:11  pm', 'TK81N8', 'Resuelto', 'CACERES SIERRALTA SH', 's.caceres@munilapunta.gob.pe', 'Software', 'INTRASIG', 'ACTUALIZAR EL ESTADO DE LA CONFORMIDAD NUMERO 639  FECHA15/03/2021', '.Actualizaci?n de estado de requerimiento ', 'VIACAVA BREIDING, GERARDO PAUL', '29/03/2021 11:16', '.', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(45, '26/03/2021   01:13:49  pm', 'TK91N9', 'Resuelto', 'HUAMAN RUBINA, JAVIE', 'J.HUAMAN@MUNILAPUNTA.GOB.PE', 'Hardware', 'correo institucional no  funciona', 'no puedo acceder al correo institucional ', 'se procedi con la creacin del correo institucional ', 'RIVAS RUIZ, MOISES LUIS', '30/03/2021 12:19', '.', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(46, '26/03/2021   01:19:13  pm', 'TK76N10', 'Resuelto', 'CONDORI CONDORI PERC', 'p.condori@munilapunta.gob.pe', 'software', 'ASEGURAR LA OPERATIVIDAD DE LOS SERVIDORES Y BRINDAR ATENCION A CONTAB', 'EL SABADO 27 DE MARZO 2021 HORAS 09:00 am. HASTA  15:00 pm ENEL ha programado corte de energ?a el?ctrica que compromete LA ZONA donde se encuentra el local de MEDINA 151,', '.Se procedi al Apoyo Tecnico en onsite en el local de medina para restablecer toda la comunicacin de los servidores el cual podemos informar que se realizo la verificacion a las 9:30am primera inspeccion el  corte de luz y 3:00pm segunda inspeccion se procedio a restablecer todos los servicios quedando operativo todos los servicios y el suscrito se retiro a las 9:00pm.', 'ARAGON ESCOBAR, JAIME EDUARDO', '30/03/2021 10:31', 'S/N', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(47, '26/03/2021   02:17:43  pm', 'TK86N11', 'Resuelto', 'CONDORI CONDORI PERC', 'p.condori@munilapunta.gob.pe', 'software', 'HABILITAR EL CABLEADO DE DATOS PARA EL SITRAMUN - MDLP', 'HABILITAR EL CABLEADO DE DATOS PARA EL ACCESO A INTERNET AL SITRAMUN', 'se cableo de gabinete de rentas hacia sitraomun cable nuevo para punto red para dicha oficina', 'SAIRE GARCIA, WILFREDO', '29/03/2021 13:34', '.', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(48, '29/03/2021   10:39:29  am', 'TK49N12', 'Resuelto', 'CACERES SIERRALTA SH', 's.caceres@munilapunta.gob.pe', 'Software', 'INTRASIG', 'ACTUALIZACI?N DEL REQUERIMIENTO DE SERVICIO N? 929 ', 'Actualizar estado de requerimiento a vigente', 'VIACAVA BREIDING, GERARDO PAUL', '30/03/2021 10:35', '.', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(51, '29/03/2021   10:42:54  am', 'TK81N13', 'Resuelto', 'CACERES SIERRALTA SH', 's.caceres@munilapunta.gob.pe', 'Software', 'INTRASIG', 'ACTUALIZACI?N DEL REQUERIMIENTO DEL SERVICIO N? 451', '.Actualizar el estado de requerimiento a vigente', 'VIACAVA BREIDING, GERARDO PAUL', '30/03/2021 10:37', '.', 'UNIDAD DE LOGISTICA Y BIENES PATRIMONIALES'),
(52, '29/03/2021   11:49:40  am', 'TK01N14', 'Resuelto', 'PANIAGUA HARTLEY ELV', 'e.paniagua@munilapunta.gob.pe', 'Software', 'INTRASIG', 'NO PUEDO INGRESAR AL INTRASIG', 'instalacion de cliente oracle y configuracion del intrasig', 'RIVAS RUIZ, MOISES LUIS', '29/03/2021 13:35', '.', 'OFICINA DE ASESORIA JURIDICA'),
(76, '29/03/2021   12:17:43  pm', 'TK77N16', 'Resuelto', 'PANIAGUA HARTLEY ELV', 'e.paniagua@munilapunta.gob.pe', 'hardware', 'sdd', 'dsad', 'cambio de contrasea del usuario', 'RIVAS RUIZ, MOISES LUIS', '29/03/2021 13:36', '.', 'OFICINA DE ASESORIA JURIDICA'),
(77, '29/03/2021   12:27:52  pm', 'TK84N17', 'Resuelto', 'BEJARANO BRICENO JUA', 'j.bejarano@munilapunta.gob.pe', 'Hardware', 'PERFIL DEL USUARIO', 'NO SALE LOS ARCHIVOS DE MI PERFIL', 'cambio de perfil del usuario se le enseo a cambiar de usuario de la computadora', 'RIVAS RUIZ, MOISES LUIS', '29/03/2021 13:36', '.', 'DIVISION DE SEGURIDAD CIUDADANA Y POLICIA MUN'),
(78, '29/03/2021   02:39:24  pm', 'TK01N17', 'Resuelto', 'PERCY CONDORI', 'P.CONDORI@MUNILAPUNTA.GOB.PE', 'hardware', 'HABILITAR EL ALTILLO DE UTI LOCAL PALACIO MUNICIPAL', 'HABILITAR EL AMBIENTE DEL ALTILLO DE UTI LOCAL PALACIO MUNICIPAL PARA INSTALAR EQUIPOS', 'se retiro to que estaba en el altillo', 'RIVAS RUIZ, MOISES LUIS', '29/03/2021 15:38', '.', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(79, '30/03/2021   09:43:24  am', 'TK05N18', 'Resuelto', 'HERRERA CASTILLO SIL', 's.herrera@munilapunta.gob.pe', 'hardware', 'NO PRENDE CPU', 'NO PRENDE CPU', 'se hizo mantenimiento correctivo al cpu del usuario', '', '30/03/2021 10:52', '.', 'GERENCIA DE DESARROLLO HUMANO'),
(80, '30/03/2021   10:36:21  am', 'TK43N19', 'Resuelto', 'MIRANDA ORLANDINI VA', 'm.ortegas@munilapunta.gob.pe', 'Software', 'IMPRESORA LASSER JET 1022 HP', 'SE ATRACA EL PAPEL CONSTANTEMENTE EN LA IMPRESORA', 'se debe realizar el informe correspondiente para la reparacion externa o de los contrario la baja correspondiente ', 'ARAGON ESCOBAR, JAIME EDUARDO', '30/03/2021 16:13', 'S/N', 'GERENCIA DE DESARROLLO URBANO'),
(81, '30/03/2021   10:48:26  am', 'TK01N20', 'En proceso', 'ARAGON ESCOBAR, JAIM', 'j.aragon@munilapunta.gob.pe', 'Software', 'Instalacion de Conexion Remota', 'Area Contabilidad , Coordinar con rodolfo salviz', '.', 'SAIRE GARCIA, WILFREDO', '30/03/2021 10:49', '.', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(82, '30/03/2021   12:20:05  pm', 'TK27N21', 'Resuelto', 'HUAMAN RUBINA, JAVIE', 'J.HUAMAN@MUNILAPUNTA.GOB.PE', 'Hardware', 'solicito correo insitucional', 'solicito que se me configure correo institucional ', 'se configuro el correo institucional al usuario', '', '30/03/2021 14:42', '.', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(84, '30/03/2021   12:22:19  pm', 'TK97N23', 'Resuelto', 'CUYA UGARTE, GERARDO', 't.cuya@munilapunta.gob.pe', 'Hardware', 'configuraci?n de usuario y correo institucional ', 'solicito configuraci?n de usuario  y correo institucional ', 'se configuro el correo institucional al usuario', '', '30/03/2021 14:42', '.', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(85, '30/03/2021   12:25:36  pm', 'TK32N23', 'Resuelto', 'MARY ISABEL  MENDIET', 'M.MENDIETA@MUNILAPUNTA.GOB.PE', 'Software', 'SOPORTE DEL SISTEMA SIAF.', 'SOPORTE DEL SISTEMA SIAF. - contabilidad', '.Se Apoyo en la Aplicacion de Parches de seguridad para el Siaf Ticket de Atenci?n: SIAF54192', 'ARAGON ESCOBAR, JAIME EDUARDO', '30/03/2021 14:16', '.S/N', 'UNIDAD DE TECNOLOGIA DE LA INFORMACION'),
(86, '30/03/2021   03:05:15  pm', 'TK66N24', 'Resuelto', 'MESIAS ACOSTA MARCEL', 'm.mesias@munilapunta.gob.pe', 'Software', 'IMPRESORA', 'NO SALE LA TINTA NEGRA DE LA IMPRESORA', 'se le hizo mantenimiento de cabezales a la impresora', '', '30/03/2021 15:14', '.', 'UNIDAD DE RECURSOS HUMANOS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `correo` (`email_admin`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `id_num` (`email_cliente`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serie` (`serie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

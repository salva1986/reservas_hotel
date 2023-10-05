-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2023 a las 09:53:18
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservas-hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `img`, `fecha`) VALUES
(1, 'vistas/img/banner/banner01.jpg', '2019-04-09 16:14:31'),
(2, 'vistas/img/banner/banner02.jpg', '2019-04-09 16:14:31'),
(3, 'vistas/img/banner/banner03.jpg', '2019-04-09 16:14:31'),
(4, 'vistas/img/banner/banner04.jpg', '2019-04-09 16:14:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `color` text NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `incluye` text NOT NULL,
  `continental_alta` float NOT NULL,
  `continental_baja` float NOT NULL,
  `americano_alta` float NOT NULL,
  `americano_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `ruta`, `color`, `tipo`, `img`, `descripcion`, `incluye`, `continental_alta`, `continental_baja`, `americano_alta`, `americano_baja`, `fecha`) VALUES
(1, 'habitacion-tipo-suite', '#847059', 'Suite', 'vistas/img/suite/portada.png', 'Lorem ipsum dolor sit amet', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Jacuzzi\", \"icono\": \"fas fa-water\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 800, 600, 850, 550, '2023-09-28 18:25:01'),
(2, 'habitacion-tipo-especial', '#197DB1', 'Especial', 'vistas/img/especial/portada.png', 'Lorem ipsum dolor sit amet', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 900, 800, 950, 650, '2023-09-28 18:25:45'),
(3, 'habitacion-tipo-standar', '#2F7D84', 'Standar', 'vistas/img/standar/portada.png', 'Lorem ipsum dolor sit amet', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 1200, 900, 1300, 900, '2024-09-18 18:20:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_h` int(11) NOT NULL,
  `tipo_h` int(11) NOT NULL,
  `estilo` text NOT NULL,
  `galeria` text NOT NULL,
  `video` text NOT NULL,
  `recorrido_virtual` text NOT NULL,
  `descripcion_h` text NOT NULL,
  `fecha_h` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_h`, `tipo_h`, `estilo`, `galeria`, `video`, `recorrido_virtual`, `descripcion_h`, `fecha_h`) VALUES
(1, 1, 'Oriental', '[\"vistas/img/suite/oriental01.jpg\", \"vistas/img/suite/oriental02.jpg\", \"vistas/img/suite/oriental03.jpg\",\"vistas/img/suite/oriental04.jpg\"]\r\n', 'WdMCuego6h0', 'vistas/img/suite/oriental-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>	\n\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>\n\n					<br>\n\n					<h3>PLAN CONTINENTAL</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\n					Temporada Baja: Q300.000 QTZ<br>\n					Temporada Alta: Q350.000 QTZ</p>	\n\n					<br>\n\n					<h3>PLAN AMERICANO</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\n					Temporada Baja: Q380.000 QTZ<br>\n					Temporada Alta: Q420.000 QTZ</p>\n					\n					<br>\n\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-10-05 02:54:14'),
(2, 1, 'Moderna', '[\"vistas/img/suite/moderna01.jpg\", \"vistas/img/suite/moderna02.jpg\", \"vistas/img/suite/moderna03.jpg\",\"vistas/img/suite/moderna04.jpg\"]\r\n\r\n', 'JTu790_yyRc', 'vistas/img/suite/moderna-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:38:24'),
(3, 1, 'Africana', '[\"vistas/img/suite/africana01.jpg\", \"vistas/img/suite/africana02.jpg\", \"vistas/img/suite/africana03.jpg\",\"vistas/img/suite/africana04.jpg\"]\r\n', 'JTu790_yyRc', 'vistas/img/suite/africana-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:38:34'),
(4, 1, 'Clásica', '[\"vistas/img/suite/clasica01.jpg\", \"vistas/img/suite/clasica02.jpg\", \"vistas/img/suite/clasica03.jpg\",\"vistas/img/suite/clasica04.jpg\"]\r\n', 'JTu790_yyRc', 'vistas/img/suite/clasica-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:38:44'),
(5, 1, 'Retro', '[\"vistas/img/suite/retro01.jpg\", \"vistas/img/suite/retro02.jpg\", \"vistas/img/suite/retro03.jpg\",\"vistas/img/suite/retro04.jpg\"]\r\n', 'JTu790_yyRc', 'vistas/img/suite/retro-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:38:53'),
(6, 2, 'Oriental', '[\"vistas/img/especial/oriental01.jpg\", \"vistas/img/especial/oriental02.jpg\", \"vistas/img/especial/oriental03.jpg\",\"vistas/img/especial/oriental04.jpg\"]\r\n', 'JTu790_yyRc', 'vistas/img/especial/oriental-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>	\n\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>\n\n					<br>\n\n					<h3>PLAN CONTINENTAL</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\n					Temporada Baja: Q300.00 QTZ<br>\n					Temporada Alta: Q350.00 QTZ</p>	\n\n					<br>\n\n					<h3>PLAN AMERICANO</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\n					Temporada Baja: Q380.00 QTZ<br>\n					Temporada Alta: Q420.00 QTZ</p>\n					\n					<br>\n\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-10-05 01:23:00'),
(7, 2, 'Moderna', '[\"vistas/img/especial/moderna01.jpg\", \"vistas/img/especial/moderna02.jpg\", \"vistas/img/especial/moderna03.jpg\",\"vistas/img/especial/moderna04.jpg\"]', 'JTu790_yyRc', 'vistas/img/especial/moderna-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>	\n\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>\n\n					<br>\n\n					<h3>PLAN CONTINENTAL</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\n					Temporada Baja: Q300.000 QTZ<br>\n					Temporada Alta: Q350.000 QTZ</p>	\n\n					<br>\n\n					<h3>PLAN AMERICANO</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\n					Temporada Baja: Q380.000 QTZ<br>\n					Temporada Alta: Q420.000 QTZ</p>\n					\n					<br>\n\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-10-05 01:20:23'),
(8, 2, 'Africana', '[\"vistas/img/especial/africana01.jpg\", \"vistas/img/especial/africana02.jpg\", \"vistas/img/especial/africana03.jpg\",\"vistas/img/especial/africana04.jpg\"]\r\n', 'JTu790_yyRc', 'vistas/img/especial/africana-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.00 QTZ<br>\r\n					Temporada Alta: Q350.00 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-10-05 01:22:09'),
(9, 2, 'Árabe', '[\"vistas/img/especial/arabe01.jpg\", \"vistas/img/especial/arabe02.jpg\", \"vistas/img/especial/arabe03.jpg\",\"vistas/img/especial/arabe04.jpg\"]', 'JTu790_yyRc', 'vistas/img/especial/arabe-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:39:33'),
(10, 2, 'Romana', '[\"vistas/img/especial/romana01.jpg\", \"vistas/img/especial/romana02.jpg\", \"vistas/img/especial/romana03.jpg\",\"vistas/img/especial/romana04.jpg\"]', 'JTu790_yyRc', 'vistas/img/especial/romana-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:40:52'),
(11, 3, 'Caribeña', '[\"vistas/img/standar/caribena01.jpg\", \"vistas/img/standar/caribena02.jpg\", \"vistas/img/standar/caribena03.jpg\",\"vistas/img/standar/caribena04.jpg\"]', 'JTu790_yyRc', 'vistas/img/standar/caribena-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>	\n\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\n					</p>\n\n					<br>\n\n					<h3>PLAN CONTINENTAL</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\n					Temporada Baja: Q300.000 QTZ<br>\n					Temporada Alta: Q350.000 QTZ</p>	\n\n					<br>\n\n					<h3>PLAN AMERICANO</h3>\n\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\n					Temporada Baja: Q380.000 QTZ<br>\n					Temporada Alta: Q420.000 QTZ</p>\n					\n					<br>\n\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-10-05 01:21:19'),
(12, 3, 'Colonial', '[\"vistas/img/standar/colonial01.jpg\", \"vistas/img/standar/colonial02.jpg\", \"vistas/img/standar/colonial03.jpg\",\"vistas/img/standar/colonial04.jpg\"]\r\n', 'JTu790_yyRc', 'vistas/img/standar/colonial-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:40:03'),
(13, 3, 'Hindú', '[\"vistas/img/standar/hindu01.jpg\", \"vistas/img/standar/hindu02.jpg\", \"vistas/img/standar/hindu03.jpg\",\"vistas/img/standar/hindu04.jpg\"]', 'JTu790_yyRc', 'vistas/img/standar/hindu-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:40:13'),
(14, 3, 'Marroquí', '[\"vistas/img/standar/marroqui01.jpg\", \"vistas/img/standar/marroqui02.jpg\", \"vistas/img/standar/marroqui03.jpg\",\"vistas/img/standar/marroqui04.jpg\"]', 'JTu790_yyRc', 'vistas/img/standar/marroqui-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:40:21'),
(15, 3, 'Retro', '[\"vistas/img/standar/retro01.jpg\", \"vistas/img/standar/retro02.jpg\", \"vistas/img/standar/retro03.jpg\",\"vistas/img/standar/retro04.jpg\"]\r\n', 'JTu790_yyRc', 'vistas/img/standar/retro-360.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>	\r\n\r\n					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum sit, quia blanditiis fugiat nam libero possimus totam modi sint autem repellat fugit dicta est pariatur? Ut aut vel ad sapiente. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae, reprehenderit! Deserunt laborum dolorum deleniti molestiae quae vitae animi ratione nihil, minus ut quibusdam incidunt voluptate eos sed id repudiandae ex.\r\n					</p>\r\n\r\n					<br>\r\n\r\n					<h3>PLAN CONTINENTAL</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: desayuno)<br>\r\n					Temporada Baja: Q300.000 QTZ<br>\r\n					Temporada Alta: Q350.000 QTZ</p>	\r\n\r\n					<br>\r\n\r\n					<h3>PLAN AMERICANO</h3>\r\n\r\n					<p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo)<br>\r\n					Temporada Baja: Q380.000 QTZ<br>\r\n					Temporada Alta: Q420.000 QTZ</p>\r\n					\r\n					<br>\r\n\r\n					<p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2023-09-28 19:40:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio_alta` float NOT NULL,
  `precio_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `tipo`, `img`, `descripcion`, `precio_alta`, `precio_baja`, `fecha`) VALUES
(1, 'Romántico', 'vistas/img/planes/plan-romantico.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas suscipit quis eligendi voluptatibus dolore libero quasi delectus odit impedit optio eius corporis cumque numquam aliquid repudiandae quisquam dolor explicabo, totam.', 50000, 40000, '2019-04-09 17:07:21'),
(2, 'Luna de Miel', 'vistas/img/planes/luna-de-miel.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat dicta fugiat nihil amet officiis, atque molestiae velit, quod repudiandae asperiores illum accusantium ullam, necessitatibus excepturi inventore, mollitia est vitae impedit.', 60000, 50000, '2019-04-09 17:07:09'),
(3, 'Aventura', 'vistas/img/planes/plan-aventura.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt blanditiis nulla expedita nostrum vero. Laborum repudiandae numquam mollitia earum natus ut delectus quas, iste unde doloribus suscipit qui, voluptate perspiciatis.', 40000, 30000, '2019-04-09 17:07:09'),
(4, 'SPA', 'vistas/img/planes/plan-spa.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam quibusdam magni atque provident, quaerat libero harum possimus. Illum iure magni voluptate, quos amet! Ipsam, sit, sapiente. Cumque est officiis in!', 55000, 45000, '2019-04-09 17:07:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido`
--

CREATE TABLE `recorrido` (
  `id` int(11) NOT NULL,
  `foto_peq` text NOT NULL,
  `foto_grande` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `recorrido`
--

INSERT INTO `recorrido` (`id`, `foto_peq`, `foto_grande`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/recorrido/pueblo01a.png', 'vistas/img/recorrido/pueblo01b.png', 'LOREM IPSUM', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo velit quis iusto magnam cupiditate dolorum repudiandae tempore cum minus eos a iure, officiis, eius, consequuntur unde nulla, enim quibusdam beatae.', '2019-04-09 19:32:53'),
(2, 'vistas/img/recorrido/pueblo02a.png', 'vistas/img/recorrido/pueblo02b.png', 'LOREM IPSUM', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo velit quis iusto magnam cupiditate dolorum repudiandae tempore cum minus eos a iure, officiis, eius, consequuntur unde nulla, enim quibusdam beatae.', '2019-04-09 19:32:53'),
(3, 'vistas/img/recorrido/pueblo03a.png', 'vistas/img/recorrido/pueblo03b.png', 'LOREM IPSUM', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo velit quis iusto magnam cupiditate dolorum repudiandae tempore cum minus eos a iure, officiis, eius, consequuntur unde nulla, enim quibusdam beatae.', '2019-04-09 19:32:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago_reserva` float NOT NULL,
  `codigo_reserva` text NOT NULL,
  `descripcion_reserva` text NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_reserva` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `id_habitacion`, `id_usuario`, `pago_reserva`, `codigo_reserva`, `descripcion_reserva`, `fecha_ingreso`, `fecha_salida`, `fecha_reserva`) VALUES
(1, 1, 1, 380, '9YD9SD0FS1', 'Habitacion suite oriental - plan Spa - 5 Personas', '2023-10-26', '2023-11-03', '2023-10-05 02:28:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`id`, `img`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/restaurante/plato01.png', 'Lorem ipsum dolor sit amet consectetur', '2019-04-09 19:43:20'),
(2, 'vistas/img/restaurante/plato02.png', 'Lorem ipsum dolor sit amet consectetur', '0000-00-00 00:00:00'),
(3, 'vistas/img/restaurante/plato03.png', 'Lorem ipsum dolor sit amet consectetur', '0000-00-00 00:00:00'),
(4, 'vistas/img/restaurante/plato04.png', 'Lorem ipsum dolor sit amet consectetur', '0000-00-00 00:00:00'),
(5, 'vistas/img/restaurante/plato05.png', 'Lorem ipsum dolor sit amet consectetur', '0000-00-00 00:00:00'),
(6, 'vistas/img/restaurante/plato06.png', 'Lorem ipsum dolor sit amet consectetur', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_h`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_h` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

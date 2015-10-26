-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2015 a las 12:20:12
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_botiga_animals`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_anunci`
--

CREATE TABLE IF NOT EXISTS `tbl_anunci` (
  `anu_id` int(11) NOT NULL,
  `anu_contingut` varchar(255) NOT NULL,
  `anu_nom` varchar(40) NOT NULL,
  `anu_data` date NOT NULL,
  `anu_foto` varchar(50) NOT NULL,
  `raca_id` int(11) NOT NULL,
  `mun_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `anu_tipus` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_anunci`
--

INSERT INTO `tbl_anunci` (`anu_id`, `anu_contingut`, `anu_nom`, `anu_data`, `anu_foto`, `raca_id`, `mun_id`, `contact_id`, `anu_tipus`) VALUES
(1, 'Perdut gos de raça beagle a la platja de El Prat de Llobregat (zona aeroport) l''11 d''octubre al matí. Respon al nom de Tacat.', 'Perdut beagle a El Prat', '2015-10-11', 'tacat.jpg', 14, 4, 2, 'Perdut'),
(2, 'Desaparegut gat amb collar i placa amb el nom de Ratlletes. És de tipus comú, ratllat de colors taronges. Rambla Badal, Barcelona.', 'Perdut gat', '2015-10-15', '', 17, 1, 6, 'Perdut'),
(3, 'S´ha llençat per la terrasa', 'Perdut Husky a Bcn', '2015-10-13', '', 11, 1, 1, 'Perdut'),
(4, 'Perdut periquito, ha obert la seva gabia i a sortit volant a l´Eixample', 'Periquito desaparegut', '2015-10-06', '', 21, 1, 7, 'Perdut'),
(5, 'Golden retriever desapareguda a la Zona Franca, porta xip i es diu Yuka', 'Golden Desapareguda', '2015-10-12', '', 10, 1, 3, 'Perdut'),
(6, 'Boxer perdut a la diagonal, Barcelona.', 'Boxer perdut Diagonal', '2015-10-10', '', 8, 1, 4, 'Perdut'),
(7, 'Pastor alemany desaparegut en el Maresme, Premia de Mar.', 'Pastor alemany', '2015-10-13', '', 9, 1, 5, 'Perdut'),
(8, 'Border collie perdut a la zona de Gracia, aprop del carrer Balmes', 'Border collie perdut', '2015-10-06', '', 12, 1, 8, 'Perdut'),
(9, 'Gos creut desaparegut, s´ha marxat de casa. Porta xip y es diu Opie', 'Creuat desaparegut', '2015-10-13', '', 13, 1, 9, 'Perdut'),
(10, 'Gat persa desaparegut al carrer Mallorca, s´ha esapat de casa.', 'Persa perdut', '2015-10-21', '', 15, 1, 10, 'Perdut'),
(11, 'Gat siamés desaparegut a Castelldefels', 'Siamés perdut', '2015-10-11', '', 16, 8, 11, 'Perdut'),
(12, 'Gat trobat a Martorell, es agresiu.', 'Gat agresiu trobat Martorell', '2015-10-05', '', 17, 6, 15, 'Trobat'),
(13, 'Hamster blanc/marró trobat a Castellbisbal', 'Hamster trobat Castellbisbal', '2015-10-05', '', 24, 11, 15, 'Trobat'),
(14, 'Hamster negre tobrat a Cornellà de Llobregat', 'Hamster Cornellà', '2015-10-04', '', 24, 7, 15, 'Trobat'),
(15, 'Fura trobada a Sant Joan D´espí', 'Fura Sant Joan d´Espí ', '2015-09-11', '', 22, 3, 15, 'Trobat'),
(16, 'Conill blanc trobat a Viladecans', 'Conill Viladecans', '2015-10-13', '', 23, 9, 15, 'Trobat'),
(17, 'Gos creuat color canela trobat pels carrers de l´Eixample', 'Gos creuat Barcelona Eixample', '2015-10-04', '', 13, 1, 15, 'Trobat'),
(18, 'Gos creuat blanc/marró trobat pels carrers de Sants-Monjuïc', 'Gos creuat Barcelona Sants', '2015-10-10', '', 13, 1, 15, 'Trobat'),
(19, 'Perdut gat persa a Martorell, es diu Bigotitos', 'Gat Persa Martorell', '2015-10-06', '', 15, 6, 17, 'Perdut'),
(20, 'Trobat Teixó a Castellbisbal en molt mal estat', 'Teixó Castellbisbal', '2015-10-13', '', 25, 11, 16, 'Trobat'),
(21, 'Perdut periquito blanc-i-blau a Cornellà', 'Periquito blanc-i-blau', '2015-10-05', '', 21, 7, 18, 'Perdut'),
(22, 'Trobat Abisini a Begues, contacti amb 654534321', 'Abisini Begues', '2015-10-07', '', 18, 10, 7, 'Trobat'),
(23, 'Gat Bobtail trobat a Castellbisbal, porta collar amb nom Pelets', 'Bobtail Castellbisbal amb nom Pelets', '2015-10-05', '', 19, 8, 16, 'Trobat'),
(24, 'Perdut Ornitorinc a Sant s´Adurní d´Anoia  amb 3 potes', 'Ornitorinc perdut a Sant s´Adurní', '2015-10-20', '', 27, 12, 18, 'Perdut'),
(25, 'Trobat conill blanc amb ulls vermells a Barcelona', 'Conill blanc Barcelona', '2015-10-10', '', 23, 1, 20, 'Trobat'),
(26, 'Beagle desaparegut al costat de la ciutat de la justicia a Barcelona', 'Beagle perdut Barcelona', '2015-10-03', '', 14, 1, 16, 'Perdut'),
(27, 'Anec marró perdut a Sant Joan d´Espí', 'Anec marró perdut', '2015-10-13', '', 26, 3, 11, 'Perdut'),
(28, 'Border Collie trobat a Sant Feliu de Llobregat, respon el nom de Ojil', 'Border Collie trobat a Sant Feliu', '2015-10-01', '', 12, 2, 18, 'Trobat'),
(29, 'Gos creuat perdut a Rubí a prop de l´estació de tren', 'Gos creuat Rubí', '2015-09-07', '', 13, 13, 8, 'Perdut'),
(30, 'Boxer negre trobat a la platja de Sitges', 'Boxer negre Sitges', '2015-10-05', '', 8, 15, 14, 'Trobat');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_contacte`
--

CREATE TABLE IF NOT EXISTS `tbl_contacte` (
  `contact_id` int(11) NOT NULL,
  `contact_nom` varchar(25) NOT NULL,
  `contact_telf` varchar(9) NOT NULL,
  `contact_adre` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_contacte`
--

INSERT INTO `tbl_contacte` (`contact_id`, `contact_nom`, `contact_telf`, `contact_adre`) VALUES
(1, 'Carles Martín', '934534236', ''),
(2, 'Antonio Gámez', '667542343', 'Carrer del Mig, 76 3r 1a'),
(3, 'Carlos Martínez', '654583454', ''),
(4, 'Isabel Vázquez', '698722284', ''),
(5, 'Pedro Santiesteban', '656989931', 'Avinguda Carrilet, 54 3r'),
(6, 'Sònia Gómez', '688341009', 'Gran Via de les Corts Catalanes, 12 Esc. A 3r 2a'),
(7, 'Patricia Martín', '932124654', ''),
(8, 'Felipe Iglesias', '696969699', ''),
(9, 'Martí Salvador', '666600097', 'Carrer Consell de Cent 1954'),
(10, 'Daniel Lorenzo', '658741248', ''),
(11, 'Carola Jaico', '678541245', 'Calle Mineria 24'),
(12, 'Alejandro Moreno', '635214574', ''),
(13, 'Oriol Villorbina', '669497111', ''),
(14, 'Adrià Amela', '606844664', ''),
(15, 'Ingrid Chomara Lopez', '674289555', ''),
(16, 'Andrea Dalmau', '619242119', ''),
(17, 'Yannick Amigo', '600013086', ''),
(18, 'Sergio Bayo', '608242274', ''),
(19, 'Nicolas Esteban', '648791326', ''),
(20, 'Roger Ariño', '630202566', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_municipi`
--

CREATE TABLE IF NOT EXISTS `tbl_municipi` (
  `municipi_id` int(11) NOT NULL,
  `municipi_nom` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_municipi`
--

INSERT INTO `tbl_municipi` (`municipi_id`, `municipi_nom`) VALUES
(1, 'Barcelona'),
(2, 'Sant Feliu de Llobregat'),
(3, 'Sant Joan d''Espí'),
(4, 'El Prat de Llobregat'),
(5, 'L''Hospitalet de Llobregat'),
(6, 'Martorell'),
(7, 'Cornellà de Llobregat'),
(8, 'Castelldefels'),
(9, 'Viladecans'),
(10, 'Begues'),
(11, 'Castellbisbal'),
(12, 'Sant Sadurní d''Anoia'),
(13, 'Rubí'),
(14, 'Sant Cugat del Vallès'),
(15, 'Sitges');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_raca`
--

CREATE TABLE IF NOT EXISTS `tbl_raca` (
  `raca_id` int(11) NOT NULL,
  `raca_nom` varchar(25) NOT NULL,
  `tipus_anim_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_raca`
--

INSERT INTO `tbl_raca` (`raca_id`, `raca_nom`, `tipus_anim_id`) VALUES
(8, 'Bòxer', 1),
(9, 'Pastor alemany', 1),
(10, 'Golden retriever', 1),
(11, 'Husky', 1),
(12, 'Border collie', 1),
(13, 'Creuat', 1),
(14, 'Beagle', 1),
(15, 'Persa', 2),
(16, 'Siamés', 2),
(17, 'Comú', 2),
(18, 'Abisini', 2),
(19, 'Bobtail', 2),
(20, 'Canari', 3),
(21, 'Periquito', 3),
(22, 'Fura', 4),
(23, 'Conill', 4),
(24, 'Hàmster', 4),
(25, 'Teixó', 4),
(26, 'Ànec', 4),
(27, 'Ornitorinc', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipus_animal`
--

CREATE TABLE IF NOT EXISTS `tbl_tipus_animal` (
  `tipus_anim_id` int(11) NOT NULL,
  `tipus_anim_nom` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipus_animal`
--

INSERT INTO `tbl_tipus_animal` (`tipus_anim_id`, `tipus_anim_nom`) VALUES
(1, 'Gos'),
(2, 'Gat'),
(3, 'Ocell'),
(4, 'Altres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_anunci`
--
ALTER TABLE `tbl_anunci`
  ADD PRIMARY KEY (`anu_id`),
  ADD KEY `FK_ANU_RACA` (`raca_id`),
  ADD KEY `FK_MUN_ANU` (`mun_id`),
  ADD KEY `FK_CONTACT_ANU` (`contact_id`);

--
-- Indices de la tabla `tbl_contacte`
--
ALTER TABLE `tbl_contacte`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indices de la tabla `tbl_municipi`
--
ALTER TABLE `tbl_municipi`
  ADD PRIMARY KEY (`municipi_id`);

--
-- Indices de la tabla `tbl_raca`
--
ALTER TABLE `tbl_raca`
  ADD PRIMARY KEY (`raca_id`),
  ADD KEY `FK_RACA_TIPUS_A` (`tipus_anim_id`);

--
-- Indices de la tabla `tbl_tipus_animal`
--
ALTER TABLE `tbl_tipus_animal`
  ADD PRIMARY KEY (`tipus_anim_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_anunci`
--
ALTER TABLE `tbl_anunci`
  MODIFY `anu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `tbl_contacte`
--
ALTER TABLE `tbl_contacte`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `tbl_municipi`
--
ALTER TABLE `tbl_municipi`
  MODIFY `municipi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `tbl_raca`
--
ALTER TABLE `tbl_raca`
  MODIFY `raca_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `tbl_tipus_animal`
--
ALTER TABLE `tbl_tipus_animal`
  MODIFY `tipus_anim_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_anunci`
--
ALTER TABLE `tbl_anunci`
  ADD CONSTRAINT `RELACIO_ANU_CONTACT` FOREIGN KEY (`contact_id`) REFERENCES `tbl_contacte` (`contact_id`),
  ADD CONSTRAINT `RELACIO_ANU_MUN` FOREIGN KEY (`mun_id`) REFERENCES `tbl_municipi` (`municipi_id`),
  ADD CONSTRAINT `RELACIO_ANU_RACA` FOREIGN KEY (`raca_id`) REFERENCES `tbl_raca` (`raca_id`);

--
-- Filtros para la tabla `tbl_raca`
--
ALTER TABLE `tbl_raca`
  ADD CONSTRAINT `tbl_raca_ibfk_1` FOREIGN KEY (`tipus_anim_id`) REFERENCES `tbl_tipus_animal` (`tipus_anim_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

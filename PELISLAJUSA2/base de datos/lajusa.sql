-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2022 a las 22:05:46
-- Versión del servidor: 10.4.24-MariaDB-log
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pelislajusa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacion`
--

CREATE TABLE `clasificacion` (
  `clasificacion` varchar(10) NOT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `edades_permitidas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clasificacion`
--

INSERT INTO `clasificacion` (`clasificacion`, `descripcion`, `edades_permitidas`) VALUES
('18+', 'Reservado solo para personas de la edad destinada', '18 años en adelante'),
('A', 'Apto para todo publico', '0-12años'),
('AA', 'Apto para todo publico', '0-12años'),
('B', 'Se sugiere supervisión de los padres.', '12-15años'),
('B15', 'Se sugiere supervisión de los padres.', '15-17años'),
('PG-13', 'PARA MAYORES DE 13 AÑOS', 'MAYORES DE 13 AÑOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` varchar(10) NOT NULL,
  `nombre_genero` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id_genero`, `nombre_genero`) VALUES
('AC', 'Accion'),
('CF', 'Ciencia y ficción'),
('CO', 'Comedia'),
('DR', 'Drama'),
('FA', 'Fantasía '),
('SU', 'Suspenso'),
('TE', 'Terror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(10) NOT NULL,
  `titulo` varchar(40) DEFAULT NULL,
  `duracion` varchar(20) DEFAULT NULL,
  `clasificacion` varchar(10) DEFAULT NULL,
  `sinopsis` varchar(400) DEFAULT NULL,
  `genero` varchar(40) DEFAULT NULL,
  `donde_ver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `titulo`, `duracion`, `clasificacion`, `sinopsis`, `genero`, `donde_ver`) VALUES
(1111, 'SONRIE', '1H 55MIN', 'B15', 'Tras presencia el dramático incidente sufrido por un paciente, la Dra. Cotter empieza a experimentar hechos aterradores sin explicación aparente. A medida que el horror se adueña de su vida, comprende que la respuesta está en su propio pasado.', 'Terror', 'PRIME VIDEO'),
(1112, 'THE INVITATION', '1H 44MIN', 'PG-13', 'Tras morir su hermana, Evie queda sin familiares, pero un análisis de ADN le revela la existencia de un primo distante. La nueva familia la invita a una boda en Inglaterra, y lo que empieza como un cuento de hadas se transforma en una pesadilla.', 'Terror', 'PRIME VIDEO'),
(1113, 'X (2022)', '1H 45MIN', '18+', 'Un equipo cinematográfico intenta grabar una película para adultos en una zona rural de Texas. Sin embargo, cuando el dueño de casa los atrapa, deberán luchar por sobrevivir.', 'Terror', 'PRIME VIDEO'),
(1114, 'MAMA', '1H 40MIN', 'B', 'En el día que mueren sus padres, las hermanas Lilly y Victoria desaparecen en el bosque. Su tío Lucas y su novia, Annabel, comienzan a buscarlas incansablemente.', 'Terror', 'NETFLIX'),
(1115, 'EL CONJURO 3', '1H 52MIN', 'B', 'Los investigadores de fenómenos paranormales Ed y Lorraine Warren se enfrentan a un nuevo caso: el de un hombre acusado de un terrible asesinato, que asegura haber sido poseído por un demonio.', 'Terror', 'HBO MAX'),
(1116, 'LA ABUELA', '1H 40MIN', 'B15', 'Susana tiene que dejar su vida en París trabajando como modelo para regresar a Madrid porque su abuela Pilar acaba de sufrir un derrame cerebral. Lo que deberían ser solo unos días con su abuela, se acabarán convirtiendo en una terrorífica pesadilla.', 'Terror', 'HBO MAX'),
(1117, 'EL EXORCISMO DE DIOS', '1H 38MIN', 'B15', 'En México, un sacerdote estadounidense tiene la oportunidad de enfrentarse a su propio demonio por última vez.', 'Terror', 'APPLE TV'),
(1118, 'RUEGA POR NOSOTROS', '1H 39MIN', 'B', 'Un periodista con poca suerte descubre una serie de milagros en un pueblo de Nueva Inglaterra. Después de investigar los acontecimientos, se da cuenta de que el pueblo esconde algo muy oscuro.', 'Terror', 'HBO MAX'),
(2111, 'ASESINO SIN MEMORIA', '1H 53MIN', 'B15', 'Alex, un sicario, se convierte en el objetivo de su organización por negarse a cumplir un trabajo. El FBI y el servicio de inteligencia mexicano le siguen.', 'Suspenso', 'PRIME VIDEO'),
(2112, 'NADIE', '1H 31MIN', 'B15', 'Hutch, deja que roben en su casa. Su esposa y su hijo empiezan a tratarlo con frialdad, decepcionados por su cobardía, por lo que Hutch cambia de personalidad y abraza el riesgo y la violencia.', 'Suspenso', 'PRIME VIDEO'),
(2113, 'BEAST', '1H 46MIN', 'B', 'Un hombre y sus dos hijas viajan a una reserva en Sudáfrica. Sin embargo, la experiencia terapéutica se convierte en una lucha por la supervivencia cuando un león sediento de sangre comienza a acecharlos.', 'Suspenso', 'PRIME VIDEO'),
(2114, 'NO TE PREOCUPES CARIÑO', '2H 3MIN', '18+', 'Una esposa de los años 50 en una comunidad utópica comienza a preocuparse por los misteriosos secretos que oculta la empresa de su marido.', 'Suspenso', 'HBO MAX'),
(2115, 'AGUAS PROFUNDAS', '1H 55MIN', 'B', 'Un hombre permite que su esposa tenga relaciones con otras parejas para intentar salvar su matrimonio. Cuando los amantes de ella comienzan a desaparecer, él se convierte en el principal sospechoso.', 'Suspenso', 'YOUTUBE'),
(2116, 'TELEFONO NEGRO', '1H 42MIN', 'B15', 'Un homicida sádico y enmascarado mantiene un niño de 13 años, secuestrado en un sótano incomunicado. A través de un teléfono que hay en la pared, se comunica con otras víctimas del criminal.', 'Suspenso', 'PRIME VIDEO'),
(2117, 'EMERGENCIA EN EL AIRE', '2H 27MIN', 'B15', 'Las autoridades coreanas descubren a un sospechoso de terrorismo a bordo de un vuelo con destino a Estados Unidos. El capitán toman medidas de emergencia salvar vidas.', 'Suspenso', 'PRIME VIDEO'),
(2118, 'AMENAZA EXPLOSIVA', '1H 34MIN', 'B', 'El gerente de un banco recibe una llamada anunciándole que hay una bomba bajo el asiento de su automóvil, si alguien sale del vehículo, explotará. A no ser, claro está, que pague lo que le piden.', 'Suspenso', 'HBO MAX'),
(3111, 'SPIDER-MAN LEJOS DE CASA', '2H 28MIN', 'PG-13', 'Tras descubrirse la identidad secreta de Peter Parker como Spider-Man, la vida del joven se vuelve una locura. Peter le pide ayuda al Doctor Strange para recuperar su vida, pero algo sale mal y provoca una fractura en el multiverso.', 'Ciencia y ficción', 'HBO MAX'),
(3112, 'BLACK ADAM', '2H 5MIN', 'PG-13', 'Unos arqueólogos liberan de su tumba a Black Adam, quien llevaba 5000 años preso tras haber recibido los poderes de los dioses.', 'Ciencia y ficción', 'APPLE TV'),
(3113, 'MOONFALL', '2H 10MIN', 'B', 'El mundo se enfrenta a la posibilidad de la extinción porque una fuerza desconocida empuja a la luna de su órbita rumbo a la Tierra. Un equipo de astronautas asume la misión de evitar el apocalipsis.', 'Ciencia y ficción', 'PRIME VIDEO'),
(3114, 'TODO EN TODAS PARTES AL MISMO TIEMPO', '2H 20MIN', 'B', 'Una heroína inesperada debe usar sus nuevos poderes para luchar contra los desconcertantes peligros del multiverso y así lograr salvar su mundo.', 'Ciencia y ficción', 'PRIME VIDEO'),
(3115, 'DUNA', '2H 35MIN', 'PG-13', 'Arrakis, también denominado \"Dune\", se ha convertido en el planeta más importante del universo. A su alrededor comienza una gigantesca lucha por el poder que culmina en una guerra interestelar.', 'Ciencia y ficción', 'HBO MAX'),
(3116, 'DOCTOR STRANGE 2', '2H 6MIN', 'PG-13', 'El Dr. Stephen Strange abre un portal al multiverso al utilizar un hechizo prohibido. Ahora, su equipo debe enfrentarse a una amenaza que podría destruirlo todo.', 'Ciencia y ficción', 'DISNEY+'),
(3117, 'GODZILLA VS KONG', '1H 53MIN', 'PG-13', 'Godzilla y Kong, dos de las fuerzas más poderosas de un planeta habitado por aterradoras criaturas, se enfrentan en un espectacular combate que sacude los cimientos de la humanidad.', 'Ciencia y ficción', 'HBO MAX'),
(3118, 'INTERESTELAR', '2H 49MIN', 'PG-13', 'Gracias a un descubrimiento, un grupo de científicos y exploradores, encabezados por Cooper, se embarcan en un viaje espacial para encontrar un lugar con las condiciones necesarias para reemplazar a la Tierra y comenzar una nueva vida allí.', 'Ciencia y ficción', 'HBO MAX'),
(4111, 'TOP GUN: MAVERICK', '2H 10MIN', 'PG-13', 'Maverick, quien lleva 30 años de servicio, es ahora instructor de pilotos militares. Una última misión, un sacrificio final, obliga a este maestro de los cielos a enfrentar las heridas abiertas del pasado y sus temores más profundos.', 'Accion', 'PRIME VIDEO'),
(4112, 'TREN BALA', '2H 6MIN', 'B15', 'En un tren de alta velocidad que se dirige de Tokio a Morioka, cinco asesinos profesionales descubren que van tras el mismo objetivo.', 'Accion', 'HBO MAX'),
(4113, 'BLACK ADAM', '2H 10MIN', 'PG-13', 'Unos arqueólogos liberan de su tumba a Black Adam, quien llevaba 5000 años preso tras haber recibido los poderes de los dioses.', 'Accion', 'APPLE TV'),
(4114, 'LA MUJER REY', '2H 14MIN', 'PG-13', 'En la década de 1820, en África, una unidad militar exclusivamente femenina del reino de Dahomey se prepara para luchar contra las tropas invasoras del Imperio de Oyo, cuyo propósito es esclavizar a la población conquistada.', 'Accion', 'PRIME VIDEO'),
(4115, 'AMBULANCIA', '2H 16MIN', 'B', 'Unos hermanos ladrones intentan dejar a atrás a la policía de Los Ángeles después de secuestrar una ambulancia para escapar del robo de un banco.', 'Accion', 'HBO MAX'),
(4116, 'THE BATMAN', '2H 56MIN', 'PG-13', 'Batman explora la corrupción existente en la ciudad de Gotham y el vínculo de esta con su propia familia. Además, entra en conflicto con un asesino en serie conocido como \"el Acertijo\".', 'Accion', 'HBO MAX'),
(4117, 'JOHN WICK', '1H 41MIN', '18+', 'John Wick, un exasesino a sueldo, se enfrenta al mafioso Viggo Tarazov, quien ofrece una recompensa a aquel que logre acabar con la vida de Wick.', 'Accion', 'PRIME VIDEO'),
(4118, 'LOGAN', '2H 17MIN', '18+', 'Han pasado los años y los mutantes están en declive. Logan, débil y cansado, vive alejado de todos hasta que acepta una última misión de Charles Xavier: la de proteger a una joven especial, de nombre Laura.', 'Accion', 'DISNEY+'),
(5111, 'THE FALLOUT', '1H 32MIN', 'B', 'Una estudiante comienza a reinventarse mientras reevalúa sus relaciones y su visión del mundo.', 'Drama', 'HBO MAX'),
(5112, 'MUJERCITAS', '2H 15MIN', 'A', 'En los primeros años que prosiguen a la guerra civil estadounidense, la vida de una familia se ve alterada para siempre luego de que Beth, una de las hermanas, revela que padece una terrible enfermedad.', 'Drama', 'PRIME VIDEO'),
(5113, 'LA CASA GUCCI', '2H 37MIN', 'B15', 'En 1995, Patrizia Reggiani manda a asesinar a su rico exmarido, nieto del fundador de la casa de moda Gucci, para acceder a la sustanciosa herencia de su familia política.', 'Drama', 'APPLE TV'),
(5114, 'AFTER: AMOR INFINITO', '1H 59MIN', 'B', 'Una pareja debe decidir si continuar con su relación, apasionada pero tóxica, o hacer cambios dramáticos en sus vidas.', 'Drama', 'PRIME VIDEO'),
(5115, 'AFTER: ALMAS PERDIDAS', '1H 39MIN', 'B', 'Cuando Tessa toma una decisión trascendental, revelaciones familiares y su pasado amenazan con cambiar sus planes.', 'Drama', 'PRIME VIDEO'),
(5116, 'A DOS METROS DE TI', '1H 57MIN', 'A', 'Stella, de 17 años, está ingresada en un hospital porque padece fibrosis quística. Su monótona existencia cambia cuando llega Will, un adolescente con la misma dolencia. Sin embargo, las normas del hospital prohíben el contacto entre ellos.', 'Drama', 'PRIME VIDEO'),
(5117, 'YO ANTES DE TI', '1H 50MIN', 'B', 'La vida de Louisa Clark, una chica alegre y alocada, que va empalmando un trabajo con otro para ayudar a su familia a subsistir, cambia por completo cuando comienza a trabajar como cuidadora de un joven millonario, quien quedó paralítico tras un accidente.', 'Drama', 'PRIME VIDEO'),
(5118, 'DIARIO DE UNA PASION', '2H 4MIN', 'B', 'En un hogar de retiro un hombre le lee a una mujer, que sufre de Alzheimer, la historia de dos jóvenes de distintas clases sociales que se enamoraron durante la convulsionada década del 40, y de cómo fueron separados por terceros, y por la guerra.', 'Drama', 'HBO MAX'),
(6111, 'SUPERCOOL', '1H 59MIN', '18+', 'Seth (Jonah Hill) y Evan (Michael Cera), dos estudiantes co-dependientes de preparatoria, tienen grandes esperanzas en su fiesta de graduación: los jóvenes se sienten retados por la sociedad y planean divertirse en grande y conseguir chicas hermosas para finalmente poder integrarse con sus compañeros.', 'Comedia', 'HBO MAX'),
(6112, '¿QUE PASO AYER?', '1H 40MIN', '18+', 'Dos días antes de su boda, Doug y tres amigos viajan a Las Vegas para una fiesta inolvidable y salvaje. De hecho, cuando los tres acompañantes despiertan la mañana siguiente, no recuerdan nada ni encuentran a Doug. ', 'Comedia', 'HBO MAX'),
(6113, 'NOCHE DE JUEGOS', '1H 33MIN', 'B', 'Un grupo de amigos que se reúne una vez a la semana para jugar cambia su rutina y decide resolver un falso asesinato, pero, a medida que la partida avanza, se dan cuenta de que esta vez lo que está ocurriendo es real.', 'Comedia', 'HBO MAX'),
(6114, 'TED', '1H 46MIN', '18+', 'Cuando John Bennett era un niño pequeño, pidió el deseo de que Ted, su querido oso de peluche, cobrara vida. Treinta años más tarde, Ted continúa siendo el compañero de John, ante el disgusto de Lori, la novia de John.', 'Comedia', 'NETFLIX'),
(6115, 'LA FIESTA DE LAS SALCHICHAS', '1H 29MIN', '18+', 'Todos los alimentos del supermercado ansían ser elegidos por los humanos e ir a la tierra prometida. Sin embargo, Frank, la salchicha, descubre el horrible destino que le espera a cada uno de ellos, ser comidos. ', 'Comedia', 'NETFLIX'),
(6116, '¿Quién *&$%! son los Miller?', '1H 50MIN', 'B15', 'El distribuidor de marihuana David aprende por las malas que ninguna buena acción queda sin castigo; él intenta ayudar a algunos jóvenes y es sorprendido por unos criminales, perdiendo su dinero y producto.', 'Comedia', 'APPLE TV'),
(6117, 'LA NOCHE DE LOS NERDS', '1H 42MIN', 'B15', 'Dos estudiantes se dan cuenta de que deberían haber estudiado menos, por lo que tratan de recuperan los cuatro años de diversión perdidos en una alocada noche.', 'Comedia', 'PRIME VIDEO'),
(6118, 'SON COMO NIÑOS', '1H 42MIN', 'B', 'Un grupo de amigos y excompañeros descubren que envejecer no siempre significa madurar cuando se reúnen para honrar la memoria de su entrenador de baloncesto.', 'Comedia', 'NETFLIX'),
(7111, 'SPIDER-MAN UN NUEVO UNIVERSO', '1H 56MIN', 'A', 'Luego de ser mordido por una araña radioactiva, el joven Miles Morales desarrolla misteriosos poderes que lo transforman en el Hombre Araña. Ahora deberá usar sus nuevas habilidades ante el malvado Kingpin, un enorme demente que puede abrir portales hacia otros universos.', 'Fantasía ', 'DISNEY+'),
(7112, 'EL GIGANTE DE HIERRO', '1h 25min', 'A', 'Un malévolo agente gubernamental amenaza con destruir la amistad entre un chico y un robot alienígena gigante en Maine en 1957.', 'Fantasía ', 'HBO MAX'),
(7113, 'LA GRAN AVENTURA LEGO', '1H 40MIN', 'AA', 'Una figurilla ordinaria de LEGO, que se creía iba a salvar al mundo, es acompañada por un grupo de desconocidos que se embarcan en una búsqueda para vencer al tirano por un hecho terrible.', 'Fantasía ', 'HBO MAX'),
(7114, 'COMO ENTRENAR A TU DRAGON 2', '1H 42MIN', 'AA', 'Hipo y su amigo dragón se pierden en una cueva llena de dragones salvajes. Hipo encontrará a su madre en dicha cueva; ella le enseñará a sacar lo mejor de su dragón, sin saber que este nuevo conocimiento les ayudará a enfrentar la batalla de su vida.', 'Fantasía ', 'HBO MAX'),
(7115, 'TU NOMBRE', '1H 52MIN', 'A', 'Mitsuha es una adolescente que detesta su vida rural en el campo. Por otro lado, Taki es un chico que vive en Tokio y sueña con ser un artista o un arquitecto.', 'Fantasía ', 'HBO MAX'),
(7116, 'EL CADAVER DE LA NOVIA', '1H 17MIN', 'A', 'En la Europa del siglo XIX, un talentoso pianista se casa accidentalmente con una mujer muerta que lo lleva a otro mundo.', 'Fantasía ', 'HBO MAX'),
(7117, 'CORALINE Y LA PUERTA SECRETA', '1H 40MIN', 'A', 'Una niña descubre una puerta secreta en su nueva casa y entra a una realidad alterna que la refleja fielmente de muchas formas.', 'Fantasía ', 'APPLE TV'),
(7118, 'PINOCHO (GUILLERMO DEL TORO)', '1H 54MIN', 'AA', 'En Italia, el deseo de un hombre le da vida mágicamente a un muñeco de madera.', 'Fantasía ', 'NETFLIX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario` varchar(10) NOT NULL,
  `nombre_usuario` varchar(40) DEFAULT NULL,
  `ap_paterno` varchar(40) DEFAULT NULL,
  `ap_materno` varchar(40) DEFAULT NULL,
  `edad` int(5) DEFAULT NULL,
  `contra` varchar(40) DEFAULT NULL,
  `gusto_genero` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario`, `nombre_usuario`, `ap_paterno`, `ap_materno`, `edad`, `contra`, `gusto_genero`) VALUES
('a', 'a', 'a', 'a', 18, 'b', 'accion'),
('ADMIN', 'Juan', 'Resendiz', 'Molina', 19, '123456789', 'Fantasia'),
('ADMIN2', 'RAUL', 'GONZALEZ', 'CARAPIA', 19, '123', 'TERROR'),
('ADMIN3', 'JOSE', 'GONZALES', 'JIMENEZ', 19, '123', 'Fantasia'),
('b', 'b', 'b', 'b', 18, 'a', 'accion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ver`
--

CREATE TABLE `ver` (
  `ver` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ver`
--

INSERT INTO `ver` (`ver`) VALUES
('APPLE TV'),
('BLIM'),
('DISNEY+'),
('HBO MAX'),
('NETFLIX'),
('PRIME VIDEO'),
('SOLO EN CINES'),
('VIX'),
('YOUTUBE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clasificacion`
--
ALTER TABLE `clasificacion`
  ADD PRIMARY KEY (`clasificacion`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`nombre_genero`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`),
  ADD KEY `clasificacion` (`clasificacion`),
  ADD KEY `genero` (`genero`),
  ADD KEY `donde_ver` (`donde_ver`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `ver`
--
ALTER TABLE `ver`
  ADD PRIMARY KEY (`ver`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`clasificacion`) REFERENCES `clasificacion` (`clasificacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pelicula_ibfk_2` FOREIGN KEY (`genero`) REFERENCES `genero` (`nombre_genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pelicula_ibfk_3` FOREIGN KEY (`donde_ver`) REFERENCES `ver` (`ver`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

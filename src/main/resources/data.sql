-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 04-07-2024 a las 10:08:03
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


INSERT INTO `agentes` (`id`, `nombre`, `rol`, `ultimate`, `pais`) VALUES
(1, 'Breach', 'INICIADOR', 'Fragor imparable', 'Suecia'),
(2, 'Brimstone', 'CONTROLADOR', 'Golpe Orbital', 'Estados Unidos'),
(3, 'Cypher', 'CENTINELA', 'Hurto Neural', 'Marruecos'),
(4, 'Jett', 'DUELISTA', 'Tormenta de cuchillas', 'Corea del Sur'),
(5, 'Killjoy', 'CENTINELA', 'Zona de denegación', 'Alemania'),
(6, 'Omen', 'CONTROLADOR', 'Sombra del Caos', 'Peru'),
(7, 'Phoenix', 'DUELISTA', 'Renacimiento', 'Reino Unido'),
(8, 'Raze', 'DUELISTA', 'Cierratelones', 'Brasil'),
(9, 'Reyna', 'DUELISTA', 'Emperatriz', 'Mexico'),
(10, 'Sage', 'CENTINELA', 'Resurrección', 'China'),
(11, 'Sova', 'INICIADOR', 'Furia del cazador', 'Rusia'),
(12, 'Skye', 'INICIADOR', 'Buscadores', 'Australia'),
(13, 'Viper', 'CONTROLADOR', 'Pozo de la víbora', 'Estados Unidos'),
(14, 'Yoru', 'DUELISTA', 'Viaje Dimensional', 'Japon'),
(15, 'Astra', 'CONTROLADOR', 'División Cósmica', 'Ghana'),
(16, 'Kayo', 'INICIADOR', 'Anular', NULL),
(17, 'Chamber', 'CENTINELA', 'Tour de Force', 'Francia'),
(18, 'Clove', 'CONTROLADOR', 'No Mori', 'Escocia'),
(19, 'Iso', 'DUELISTA', 'Lista Negra', 'China'),
(20, 'Deadlock', 'CENTINELA', 'Aniquilación', 'Noruega'),
(21, 'Gekko', 'INICIADOR', 'Paliza', 'Estados Unidos'),
(22, 'Harbor', 'CONTROLADOR', 'Cataclismo', 'India'),
(23, 'Fade', 'INICIADOR', 'Anochecer', 'Turquía'),
(24, 'Neon', 'DUELISTA', 'Potencia Maxima', 'Filipinas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--


--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id`, `nombre`, `descripcion`, `poseedor`) VALUES
(1, 'FULGOR', 'EQUIPA una carga cegadora y DISPARA para lanzar una ráfaga de acción rápida a través de una pared. La carga detonará y cegará a todos los jugadores que la vean.', 1),
(2, 'FALLA SISMICA', 'EQUIPA un rayo sísmico y MANTÉN PRESIONADO EL BOTÓN DE DISPARO para aumentar la distancia. SUÉLTALO para iniciar el temblor y aturdir a todos los jugadores que estén en la zona.', 1),
(3, 'REPLICA', 'EQUIPA una carga de fusión y DISPARA para lanzar una ráfaga de acción lenta a través de una pared. La ráfaga infligirá daño masivo a todos los que estén en su alcance.', 1),
(4, 'LA INCENDIARIA', 'EQUIPA un lanzagranadas incendiario y DISPARA para lanzar una granada que explota cuando se detiene en el suelo. Esta crea una zona de fuego que permanece en el campo y daña a los enemigos que estén dentro de ella.', 2),
(5, 'HUMO CELESTIAL', 'EQUIPA un mapa táctico y DISPARA para marcar las ubicaciones en las que caerán las nubes de humo de Brimstone. Usa el DISPARO SECUNDARIO para confirmar y lanzar nubes de humo duraderas que bloquearán la visión en la zona seleccionada.', 2),
(6, 'BALIZA POTENCIADORA', 'EQUIPA una baliza potenciadora y DISPARA para lanzarla frente a Brimstone. Al caer, Resguardo Potenciador creará un campo que aumenta la velocidad de disparo de los jugadores.', 2),
(7, 'CIBERJAULA', 'Lanza AL INSTANTE una ciberjaula frente a Cypher. Actívala para crear una zona que bloquea la visión y ralentiza a los enemigos que la atraviesan.', 3),
(8, 'CAMARA ESPIA', 'EQUIPA una cámara espía. DISPARA para colocarla en la ubicación seleccionada. VUELVE A USAR esta habilidad para tomar el control de la vista de la cámara. Mientras la controlas, DISPARA para lanzar un dardo marcador que revelará la ubicación de cualquier jugador al que impacte.', 3),
(9, 'CABLE TRAMPA', 'EQUIPA una cámara espía. DISPARA para colocarla en la ubicación seleccionada. VUELVE A USAR esta habilidad para tomar el control de la vista de la cámara. Mientras la controlas, DISPARA para lanzar un dardo marcador que revelará la ubicación de cualquier jugador al que impacte. Puedes recogerla para VOLVER A COLOCARLA en otro lugar.', 3),
(10, 'RAFAGA ASCENDENTE', 'Propulsa a Jett hacia el aire AL INSTANTE.', 4),
(11, 'IMPULSO CICLON', 'ACTIVA para preparar una ráfaga de viento durante un tiempo limitado. VUELVE A USAR el viento para propulsar a Jett en la dirección a la que se dirige. Si no se está moviendo, se propulsará hacia adelante. La carga de Impulso Ciclón se restablece cada dos asesinatos.', 4),
(12, 'NUBE EXPLOSIVA', 'Lanza un proyectil AL INSTANTE que se convierte en una nube que bloquea la visión al impactar alguna superficie. MANTÉN PRESIONADA la tecla de la habilidad para cambiar la trayectoria del humo hacia donde apuntes.', 4),
(13, 'ALARMABOT', 'EQUIPA un Alarmabot encubierto. DISPARA para desplegar un bot que caza a los enemigos que entren en su alcance. Después de alcanzar a su objetivo, el bot explota, lo que inflige daño y aplica Vulnerable. MANTÉN PRESIONADO EQUIPAR para recuperar un bot desplegado.', 5),
(14, 'TORRETA', 'EQUIPA una Torreta. DISPARA para desplegar una torreta que les dispara a los enemigos cercanos en un cono de 180 grados. MANTÉN PRESIONADO EQUIPAR para recuperar una torreta desplegada.', 5),
(15, 'NANOPLAGA', 'EQUIPA una granada de Nanoplaga. DISPARA para lanzar la granada. La Nanoplaga queda encubierta al aterrizar. ACTIVA Nanoplaga para desplegar un mortal enjambre de nanobots.', 5),
(16, 'PARANOIA', 'Lanza un proyectil de sombras que reduce el alcance de visión de todos los jugadores a los que alcanza durante un breve periodo. Este proyectil puede atravesar paredes.', 6),
(17, 'MANTO OSCURO', 'EQUIPA un orbe sombrío y entra a un mundo paralelo para colocarlo y apuntarlo. PRESIONA la tecla de habilidad para lanzarlo hacia la ubicación marcada, creando una esfera de sombras duradera que bloquea la visión. MANTÉN EL DISPARO PRINCIPAL mientras apuntas para alejar el marcador. MANTÉN EL DISPARO SECUNDARIO mientras apuntas para acercar el marcador. PRESIONA RECARGAR para alternar la vista de disparo.', 6),
(18, 'PASO ENCUBIERTO', 'EQUIPA la habilidad Paso Encubierto y mira su indicador de alcance. DISPARA para comenzar una breve canalización y luego teletranspórtate hacia la ubicación marcada.', 6),
(19, 'DESTELLO EN CURVA', 'EQUIPA un orbe cegador que recorre una trayectoria curva y detona poco después de lanzarlo. DISPARA para cambiar la trayectoria del orbe cegador hacia la izquierda. Este detonará y cegará a cualquier jugador que lo vea. Usa el DISPARO SECUNDARIO para cambiar su trayectoria hacia la derecha.', 7),
(20, 'MANITAS CALIENTES', 'EQUIPA una bola de fuego y DISPARA para lanzarla. Esta explotará tras cierto tiempo o al impactar el suelo, lo que creará una zona de fuego que permanecerá en el campo y dañará a los enemigos.', 7),
(21, 'MURO ABRASADOR', 'EQUIPA un muro de fuego y DISPARA para crear una hilera de llamas que avanza, lo que creará un muro que bloquea la visión y dañará a los jugadores que lo atraviesen. MANTÉN PRESIONADO EL BOTÓN DE DISPARO para mover el muro en la dirección de tu retícula.', 7),
(22, 'PAQUETE EXPLOSIVO', 'Lanza AL INSTANTE un Paquete Explosivo que se adhiere a las superficies. VUELVE A USAR la habilidad después de desplegar el paquete para detonarlo, lo que dañará y desplazará todo a su alcance. Raze no recibe daño por esta habilidad, pero sí sufrirá daño por caídas si salta muy alto.', 8),
(23, 'CARCASAS DE PINTURA', 'EQUIPA una granada de racimo. DISPARA para lanzar la granada, lo que inflige daño y crea submuniciones que dañan a cualquiera que esté dentro de su alcance. Usa el DISPARO SECUNDARIO para lanzarla bombeada. La carga de Carcasas de Pintura se restablece cada dos asesinatos.', 8),
(24, 'BUMBOT', 'EQUIPA un Bumbot y DISPARA para desplegarlo. El bot se moverá en línea recta por el suelo y rebotará en los muros. El Bumbot marcará a cualquier enemigo que se encuentre en un cono frente a él y lo perseguirá. Si lo alcanza, explotará e infligirá daño masivo.', 8),
(25, 'DEVORAR', 'Los enemigos eliminados por Reyna dejan orbes de almas que duran 3 seg. Consume al INSTANTE un orbe de almas cercano y la cura rápidamente durante un breve momento. La Vida superior a 100 que obtenga mediante esta habilidad se deteriorará con el tiempo. Si LA EMPERATRIZ está activa, lanzará automáticamente esta habilidad sin consumir el orbe.', 9),
(26, 'DESECHAR', 'Consume al INSTANTE un orbe de almas cercano para volverse intangible durante un breve momento. También se vuelve invisible si LA EMPERATRIZ está activa.', 9),
(27, 'LA MIRADA', 'EQUIPA un ojo destructible y etéreo. ACTÍVALO para lanzarlo a una corta distancia y todos los enemigos que lo vean se ofuscarán.', 9),
(28, 'ORBE RALENTIZADOR', 'EQUIPA un orbe de ralentización y DISPARA para lanzarlo. Este detonará al caer al suelo y creará un campo que permanecerá en la zona y ralentizará a los jugadores que estén dentro de él.', 10),
(29, 'ORBE CURATIVO', 'EQUIPA un orbe curativo y DISPARA tras apuntar a un aliado herido para curarlo con el tiempo. Usa el DISPARO SECUNDARIO cuando Sage esté herida para curarla con el tiempo.', 10),
(30, 'ORBE DE BARRERA', 'EQUIPA un orbe de barrera. DISPARA para colocar una pared sólida. Usa el DISPARO SECUNDARIO para rotarla antes de crearla', 10),
(31, 'PROYECTIL ELECTRICO', 'EQUIPA un arco con un proyectil eléctrico y DISPARA para lanzarlo. El proyectil detonará al impactar y dañará a los jugadores cercanos. MANTÉN EL DISPARO PRINCIPAL para aumentar el alcance del proyectil. Usa el DISPARO SECUNDARIO para añadir hasta dos rebotes a su trayectoria.', 11),
(32, 'PROYECTIL RASTREADOR', 'EQUIPA un arco con un proyectil rastreador y DISPARA para lanzarlo. El proyectil se activará al impactar y revelará la ubicación de los enemigos cercanos que estén en la línea de visión del proyectil. Los enemigos pueden destruir este proyectil. MANTÉN EL DISPARO PRINCIPAL para aumentar el alcance del proyectil. Usa el DISPARO SECUNDARIO para añadir hasta dos rebotes a la trayectoria de la flecha.', 11),
(33, 'DRON BUHO', 'EQUIPA un Dron Búho y DISPARA para desplegarlo y controlar su movimiento. Mientras lo controlas, DISPARA para lanzar un dardo marcador que revelará la ubicación de cualquier jugador al que impacte. Los enemigos pueden destruir el Dron Búho.', 11),
(34, 'FORJACAMINOS', 'TE EQUIPAS un artefacto de tigre de Tasmania. DISPARA para enviar y tomar el control del depredador. Mientras lo controlas, DISPARA para saltar hacia adelante, lo que provoca una explosión contusiva e inflige daño a los enemigos alcanzados directamente.', 12),
(35, 'LUZ GUIA', 'TE EQUIPAS un artefacto de halcón. DISPARA para enviarlo hacia adelante. MANTÉN PRESIONADO EL DISPARO para guiar al halcón en la dirección de tu retícula. REUTILÍZALA mientras el halcón está en vuelo para transformarlo en un destello que lanza un sonido de confirmación si un enemigo estaba dentro del alcance y campo visual.', 12),
(36, 'REGENERACION', 'TE EQUIPAS un artefacto de curación. MANTÉN PRESIONADO EL DISPARO para canalizar, lo que cura aliados dentro del alcance y campo visual. Se puede reutilizar hasta que se agote la energía de curación. Skye no puede curarse a sí misma.', 12),
(37, 'NUBE VENENOSA', 'EQUIPA un emisor de gas y DISPARA para lanzarlo. Este permanecerá ahí durante toda la ronda. VUELVE A USAR la habilidad para crear una nube de gas tóxica que usa combustible. Puedes VOLVER A USAR esta habilidad varias veces y puedes recuperarla para VOLVER A DESPLEGARLA.', 13),
(38, 'CORTINA TOXICA', 'EQUIPA un lanzador de gas y DISPARA para desplegar una larga hilera de emisores de gas. VUELVE A USAR la habilidad para crear un muro de gas tóxico que usa combustible. Puedes VOLVER A USAR esta habilidad varias veces.', 13),
(39, 'MORDEDURA', 'EQUIPA un lanzador de químicos. DISPARA para lanzar un contenedor que se rompe al impactar contra el suelo. Este crea una zona química que permanece en el campo, la cual daña y ralentiza a los enemigos.', 13),
(40, 'PUNTO CIEGO', 'EQUÍPALO para arrancar un fragmento dimensional inestable de la realidad. DISPARA para lanzar el fragmento, lo que activa un destello que se disipa al impactar con una superficie sólida.', 14),
(41, 'INFILTRACION', 'EQUIPA un vínculo dimensional. DISPARA para lanzar el vínculo hacia adelante. Usa el DISPARO SECUNDARIO para colocar un vínculo en el lugar. ACTÍVALO para teletransportarte a la ubicación del vínculo. ÚSALO para activar una teletransportación falsa.', 14),
(42, 'ENGAÑO', 'EQUIPA un eco que imita el sonido de pisadas cuando se activa. DISPARA para activarlo y enviar el eco hacia adelante. Usa el DISPARO SECUNDARIO para colocar un eco en el lugar. USA el eco inactivo para enviarlo hacia adelante.', 14),
(43, 'ASTRA', 'Coloca estrellas en Modo Astral (X) ACTIVA una estrella para detonar un Pulso Estelar. El Pulso Estelar carga brevemente y luego ataca, lo que aturde a todos los jugadores en el área.', 15),
(44, 'NEBULOSA', 'Coloca estrellas en Modo Astral (tecla de definitiva). ACTIVA una estrella para transformarla en una Nebulosa (humo). USA una estrella para Disiparla, lo que devuelve la estrella para colocarla en una nueva ubicación después de un momento. Disipar forma una Nebulosa falsa brevemente en la ubicación de la estrella antes de regresar.', 15),
(45, 'POZO GRAVITACIONAL', 'Coloca estrellas en Modo Astral (X) ACTIVA una estrella para formar un Pozo Gravitacional. Los jugadores en el área son atraídos hacia el centro antes de que estalle, lo que causa que todos los jugadores que aún siguen atrapados se vuelvan frágiles.', 15),
(46, 'MEMORIA/FLASH', 'EQUIPA una granada cegadora. DISPARA para lanzarla por encima. Usa el DISPARO SECUNDARIO para lanzar una versión más débil que explota rápidamente. La granada cegadora explota luego de un corto tiempo y ciega a cualquiera que esté en la línea de visión.', 16),
(47, 'PUNTO/CERO', 'EQUIPA una cuchilla supresora. DISPARA para lanzarla. La cuchilla se adhiere a la primera superficie que toca para activarse y suprimir a cualquiera dentro del radio de explosión. Los enemigos pueden destruir la cuchilla.', 16),
(48, 'FRAG/MENTACION', 'EQUIPA un fragmento explosivo. DISPARA para lanzarlo. El fragmento se pega al piso y explota varias veces, lo que inflige daño casi mortal en el centro con cada explosión.', 16),
(49, 'CAZADOR DE CABEZAS', 'ACTÍVALA para equipar una pistola pesada. Presiona DISPARO SECUNDARIO con la pistola equipada para usar la mira.', 17),
(50, 'RENDEZVOUS', 'EQUIPA un anclaje de teletransportación. DISPARA para colocarlo en el suelo. Mientras estés en el suelo y dentro de su zona de alcance, REACTIVA para teletransportarte rápidamente al anclaje. Puedes recoger el anclaje para VOLVER A COLOCARLO en otro lugar.', 17),
(51, 'MARCA REGISTRADA', 'EQUIPA una trampa que escanea los alrededores buscando enemigos. DISPARA para colocarlo en el suelo. Cuando un enemigo visible entra en contacto, esta comienza una cuenta regresiva que, al terminar, desestabiliza el terreno a su alrededor y crea un área que permanece en la zona y ralentiza a los enemigos dentro de ella. Puedes recoger la trampa para VOLVER A COLOCARLA en otro lugar.', 17),
(52, 'CARAMBOLA', 'EQUIPA un fragmento de esencia inmortal. DISPARA para lanzar el fragmento que estalla tras un breve lapso e inflige decrecimiento temporal a todos los objetivos alcanzados.', 18),
(53, 'TRETA', 'EQUIPA para ver el campo de batalla. DISPARA para marcar las ubicaciones en las que aparecerán las nubes de Clove. Usa el DISPARO SECUNDARIO para confirmar y lanzar nubes que bloquearán la visión en las zonas seleccionadas. Clove puede usar esta habilidad después de morir.', 18),
(54, 'TENTEMPIE', 'Absorbe INSTANTÁNEAMENTE la fuerza vital de un enemigo caído al que Clove haya infligido daño o asesinado. Esto le otorga velocidad y vida de forma temporal.', 18),
(55, 'RECORTE', 'EQUIPA un proyectil molecular. Dispara para lanzarlo hacia adelante. El proyectil aplica un breve estado FRÁGIL a todos los jugadores que toque y puede atravesar objetos sólidos, incluidas las paredes.', 19),
(56, 'REMATE', 'INICIA un temporizador de enfoque. Una vez completado, entra en un estado de fluidez durante el cual los enemigos derribados que mates o dañes generan un orbe de energía. Al dispararle a este orbe obtienes un escudo que absorbe una instancia de daño de cualquier fuente.', 19),
(57, 'CONTINGENCIA', 'EQUIPA para reunir energía prismática. DISPARA para impulsar hacia adelante un muro indestructible de energía que bloquea las balas.', 19),
(58, 'SENSOR SONICO', 'EQUIPA un Sensor Sónico. DISPARA para desplegarlo. El sensor vigila un área en busca de enemigos que emitan sonidos. Conmociona la zona si detecta pisadas, disparos o una cantidad de ruido significativa.', 20),
(59, 'MALLA PROTECTORA', 'EQUIPA un disco de Malla Protectora. DISPARA para lanzarlo hacia adelante. Al caer, el disco genera barreras desde el punto de origen que bloquean el movimiento de los personajes.', 20),
(60, 'GRAVNET', 'EQUIPA una granada GravNet. DISPARA para lanzarla. Usa el DISPARO SECUNDARIO para lanzar la granada por debajo. La granada GravNet explota al caer y fuerza a los enemigos que se encuentren en la zona a agacharse y a moverse con lentitud.', 20),
(61, 'CARNALITO', 'EQUIPA a Carnalito. DISPARA para enviar a Carnalito hacia adelante en busca de enemigos; Carnalito libera una explosión contusiva hacia el primer enemigo que ve. Usa DISPARO SECUNDARIO al apuntar a un sitio de Spike o a una Spike plantada para que Carnalito plante o desactive la Spike, respectivamente. Para que la plante, Gekko debe tener la Spike en su inventario. Cuando Carnalito se agota, regresa a su forma de glóbulo en reposo; INTERACTÚA para recuperar el glóbulo y obtener otra carga de Carnalito tras un breve enfriamiento.', 21),
(62, 'VERTIGO', 'EQUIPA a Vértigo. DISPARA para enviar a Vértigo volando hacia adelante. Vértigo carga y luego libera explosiones de plasma contra los enemigos en su campo de visión; los enemigos alcanzados por su plasma quedan cegados. Cuando Vértigo se agota, regresa a su forma de glóbulo en reposo; INTERACTÚA para recuperar el glóbulo y obtener otra carga de Vértigo tras un breve enfriamiento.\r\nEstamosesperando\r\nConteni', 21),
(63, 'POGO BRUTAL', 'EQUIPA a Pogo. DISPARA para lanzar a Pogo como una granada; presiona el DISPARO SECUNDARIO para lanzarlo por abajo. Al aterrizar, Pogo se duplica en una amplia zona y explota después de un corto lapso de tiempo.', 21),
(64, 'DOMO', 'EQUIPA una esfera de agua protectora. DISPARA para lanzar. Usa el DISPARO SECUNDARIO para lanzar por abajo. Al impactar contra el suelo, genera un escudo de agua destructible que bloquea balas.', 22),
(65, 'MAREA ALTA', 'EQUIPA un muro de agua. DISPARA para enviar el agua hacia adelante por el suelo. MANTÉN PRESIONADO EL DISPARO para guiar el agua en la dirección de tu retícula, y genera un muro a lo largo de la trayectoria del agua. Puede atravesar paredes. Usa el DISPARO SECUNDARIO mientras curvas el muro para detener su trayectoria anticipadamente. Los jugadores impactados quedan RALENTIZADOS.', 22),
(66, 'CASCADA', 'EQUIPA una ola de agua. DISPARA para lanzar la ola hacia adelante y a través de los muros. REUTILÍZALA para detener el avance de la ola. Los jugadores impactados quedan RALENTIZADOS.', 22),
(67, 'CAPTURAR', 'Equipa un orbe de tinta de las pesadillas. DISPARA para lanzar el orbe, el cual caerá en picada al suelo después de un tiempo determinado. Al impactar contra el suelo, la tinta explotará y creará una zona en la que los enemigos que queden atrapados en ella no podrán escapar por medios normales. VUELVE A USAR la habilidad para dejar caer el proyectil anticipadamente mientras vuela.', 23),
(68, 'ATORMENTAR', 'Equipa una entidad de las pesadillas. DISPARA para lanzar el orbe, el cual caerá en picada al suelo después de un tiempo determinado. Al impactar contra el suelo, el orbe se convertirá en un ente de las pesadillas que revelará la ubicación de los enemigos en su línea de visión. Los enemigos pueden destruir esta entidad. VUELVE A USAR la habilidad para dejar caer el proyectil anticipadamente mientras vuela.', 23),
(69, 'ACECHADORA', 'EQUIPA una Acechadora. DISPARA para lanzar a la Acechadora, que viajará en línea recta. La Acechadora se enfocará en cualquier enemigo o rastro en su cono de visión frontal y lo perseguirá y ofuscará si lo alcanza. MANTÉN PRESIONADO el botón de DISPARO para guiar a la Acechadora en la dirección de tu retícula.', 23),
(70, 'ELECTRORREBOTE', 'Lanza un rayo de energía INSTANTÁNEO que rebota una vez. Luego de golpear cada superficie, el rayo electrifica el terreno debajo, lo que provoca una explosión conmocionante.', 24),
(71, 'VELOCIDAD RELAMPAGO', 'Canaliza INSTANTÁNEAMENTE el poder de Neon para aumentar su velocidad. Al cargarse, utiliza el DISPARO SECUNDARIO para activar un deslizamiento eléctrico. La carga del deslizamiento se reinicia cada dos asesinatos.', 24),
(72, 'CARRIL RAPIDO', 'DISPARA dos líneas de energía hacia adelante por el suelo que se extienden por una corta distancia o hasta golpear contra una superficie. Las líneas se convierten en paredes de electricidad estática que bloquean la visión y dañan a cualquier enemigo que quiera atravesarlas.', 24);



--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id`, `nombre`, `apellido`, `edad`, `email`, `nacionalidad`, `apodo`, `fechaNacimiento`) VALUES
(1, 'Nikita', 'Sirmitev', 21, 'DERKE@FNATIC.COM', 'FINLANDES', 'DERKE', '2003-02-06'),
(2, 'Timofey', 'Khromov', 21, 'CHRONICLE@FNATIC.COM', 'RUSO', 'CHRONICLE', '2002-08-16'),
(3, 'Erick', 'Santos', 21, 'ASPAS@LEVIATAN.COM', 'BRASILEÑO', 'ASPAS', '2003-06-15'),
(4, 'Adolfo', 'Gallego', 24, 'FIT1NHO@GIANTX.COM', 'ESPAÑOL', 'FIT1NHO', '2000-02-08'),
(5, 'Oscar', 'Cañellas', 28, 'MIXWELL@STREAMING.ES', 'ESPAÑOL', 'MIXWELL', '1995-10-10');

-- --------------------------------------------------------

-- Volcado de datos para la tabla `jugadores_agentes`
--

INSERT INTO `jugadores_agentes` (`id`, `jugador_id`, `agente_id`, `fecha`) VALUES
(1, 3, 1, '2024-07-01 12:00:00'),
(2, 4, 1, '2024-07-03 00:00:00'),
(3, 2, 3, '2024-07-04 12:00:00'),
(4, 1, 4, '2024-07-06 00:00:00'),
(5, 4, 5, '2024-07-07 12:00:00'),
(6, 5, 5, '2024-07-09 00:00:00'),
(7, 1, 8, '2024-07-10 12:00:00'),
(8, 4, 8, '2024-07-12 00:00:00'),
(9, 3, 12, '2024-07-13 12:00:00'),
(10, 2, 13, '2024-07-15 00:00:00'),
(11, 5, 13, '2024-07-16 12:00:00'),
(12, 1, 14, '2024-07-18 00:00:00'),
(13, 4, 14, '2024-07-19 12:00:00'),
(14, 2, 16, '2024-07-21 00:00:00'),
(15, 3, 16, '2024-07-22 12:00:00'),
(16, 5, 17, '2024-07-24 00:00:00'),
(17, 5, 18, '2024-07-25 12:00:00');


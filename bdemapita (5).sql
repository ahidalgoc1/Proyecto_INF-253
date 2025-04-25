-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2025 a las 06:41:15
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdemapita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idadmin` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `paterno` varchar(100) DEFAULT NULL,
  `materno` varchar(100) DEFAULT NULL,
  `ci` int(20) DEFAULT NULL,
  `genero` enum('M','F') DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idadmin`, `idpersona`, `nombre`, `paterno`, `materno`, `ci`, `genero`, `telefono`, `fechanacimiento`, `email`) VALUES
(1, 6, 'Carla', 'Vargas', 'Quispe', 44556677, 'F', '987654321', '1993-06-10', 'carla.vargas@emapa.bo'),
(2, 7, 'Miguel', 'Rojas', 'Lopez', 55667788, 'M', '321987654', '1987-12-03', 'miguel.rojas@emapa.bo'),
(3, 8, 'Lucia', 'Torres', 'Garcia', 66778899, 'F', '456123789', '1991-08-18', 'lucia.torres@emapa.bo'),
(4, 40, 'Samuel', 'Toreez', 'Olmos', 39843894, 'M', '338489', '2000-05-08', 'samuolmos@emapa.bo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idcarrito` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriaproducto`
--

CREATE TABLE `categoriaproducto` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoriaproducto`
--

INSERT INTO `categoriaproducto` (`idcategoria`, `nombre`, `descripcion`) VALUES
(1, 'Granos y Cereales', 'Productos como arroz, quinua, trigo, y avena'),
(2, 'Harinas y Derivados', 'Harinas de trigo, maíz, y productos derivados'),
(3, 'Azúcares y Endulzantes', 'Azúcar blanca, azúcar morena, y endulzantes naturales'),
(4, 'Aceites y Grasas', 'Aceites comestibles, mantequillas y derivados'),
(5, 'Lácteos y Derivados', 'Productos como leche, yogurt, y quesos'),
(6, 'Legumbres y Semillas', 'Frijoles, lentejas, chía, y sésamo'),
(7, 'Carnes y Charcutería', 'Carne de res, pollo, y charque'),
(8, 'Frutas y Verduras', 'Frutas frescas, verduras, y tubérculos'),
(9, 'Productos de Panificación', 'Panela, levadura, y productos para panadería'),
(10, 'Bebidas y Confitería', 'Café, chocolate, y productos dulces'),
(1, 'Granos y Cereales', 'Productos como arroz, quinua, trigo, y avena'),
(2, 'Harinas y Derivados', 'Harinas de trigo, maíz, y productos derivados'),
(3, 'Azúcares y Endulzantes', 'Azúcar blanca, azúcar morena, y endulzantes naturales'),
(4, 'Aceites y Grasas', 'Aceites comestibles, mantequillas y derivados'),
(5, 'Lácteos y Derivados', 'Productos como leche, yogurt, y quesos'),
(6, 'Legumbres y Semillas', 'Frijoles, lentejas, chía, y sésamo'),
(7, 'Carnes y Charcutería', 'Carne de res, pollo, y charque'),
(8, 'Frutas y Verduras', 'Frutas frescas, verduras, y tubérculos'),
(9, 'Productos de Panificación', 'Panela, levadura, y productos para panadería'),
(10, 'Bebidas y Confitería', 'Café, chocolate, y productos dulces');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `paterno` varchar(100) DEFAULT NULL,
  `materno` varchar(100) DEFAULT NULL,
  `ci` int(20) DEFAULT NULL,
  `genero` enum('M','F') DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `idpersona`, `nombre`, `paterno`, `materno`, `ci`, `genero`, `telefono`, `fechanacimiento`, `email`) VALUES
(1, 1, 'Juan', 'Perez', 'Gomez', 12345678, 'M', '789456123', '1985-03-12', 'juan.perez@gmail.com'),
(2, 2, 'Maria', 'Lopez', 'Fernandez', 87654321, 'F', '789123456', '1990-07-20', 'maria.lopez@gmail.com'),
(3, 3, 'Carlos', 'Gonzalez', 'Ramirez', 11223344, 'M', '654789321', '1988-11-05', 'carlos.gonzalez@gmail.com'),
(4, 4, 'Ana', 'Martinez', 'Castro', 22334455, 'F', '654321789', '1995-01-15', 'ana.martinez@gmail.com'),
(5, 5, 'Luis', 'Hernandez', 'Diaz', 33445566, 'M', '321654987', '1982-09-25', 'luis.hernandez@gmail.com'),
(7, 39, 'Ariana', 'Espinoza', 'Sanches', 7474856, 'F', '7949458', '2004-04-20', 'arisanches@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idempleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `cargo` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idempleado`, `nombre`, `apellido`, `telefono`, `cargo`, `salario`) VALUES
(1, 'Ariana Daniela', 'Hidalgo Colque', '76705085', 'administrador', 5000.00),
(2, 'Erika', 'Quecaño Uruña', '76739114', 'administrador', 5000.00),
(3, 'Kelly Esvenka', 'Jimenez Quenta', '67809023', 'administrador', 5000.00),
(4, 'Melina Viana', 'Quiñajo Berrios', '67838388', 'administrador', 5000.00),
(5, 'Richard Jenrry', 'Bigabriel Cabrera', '672352688', 'administrador', 5000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idfactura` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `monto_total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `idinventario` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `ultima_actualizacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `genero` enum('M','F') NOT NULL,
  `ci` int(20) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipo` enum('cliente','administrador') NOT NULL DEFAULT 'cliente',
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `genero`, `ci`, `paterno`, `materno`, `nombre`, `telefono`, `fechanacimiento`, `email`, `tipo`, `fecha_registro`) VALUES
(1, 'M', 12345678, 'Perez', 'Gomez', 'Juan', '789456123', '1985-03-12', 'juan.perez@gmail.com', 'cliente', '2024-12-12 10:00:00'),
(2, 'F', 87654321, 'Lopez', 'Fernandez', 'Maria', '789123456', '1990-07-20', 'maria.lopez@gmail.com', 'cliente', '2024-12-12 10:05:00'),
(3, 'M', 11223344, 'Gonzalez', 'Ramirez', 'Carlos', '654789321', '1988-11-05', 'carlos.gonzalez@gmail.com', 'cliente', '2024-12-12 10:10:00'),
(4, 'F', 22334455, 'Martinez', 'Castro', 'Ana', '654321789', '1995-01-15', 'ana.martinez@gmail.com', 'cliente', '2024-12-12 10:15:00'),
(5, 'M', 33445566, 'Hernandez', 'Diaz', 'Luis', '321654987', '1982-09-25', 'luis.hernandez@gmail.com', 'cliente', '2024-12-12 10:20:00'),
(6, 'F', 44556677, 'Vargas', 'Quispe', 'Carla', '987654321', '1993-06-10', 'carla.vargas@emapa.bo', 'administrador', '2024-12-12 10:25:00'),
(7, 'M', 55667788, 'Rojas', 'Lopez', 'Miguel', '321987654', '1987-12-03', 'miguel.rojas@emapa.bo', 'administrador', '2024-12-12 10:30:00'),
(8, 'F', 66778899, 'Torres', 'Garcia', 'Lucia', '456123789', '1991-08-18', 'lucia.torres@emapa.bo', 'administrador', '2024-12-12 10:35:00'),
(38, 'M', 9898450, 'Perez', 'Lopez', 'Rodrigo', '17832', '2003-03-03', 'rodrigo@gmail.com', 'cliente', '2024-12-12 19:53:03'),
(39, 'F', 7474856, 'Espinoza', 'Sanches', 'Ariana', '7949458', '2004-04-20', 'arisanches@gmail.com', 'cliente', '2025-04-24 23:54:38'),
(40, 'M', 39843894, 'Toreez', 'Olmos', 'Samuel', '338489', '2000-05-08', 'samuolmos@emapa.bo', 'administrador', '2025-04-24 23:55:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `fechavencimiento` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `idcategoria`, `nombre`, `descripcion`, `precio`, `stock`, `fechavencimiento`, `imagen`) VALUES
(1, 1, 'Arroz', 'Arroz de la mas fina calidad 1Kg', 20.00, 250, '2025-08-23', 'http://localhost/emapita/include/panel_inicio/img/productos/arroz.jpg'),
(2, 1, 'Quinua', 'Quinua orgánica, bolsa de 500g', 10.00, 300, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/quinua.jpg'),
(3, 1, 'Trigo', 'Trigo en grano para molienda, kilo', 4.00, 200, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/trigo.jpeg'),
(4, 1, 'Maíz Amarillo', 'Maíz para consumo humano, kilo', 3.00, 300, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/maiz-amarillo.jpg'),
(5, 1, 'Trigo Perlado', 'Trigo listo para consumo, kilo', 5.00, 200, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/trigoperlado.jpeg'),
(6, 2, 'Harina de Trigo', 'Harina especial para panificación', 3.50, 150, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/harinaDeTrigo.jpg'),
(7, 2, 'Harina de Maíz', 'Harina fina de maíz, kilo', 5.00, 170, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/HarinaDeMaiz.jpeg'),
(8, 2, 'Harina Integral', 'Harina de trigo integral, kilo', 4.50, 140, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/harina-integral.jpg'),
(9, 3, 'Azúcar Moreno', 'Azúcar sin refinar, kilo', 4.00, 180, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/azucar-morena-1kg.jpg'),
(10, 3, 'Panela', 'Azúcar de caña en bloque, kilo', 6.50, 100, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/panela.jpeg'),
(11, 3, 'Miel', 'Miel pura de abeja, frasco de 500g', 30.00, 90, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/miel.jpg'),
(12, 4, 'Aceite Vegetal', 'Aceite comestible 1 litro', 12.50, 120, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/Aceite-Fino-Vegetal.webp\"'),
(13, 4, 'Mantequilla', 'Mantequilla sin sal, 200g', 12.00, 70, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/mantequilla.jpeg'),
(14, 5, 'Leche en Polvo', 'Leche deshidratada, bolsa de 1kg', 40.00, 100, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/lechepolvo.jpg'),
(15, 5, 'Leche Fresca', 'Leche pasteurizada, litro', 6.00, 200, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/Leche-Fresca.jpg'),
(16, 5, 'Yogurt', 'Yogurt natural, botella de 1 litro', 10.00, 100, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/Yogurt-familiar-Mora.png'),
(17, 5, 'Queso', 'Queso fresco artesanal, kilo', 35.00, 80, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/queso.jpg'),
(18, 6, 'Lentejas', 'Lentejas seleccionadas, kilo', 8.00, 250, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/lentejas.jpg'),
(19, 6, 'Frijol Negro', 'Frijol de alta calidad, kilo', 7.50, 200, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/Frijoles-enteros-negros-400g.webp'),
(20, 6, 'Cañahua', 'Granos de cañahua, kilo', 12.00, 150, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/canihua.png'),
(21, 6, 'Soya', 'Granos de soya, kilo', 5.50, 180, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/soya.jpeg'),
(22, 6, 'Chía', 'Semillas de chía, paquete de 250g', 15.00, 100, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/chia.jpg'),
(23, 6, 'Sésamo', 'Semillas de sésamo, paquete de 250g', 10.00, 80, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/sesamo.jpeg'),
(24, 7, 'Pollo Congelado', 'Pollo entero, kilo', 18.00, 150, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/pollocongelado.webp'),
(25, 7, 'Carne de Res', 'Carne para asado, kilo', 40.00, 100, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/carne de res.jpeg'),
(26, 7, 'Charque', 'Carne deshidratada de res, kilo', 60.00, 50, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/charque.jpg'),
(27, 8, 'Plátano', 'Plátano maduro, racimo de 2kg', 8.00, 150, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/platano.jpeg'),
(28, 8, 'Papaya', 'Papaya fresca, unidad de 1.5kg', 15.00, 80, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/papaya.jpg'),
(29, 8, 'Tomate', 'Tomates frescos, kilo', 5.50, 300, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/tomate.jpeg'),
(30, 8, 'Cebolla', 'Cebollas moradas, kilo', 4.00, 400, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/cebolla.jpeg'),
(31, 8, 'Papa', 'Papa criolla, kilo', 2.80, 500, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/papa.jpg'),
(32, 8, 'Naranja', 'Naranjas dulces, kilo', 8.00, 300, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/naranja.jpeg'),
(33, 8, 'Mandarina', 'Mandarinas jugosas, kilo', 7.50, 200, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/mandarina.jpeg'),
(34, 8, 'Uva', 'Uvas frescas, kilo', 12.00, 200, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/uva.jpeg'),
(35, 8, 'Sandía', 'Sandía fresca, unidad de 5kg', 25.00, 50, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/sandia.jpeg'),
(36, 9, 'Harina de Trigo', 'Harina especial para panificación', 3.50, 150, '0000-00-00', 'http://localhost/emapita/include/panel_inicio/img/productos/harinaDeTrigo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nombredeempresa` varchar(100) NOT NULL,
  `codigo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `nombre`, `contacto`, `telefono`, `email`, `nombredeempresa`, `codigo`) VALUES
(1, 'Roberto Ramirez', '76705085', '2897868', 'pilandina@pilandina.pil', 'PIL Andina', '01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `nombre`, `direccion`, `telefono`) VALUES
(1, 'Satelite', 'El Alto', '284578656');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idempleado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idempleado`, `fecha`, `total`) VALUES
(2, 1, '2025-04-24', 20.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idadmin`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`idcarrito`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idempleado`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`),
  ADD UNIQUE KEY `idempleado` (`idempleado`),
  ADD KEY `idventa` (`idventa`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`idinventario`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD UNIQUE KEY `ci` (`ci`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `idempleado` (`idempleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `idcarrito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `idempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `idinventario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE;

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE CASCADE;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

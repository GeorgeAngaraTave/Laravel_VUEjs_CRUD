-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2018 a las 08:43:39
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_vue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2018_06_22_204546_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `keep` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `keep`, `created_at`, `updated_at`) VALUES
(16, 'Quis asperiores in voluptas vitae impedit.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(17, 'Dolorem accusantium repudiandae omnis necessitatibus quo laudantium aperiam qui.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(18, 'Vel voluptates ex non quo alias.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(19, 'Consectetur voluptatibus quam veritatis molestiae omnis.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(20, 'Ipsa dicta rerum rerum.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(21, 'Et est velit recusandae eligendi.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(22, 'Harum est fugiat itaque omnis culpa adipisci quo.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(23, 'Et nihil quia dolorem debitis nobis voluptatibus non.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(24, 'Ad et dolores fuga sed asperiores nostrum.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(25, 'Tempore error commodi sit.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(26, 'Voluptas rerum aliquid voluptas sit.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(27, 'Aliquam minus neque maiores facere.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(28, 'Voluptates beatae doloremque omnis qui enim debitis dolor id.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(29, 'Amet consectetur sequi dolor enim accusamus eum voluptas.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(30, 'Et et consequuntur voluptatem ea fugiat dolorem quis.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(31, 'Quis eos tempora quis voluptas aut.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(32, 'Quas aut similique sapiente ut voluptas reiciendis.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(33, 'Ea est ipsum voluptates beatae non autem deleniti.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(34, 'Nesciunt aliquam mollitia aut sed ea odio nisi reiciendis.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(35, 'Similique sed consequatur consequuntur sed quia laboriosam dolorum magni.', '2018-06-23 07:08:42', '2018-06-23 07:08:42'),
(36, 'Nueva tarea', '2018-06-23 09:16:43', '2018-06-23 09:16:43'),
(38, 'Super tarea poco importante', '2018-06-23 09:54:58', '2018-06-23 09:58:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2022 a las 21:04:01
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
-- Base de datos: `laravelf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Informacion` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `Nombre`, `Imagen`, `Informacion`, `created_at`, `updated_at`) VALUES
(1, 'Abisinio', 'uploads/UYAwoUOCsoaZPr2ejtWs7la4FCq5McOdqfHQT6u2.jpg', 'Frecuentemente se describe a los abisinios como pequeños pumas, lo que no es de extrañar dado su cuerpo esbelto y atlético con patas largas y su carácter vivaz. Estas características convierten al abisinio en una raza de gatos muy ligera, en la que las hembras pesan hasta 4 kg y los machos, hasta 5 kg.', NULL, NULL),
(2, 'American Curl', 'uploads/EYFJYwJL0DxVRQqDYKlzhukCVBmVxTZvVKNI5K5V.jpg', 'Los american curl reciben su nombre por la poco común forma ondulada de sus orejas: de tamaño mediano, colocadas en forma vertical, tienen una base ancha, y las puntas son redondeadas y tiene mechones de pelo que apuntan hacia la parte posterior de la cabeza. En las crías, las orejas comienzan a ondularse después de unos cuatro a seis días, la forma definitiva no se aprecia hasta pasados unos meses. La curvatura del oído externo es individual y varía de un gatito a otro, ¡en casos extremos puede ser de hasta 180 grados! Sin embargo, esto no influencia el sentido del oído del felino, además, sus orejas tienen la misma movilidad que las de los demás animales.', NULL, NULL),
(3, 'American shorthair', 'uploads/hcynv6jqXqx9wHkqKK98wvlFr9Pz2VW8PUwghenM.jpg', 'El gato americano de pelo corto es activo, atlético y saludable. Es de tamaño mediano, fuerte y musculoso, sin embargo, tiene una complexión ágil: el ancho tórax es soportado por unas patas de longitud mediana y patas redondas. La cola también es de tamaño mediano y tiene una base ancha. El gato americano de pelo corto llama la atención por sus ojos brillantes, a menudo amarillos, atentos y ligeramente inclinados. Estos se encuentran sobre un hocico grande y angular que encaja perfectamente con su perfil cóncavo con un ligero stop. Sus orejas son medianas y están en posición vertical, la distancia entre ellas es pequeña.', NULL, NULL),
(4, 'American wirehair', 'uploads/EvupIHeA5rtJNubgpGF604hoTjAq9694XPw3ZAsd.jpg', 'El distintivo del american wirehair es la estructura de su pelaje a la que debe su nombre. El pelo áspero es resultado de una mutación espontánea que se hereda de forma dominante. Le proporciona un pelaje denso y áspero. El resultado es una estructura del pelaje única: cada pelo individual está ondulado y se riza en las puntas. Incluso los bigotes parecen tener ondas. La estructura especial del pelaje hace que el gato americano de pelo áspero parezca un poco soñoliento y desaliñado, lo que, al mismo tiempo contribuye a la adorable apariencia de la raza. Sin embargo, incluso entre los american wirehair hay diferencias en la textura del pelo. El gen se hereda de forma dominante. Cuanto más fuerte es la disposición, más fuerte es el rasgo epónimo.', NULL, NULL),
(5, 'Angora turco', 'uploads/PlfUl9r1rGKvCe2AHExFSOZaCnP6RnqZEbvlJVBY.jpg', 'El angora turco, denominado en Turquía Ankara kedisi, llegó incluso a considerarse gato nacional, y no es de extrañar, pues este felino elegante, fuerte, de hasta 5 kg de peso cautiva a muchos con un pelaje largo que se caracteriza por su tacto sedoso. Al no tener manto inferior, queda pegado al cuerpo y no supone un gran esfuerzo a la hora de cuidarlo. El clima de su lugar de origen es la razón por la cual, en invierno, desarrolla un pelo denso y tupido con un collar marcado, pero que en verano se vuelve corto, ligero y sedoso. Esta raza se adaptó perfectamente a los calurosos veranos y a los fríos inviernos de las zonas montañosas de Anatolia y el Cáucaso.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_23_233342_create_galerias_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ferney', 'ferney123@gmail.com', NULL, '$2y$10$C4vlUGuKPPU2gcs.bAI.leXk/fohs7G5xPtX6FfIrhkaMoRoso9wu', NULL, '2022-12-03 23:44:32', '2022-12-03 23:44:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

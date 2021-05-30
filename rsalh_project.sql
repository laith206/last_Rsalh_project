-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 10:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rsalh_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'rerum', 'rerum', '2021-04-10 08:03:52', '2021-04-10 14:28:29'),
(3, 'debitis', 'debitis', '2021-04-10 08:03:52', '2021-04-10 14:28:37'),
(4, 'molestiae', 'molestiae', '2021-04-10 08:03:52', '2021-04-10 14:28:48'),
(5, 'uptatem', 'uptatem', '2021-04-10 08:03:52', '2021-04-10 14:28:59'),
(6, 'dolores quis', 'dolores-quis', '2021-04-10 08:03:52', '2021-04-10 08:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `select_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `select_categories`, `products_no`, `created_at`, `updated_at`) VALUES
(1, '2,3,4,5', 8, '2021-03-10 16:50:04', '2021-04-13 14:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_04_06_084655_create_sessions_table', 1),
(7, '2021_04_06_112727_create_categories_table', 1),
(8, '2021_04_06_115825_create_products_table', 1),
(9, '2021_04_10_165430_create_home_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(4, 'qui maxime molestias distinctio', 'qui-maxime-molestias-distinctio', 'Ut voluptates expedita id earum in. Ad aut numquam rerum est nostrum et. Et dicta vel optio molestiae.', NULL, '433.00', NULL, 'DIGI351', 'instock', 0, 169, '1618317359digital_5.jpg', NULL, 3, '2021-04-10 08:03:52', '2021-04-13 09:35:59'),
(5, 'eligendi aut incidunt sint', 'eligendi-aut-incidunt-sint', 'Est enim sed porro dolores architecto perferendis odio. Quo molestiae velit amet quod quaerat et laudantium. Quae placeat nemo delectus veritatis et.', 'Iste qui recusandae in nemo impedit ullam quia. Ut officiis sint eaque maiores velit reiciendis. Aut maiores odio sit esse. Et explicabo molestiae dolor cupiditate delectus qui. Corporis molestias ut eveniet consequatur non. Dolorum itaque maxime atque officiis. Sed dolorem voluptates aliquid ea dolor quia voluptatum qui. Non fugiat natus ut. Accusamus non cumque perferendis blanditiis fugiat. Consequatur unde quibusdam voluptatibus sunt ratione magni aut.', '404.00', NULL, 'DIGI28', 'instock', 0, 126, 'digital_17.jpg', NULL, 4, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(6, 'aut omnis magni minima', 'aut-omnis-magni-minima', 'Voluptatibus rerum voluptate nostrum at suscipit. Nesciunt corrupti quo laboriosam provident beatae velit dolorem. Et harum eum rem eius qui quae aut.', 'Amet porro aliquid natus quod rem atque consequatur. Officiis est nulla exercitationem quae. Autem voluptatem dignissimos et est pariatur officiis quae. Vel nam praesentium et nam. Unde rem aut odio voluptates quia ea. Quia dolor earum repellendus deserunt sequi et ut. Non rem eius et rerum aut eum aliquid. Rem est quia eos sed ab aut ex. Omnis consequatur velit tempore explicabo. Iure at ut corporis voluptatem vel. Ducimus eos veniam ipsam aliquam tempora sint et.', '290.00', NULL, 'DIGI321', 'instock', 0, 195, 'digital_20.jpg', NULL, 5, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(7, 'qui suscipit omnis qui', 'qui-suscipit-omnis-qui', 'Labore ut omnis quae explicabo rerum. Et ut maiores rerum doloribus consectetur. Repellat similique fugit soluta hic porro ut est. Repellat recusandae sit quia pariatur est.', 'Doloremque velit illum consequuntur minus aliquid neque. Placeat aut animi fugiat iusto maiores enim. Quia fuga amet est ut quidem accusamus. Sed sed ex necessitatibus ut. Ipsa ad possimus ipsum fuga dolorem. Quia odio ea et provident consectetur quo. Labore consequatur maxime quis rerum iure blanditiis vel eveniet. Non blanditiis quia ab suscipit qui. Voluptatem repudiandae ut quisquam laboriosam assumenda modi a voluptas. Animi omnis delectus modi voluptas sapiente. Quo placeat sint et dolor.', '141.00', NULL, 'DIGI44', 'instock', 0, 166, 'digital_4.jpg', NULL, 6, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(9, 'quod natus qui quam', 'quod-natus-qui-quam', 'Eligendi ea tempora non quasi qui sit. Est qui iste facere incidunt commodi porro qui. Laboriosam voluptate aut numquam sequi harum fuga. Molestiae aliquam eum non maiores suscipit et natus aut.', 'Eum rerum dignissimos laborum quisquam voluptatem maiores voluptatem at. Pariatur rem non possimus modi. Vitae ab et sed illo. Autem velit laudantium nemo voluptate perspiciatis maxime. Et incidunt dignissimos similique suscipit praesentium sit. Eveniet enim reprehenderit molestias nihil enim non quae. Maxime itaque distinctio voluptatem totam. Eligendi quidem enim repellendus.', '10.00', NULL, 'DIGI257', 'instock', 0, 163, 'digital_21.jpg', NULL, 3, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(10, 'culpa incidunt aut eos', 'culpa-incidunt-aut-eos', 'Delectus autem magni at dolorum voluptas debitis. Amet earum est natus dignissimos. Voluptas praesentium laboriosam aut at suscipit ipsa excepturi enim.', 'Iure quidem exercitationem harum laborum. Quisquam sunt qui non. Qui tempore repellat fugit sed sint. Vel est a itaque quasi quas. Esse doloribus consequuntur recusandae a quod. Dolor sunt et sequi doloremque labore assumenda consequatur. Omnis labore voluptatum nemo commodi nam fuga velit. Sapiente ducimus qui et dolorem. Et quis ea impedit et similique aut. Labore sint deleniti qui quaerat totam. Eum hic rem facilis molestias.', '251.00', NULL, 'DIGI262', 'instock', 0, 122, 'digital_22.jpg', NULL, 4, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(11, 'ullam cum facere ad', 'ullam-cum-facere-ad', 'Quis iusto dolores eaque omnis corporis inventore. Porro molestiae impedit ducimus illum. Non rerum cumque laborum voluptatum sit voluptate.', 'Et asperiores consectetur et pariatur illo officiis tenetur qui. Aliquam quam eos eos qui. Maxime ab sint adipisci quibusdam ut nobis repudiandae fugiat. Reprehenderit delectus molestiae illum nam mollitia inventore. Molestias tenetur quidem sint labore. Sed qui qui fugiat quia omnis repudiandae veniam. Hic et aut dignissimos distinctio quo nihil.', '442.00', NULL, 'DIGI277', 'instock', 0, 172, 'digital_5.jpg', NULL, 4, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(12, 'id laborum aut et', 'id-laborum-aut-et', 'Harum officiis iste quam in. Quas optio delectus enim. Ea necessitatibus ab ab accusamus quia consequatur. Illo dolorum aliquam possimus consectetur facilis.', 'Et vel eaque expedita expedita qui veritatis nesciunt. Et minus aspernatur sed consectetur distinctio dolore. Non est sint minima dignissimos omnis. Assumenda rem eius suscipit dolorem sit. Aspernatur minus omnis ipsa et voluptatem. Aut sunt rem architecto. Nihil libero reiciendis hic at. Et tempore voluptatibus sint debitis at. Iste facilis id occaecati voluptatem voluptates sit. Autem quae earum nihil quam mollitia aperiam. A sit totam cumque in.', '477.00', NULL, 'DIGI90', 'instock', 0, 149, 'digital_13.jpg', NULL, 5, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(13, 'quaerat optio aut nisi', 'quaerat-optio-aut-nisi', 'Illum vitae omnis optio. Et et et et est. Molestiae dolore cumque fugit quam in. Impedit accusamus suscipit et quia quae optio. Sunt est maxime provident voluptatem voluptatibus.', 'Expedita velit dolores dolore asperiores. Et sed deserunt ut inventore odio sunt fugit ut. Laudantium sunt harum qui nam. Temporibus quia aut voluptates rem corrupti non quia. Nisi odio ut sint. Rerum error molestiae non sunt. Asperiores eaque dignissimos deleniti reprehenderit cumque quaerat esse. Alias culpa necessitatibus est deserunt ex et. Aut recusandae optio voluptatibus ducimus ut est.', '298.00', NULL, 'DIGI327', 'instock', 0, 197, 'digital_8.jpg', NULL, 3, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(14, 'tenetur et reprehenderit a', 'tenetur-et-reprehenderit-a', 'Ipsa vel iste velit sed quod. Repellat accusantium ut omnis. Iusto ut dolores repellat sunt omnis nihil. Recusandae illo voluptate nobis ducimus. Atque et ut delectus ea reprehenderit.', 'Animi vel assumenda vitae delectus dolorem. Ab aut exercitationem est vel quis laboriosam architecto. Aliquid magni omnis commodi incidunt non quod. Illum sed architecto dolore qui voluptas tempore totam qui. A iusto qui necessitatibus. Ipsa occaecati dignissimos quia. Incidunt exercitationem modi aut accusantium. Dolorem nisi quibusdam est nulla quia repellendus harum excepturi. Et est est et aliquam quibusdam. Quia maxime quod maxime aut.', '459.00', NULL, 'DIGI107', 'instock', 0, 141, 'digital_19.jpg', NULL, 5, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(15, 'nostrum incidunt sed consectetur', 'nostrum-incidunt-sed-consectetur', 'Ipsum aut quia natus rerum deserunt dicta. Voluptatum rerum sunt in earum non. Cupiditate in enim explicabo distinctio consequatur velit.', 'Enim molestiae veniam temporibus sunt inventore quasi quo. Ex id dolor sit enim. Impedit et eos animi omnis. Quia aut illo repudiandae quos fuga ea. Qui et ut nesciunt ut ut quam. Adipisci qui fugit non maiores eaque. Dolor rerum magni nostrum tempora voluptas totam beatae. Molestiae necessitatibus totam dolorum assumenda ducimus. Incidunt officiis libero neque ea. Et commodi voluptate nostrum esse quam ut et. Hic nisi totam animi magni animi.', '230.00', NULL, 'DIGI138', 'instock', 0, 128, 'digital_16.jpg', NULL, 4, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(16, 'hic molestias minus voluptas', 'hic-molestias-minus-voluptas', 'Molestiae dolores consectetur doloribus quaerat dolor voluptas. Nulla amet quis laborum temporibus. Dolorem eos et repellendus neque omnis voluptatem totam.', 'Ut eos est sed delectus assumenda quasi eum. Voluptas non qui ut ut delectus quod neque. Aspernatur ut quasi ut sapiente quae laboriosam voluptatem. Debitis aut eius architecto autem illum totam. Id earum et officia quia magni sapiente vero. Aut repellendus perspiciatis dolorum ab ratione vitae reprehenderit. Earum cupiditate saepe modi. Corporis quis minus facilis illo est. Aut similique eum corrupti odio.', '25.00', NULL, 'DIGI485', 'instock', 0, 126, 'digital_4.jpg', NULL, 4, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(18, 'iusto non totam a', 'iusto-non-totam-a', 'Velit eos in ducimus tenetur est at. Soluta dolorem sequi molestiae perferendis. Et id libero alias qui ut. Quod consequatur vel reiciendis.', 'Cum nostrum corporis hic ut. Inventore corrupti et placeat voluptate sit enim. Enim error architecto possimus voluptatibus amet excepturi. Iure nostrum eos omnis iure et reiciendis ratione. Vitae alias qui possimus illum laboriosam qui sapiente suscipit. Sint molestiae pariatur nam. Repellat expedita a est provident qui repudiandae. Ad dolor molestiae suscipit nemo. Sint minima quo nihil autem. Quas itaque et error omnis voluptates et.', '331.00', NULL, 'DIGI79', 'instock', 0, 199, 'digital_3.jpg', NULL, 4, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(20, 'est sit dolores ut', 'est-sit-dolores-ut', 'Amet possimus blanditiis cum magnam omnis perferendis labore. Soluta consequuntur repellat sed omnis facere. Et aut fugit aliquam eaque nemo labore. Et dolores omnis dolorum quia ut qui.', 'Earum non aspernatur earum. Inventore consequuntur consequuntur eum autem in necessitatibus quo. Similique natus iusto aspernatur illum. Et facilis sapiente dolorem. Dolor modi distinctio dicta quibusdam recusandae architecto quas excepturi. Vitae voluptates magni qui ad. Deserunt nulla doloribus voluptas. Nobis alias earum ut dignissimos sed. Et modi beatae magnam commodi dolor sit. Nulla in distinctio sint omnis et dolores cumque.', '479.00', NULL, 'DIGI124', 'instock', 0, 106, 'digital_4.jpg', NULL, 2, '2021-04-10 08:03:52', '2021-04-10 08:03:52'),
(34, 'laith-ed', 'laith-ed', 'asasasas-ed', NULL, '1.00', '2.00', 'ADQ-1661-ed', 'outofstock', 1, 3, '16183172341618316852digital_4.jpg', NULL, 6, '2021-04-12 16:00:51', '2021-04-13 09:34:13'),
(36, 'labtop dell', 'labtop-dell', 'sxsxsx', '2121212121211', '3.00', '3.00', 'ADQ-1661', 'instock', 0, 2, '1618326706digital_8.jpg', NULL, 6, '2021-04-13 09:24:16', '2021-04-13 12:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('a8Wtg9O7J1Wm9CqwbfQVR8CJMiy03hIPW985wktz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM09odnlwMkdIdk9VV1FHMEJxRVF0blExNEdEV00wUWdrNmx1Z1JvZyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1NzoiaHR0cDovL25ld19wcm9qZWN0X2xhcmF2ZWw4LmNvbTo4MS9hZG1pbi9wcm9kdWN0cy8zNi9lZGl0Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHA6Ly9uZXdfcHJvamVjdF9sYXJhdmVsOC5jb206ODEvYWRtaW4vaG9tZS1jYXRlZ29yaWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7fQ==', 1618329582),
('GP5y8h2zOrNGcQIxzHT6o67vtUJIfjHQkimpmQ8f', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRmV3VGxtSlNiUVZFS2xINU5tb0ZyYkVPa0ZYVWRxYUdrSjZ3dmtxQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9uZXdfcHJvamVjdF9sYXJhdmVsOC5jb206ODEvYWRtaW4vcHJvZHVjdHMvMzYvZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1618334383),
('JX2dtm8EX99SI1s4r0MFRYbWdaOB5sUCeRGrTB0L', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidWNKZVJocm9SSG9pbDhvWFhvc2J3YkxlcEI3Q0dLZ0V5eXJYTlU5SCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1NzoiaHR0cDovL25ld19wcm9qZWN0X2xhcmF2ZWw4LmNvbTo4MS9hZG1pbi9wcm9kdWN0cy8zNi9lZGl0Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9uZXdfcHJvamVjdF9sYXJhdmVsOC5jb206ODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidXR5cGUiO3M6MzoiQURNIjt9', 1618335794),
('Kg7RkeWhsltXvV8eapQ0N0VPYH3U69Ah2SY4ETIX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSzB6eXBwbWJaeUJHTmJXemNON2ZQWnh3bWlIRnV5TVZsYWI0d3MxVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9uZXdfcHJvamVjdF9sYXJhdmVsOC5jb206ODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidXR5cGUiO3M6MzoiQURNIjt9', 1618336266),
('LGP0jZZPl1aJVdIMpkkiJKzgY2R9UKWwDVS2He7P', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRGFYZjVWRXNLVTB5S250MTQ4WEhydFAwTE5xZTN5cG4xbzdGWmRpRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHA6Ly9uZXdfcHJvamVjdF9sYXJhdmVsOC5jb206ODEvYWRtaW4vaG9tZS1jYXRlZ29yaWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7fQ==', 1618331111),
('LOx9wDAfOTi3WazhlDN6mKp2pzMV2NEZsVaOwh5u', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibHQzdFpkR1ZkVGZoNXVHRlBnR09xVWtPQjRrcEdpMmwwUW1MY2k0TyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1NjoiaHR0cDovL25ld19wcm9qZWN0X2xhcmF2ZWw4LmNvbTo4MS9hZG1pbi9ob21lLWNhdGVnb3JpZXMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNDoiaHR0cDovL25ld19wcm9qZWN0X2xhcmF2ZWw4LmNvbTo4MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1618333982),
('UCiFUqGsMzZfdKYtDXrNIHVAABPQ5Rb890ZScZBt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmowbnFlek9kVUFXR2tJNEhKNlg4dkZlOEVlUTZkN0tBVExoaUdhZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9uZXdfcHJvamVjdF9sYXJhdmVsOC5jb206ODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1618518260),
('XSBW6U5s4RyeM5IllF83BTlCeU7rII3AfdOfSNT3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidW8xR3NISnVsTFRnbXMwU2FJb2lSRG5zVDlHOXAyaXI3aGZieXZ4NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9yZXNhbGhfcHJvamVjdC5jb206ODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidXR5cGUiO3M6MzoiQURNIjt9', 1618518386),
('yjBH2NsjyDqOH81DumHUaw4Q190IIRwTHjEasz0D', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidXdYZ3VIckZCZlpVWGI4bEVVcWgzRm9rZUdBQkhZRTJhajVrSTdYYSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo1NjoiaHR0cDovL25ld19wcm9qZWN0X2xhcmF2ZWw4LmNvbTo4MS9hZG1pbi9ob21lLWNhdGVnb3JpZXMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo1NjoiaHR0cDovL25ld19wcm9qZWN0X2xhcmF2ZWw4LmNvbTo4MS9hZG1pbi9ob21lLWNhdGVnb3JpZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidXR5cGUiO3M6MzoiQURNIjt9', 1618330168);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User and Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin@Admin.com', NULL, '$2y$10$P6eg4uaKEVPMADnSNoG9deH.6UquAZT3Qo6Bs311EQPUUzz52ruX2', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-04-10 08:04:36', '2021-04-10 08:04:36'),
(2, 'User', 'User@user.com', NULL, '$2y$10$vZGC/cDk6YqG3u96wkDTS.mo/RZD7UTf7Y9fqYuJgBQBjb9tPY8p2', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-04-10 08:05:19', '2021-04-10 08:05:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

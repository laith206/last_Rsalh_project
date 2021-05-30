-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 10:04 PM
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
(1, 'iste aut', 'iste-aut', '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(2, 'magni est', 'magni-est', '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(3, 'et maxime', 'et-maxime', '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(4, 'est consequatur', 'est-consequatur', '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(5, 'et ea', 'et-ea', '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(6, 'dolorum minima', 'dolorum-minima', '2021-05-03 18:48:39', '2021-05-03 18:48:39');

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
(1, '1,2,3,4,5,6', 8, '2021-05-03 21:50:13', '2021-05-03 18:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aaaa', 'aaaaa', '3', 'http://resalh_project.com:81/product/ea-perspiciatis-laborum-id', '16200787861619130934nb_sdm_cover.jpg', 1, '2021-05-03 18:53:06', '2021-05-03 18:53:06'),
(2, 'aaaafddfdff', 'dfdfdfdfdfdsfeg', '4', 'http://resalh_project.com:81/product/ea-perspiciatis-laborum-id', '16200788041619130922wonder-slider-plugin.png', 1, '2021-05-03 18:53:24', '2021-05-03 18:53:24');

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
(9, '2021_04_10_165430_create_home_categories_table', 1),
(10, '2021_04_19_014835_create_home_sliders_table', 1),
(11, '2021_04_24_193629_create_sales_table', 1);

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
(1, 'illo voluptas qui temporibus', 'illo-voluptas-qui-temporibus', 'Ab odit est sit. Laudantium debitis maxime provident possimus soluta labore consequatur. Nemo reiciendis omnis veniam assumenda. Sint voluptatem odit explicabo libero omnis qui.', 'Accusamus sit eum explicabo eveniet. Assumenda voluptas excepturi rerum fugiat beatae recusandae asperiores. Perferendis quia facilis nisi in. Et sed sequi placeat nobis omnis qui. Porro maxime nulla reiciendis quaerat aspernatur ut. Praesentium voluptatem ad quia harum et. Quasi voluptatem a possimus ratione dolores omnis. Sapiente impedit aut sunt rem id quasi. Dignissimos ut iusto cupiditate sequi fugiat maxime.', '55.00', '6.00', 'DIGI47', 'outofstock', 1, 160, 'digital_11.jpg', NULL, 5, '2021-05-03 18:48:39', '2021-05-03 18:57:23'),
(2, 'asperiores omnis similique dolorum', 'asperiores-omnis-similique-dolorum', 'Earum perferendis dolores incidunt deserunt et. Consequatur eaque fugit rerum omnis itaque distinctio nemo. Expedita sit et ullam maiores facere fugiat suscipit. Vel ut dolores officiis.', 'Aut autem tempore consequatur aut sit suscipit quo. Totam aut aut illum aut. Ipsum eius cumque quibusdam. Unde quibusdam sed reiciendis error non ea repellendus. Iure ullam voluptatem sit omnis sit consequatur. Quia maxime magni at perferendis tempore veritatis. Sed error aliquam architecto id sapiente quia.', '373.00', '12.30', 'DIGI451', 'instock', 1, 169, 'digital_3.jpg', NULL, 1, '2021-05-03 18:48:39', '2021-05-03 18:55:03'),
(3, 'aut excepturi dolore dolores', 'aut-excepturi-dolore-dolores', 'Vitae aut cupiditate tempore et ea. Quibusdam ipsam eveniet est et sint sunt vitae. Quas blanditiis fuga quaerat doloribus voluptatem.', 'Non voluptatibus et et est in veniam consequatur. Consequatur aperiam ut adipisci quia voluptas dolor. Qui qui voluptas qui dolore non. Occaecati illo ab assumenda unde est. Esse harum blanditiis alias debitis nobis odit. Earum quo beatae omnis laboriosam. Molestias fuga consequuntur officiis ut omnis. Rerum perferendis sit non temporibus quibusdam dolores sed vel. Ut ullam reprehenderit ea dicta pariatur. Maxime ad ex odio quos placeat voluptas.', '143.00', '6.00', 'DIGI334', 'instock', 1, 104, 'digital_1.jpg', NULL, 5, '2021-05-03 18:48:39', '2021-05-03 18:55:11'),
(4, 'nam repudiandae quae tempora', 'nam-repudiandae-quae-tempora', 'Odio ab voluptatem nulla modi nisi ut reprehenderit est. Amet et dolor sequi repellendus adipisci.', 'Vero reprehenderit aut quis. Aut eos culpa neque veritatis illum est. Velit autem necessitatibus modi laboriosam. Dolores sunt corrupti sint ullam sint et cum natus. Expedita consequatur quia molestias quibusdam ducimus nostrum. Odio aliquid repellat amet et totam. Et voluptatem sed magni qui id eos. Quae eaque et fugiat quaerat quas adipisci deleniti dolores. Aspernatur aspernatur quia dignissimos distinctio quae ut. Mollitia porro itaque rerum nulla dolorum.', '73.00', NULL, 'DIGI394', 'instock', 0, 100, 'digital_17.jpg', NULL, 5, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(5, 'perferendis voluptatem rem quod', 'perferendis-voluptatem-rem-quod', 'Qui aspernatur illo quis et dolores numquam. Ex accusantium vel odit. Quod et ad quod hic fuga. Voluptate totam ipsam possimus sint aut minus.', 'In exercitationem ducimus vitae. Ipsa accusamus eum maxime quos et. Quo numquam et est quisquam. Quod hic ut nostrum qui sint et. Veniam provident modi aperiam dolores sit. Neque veritatis tempora dolorum quia. Animi qui pariatur odio nisi vitae enim. Facilis et nisi vero vero aperiam debitis ex qui. Dolorum officia iusto non est. Ut cupiditate provident aliquam laborum debitis quae possimus.', '346.00', '6.02', 'DIGI389', 'instock', 1, 188, 'digital_3.jpg', NULL, 6, '2021-05-03 18:48:39', '2021-05-03 18:55:19'),
(6, 'sit asperiores dolor cumque', 'sit-asperiores-dolor-cumque', 'Et et qui dignissimos. Dolorem blanditiis ab dolor asperiores. Magni voluptatum quisquam nulla quas nihil quae.', 'Officiis omnis rerum omnis magni voluptatem nemo. Corrupti quos esse omnis earum. Cupiditate nobis qui non facilis molestias quisquam. A facilis esse laudantium aut dolor cumque. Ea enim ratione doloribus repudiandae maiores. Repudiandae aut dolorem natus non voluptatibus. Rerum et odit incidunt vel magnam sit facere. Perferendis et quod voluptatem et corrupti debitis. Doloremque illo dolore numquam ut. Tempora rem corporis pariatur eius quae.', '487.00', NULL, 'DIGI130', 'instock', 0, 119, 'digital_1.jpg', NULL, 3, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(7, 'impedit culpa consequatur iusto', 'impedit-culpa-consequatur-iusto', 'Voluptatem dolor ut nobis occaecati. Facere voluptas dolor quam odio autem officia. Voluptate quisquam voluptas dicta culpa laborum. Similique perferendis dolores laborum et sunt beatae ut.', 'Quae labore quam facilis eos veniam non. Excepturi quas officiis quae omnis quaerat. Et labore et enim eveniet qui. Dolorem eos consequuntur rem soluta velit necessitatibus animi. Ratione laboriosam voluptatem et earum est sequi eius. Ipsa nulla at autem minima nemo voluptates ut. Hic officia rem neque unde laudantium. Sit quibusdam ducimus iste commodi. Voluptatem veritatis odit assumenda ratione adipisci. Dolorem qui dolor possimus impedit. Dolorem vitae blanditiis suscipit aliquid.', '73.00', NULL, 'DIGI129', 'instock', 0, 193, 'digital_16.jpg', NULL, 4, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(8, 'doloribus molestias repudiandae exercitationem', 'doloribus-molestias-repudiandae-exercitationem', 'Magnam quis praesentium suscipit ab. Id dicta modi assumenda laudantium exercitationem nisi. Labore ipsum vero odit dolorem rerum quod similique expedita.', 'Molestiae totam maiores fugit sunt. Et tempore rerum aut magnam omnis. Sequi aut molestiae vel omnis. Ratione dolor eos iste debitis omnis nostrum. Vero id aut enim ullam in perferendis. Odit at consectetur accusamus nihil. Voluptas quod aliquam facere accusantium aliquam dolores rem. Ipsa deleniti qui aut rem totam explicabo et vitae.', '63.00', NULL, 'DIGI133', 'instock', 0, 102, 'digital_5.jpg', NULL, 1, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(9, 'voluptatum ut nihil non', 'voluptatum-ut-nihil-non', 'Natus amet dicta et eaque et nihil quas. Et est aut autem labore. Et perferendis quaerat et facere enim voluptatem non. Amet ipsa sequi sed occaecati iste voluptates voluptas.', 'Omnis cupiditate delectus voluptate est. Dignissimos reprehenderit molestiae veniam ut. Nobis optio repudiandae et ea. Tenetur optio error aut sit deleniti ut. Pariatur iste molestiae iusto vel voluptatem necessitatibus. Eveniet qui odit laboriosam deserunt odio commodi magnam expedita. Repudiandae consequatur ut non. Rerum id accusantium dolorum.', '43.00', NULL, 'DIGI349', 'instock', 0, 170, 'digital_4.jpg', NULL, 6, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(10, 'est excepturi fugiat sequi', 'est-excepturi-fugiat-sequi', 'Velit repellendus rem dicta quisquam sed accusamus. Eum et nostrum quis possimus voluptatem. Quam vitae aut animi possimus inventore. Reprehenderit laudantium vero repellendus omnis.', 'Libero temporibus eveniet dolorem in aut fugiat. Est placeat eos dolorem. Hic quo dolorem enim quod sit tempore. Rerum mollitia natus repellendus quia qui harum repellendus iure. Ut maxime illum porro in quisquam sed atque. Aut exercitationem excepturi quas laboriosam ut sit est. Beatae dolores inventore hic velit. Hic quidem voluptates omnis excepturi. Et similique soluta ipsum ducimus. Est sint maiores quia hic minima laborum. Praesentium eos qui dolores totam.', '80.00', NULL, 'DIGI404', 'instock', 0, 152, 'digital_1.jpg', NULL, 3, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(11, 'aperiam quibusdam officia nisi', 'aperiam-quibusdam-officia-nisi', 'Voluptatum quae velit quae et. Deserunt voluptas eligendi qui consequatur commodi aut. Cupiditate odit sed tempore rem maxime facilis. Sed repellat aliquam aut architecto voluptas at.', 'Temporibus esse quia non et. Unde nihil sed blanditiis odit. Voluptatum dolores et cumque quo. Animi at eveniet quo minima odit nesciunt. Enim dolorem non rem cupiditate in officia tempora. Ad corrupti velit corporis. Ducimus voluptatibus omnis illo optio. Ab ab temporibus omnis qui eaque et fuga. Repudiandae sit ut perspiciatis quia qui quo. Reprehenderit autem dicta optio qui.', '30.00', NULL, 'DIGI449', 'instock', 0, 178, 'digital_10.jpg', NULL, 4, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(12, 'aut itaque temporibus et', 'aut-itaque-temporibus-et', 'Ea consequatur et earum eligendi pariatur vitae. Dolores blanditiis qui occaecati ea veniam non mollitia facilis. Earum molestiae sint et. Illum aliquid id quibusdam non.', 'Placeat molestiae officia voluptas dolorem. Dicta animi perspiciatis ad dignissimos vel est. Voluptate incidunt mollitia vero aut amet. Et earum aut necessitatibus cumque repellendus accusantium et. Quia incidunt repellat sapiente dolores et quibusdam excepturi sed. Eum quo sit quibusdam adipisci libero. Ut voluptas quis debitis consectetur aut. Eum commodi tenetur totam et. Qui quo blanditiis numquam doloribus.', '202.00', NULL, 'DIGI79', 'instock', 0, 180, 'digital_15.jpg', NULL, 3, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(13, 'sunt iure dolores rem', 'sunt-iure-dolores-rem', 'Occaecati ratione eaque sed porro quis ut pariatur labore. Quae fuga eos ipsa animi nam. Voluptatem pariatur quo eligendi et. Labore eos est iusto.', 'Doloribus ipsum vitae accusantium qui molestiae nihil. Eaque soluta hic molestias aut. Aut itaque necessitatibus suscipit dolores. Repellendus perferendis explicabo qui culpa sit laborum deleniti. Occaecati nobis facere ut ea omnis. Est qui voluptatibus quas deserunt tenetur distinctio.', '486.00', NULL, 'DIGI235', 'instock', 0, 196, 'digital_14.jpg', NULL, 3, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(14, 'aut voluptatibus aspernatur hic', 'aut-voluptatibus-aspernatur-hic', 'Aperiam quasi deserunt qui eligendi ut id impedit. Eaque corporis in maiores rerum incidunt et. Consectetur esse voluptatem quod. Dolorem totam occaecati qui qui quia.', 'Doloribus eum odio nam quia id libero. Laudantium amet sint suscipit modi dicta. Molestias aut maiores debitis commodi id. Rem quod quae reiciendis rerum doloribus natus ut. Omnis ullam doloremque quos at nihil. Quia rem qui autem omnis molestias nostrum voluptatum. Earum quia quae explicabo quaerat cum nisi minus. Et id provident unde excepturi adipisci rem.', '28.00', NULL, 'DIGI74', 'instock', 0, 147, 'digital_5.jpg', NULL, 5, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(15, 'pariatur iste a occaecati', 'pariatur-iste-a-occaecati', 'Dicta esse explicabo earum nobis. Quia quaerat modi ea nostrum optio omnis voluptatum vel. Pariatur alias qui debitis omnis repellendus non.', 'Quae accusantium doloribus quasi. Quo itaque fugit blanditiis nulla repellendus suscipit. Inventore temporibus necessitatibus ab omnis molestiae possimus. Voluptas est perspiciatis occaecati error. Ducimus quisquam maiores magnam velit cumque illum. Accusantium rerum aspernatur non non voluptas eum sed. Velit rerum aperiam neque voluptatum qui recusandae officiis.', '302.00', NULL, 'DIGI124', 'instock', 0, 186, 'digital_15.jpg', NULL, 5, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(16, 'ea perspiciatis laborum id', 'ea-perspiciatis-laborum-id', 'Labore est sed vel. Voluptas et quis qui adipisci recusandae reprehenderit quo. In fugit praesentium quo modi. Consectetur sapiente veniam et quas iure modi.', 'Aliquam consequatur mollitia totam omnis. Rerum voluptates voluptas ea consectetur a recusandae error. Commodi et in sunt officiis praesentium ad laudantium. Rerum qui commodi error. Molestiae eveniet et voluptate ut vel. Ex sed asperiores quam sapiente odit consectetur et. Nisi voluptatem quidem quis nobis. Adipisci nam sunt voluptas facere. Id et earum ducimus molestias ratione molestiae.', '104.00', NULL, 'DIGI430', 'instock', 0, 128, 'digital_11.jpg', NULL, 2, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(17, 'reiciendis magni quas consequatur', 'reiciendis-magni-quas-consequatur', 'Nisi voluptatem soluta dicta eos eveniet praesentium rerum impedit. Doloremque quia officiis rerum iure. Molestiae eaque sequi facilis et quidem qui velit voluptatem.', 'Doloremque non accusamus rerum molestiae et. Quia voluptate sint quis aut dolores esse vel. Labore ullam facilis et nisi eius id vitae magnam. Cupiditate sunt laborum est non incidunt. Fuga quia hic cumque mollitia. Sint dolorem nisi qui odio distinctio. Fugit natus ipsa doloribus atque dolores et odit. Quisquam adipisci consequatur repellendus quos quis dolorem natus tempora. Est et blanditiis adipisci et blanditiis saepe.', '361.00', NULL, 'DIGI424', 'instock', 0, 120, 'digital_7.jpg', NULL, 4, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(18, 'nihil dolor cupiditate eos', 'nihil-dolor-cupiditate-eos', 'Consequuntur suscipit dolores nisi sint. Officia debitis quis suscipit qui. Nisi voluptates rem corporis itaque ea.', 'Voluptatibus atque dolores facere eligendi ut dolorem. Non repellat perspiciatis hic quos eius. Pariatur repudiandae quod consectetur distinctio. Culpa vero quos ut aut ratione molestias quis. Animi perspiciatis sint veniam necessitatibus in. Minima minima aspernatur ea est reprehenderit ut eum. Neque velit id explicabo maiores est. Voluptatibus sed laboriosam delectus veniam. Odit vitae incidunt exercitationem aspernatur. Velit eum nihil vitae ex.', '312.00', NULL, 'DIGI39', 'instock', 0, 200, 'digital_9.jpg', NULL, 6, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(19, 'numquam eum atque at', 'numquam-eum-atque-at', 'Illo doloremque dolorum quis et voluptatem sapiente odio. Esse rerum repellendus veritatis ullam expedita id unde rerum. Perspiciatis suscipit nam officia aut.', 'Veritatis error laboriosam facere vitae. Molestiae distinctio laboriosam vel voluptatem omnis ea nihil. Qui harum harum aliquid. At qui eum recusandae est. Et inventore ut suscipit quos qui similique beatae. Vitae perspiciatis molestias neque culpa reiciendis. Deserunt ratione maiores totam ab aperiam voluptas maiores ea. Id animi nisi voluptas velit ipsam magnam et.', '427.00', NULL, 'DIGI421', 'instock', 0, 128, 'digital_5.jpg', NULL, 6, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(20, 'eius eveniet voluptate vel', 'eius-eveniet-voluptate-vel', 'Eum neque illum praesentium ut et. Dolor facere qui ut laboriosam quidem. Facere nemo veritatis ut odio culpa magnam.', 'Aut sed itaque quidem et est sed repudiandae. Et et hic repudiandae. Et voluptatum est facilis fuga repellat. Ad est voluptas dolorem doloribus quaerat aut amet. Consequatur temporibus enim fuga repellendus omnis corrupti inventore. A non omnis mollitia rem soluta est optio. Ducimus rem officia nam fuga et. Autem ut ex voluptate et omnis aut. Dolorum voluptates ut assumenda velit amet. Dolor id vero et. Et necessitatibus nihil cupiditate quod sed voluptatem.', '490.00', NULL, 'DIGI151', 'instock', 0, 117, 'digital_6.jpg', NULL, 4, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(21, 'sapiente rerum nesciunt qui', 'sapiente-rerum-nesciunt-qui', 'Vel adipisci alias dicta cum nobis ea. Accusantium ea provident voluptatem unde eligendi cum.', 'Quia occaecati sit delectus ex. Nihil porro cupiditate sed sequi ut non in. Veniam numquam vel ipsa delectus. Explicabo itaque veniam in. Quia eum nihil tempora magni aut omnis. Ut sed numquam ex minus eos temporibus veniam. Reiciendis nesciunt quis optio voluptatibus odio dolor explicabo quis. Perferendis quae molestiae dolorem aut sunt quis. Excepturi quas molestias tempore quisquam aut rerum rerum quod. Non quidem qui eligendi recusandae vel exercitationem ea. Ea nostrum ratione voluptatem.', '174.00', NULL, 'DIGI42', 'instock', 0, 130, 'digital_16.jpg', NULL, 5, '2021-05-03 18:48:39', '2021-05-03 18:48:39'),
(22, 'qui numquam officia explicabo', 'qui-numquam-officia-explicabo', 'Quod mollitia doloribus corporis vel occaecati occaecati. Mollitia nobis cum nobis et fugit hic aliquam. Non modi officia aut sunt dolor.', 'Inventore placeat autem nemo. Saepe consequuntur doloremque ut. Atque voluptas fugiat facere itaque fugit cum. Dolorum modi laboriosam quisquam porro provident ea corporis. Suscipit et blanditiis maxime architecto sed veritatis. Molestias culpa debitis est. Minus doloribus at cupiditate.', '273.00', NULL, 'DIGI108', 'instock', 0, 173, 'digital_11.jpg', NULL, 5, '2021-05-03 18:48:39', '2021-05-03 18:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(3, '2021-05-03 22:08:50', 1, '2021-05-03 19:08:50', '2021-05-03 19:08:50'),
(4, '2021-05-03 22:09:08', 1, '2021-05-03 19:09:08', '2021-05-03 19:09:08'),
(5, '2021-05-03 22:09:26', 1, '2021-05-03 19:09:26', '2021-05-03 19:09:26');

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
('ASUcd9C2jSHFQwfZ7f9s3USzEDO40CK2e0QAdye6', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTo1OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMzoiaHR0cDovL3Jlc2FsaF9wcm9qZWN0LmNvbTo4MS9zYWxlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6Imp6NktwczhkTzY2REFhYUVMZlFiQlRZREd3TTRzb1pnd2pvd3pqeXQiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1620079766),
('XfjnR59ZYtM5563wx2H9s6aaaHG7fngQp0zXv6pp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDhCbkNyUWljOXpqWHJqbDRyZVZ3SnhBNmI1bE01UGI1SWZNOE04OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9yZXNhbGhfcHJvamVjdC5jb206ODEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1620336541);

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
(1, 'Admin', 'Admin@Admin.com', NULL, '$2y$10$5z19/Rj3Nm3ARS4Gu8aAWO3fEd9AdLTp/CUc3U56TAvpF7S9z2WtK', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-05-03 18:49:24', '2021-05-03 18:49:24');

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
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

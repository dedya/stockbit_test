-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2021 at 06:29 AM
-- Server version: 5.7.26-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockbit`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_08_061051_log_requests_responses', 1);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `request` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `request`, `response`, `url`, `ip`, `created_at`, `updated_at`) VALUES
(1, '{\"id\":\"tt3139086\"}', 'HTTP/1.1 200 OK\r\nCache-Control: no-cache, private\r\nContent-Type:  application/json\r\nDate:          Mon, 08 Mar 2021 06:26:17 GMT\r\nSet-Cookie:    XSRF-TOKEN=eyJpdiI6Im01NVRvR05sbkNRNVBXNVkza1pSdFE9PSIsInZhbHVlIjoiZXdhR3NFaXpkd0JZNW4wSTBHNTlPTks3aTM0Slp4NHhiVDRxakF4UGQwLzRyNEk4NWJYRUJwbFlpemcxVWFPRGpVTGRORlNnM21lRWNtakdjN1pQamZtZy9HR29mM1QzdlhmS0dIYmVRcVN1NmpBWTlmSzdqWGpLRWcxV1p4OU8iLCJtYWMiOiJmYTZkYzlkNzBlYTYwMTIyYjY4YjAwMmU0NDYzOWJjYjc1MTExMmY5ZGJkZDZjYmE5OTJjOWIwMTllMDNlNTc1In0%3D; expires=Mon, 08-Mar-2021 08:26:17 GMT; Max-Age=7200; path=/; samesite=lax\r\nSet-Cookie:    laravel_session=eyJpdiI6ImpvOHhQR3B6bFlmc0dSczh0RHhEaXc9PSIsInZhbHVlIjoiQXp4Ym1MalUrVVBLKzR3WFJhTFE0dEUxTEhQakpEWHRPUDVFSUlad052YU1iek4zTXZkWjNEaldzYjJ2REhadmhpV1hLZWZneW1obWFkakRkK1ZtVXJUQmUwY05pSXMxeEd6TXdUdmhBVUVFb0k2S0xtODY4UndCVUI2VUE0cUYiLCJtYWMiOiI1NTMxYzIzNWJkNWRhODUxNjMxNjhjNjRkMWE3MGVlNWI2OGU0YjgzYjliZGE2ZjY3YzdjM2QyNDEzMTY4ZWJhIn0%3D; expires=Mon, 08-Mar-2021 08:26:17 GMT; Max-Age=7200; path=/; httponly; samesite=lax\r\n\r\n{\"Title\":\"Batman: Assault on Arkham\",\"Year\":\"2014\",\"Rated\":\"PG-13\",\"Released\":\"29 Jul 2014\",\"Runtime\":\"76 min\",\"Genre\":\"Animation, Action, Adventure, Crime, Sci-Fi, Thriller\",\"Director\":\"Jay Oliva, Ethan Spaulding\",\"Writer\":\"Heath Corson, Bob Kane (Batman created by), Lew Schwartz (Deadshot co-created by), John Ostrander (Amanda Waller created by), John Byrne (Amanda Waller created by), Paul Dini (Harley Quinn created by), Bruce Timm (Harley Quinn created by)\",\"Actors\":\"Kevin Conroy, Neal McDonough, Hynden Walch, Matthew Gray Gubler\",\"Plot\":\"Batman works desperately to find a bomb planted by the Joker while Amanda Waller hires her newly formed Suicide Squad to break into Arkham Asylum to recover vital information stolen by the Riddler.\",\"Language\":\"English\",\"Country\":\"USA\",\"Awards\":\"3 wins & 2 nominations.\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BZDU1ZGRiY2YtYmZjMi00ZDQwLWJjMWMtNzUwNDMwYjQ4ZTVhXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\",\"Ratings\":[{\"Source\":\"Internet Movie Database\",\"Value\":\"7.5\\/10\"},{\"Source\":\"Rotten Tomatoes\",\"Value\":\"75%\"}],\"Metascore\":\"N\\/A\",\"imdbRating\":\"7.5\",\"imdbVotes\":\"31,138\",\"imdbID\":\"tt3139086\",\"Type\":\"movie\",\"DVD\":\"16 Jun 2016\",\"BoxOffice\":\"N\\/A\",\"Production\":\"DC Entertainment\",\"Website\":\"N\\/A\",\"Response\":\"True\"}', 'http://localhost:8000/omdb/detail?id=tt3139086', '127.0.0.1', '2021-03-07 23:26:17', '2021-03-07 23:26:17'),
(2, '{\"searchword\":\"batman\",\"pagination\":\"2\",\"i\":\"tt4853102\"}', 'HTTP/1.1 200 OK\r\nCache-Control: no-cache, private\r\nContent-Type:  application/json\r\nDate:          Mon, 08 Mar 2021 06:26:52 GMT\r\nSet-Cookie:    XSRF-TOKEN=eyJpdiI6IkZNNmd0Q3dhZXBaV0gyMDRwaW1adWc9PSIsInZhbHVlIjoiNDhaMDJIV2hYS3hSNjVCcC91UWVoNVplNk8vZmdteXF4dnpNWnI1aTcrYyt2T3UzK1pUV3poSSs1R0RhNStJZVVwcCtsdjhFWWpSdWhhQ0RDc1FMSEgwYTd6T3VkR1ZPdGVEWmlCQzkwYWNKRkkxQll5bFQwRnA1aHkvWmpXQmciLCJtYWMiOiIzODgxNjU3NjFhMmJkNGYzYjlkMTk4ZmRkNzIwNzVhZWNiMzFhZjc2YTlhZDhiZDJhYzBjNzM3MzljMThlYWJjIn0%3D; expires=Mon, 08-Mar-2021 08:26:52 GMT; Max-Age=7200; path=/; samesite=lax\r\nSet-Cookie:    laravel_session=eyJpdiI6Im0xVW5OUW5mbU9sNndJM3laN014UVE9PSIsInZhbHVlIjoiYUhmZTFDSTJsOGdUNDY2WUJNOXo0VCs3b3NEOXhRU2M0ZjJFZlF6aWIxVDVUaEgrRWRUR2ZSQWh3eHhIUjRHckVobUkwVVlVSFNKUXRzNHJYR0pUSFEzTFByLzVRZk40TlM1TWZocDIyMzdmREZpMEFnMllqNEFpcTZHYk5kcTQiLCJtYWMiOiI3NmEyZmRkYzRmYjM4NmQyMWRlYWIzYzY5MDRjOWEzODZkNWJhMGMyNTYwZmNmMGY3NWEyZDUxYjQxYjUyZDRmIn0%3D; expires=Mon, 08-Mar-2021 08:26:52 GMT; Max-Age=7200; path=/; httponly; samesite=lax\r\n\r\n{\"Search\":[{\"Title\":\"Batman: The Killing Joke\",\"Year\":\"2016\",\"imdbID\":\"tt4853102\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BMTdjZTliODYtNWExMi00NjQ1LWIzN2MtN2Q5NTg5NTk3NzliL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Batman: The Dark Knight Returns - Part 2\",\"Year\":\"2013\",\"imdbID\":\"tt2166834\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BYTEzMmE0ZDYtYWNmYi00ZWM4LWJjOTUtYTE0ZmQyYWM3ZjA0XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg\"},{\"Title\":\"Batman: Mask of the Phantasm\",\"Year\":\"1993\",\"imdbID\":\"tt0106364\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BYTRiMWM3MGItNjAxZC00M2E3LThhODgtM2QwOGNmZGU4OWZhXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_SX300.jpg\"},{\"Title\":\"Batman: Year One\",\"Year\":\"2011\",\"imdbID\":\"tt1672723\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BNTJjMmVkZjctNjNjMS00ZmI2LTlmYWEtOWNiYmQxYjY0YWVhXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Batman: Assault on Arkham\",\"Year\":\"2014\",\"imdbID\":\"tt3139086\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BZDU1ZGRiY2YtYmZjMi00ZDQwLWJjMWMtNzUwNDMwYjQ4ZTVhXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Batman: The Movie\",\"Year\":\"1966\",\"imdbID\":\"tt0060153\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BMmM1OGIzM2UtNThhZS00ZGNlLWI4NzEtZjlhOTNhNmYxZGQ0XkEyXkFqcGdeQXVyNTkxMzEwMzU@._V1_SX300.jpg\"},{\"Title\":\"Batman: Arkham City\",\"Year\":\"2011\",\"imdbID\":\"tt1568322\",\"Type\":\"game\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BZDE2ZDFhMDAtMDAzZC00ZmY3LThlMTItMGFjMzRlYzExOGE1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Batman: Gotham Knight\",\"Year\":\"2008\",\"imdbID\":\"tt1117563\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BM2I0YTFjOTUtMWYzNC00ZTgyLTk2NWEtMmE3N2VlYjEwN2JlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Superman\\/Batman: Apocalypse\",\"Year\":\"2010\",\"imdbID\":\"tt1673430\",\"Type\":\"movie\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BMjk3ODhmNjgtZjllOC00ZWZjLTkwYzQtNzc1Y2ZhMjY2ODE0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg\"},{\"Title\":\"Batman Beyond\",\"Year\":\"1999\\u20132001\",\"imdbID\":\"tt0147746\",\"Type\":\"series\",\"Poster\":\"https:\\/\\/m.media-amazon.com\\/images\\/M\\/MV5BYTBiZjFlZDQtZjc1MS00YzllLWE5ZTQtMmM5OTkyNjZjMWI3XkEyXkFqcGdeQXVyMTA1OTEwNjE@._V1_SX300.jpg\"}],\"totalResults\":\"412\",\"Response\":\"True\"}', 'http://localhost:8000/omdb?i=tt4853102&pagination=2&searchword=batman', '127.0.0.1', '2021-03-07 23:26:52', '2021-03-07 23:26:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

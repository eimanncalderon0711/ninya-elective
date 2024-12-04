-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 02:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rfid_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `registrants_rfid` varchar(64) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `profile` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `registrants_rfid`, `status`, `profile`, `created_at`) VALUES
(376, 'E34AAB29', 1, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-12 10:16:31'),
(377, '13B37529', 1, 'https://scontent.fmnl13-2.fna.fbcdn.net/v/t39.30808-6/458287996_2296422620724536_3058798539142498857_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF9JJ5YFi1EUJUWt1rrJKn8VVVwvq1dmsNVVXC-rV2aw8gLQQ8pFPw5iIILH5V5v0GqhrzupKEoYHrkhSr4iwCr&_nc_ohc=F1U6e5Wnt70Q7kNvgGWGfY-&_nc_ht=scontent.fmnl13-2.fna&_nc_gid=ANrofo1Blevz9w1sLcqeTRB&oh=00_AYC4qCZp2iblFX9E_-MN49iyfAna70KnlCZRAnHkq8WfUw&oe=670E8642', '2024-10-12 10:16:57'),
(378, 'E34AAB29', 0, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-12 10:17:02'),
(379, 'E34AAB29', 1, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-12 10:17:05'),
(380, 'E34AAB29', 0, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-12 10:17:07'),
(381, 'E34AAB29', 1, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-12 10:17:09'),
(382, '516592E', NULL, NULL, '2024-10-12 10:17:12'),
(383, '516592E', NULL, NULL, '2024-10-12 10:17:15'),
(384, 'E34AAB29', 0, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-12 10:17:17'),
(385, '154ED', NULL, NULL, '2024-10-26 12:28:43'),
(386, 'E34AAB29', 1, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-26 12:30:16'),
(387, 'E34AAB29', 0, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E', '2024-10-26 12:30:24'),
(388, 'ada', NULL, NULL, '2024-10-26 12:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `registrants`
--

CREATE TABLE `registrants` (
  `id` int(11) NOT NULL,
  `rfid` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `profile` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrants`
--

INSERT INTO `registrants` (`id`, `rfid`, `status`, `profile`) VALUES
(7, '13B37529', 1, 'https://scontent.fmnl13-2.fna.fbcdn.net/v/t39.30808-6/458287996_2296422620724536_3058798539142498857_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF9JJ5YFi1EUJUWt1rrJKn8VVVwvq1dmsNVVXC-rV2aw8gLQQ8pFPw5iIILH5V5v0GqhrzupKEoYHrkhSr4iwCr&_nc_ohc=F1U6e5Wnt70Q7kNvgGWGfY-&_nc_ht=scontent.fmnl13-2.fna&_nc_gid=ANrofo1Blevz9w1sLcqeTRB&oh=00_AYC4qCZp2iblFX9E_-MN49iyfAna70KnlCZRAnHkq8WfUw&oe=670E8642'),
(8, 'E34AAB29', 0, 'https://scontent.xx.fbcdn.net/v/t1.15752-9/462543696_1765235720681541_3546409496778484445_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeFroo7V0C4LO9jq8CfjPlKy93UanOSSYd33dRqc5JJh3bRbzCNK6cM3w-1LX5QeJ4i65y2AUW2ptt_ccyGb1CxQ&_nc_ohc=v0_3gwaGqTsQ7kNvgEEylCd&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&_nc_gid=ACZQNeu8CuexV9yIYuVXem1&oh=03_Q7cD1QHz_GH4rcGzjVoG3VIU9gVvqnfLKgvLvQMce7U-ukGcFg&oe=6730597E'),
(9, '52E95D7A', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrants`
--
ALTER TABLE `registrants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `registrants`
--
ALTER TABLE `registrants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

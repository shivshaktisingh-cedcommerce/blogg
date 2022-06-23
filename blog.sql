-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Jun 23, 2022 at 01:34 PM
-- Server version: 8.0.19
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `POST`
--

CREATE TABLE `POST` (
  `post_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` enum('PUBLIC','PRIVATE') DEFAULT NULL,
  `content` text,
  `image` varchar(100) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `blog_title` varchar(100) DEFAULT NULL,
  `status_by_admin` enum('Approved','Pending','Rejected') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `POST`
--

INSERT INTO `POST` (`post_id`, `user_id`, `name`, `status`, `content`, `image`, `published_at`, `blog_title`, `status_by_admin`) VALUES
(1, 1, NULL, 'PUBLIC', 'Very few people are afraid of butterflies…but maybe more should be. The movie The Butterfly Effect (which opened in theaters nationwide on January 23) may not include any nefarious insects, but it is based in part on a concept from chaos theory that suggests that something as subtle as the flap of a butterfly\'s wings in Brazil could trigger a tornado in Texas.\r\n\r\nThe term \"butterfly effect\" was coined by meteorologist Edward Lorenz, who discovered in the 1960\'s that tiny, butterfly—scale changes to the starting point of his computer weather models resulted in anything from sunny skies to violent storms—with no way to predict in advance what the outcome might be.\r\n\r\nIn the movie The Butterfly Effect, actor Ashton Kutchner plays a man who has found a way to travel back in time to his youth. Each time he returns to his childhood, he makes minuscule changes that radically alter his life in the present, inevitably leading to (you guessed it) terrifying results.\r\n\r\nHuman time travel is a purely fictional concept, but according to Rutgers biophysicist Troy Shinbrot, the idea that small changes can lead to dramatically different outcomes is firmly rooted in the physics of chaos theory, at least for some systems.\r\n\r\n\"If you\'re willing to suspend your disbelief long enough to accept the possibility of time travel,\" says Shinbrot, \"then, yes, the movie sounds like it has a reasonably plausible premise, from a physics point of view.\"', 'upload/butterfly.jpg', '2022-06-23 05:16:44', 'Butterfly Effect', 'Pending'),
(2, 2, NULL, 'PUBLIC', 'My worst fear was inflicted upon me three months ago: a cancer diagnosis—non-Hodgkin’s lymphoma.  Out of nowhere!\r\n\r\nTruth be told though, lots of awful things that happen to us come suddenly out of nowhere—a car accident, suicide, heart attack, and yes, a diagnostic finding. We’re stopped in our tracks, seemingly paralyzed as we go into shock and dissociative mode.\r\n\r\nMy world as I knew it stopped. It became enclosed in the universe of illness—tiny and limited. I became one-dimensional—a sick patient.\r\n\r\nAnd I went into shock. To the point where I didn’t feel. As a person who values mental health and understands the importance of emotions, I seemingly stayed away from the feeling part. It wasn’t intentional; it’s how I coped.\r\n\r\nI dealt by mindlessly and mindfully (yes, that seems like an oxymoron) putting one foot in front of the other and doing what needed to be done, like a good soldier, plowing through the open minefields.  Actions and intentional mindset were my strategies.', 'upload/9.jpg', '2022-06-23 06:42:55', 'Tiny Buddha', 'Pending'),
(3, 4, NULL, 'PUBLIC', 'Every month over one million readers learn a thing or two from Zen Habits. Like us, the founder is a big proponent of building healthy, productive habits. The blog’s creator and writer Leo Babauta also puts emphasis on focus – particularly focusing on family, health and simplicity. If you are looking for completely unadulterated content on spirituality and mindfulness this is it. Leo does not put any advertisements or guest posts on his blog. It is strictly motivational musings on his own thoughts and experiences that are free for anyone to share and repost.', 'upload/1.jpg', '2022-06-23 06:56:40', 'Zen Habits', 'Pending'),
(4, 2, NULL, 'PRIVATE', 'Many people call themselves spiritual by making an impression on others that they are not materialistic or superficial. Spirituality is essentially a search for life’s meanings from a non-religious perspective. Spirituality is known to be a state that can reach higher levels of consciousness if one regularly practices yoga, meditation, and similar other practices.\r\n\r\nSpirituality is a very broad perspective. When we are in search for greater meaning in life, practicing spirituality gives a sense of connection that is larger than ourselves. Spirituality touches us from deep within ourselves. Spiritual experiences are often described as experiences that are sacred, interconnected and transcendent while giving a feeling of just being alive.', 'upload/pexels-stephan-seeber-1054218.jpg', '2022-06-23 07:19:11', 'spiritual truth', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `user_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_of_joining` datetime DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`user_id`, `name`, `email`, `contact`, `tagline`, `password`, `date_of_joining`, `image`, `user_name`) VALUES
(1, 'shiv shakti singh', 'shiv@gmail.com', '9643294453', 'singh is king', 'Shivam1', '2022-06-22 07:17:58', 'upload/img_avatar.png', NULL),
(2, 'sumit', 'sumit@gmail.com', '1234567898', 'just checking', 'Sumit1', '2022-06-22 07:33:24', 'upload/img_avatar.png', NULL),
(3, 'sachin', 'sachin@gmail.com', '5683534645', 'just checking', 'Sachin1', '2022-06-22 12:07:01', 'upload/butterfly.jpg', NULL),
(4, 'Keshav Mishra', 'keshav@gmail.com', '7488416460', 'Peace begin with smile', 'Keshav1', '2022-06-23 06:50:45', 'upload/img_avatar.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `POST`
--
ALTER TABLE `POST`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `POST`
--
ALTER TABLE `POST`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `POST`
--
ALTER TABLE `POST`
  ADD CONSTRAINT `POST_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

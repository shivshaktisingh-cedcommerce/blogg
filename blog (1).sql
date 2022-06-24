-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-server
-- Generation Time: Jun 24, 2022 at 12:50 PM
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
  `status_by_admin` enum('Approved','Pending','Rejected') DEFAULT NULL,
  `edited_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `POST`
--

INSERT INTO `POST` (`post_id`, `user_id`, `name`, `status`, `content`, `image`, `published_at`, `blog_title`, `status_by_admin`, `edited_at`) VALUES
(1, 1, NULL, 'PUBLIC', 'The butterfly effect is the idea that small, seemingly trivial events may ultimately result in something with much larger consequences – in other words, they have non-linear impacts on very complex systems. For instance, when a butterfly flaps its wings in India, that tiny change in air pressure could eventually cause a tornado in Iowa.\r\n\r\nIn the aforementioned film, Kutcher\'s character finds a way to travel back in time to his childhood. Every time he makes this journey, he does small things differently – but those tiny changes wind up having major (and horrifying) effects on his adult life.', 'upload/butterfly.jpg', '2022-06-23 05:16:44', 'Butterfly Effect', 'Pending', '2022-06-24 05:49:25'),
(2, 2, NULL, 'PUBLIC', 'My worst fear was inflicted upon me three months ago: a cancer diagnosis—non-Hodgkin’s lymphoma.  Out of nowhere!\n\nTruth be told though, lots of awful things that happen to us come suddenly out of nowhere—a car accident, suicide, heart attack, and yes, a diagnostic finding. We’re stopped in our tracks, seemingly paralyzed as we go into shock and dissociative mode.\n\nMy world as I knew it stopped. It became enclosed in the universe of illness—tiny and limited. I became one-dimensional—a sick patient.\n\nAnd I went into shock. To the point where I didn’t feel. As a person who values mental health and understands the importance of emotions, I seemingly stayed away from the feeling part. It wasn’t intentional; it’s how I coped.\n\nI dealt by mindlessly and mindfully (yes, that seems like an oxymoron) putting one foot in front of the other and doing what needed to be done, like a good soldier, plowing through the open minefields.  Actions and intentional mindset were my strategies.', 'upload/9.jpg', '2022-06-23 06:42:55', 'Tiny Buddha', 'Pending', '2022-06-24 05:49:25'),
(3, 4, NULL, 'PUBLIC', '\r\n“The two most important days in your life are the day you are born and the day you find out why”\r\n\r\n- Mark Twain\r\n \r\n\r\nMark Twain said a lot of things, and there is a lot of wisdom (and humour) in a great deal of it, but on this we have to disagree. The idea that your purpose in life is going to suddenly strike you all of a sudden as you walk along the street, while entirely possible, is exceedingly rare. \r\n\r\nThere are a lot of confusing concepts out there, and intersecting ideas, which make finding purpose in life sound like something that only happens to the fortunate. It’s not like that, or at least it should not be. So what is Ikigai, and why is it so important to us at Learnlife? \r\n\r\nIkigai is not just passion\r\n“Follow your passion” sounds great, but it is terrible advice. Following passions alone may make us feel vibrant and fulfilled, but ultimately they are transitory and one dimensional on their own. \r\n\r\nWe also may not be good at them, and the idea that they are just waiting to be discovered by serendipity is also enormously dangerous and frustrating, as passions are often built and grown through exploration and iteration, rather than simply unearthed. \r\n\r\nThe pursuit of something simply because we are passionate about it, may also be excluding the larger why around your passion. When passion is defined too narrowly, we can miss so many opportunities around us, such as thinking our raison d\'etre is to play bass guitar in a band, whereas what we really love is the creativity of sound. ', 'upload/1.jpg', '2022-06-23 06:56:40', 'Ikigai', 'Approved', '2022-06-24 05:49:25'),
(4, 2, NULL, 'PRIVATE', 'We are living in a busy and fast world.  There is so much we want to do at the fastest time possible.  With the advent of technology usable in everyday life, it has gotten even more complex.  We are able to do almost everything on the move through smart phones and the other gadgets.  Technology is built around human-beings to help them to get smarter.  Choice is one of the edges that technology provides.  We literally get a plethora of choices to make.\n\nFundamentally man is a choice maker and he doesn’t want to make wrong choices.  On several circumstances we are overwhelmed with the options in front of us, we are constantly browsing them all the time to grab the best one.  While this may not be bad for most important things in life, the fact is that we are in constant mode of search for everything and at times we don’t even have a reason to search.  Eventually we become prey to the industry which thrives on impulsive decision making.\n\nOn the other hand, there is over dosage of media coverage that is zapping our attention on different directions which may or may not be of any value to us personally.  News and entertainment has become a habit for many of us.  Instead of it serving a purpose to contribute in our personal growth, we are becoming consumers of news and entertainment with a burden of accumulating unwanted knowledge.\n\nMulti-tasking is another buzz that is draining our energy.  With all the technological penetration and the intent to get the maximum from everything, we are constantly engaged in multiple things at the same time.  Phone with multiple windows open to slide, computer with limitless windows to navigate, countless channels on the television and radio, several other gadgets tied to our wrist, hip, head, neck, lap and beyond!  At any moment, we are almost appearing as if we are steering a spacecraft with countless gadgets around us to navigate to the space.\n\nI believe it is time for us to pause and take a moment to validate what’s going on.  There are so many distractions around us through which our attention is getting dissipated.  It is nothing much different from keeping our eyes open and day dreaming.  We would probably be better off with day dreaming instead of being active on multiple gadgets.  We take pride in claiming that we are very busy.  The question that we should ask ourselves is, are we productive?  Let us think about it.\n\nLife is nothing but the duration between birth and death and whatever we do in this period is called living.   The clock starts ticking from the time we are born until the last breath.  Living is not just about being alive; it is about being able to live life to the fullest.  This requires us to do justice to every moment we get as a benevolent gift from the Creator.  The following are the teachings of Mahatria, which has benefited me immensely and I wish to share it here with deep gratitude.', 'upload/2.jpg', '2022-06-23 07:19:11', 'How can we live life with ‘Life’?', 'Pending', '2022-06-24 06:13:45'),
(5, 2, NULL, 'PRIVATE', 'Getting my ego down on its knees has by and far been the largest challenge I have faced so far in the pursuit of a better ‘me’.  I might just say that I have achieved very little success so far, as time and again, it pops out with the same power of a shaken soda bottle!  Over time, I have also realised why it has been so difficult to crack this nut.  One main reason why I find it difficult in conquering this demon is that it is something created by me.  Hence, I keep trying to not let it go, because it has become so absorbed in me.  A creator always finds it difficult to let go of his own creation, isn’t it?\r\n\r\nAfter a tired day, when sleep takes over, I naturally give in to it and get into a deep slumber.  I really do not try to fight against it and the progression is natural and smooth.  A moment of retrospection will reveal that since there was absolutely no resistance from my end, I slipped into a deep slumber.  I tried to use this analogy and inferred that whenever and wherever there is resistance, my close friend ‘Mr. Ego’ spontaneously gives me the best company!  Where there is ‘giving in’, he finds my company not worthwhile.\r\n\r\nHaving understood that this was my own creation, the next steps that I took was to see what were those key ingredients that helped me in creating this fellow.  For, if I tried to eliminate those one by one, I firmly believed that I can be a better person, if not a person with ego fully eliminated.  I made up my mind to pluck the first low hanging fruit and crack it.  I engaged systematically in a ‘Five-Why’ type of analysis, the brain child of the Japanese, who used this method in their pursuit for high-quality standards and perfection.  Break down larger problems into smaller ones, question and find the root cause.\r\n\r\nVoila!  It worked.  I got to grip with a small component that, if conquered, could probably put my dear friend Mr. Ego’s head down a little bit, if not bring him down on his knees.  A self-promotion tactic, nowadays referred to as ‘humble bragging’, is what my analytics lead me to.  This is a critical ego booster.  I always want to hear how good I am in the eyes of others and seek appreciation by making self-depreciating statements with the only intention of seeking attention and pride.', 'upload/3.jpg', '2022-06-24 06:16:57', 'Slicing the ego!!', 'Pending', NULL),
(6, 1, NULL, 'PRIVATE', 'In Mahabharata, Duryodhana would repeatedly say, “I know what is right but I cannot indulge in it.  I know what is wrong but I cannot avoid it.”  As Mahatria was telling this I thought why it should be difficult to avoid what’s wrong and indulge in what’s right.  But as days passed by, I realized it wasn’t as easy as I thought out to be.  Almost everywhere we find examples of this gap, this mismatch – between what we want to do and what we end up doing.  We invariably do what’s easy than what’s right.\n\nMany diabetic patients know that eating sweets and not taking care of health would lead to severe complications.  But there are such patients who yield to their temptations.\n\nProper maintenance of accounts will help in smooth functioning of the business and will make auditing easy.  But how many businessmen do so?\n\nKnowing very well that drinking and smoking aren’t good for health, many are not able to avoid them.\n\nProper planning and reaching the targets on time are the best ways in any area.  But most of us procrastinate and end up causing misery at the last minute.\n\nParents do fight in the presence of their children, knowing very well that it would impact the children very badly.\n\nAdults or children, many spend hours watching television, ignoring important works.\n\nKnowing pretty well that sitting in the state of non-doing would help a great deal in quietening the mind, improving the memory and increasing the energy level, many are not able to make it an inevitable part of their day.\n\nThere are umpteen similar examples in our day-to-day lives that we can reflect upon.  Postponing and avoiding what is right and going on indulging in what’s wrong is probably one of the biggest human weaknesses which almost all of us have.  We are far from reaching a self-motivated stage where doing what’s right and avoiding what’s wrong become our nature.  Many a time we falter against our own decisions.  ‘Why does this happen’ was the question going on in my mind.', 'upload/4.jpg', '2022-06-24 06:22:44', ' A way to overcome weakness!', 'Pending', '2022-06-24 07:47:56'),
(7, 1, NULL, 'PRIVATE', 'The hardest aspect of getting older is accepting the bodily changes that Mother Nature dishes out during your 40’s, 50’s, 60’s and beyond.  Ageing is a simple fact of life.  Most people do not appreciate ageing like they should.  Of course, not everyone is lucky to live long enough to experience ageing.\r\n\r\nTheories about ageing are changing rapidly as scientists are learning more about human possibilities.  One thing is quite clear from their studies:  Though ageing is inevitable and there is no way to stop the clock, to slow down ageing is a definite possibility.  Surely, we all know men rapidly slide downhill in their fifties; but we also see men in their seventies and eighties with tremendous energy and enthusiasm.\r\n\r\nI have known some 19-year-olds who use anti-ageing cream and also some 75-year-youngs who radiate health in every blood cell.  So, growing old is just a number if you are healthy.  Do not allow yourself to be defined as old.  You are as young as you feel.  The late comedian George Burns booked performances for dates well past his 100th birthday.  He worked almost to the very end, and loved every minute of it.   He never let the fact that he was ageing affect him.  It’s beautiful to see another sunrise and live another day with your loved ones.  You must grow and not age.', 'upload/5.jpg', '2022-06-24 06:29:46', ' Grow but not by age', 'Pending', NULL),
(8, 1, NULL, 'PRIVATE', 'My sense of direction is so poor to the point of being ridiculous.  From home, my office is about five kilometres and I’ve been driving the same distance and route daily for the past ten years.  But still even today at some ‘T’ junction this question would spring in my head – ‘Left’ or ‘Right’?\n\nIf the inability to get ‘i’ and ‘e’ right is dyslexia, then what do we call the inability to get ‘north’ and ‘south’ right?  And this is irrespective of whether the route is short or long, familiar or unfamiliar.  People find it so hard to believe that I can be so bad at directions.  ‘To me, it is a miracle that my wife comes back home every evening in spite of the possibility of getting lost any moment in between’ says my husband.  I seriously doubt that while mixing the clay to create me, God missed out on fixing the essential component, the chip responsible for directions.', 'upload/6.jpg', '2022-06-24 06:37:17', 'we all reach', 'Pending', '2022-06-24 07:52:00');

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
  `user_name` varchar(100) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`user_id`, `name`, `email`, `contact`, `tagline`, `password`, `date_of_joining`, `image`, `user_name`, `role`) VALUES
(1, 'shiv shakti singh', 'shiv@gmail.com', '9643294453', 'singh is king', 'Shivam1', '2022-06-22 07:17:58', 'upload/img_avatar.png', NULL, 'user'),
(2, 'sumit gangwar', 'sumit@gmail.com', '1234567898', 'just checking', 'Sumit1', '2022-06-22 07:33:24', 'upload/img_avatar.png', NULL, 'user'),
(3, 'sachin', 'sachin@gmail.com', '5683534645', 'just checking', 'Sachin1', '2022-06-22 12:07:01', 'upload/butterfly.jpg', NULL, 'user'),
(4, 'Keshav Mishra', 'keshav@gmail.com', '7488416460', 'Peace begin with smile', 'Keshav1', '2022-06-23 06:50:45', 'upload/img_avatar.png', NULL, 'user'),
(5, 'admin', 'admin@gmail.com', '7488416460', 'Admin is boss', 'Admin1', '2022-06-24 09:23:17', 'upload/img_avatar.png', NULL, 'admin');

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
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 05:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb`
--

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(1, 'Joker', 'Joker', 2019),
(2, 'Get Out', 'Get Out', 2017),
(3, 'Pitch Perfect 3', 'Pitch Perfect 3', 2017),
(4, 'Hell or High Water', 'Hell or High Water', 2016),
(5, 'Contagion', 'Contagion', 2011);

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(1, 'ENG', 'US', 'Thriller', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.'),
(2, 'ENG', 'US', 'Horror', 'Chris and his girlfriend Rose go upstate to visit her parents for the weekend. At first, Chris reads the family\'s overly accommodating behavior as nervous attempts to deal with their daughter\'s interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.'),
(3, 'ENG', 'US', 'Musical', 'Following their win at the world championship, the now separated Bellas reunite for one last singing competition at an overseas USO tour, but face a group who uses both instruments and voices.'),
(4, 'ENG', 'US', 'drama', 'In Texas, after the death of his mother, the unemployed oil and gas worker Toby Howard is losing his ranch to the Texas Midlands Bank. Toby is divorced from his wife who lives with their two sons. When his brother Tanner Howard is released from the prison, they team up to rob agencies of the Texas Midlands Bank to raise money to pay the loan so that Toby may leave the real estate to his sons.'),
(5, 'ENG', 'US', 'action, drama', 'When Beth Emhoff (Gwyneth Paltrow) returns to Minnesota from a Hong Kong business trip, she attributes the malaise she feels to jet lag. However, two days later, Beth is dead, and doctors tell her shocked husband (Matt Damon) that they have no idea what killed her. Soon, many others start to exhibit the same symptoms, and a global pandemic explodes. Doctors try to contain the lethal microbe, but society begins to collapse as a blogger (Jude Law) fans the flames of paranoia.\r\n');

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(1, 'based on comic'),
(1, 'evil clown'),
(1, 'mental illness'),
(1, 'nihilism'),
(2, 'Sunken Place'),
(3, 'Singing'),
(4, 'armed robbery'),
(4, 'bank robbery'),
(4, 'brothers'),
(4, 'texas'),
(5, 'contagion'),
(5, 'epidemic'),
(5, 'infection'),
(5, 'outbreak'),
(5, 'virus');

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(1, 'joker_still1.jpg', 'still', 1),
(2, 'https://www.youtube.com/watch?v=zAGVQLHvwOY', 'video', 1),
(3, 'get_out.jpg', 'Poster', 2),
(4, 'https://www.youtube.com/watch?v=Hihto8onbUU', 'Trailer', 3),
(5, 'hell_or_high_poster.jpg', 'poster', 4),
(6, 'https://www.youtube.com/watch?v=JQoqsKoJVDw', 'video', 4),
(7, 'pitch_perfect_3_poster.jpg', 'poster', 3),
(8, 'joker_poster.jpg', 'poster', 1),
(9, 'https://rb.gy/v21usc', 'Poster', 5),
(10, 'https://www.youtube.com/watch?v=4sYSyuuLk5g', 'Trailer', 5);

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(1, 1, 'Lead Actor'),
(1, 2, 'Supporting Actor'),
(1, 3, 'Director'),
(1, 4, 'Executive Producer'),
(1, 5, 'Executive Producer'),
(1, 6, 'Music Director'),
(1, 7, 'Lead Actress'),
(2, 9, 'Lead Actor'),
(2, 10, 'Director'),
(2, 11, 'Lead Actress'),
(2, 12, 'Music Director'),
(3, 14, 'Lead Actress'),
(4, 15, 'Lead Actor'),
(4, 16, 'Supporting Actor'),
(4, 17, 'Director'),
(4, 18, 'Executive Producer'),
(4, 19, 'Music Director'),
(4, 20, 'Lead Actress'),
(5, 22, 'Director'),
(5, 23, 'Music Director'),
(5, 24, 'Lead Actor'),
(5, 25, 'Lead Actress'),
(5, 26, 'Producer');

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(1, 'Joaquin Phoenix based his laugh on \"videos of people suffering from pathological laughter.\" He also sought to portray a character with which audiences could not identify.'),
(1, 'The first R rated movie in history to make $1 billion worldwide.'),
(2, 'Daniel Kaluuya was given the lead role on the spot after nailing his audition. Writer, co-producer, and director Jordan Peele said Kaluuya did about five takes of a key scene, in which his character needs to cry, and each was so perfect that the single tear came down at the exact same time for each take.'),
(3, 'The music accompanying the Universal logo is sung a cappella'),
(4, 'Parts were filmed in Portales, NM, 18 miles from Clovis, NM.'),
(4, 'The film is dedicated to David John Mackenzie (1929-2015) and Ursula Sybil Mackenzie (1940-2015), the parents of director David Mackenzie. Both died while he was making this film.'),
(5, 'Consultant Dr. Ian Lipkin--professor of epidemiology at Columbia University\'s Mailman School of Public Health--said that the virus in the film is one that he created. He based it on some traits of the Nipah virus from Malaysia in the late 1990s, which spread from pigs to farmers.'),
(5, 'To promote this film, Warner Bros. Pictures Canada built two giant Petri dishes treated with bacteria and fungi and set them in a Toronto storefront window. Over several days, the bacteria and fungi specimens grew to spell out the name of the film and form biohazard symbols.\r\nInteresting');

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`people_id`, `screen_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`) VALUES
(1, 'Joaquin Phoenix', 'Joaquin', 'Rafael', 'Bottom', 'Male', 'joaquin_phoenix.jpg'),
(2, 'Robert De Niro', 'Robert', 'De', 'Niro', 'Male', 'robert_de_niro.jpg'),
(3, 'Todd Phillips', 'Todd', '', 'Bunzl', 'Male', 'todd_philips.jpg'),
(4, 'Richard Baratta', 'Richard', '', 'Baratta', 'Male', ''),
(5, 'Bruce Berman', 'Bruce', '', 'Berman', 'Male', ''),
(6, 'Hildur Guonadottir', 'Hildur', '', 'Guonadottir', 'Female', 'hildur_guonadottir.jpg'),
(7, 'Zazie Beetz', 'Zazie', '', 'Beetz', 'Female', 'zazie_beetz.jpg'),
(8, 'Frank Sinatra', 'Frank', 'Albert', 'Sinatra', 'Male', 'frank_sinatra.jpg'),
(9, 'Daniel Kaluuya', 'Daniel', '', ' Kaluuya', 'Male', 'Daniel_Kaluuya.jpg'),
(10, 'Allison Williams', 'Allison', '', 'Williams', 'Female', 'Allison_Williams.jpg'),
(11, 'Jordan Peele', 'Jordan', '', 'Peele', 'Male', 'Jordan_Peele.jpg'),
(12, 'Michael Abels', 'Michael', '', 'Abels', 'Male', 'Michael_Abels.jpg'),
(13, 'Childish Gambino', 'Donald', '', 'Glover', 'Male', 'Donald_Glover.jpg'),
(14, 'Anna Kendrick', 'Anna', '', 'Kendrick', 'Female', 'anna_kendrick.jpg'),
(15, 'Chris Pine', 'Chris', '', 'Pine', 'Male', 'https://www.imdb.com/name/nm15'),
(16, 'Ben Foster', 'Ben', '', 'Foster', 'Male', 'https://www.imdb.com/name/nm00'),
(17, 'David Mackenzie', 'David', '', 'Mackenzie', 'Male', 'https://www.imdb.com/name/nm05'),
(18, 'Braden Aftergood', 'Braden', '', 'Aftergood', 'Male', ''),
(19, 'Nick Cave', 'Nick', '', 'Cave', 'Male', 'https://www.imdb.com/name/nm01'),
(20, 'Katy Mixon', 'Katy', '', 'Mixon', 'Female', 'https://www.imdb.com/name/nm17'),
(21, 'Jim Wolfe', 'Jim', '', 'Wolfe', 'Male', 'https://www.apmmusic.com/sites'),
(22, 'Steven Soderbergh', 'Steven', '', 'Soderbergh', 'Male', 'https://rb.gy/r5c1fn'),
(23, 'Cliff Martinez', 'Cliff', '', 'Martinez', 'Male', 'https://rb.gy/mecv56'),
(24, 'Mitch Emhoff', 'Matt', '', 'Damon', 'Male', 'https://rb.gy/cpyye1'),
(25, 'Dr. Erin Mears', 'Kate', '', 'Winslet', 'Female', 'https://rb.gy/ibqsdf'),
(26, 'George Jacobs', 'Gregory', '', 'Jacobs', 'Male', 'https://rb.gy/i55ukk'),
(27, 'Bono', 'Paul', 'David', 'Hewson', 'Male', 'https://rb.gy/1k3ims');

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(1, 'Send In The Clowns', 'Isn\'t it rich?\r\nAre we a pair?\r\nMe here at last on the ground,\r\nYou in mid-air,\r\nWhere are the clowns?\r\nIsn\'t it bliss?\r\nDon\'t you approve?\r\nOne who keeps tearing around,\r\nOne who can\'t move,\r\nWhere are the clowns?\r\nThere ought to be clowns?\r\nJust when I\'d stopped opening doors,\r\nFinally knowing the one that I wanted was yours\r\nMaking my entrance again with my usual flair\r\nSure of my lines\r\nNo one is there\r\nDon\'t you love farce?\r\nMy fault, I fear\r\nI thought that you\'d want what I want\r\nSorry, my dear!\r\nBut where are the clowns\r\nSend in the clowns\r\nDon\'t bother, they\'re here\r\nIsn\'t it rich?\r\nIsn\'t it queer?\r\nLosing my timing this late in my career\r\nBut where are the clowns?\r\nThere ought to be clowns\r\nWell, maybe next year'),
(2, 'Red Bone', 'Daylight\r\nI wake up feeling like you won\'t play right\r\nI used to know, but now that shit don\'t feel right\r\nIt made me put away my pride\r\nSo long\r\nYou made a nigga wait for some, so long\r\nYou make it hard for boy like that to go on\r\nI\'m wishing I could make this mine, oh\r\nIf you want it, yeah\r\nYou can have it, oh, oh, oh\r\nIf you need it, ooh\r\nWe can make it, oh\r\nIf you want it\r\nYou can have it\r\nBut stay woke\r\nNiggas creepin\'\r\nThey gon\' find you\r\nGon\' catch you sleepin\' (oh)\r\nNow stay woke\r\nNiggas creepin\'\r\nNow don\'t you close your eyes\r\nToo late\r\nYou wanna make it right, but now it\'s too late\r\nMy peanut butter chocolate cake with Kool-Aid\r\nI\'m trying not to waste my time\r\nIf you want it, oh\r\nYou can have it (you can have it)\r\nIf you need it (you better believe in something)\r\nWe can make it, oh\r\nIf you want it\r\nYou can have it, ah!\r\nBut stay woke (stay woke)\r\nNiggas creepin\' (they be creepin\')\r\nThey gon\' find you (they gon\' find you)\r\nGon\' catch you sleepin\' (gon\' catch you sleepin\', put your hands up on me)\r\nNow stay woke\r\nNiggas creepin\'\r\nNow don\'t you close your eyes\r\nBut stay woke (ooh, ah)\r\nNiggas creepin\'\r\nThey gon\' find you (they gon\' find you)\r\nGon\' catch you sleepin\' (gon\' catch you, gon\' catch you, ooh)\r\nNow stay woke\r\nNiggas creepin\'\r\nNow don\'t you close your eyes\r\nHow\'d it get so scandalous?\r\nOh, how\'d it get so scandalous?\r\nOh, oh, how\'d it get, how\'d it get\r\nHow\'d it get so scandalous?\r\nHow\'d it get so scandalous?\r\nHow\'d it get so scandalous?\r\nBut stay woke\r\nBut stay woke'),
(3, 'Toxic', 'Baby, can’t you see\r\nI’m calling\r\nA guy like you\r\nShould wear a warning\r\nIt’s dangerous\r\nI’m fallin’\r\n\r\nThere’s no escape\r\nI can’t wait\r\nI need a hit\r\nBaby, give me it\r\nYou’re dangerous\r\nI’m lovin’ it\r\n\r\nToo high\r\nCan’t come down\r\nLosing my head\r\nSpinning ‘round and ‘round\r\nDo you feel me now?\r\n\r\nWith a taste of your lips I’m on a ride\r\nYou\'re toxic I\'m slipping under\r\nWith a taste of a poison paradise\r\nI’m addicted to you\r\nDon’t you know that you’re toxic\r\nAnd I love what you do\r\nDon’t you know that you’re toxic\r\n\r\nIt’s getting late\r\nTo give you up\r\nI took a sip\r\nFrom my devil\'s cup\r\nSlowly\r\nIt’s taking over me\r\n\r\nToo high\r\nCan’t come down\r\nIt’s in the air\r\nAnd it’s all around\r\nCan you feel me now\r\n\r\nWith a taste of your lips I’m on a ride\r\nYou\'re toxic I\'m slipping under\r\nWith a taste of a poison paradise\r\nI’m addicted to you\r\nDon’t you know that you’re toxic\r\nAnd I love what you do\r\nDon’t you know that you’re toxic\r\n\r\nDon\'t you know that you\'re toxic\r\n\r\n[x2]\r\nWith a taste of your lips I\'m on a ride\r\nYou\'re toxic I\'m slipping under\r\nWith a taste of a poison paradise\r\nI\'m addicted to you\r\nDon\'t you know that you\'re toxic\r\n\r\nIntoxicate me now\r\nWith your lovin\' now\r\nI think I\'m ready now\r\nI think I\'m ready now\r\nIntoxicate me now\r\nWith your lovin\' now\r\nI think I\'m ready now '),
(4, 'Walkin\' Out The Door', 'I don\'t know where we belong\r\nOr if I could be this kind of strong\r\nI know that you say we were meant to be\r\nBut I don\'t know, I don\'t know, I don\'t know\r\nSo I\'m going to leave for a while (I\'m gonna leave for a while)\r\nLeave my head and let the miles say\r\nWhere I should go, where I should go, I\'m gonna go\r\nSo I need you not to need me, oh, this time around\r\nAnd I want you not to want me, would we have ever worked out\r\nAnd I can promise you one thing, that\'s for sure\r\nNo matter how many times you say you love me\r\nI\'ll still be walking out the door\r\nSo I\'ll pack my bags and be on my way (pack my bags and be on my way)\r\nSo please don\'t try and give me a reason to stay\r\nYou know I won\'t, I won\'t, oh no\r\nSo I need you not to need me, oh, this time around\r\nAnd I want you not…'),
(5, 'All I Want is You', 'You say you want\r\nDiamonds on a ring of gold\r\nYou say you want\r\nYour story to remain untold\r\nBut all the promises we make\r\nFrom the cradle to the grave\r\nWhen all I want is you\r\nYou say you\'ll give me\r\nA highway with no one on it\r\nTreasure just to look upon it\r\nAll the riches in the night\r\nYou say you\'ll give me\r\nEyes in a moon of blindness\r\nA river in a time of dryness\r\nA harbor in the tempest\r\nBut all the promises we make\r\nFrom the cradle to the grave\r\nWhen all I want is you\r\nYou say you want\r\nYour love to work out right\r\nTo last with me through the night\r\nYou say you want\r\nDiamonds on a ring of gold\r\nYour story to remain untold\r\nYour love not to grow cold\r\nAll the promises we break\r\nFrom the cradle to the grave\r\nWhen all I want is you\r\nYou all I want is\r\nYou all I want is\r\nYou all I want is\r\nYou');

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(1, 'fools'),
(1, 'regret'),
(2, 'Stay Woke'),
(3, 'Brittany Spears'),
(4, 'change'),
(4, 'tragedy'),
(5, 'diamonds'),
(5, 'U2');

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `s_link`, `s_link_type`, `song_id`) VALUES
(1, 'https://www.youtube.com/watch?v=WDaA_KFHeB4', 'video', 1),
(2, 'https://youtu.be/Kp7eSUU9oy8', 'Video', 2),
(3, 'https://www.youtube.com/watch?v=6hIjKViufzI', 'YouTube', 3),
(4, 'https://www.youtube.com/watch?v=Hkt1yULpfRE', 'video', 4),
(5, 'https://www.youtube.com/watch?v=KgJj13ZbbzY', 'Youtube', 5);

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(1, 8, 'Singer'),
(2, 13, 'Singer'),
(3, 14, 'Singer'),
(4, 21, 'Preformer');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

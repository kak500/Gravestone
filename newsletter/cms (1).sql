-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Lis 2018, 21:52
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `category` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id_category`, `category`) VALUES
(1, 'C++'),
(2, 'Cobol'),
(3, 'PHP'),
(4, 'JavaScript'),
(5, 'Algol');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `news` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_polish_ci,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `comment`
--

INSERT INTO `comment` (`id`, `date`, `news`, `comment`, `user`) VALUES
(16, '2018-05-24', 4, 'To prawda, tak byÅ‚o!\r\n', 2),
(17, '2018-05-24', 1, 'Kto nas obroni??!', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_polish_ci,
  `author` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `id_category`, `content`, `author`) VALUES
(1, 'Marsjanie Atakujo', '2018-05-16', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla sed augue placerat ipsum pulvinar feugiat. Nunc non imperdiet neque, sed faucibus est. Donec ut ultricies risus. Nulla aliquam semper massa, ut finibus felis facilisis ac. Donec sapien nisi, condimentum quis nibh in, tincidunt lacinia est. Mauris quis interdum nisl. Morbi a nisl ut nisl tristique pellentesque quis et sapien. Vestibulum commodo quis dui placerat tempus. Donec ut felis id leo fermentum dictum ultricies eget turpis. Duis tempus lectus ut libero sollicitudin, non malesuada ex auctor. Phasellus pellentesque interdum ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras lacinia posuere sollicitudin. ', 1),
(2, 'klopsy taniejo', '2018-05-19', 2, ' Fusce at metus euismod, facilisis sem vel, elementum nisl. Duis sodales, diam ac placerat finibus, urna tellus laoreet massa, quis dictum mauris felis et urna. Integer eget leo ante. Maecenas tincidunt placerat mauris, et sollicitudin massa aliquet eget. Vestibulum sagittis ante non faucibus sodales. Morbi ut quam rhoncus, varius orci eget, lacinia arcu. Donec dapibus nulla quis vehicula vehicula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. ', 1),
(3, 'Zabili mi Å¼Ã³Å‚wia', '2018-05-15', 3, ' Etiam eget augue nisl. Proin commodo ut diam at lacinia. Cras commodo eros leo, vel aliquam ex interdum eget. Maecenas a sagittis quam. Pellentesque imperdiet porta tellus, nec ullamcorper ante mattis eget. Morbi iaculis augue ut tortor accumsan, at ullamcorper augue rutrum. Aenean eget laoreet enim. Duis ultrices egestas neque, eget maximus magna gravida vitae. Donec ut est arcu. Praesent lacinia tincidunt massa sit amet hendrerit. ', 1),
(4, 'User testowy rzÄ…dzi Å›wiatem', '2018-05-20', 1, ' Nullam vulputate hendrerit diam non suscipit. Etiam mollis lobortis augue, eget lobortis turpis fringilla eu. Sed lacus diam, vestibulum nec commodo sit amet, pellentesque id ligula. Proin sed auctor felis. Integer a massa libero. Morbi consectetur egestas molestie. In hac habitasse platea dictumst. Fusce convallis dui malesuada massa tincidunt egestas. Proin dapibus dui dui, at dignissim dolor porttitor tincidunt. Vivamus semper feugiat urna eu iaculis. ', 2);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `tytul i autor`
-- (See below for the actual view)
--
CREATE TABLE `tytul i autor` (
`title` varchar(30)
,`mail` varchar(20)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `mail` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `pass` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `last_name` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id_user`, `mail`, `pass`, `name`, `last_name`, `city`) VALUES
(1, 'admin@admin.com', 'admin', 'Administrator', 'Serwisu', ''),
(2, 'test@test.com', 'test', 'Testowy', 'User', ''),
(3, 'test2@test.com', 'test21', 'Testowy', 'Drugi', '');

-- --------------------------------------------------------

--
-- Struktura widoku `tytul i autor`
--
DROP TABLE IF EXISTS `tytul i autor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tytul i autor`  AS  select `news`.`title` AS `title`,`user`.`mail` AS `mail` from (`news` join `user` on((`news`.`author` = `user`.`id_user`))) ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news` (`news`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `author` (`author`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news`) REFERENCES `news` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`id_user`);

--
-- Ograniczenia dla tabeli `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`author`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Maj 2026, 15:28
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zadanie3tigrupaa`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzialy`
--

CREATE TABLE `dzialy` (
  `identyfikator_dzialu` int(11) NOT NULL,
  `nazwa_dzialu` varchar(30) NOT NULL,
  `numer_telefonu_dzialu` varchar(15) DEFAULT NULL,
  `budzet_roczny_dzialu` decimal(10,2) DEFAULT 0.00,
  `data_utworzenia_dzialu` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `dzialy`
--

INSERT INTO `dzialy` (`identyfikator_dzialu`, `nazwa_dzialu`, `numer_telefonu_dzialu`, `budzet_roczny_dzialu`, `data_utworzenia_dzialu`) VALUES
(1, 'dzial_marketingu', '784221891', '10000.00', '2023-10-02'),
(2, 'dzial_logistyki', '747584891', '15000.00', '2024-10-01'),
(3, 'dzial_ksiegowosci', '890123891', '12500.00', '2024-09-04'),
(4, 'dzial_it', '890902131', '18000.00', '2023-11-01'),
(5, 'dzial_obslugi_klienta', '098123991', '12000.00', '2023-12-08');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `identyfikator_pracownika` int(11) NOT NULL,
  `imie_pracownika` varchar(30) NOT NULL,
  `nazwisko_pracownika` varchar(40) NOT NULL,
  `numer_pesel` int(11) DEFAULT NULL,
  `pensja` decimal(10,2) DEFAULT 4000.00,
  `data_zatrudnienia` date NOT NULL,
  `typ_etatu` enum('pełny','1/2','1/4') DEFAULT 'pełny',
  `numer_telefonu` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`identyfikator_pracownika`, `imie_pracownika`, `nazwisko_pracownika`, `numer_pesel`, `pensja`, `data_zatrudnienia`, `typ_etatu`, `numer_telefonu`) VALUES
(1, 'Marel', 'Michalczyk', 2147483647, '11500.00', '2023-10-02', 'pełny', '123123456'),
(4, 'Maciej', 'Wojtaszek', 2147483647, '9200.00', '2023-10-03', 'pełny', '123123456'),
(5, 'Janusz', 'Stefaniak', 2147483647, '6900.00', '2023-11-05', '1/2', '123123436'),
(6, 'Jacek', 'Wiśniewski', 2147483647, '77050.00', '2023-11-09', '1/2', '123123456'),
(7, 'Jakub', 'Stawinoga', 2147483647, '8050.00', '2024-12-10', 'pełny', '167856756');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `premie`
--

CREATE TABLE `premie` (
  `identyfikator_premii` int(11) NOT NULL,
  `kwota_premii` decimal(10,2) NOT NULL,
  `rok_przyznania_premii` year(4) NOT NULL,
  `typ_premii` enum('uznaniowa','stała','okolicznosciowa') DEFAULT 'uznaniowa',
  `data_wyplaty_premii` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `premie`
--

INSERT INTO `premie` (`identyfikator_premii`, `kwota_premii`, `rok_przyznania_premii`, `typ_premii`, `data_wyplaty_premii`) VALUES
(1, '1000.00', 2023, '', '2023-10-02'),
(2, '1050.00', 2023, '', '2023-10-06'),
(3, '1500.00', 2024, '', '2024-10-03'),
(4, '2000.00', 2023, '', '2023-12-06'),
(5, '6000.00', 2023, '', '2023-10-05');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `projekty`
--

CREATE TABLE `projekty` (
  `identyfikator_projektu` int(11) NOT NULL,
  `nazwa_projektu` varchar(50) NOT NULL,
  `budzet_projektu` decimal(10,2) DEFAULT 10000.00,
  `data_rozpoczecia_projektu` date DEFAULT NULL,
  `priorytet_projektu` enum('niski','sredni','wysoki') DEFAULT 'sredni',
  `opis_projektu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `projekty`
--

INSERT INTO `projekty` (`identyfikator_projektu`, `nazwa_projektu`, `budzet_projektu`, `data_rozpoczecia_projektu`, `priorytet_projektu`, `opis_projektu`) VALUES
(1, 'ufoanomalies', '10000.00', '2023-10-02', '', 'strona internetowa'),
(2, 'coffeshop', '11000.00', '2023-12-08', '', 'strona internetowa'),
(3, 'bazadanych', '8000.00', '2023-01-10', '', 'stworzenie baz danych'),
(4, 'ulotki', '1000.00', '2023-10-04', '', 'rozdawanie ulotek'),
(5, 'stona glowna', '19000.00', '2023-01-02', '', 'głowna strona internetowa firmy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `identyfikator_stanowiska` int(11) NOT NULL,
  `nazwa_stanowiska` varchar(40) NOT NULL,
  `opis_stanowiska` text DEFAULT NULL,
  `stawka_godzinowa` decimal(10,2) DEFAULT 0.00,
  `data_waznosci_stanowiska` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`identyfikator_stanowiska`, `nazwa_stanowiska`, `opis_stanowiska`, `stawka_godzinowa`, `data_waznosci_stanowiska`) VALUES
(1, 'IT', 'Tworzy oprogramowanie i prowadzi testy', '100.00', '2028-10-04'),
(2, 'ksiegowy', 'obsluga ksiegowosci', '90.00', '2027-10-04'),
(3, 'reklamodawca', 'dbanie o reklame firmy', '80.00', '2030-10-04'),
(4, 'logistyk', 'obsluga dzialu logistycznego', '110.00', '2028-12-06'),
(5, 'obsluga', 'obsluga klientow', '90.00', '0000-00-00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  ADD PRIMARY KEY (`identyfikator_dzialu`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`identyfikator_pracownika`);

--
-- Indeksy dla tabeli `premie`
--
ALTER TABLE `premie`
  ADD PRIMARY KEY (`identyfikator_premii`);

--
-- Indeksy dla tabeli `projekty`
--
ALTER TABLE `projekty`
  ADD PRIMARY KEY (`identyfikator_projektu`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`identyfikator_stanowiska`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  MODIFY `identyfikator_dzialu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `identyfikator_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `premie`
--
ALTER TABLE `premie`
  MODIFY `identyfikator_premii` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `projekty`
--
ALTER TABLE `projekty`
  MODIFY `identyfikator_projektu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `identyfikator_stanowiska` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

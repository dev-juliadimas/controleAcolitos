-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/08/2025 às 20:33
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `acolitos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `acolito`
--

CREATE TABLE `acolito` (
  `codAcolito` int(11) NOT NULL,
  `nomeAcolito` varchar(60) NOT NULL,
  `coordenacao` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `acolito`
--

INSERT INTO `acolito` (`codAcolito`, `nomeAcolito`, `coordenacao`) VALUES
(1, 'Leandro', 'S'),
(2, 'Felipe', 'N'),
(3, 'Edna', 'N'),
(4, 'Gabriely', 'N'),
(5, 'Alexandre', 'S'),
(6, 'Gabriela', 'N'),
(7, 'Elias', 'N'),
(8, 'Letícia de Souza', 'N'),
(11, 'Jéssica Tinelli', 'N'),
(12, 'Maria Laura', 'N'),
(13, 'Flávia', 'S'),
(14, 'Raquel', 'S'),
(15, 'Jean', 'N'),
(16, 'Isabely', 'N'),
(17, 'Ruan Carlos', 'N'),
(18, 'Júnior', 'S'),
(19, 'Ricardo', 'N'),
(20, 'Daniela', 'S'),
(21, 'Rafael', 'N'),
(22, 'Cecília', 'N'),
(23, 'Júlia', 'N'),
(24, 'Diego', 'N'),
(27, 'Maria Eduarda', 'N'),
(28, 'Millena', 'N'),
(29, 'Amanda', 'N'),
(30, 'Ana Karolina', 'N'),
(31, 'Lucas', 'N'),
(32, 'Rafaelly', 'N'),
(33, 'Ramon', 'S'),
(34, 'Mariange', 'N'),
(35, 'Stefany', 'N'),
(36, 'Nathan', 'N'),
(37, 'Wellington', 'N'),
(38, 'Leticia Cizeski', 'N'),
(39, 'Marcos', 'S'),
(40, 'Vicente', 'N'),
(41, 'Agatha', 'S'),
(42, 'Andreza', 'N'),
(45, 'Jéssica da Rocha', 'N'),
(46, 'Ana Maria', 'N'),
(56, 'Gabriel', 'N'),
(58, 'Murilo', 'N'),
(60, 'Vitor', 'N'),
(65, 'Tayná', 'N'),
(66, 'Carlos Emanuel', 'N'),
(67, 'Claison', 'N'),
(68, 'José', 'N');

-- --------------------------------------------------------

--
-- Estrutura para tabela `escala`
--

CREATE TABLE `escala` (
  `codEscala` int(11) NOT NULL,
  `fk_escalaGeral` int(11) NOT NULL DEFAULT 1,
  `fk_acolito` int(11) NOT NULL,
  `responsavel` varchar(1) NOT NULL DEFAULT 'N',
  `fk_funcao` int(11) DEFAULT NULL,
  `fk_missa` int(11) DEFAULT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `escala`
--

INSERT INTO `escala` (`codEscala`, `fk_escalaGeral`, `fk_acolito`, `responsavel`, `fk_funcao`, `fk_missa`, `data`, `hora`) VALUES
(1, 1, 1, 'S', 6, 7, '2024-03-20', '19:30:00'),
(2, 1, 2, 'N', 6, 7, '2024-03-20', '19:30:00'),
(3, 1, 3, 'N', 6, 7, '2024-03-20', '19:30:00'),
(4, 1, 4, 'N', 6, 7, '2024-03-20', '19:30:00'),
(5, 1, 5, 'N', 6, 7, '2024-03-20', '19:30:00'),
(6, 1, 6, 'S', 6, 1, '2024-03-21', '19:30:00'),
(7, 1, 7, 'S', 6, 8, '2024-03-22', '06:00:00'),
(8, 1, 8, 'N', 6, 8, '2024-03-22', '06:00:00'),
(9, 1, 5, 'S', 6, 2, '2024-03-23', '15:00:00'),
(10, 1, 12, 'N', 6, 2, '2024-03-23', '15:00:00'),
(11, 1, 11, 'N', 6, 2, '2024-03-23', '15:00:00'),
(12, 1, 13, 'N', 6, 2, '2024-03-23', '15:00:00'),
(13, 1, 14, 'N', 6, 2, '2024-03-23', '15:00:00'),
(14, 1, 15, 'N', 6, 2, '2024-03-23', '15:00:00'),
(15, 1, 16, 'N', 6, 2, '2024-03-23', '15:00:00'),
(16, 1, 17, 'N', 6, 2, '2024-03-23', '15:00:00'),
(17, 1, 18, 'S', 6, 3, '2024-03-24', '09:00:00'),
(18, 1, 13, 'N', 6, 3, '2024-03-24', '09:00:00'),
(19, 1, 19, 'N', 6, 3, '2024-03-24', '09:00:00'),
(20, 1, 20, 'N', 6, 3, '2024-03-24', '09:00:00'),
(21, 1, 21, 'N', 6, 3, '2024-03-24', '09:00:00'),
(22, 1, 22, 'N', 6, 3, '2024-03-24', '09:00:00'),
(23, 1, 23, 'N', 6, 3, '2024-03-24', '09:00:00'),
(24, 1, 24, 'S', 6, 4, '2024-03-24', '11:00:00'),
(25, 1, 27, 'N', 6, 4, '2024-03-24', '11:00:00'),
(26, 1, 6, 'N', 6, 4, '2024-03-24', '11:00:00'),
(27, 1, 28, 'N', 6, 4, '2024-03-24', '11:00:00'),
(28, 1, 29, 'N', 6, 4, '2024-03-24', '11:00:00'),
(29, 1, 30, 'N', 6, 4, '2024-03-24', '11:00:00'),
(30, 1, 31, 'N', 6, 4, '2024-03-24', '11:00:00'),
(31, 1, 32, 'N', 6, 4, '2024-03-24', '11:00:00'),
(32, 1, 33, 'S', 6, 5, '2024-03-24', '15:00:00'),
(33, 1, 1, 'N', 6, 5, '2024-03-24', '15:00:00'),
(34, 1, 4, 'N', 6, 5, '2024-03-24', '15:00:00'),
(35, 1, 34, 'N', 6, 5, '2024-03-24', '15:00:00'),
(36, 1, 35, 'N', 6, 5, '2024-03-24', '15:00:00'),
(37, 1, 3, 'N', 6, 5, '2024-03-24', '15:00:00'),
(38, 1, 36, 'N', 6, 5, '2024-03-24', '15:00:00'),
(39, 1, 37, 'N', 6, 5, '2024-03-24', '15:00:00'),
(40, 1, 38, 'N', 6, 5, '2024-03-24', '15:00:00'),
(41, 1, 39, 'S', 6, 6, '2024-03-24', '18:00:00'),
(42, 1, 40, 'N', 6, 6, '2024-03-24', '18:00:00'),
(43, 1, 41, 'N', 6, 6, '2024-03-24', '18:00:00'),
(44, 1, 42, 'N', 6, 6, '2024-03-24', '18:00:00'),
(45, 1, 7, 'N', 6, 6, '2024-03-24', '18:00:00'),
(46, 1, 8, 'N', 6, 6, '2024-03-24', '18:00:00'),
(47, 1, 46, 'N', 6, 6, '2024-03-24', '18:00:00'),
(48, 1, 45, 'N', 6, 6, '2024-03-24', '18:00:00'),
(49, 1, 5, 'S', 6, 1, '2024-03-25', '19:00:00'),
(50, 1, 6, 'N', 6, 1, '2024-03-25', '19:00:00'),
(51, 1, 33, 'N', 6, 1, '2024-03-25', '19:00:00'),
(53, 1, 1, 'S', 6, 7, '2024-03-27', '19:30:00'),
(54, 1, 56, 'N', 6, 7, '2024-03-27', '19:30:00'),
(55, 1, 35, 'N', 6, 7, '2024-03-27', '19:30:00'),
(56, 1, 34, 'N', 6, 7, '2024-03-27', '19:30:00'),
(57, 1, 14, 'N', 6, 7, '2024-03-27', '19:30:00'),
(58, 1, 5, 'S', 6, 1, '2024-03-28', '19:30:00'),
(59, 1, 20, 'N', 6, 1, '2024-03-28', '19:30:00'),
(60, 1, 29, 'N', 6, 1, '2024-03-28', '19:30:00'),
(61, 1, 13, 'N', 6, 1, '2024-03-28', '19:30:00'),
(62, 1, 11, 'N', 6, 1, '2024-03-28', '19:30:00'),
(63, 1, 45, 'N', 6, 1, '2024-03-28', '19:30:00'),
(64, 1, 56, 'N', 6, 1, '2024-03-28', '19:30:00'),
(65, 1, 34, 'N', 6, 1, '2024-03-28', '19:30:00'),
(66, 1, 35, 'N', 6, 1, '2024-03-28', '19:30:00'),
(67, 1, 33, 'N', 6, 1, '2024-03-28', '19:30:00'),
(68, 1, 1, 'S', 6, 1, '2024-03-29', '15:00:00'),
(69, 1, 7, 'N', 6, 1, '2024-03-29', '15:00:00'),
(70, 1, 8, 'N', 6, 1, '2024-03-29', '15:00:00'),
(71, 1, 2, 'N', 6, 1, '2024-03-29', '15:00:00'),
(72, 1, 12, 'N', 6, 1, '2024-03-29', '15:00:00'),
(73, 1, 30, 'N', 6, 1, '2024-03-29', '15:00:00'),
(74, 1, 56, 'N', 6, 1, '2024-03-29', '15:00:00'),
(75, 1, 58, 'N', 6, 1, '2024-03-29', '15:00:00'),
(76, 1, 23, 'N', 6, 1, '2024-03-29', '15:00:00'),
(77, 1, 21, 'N', 6, 1, '2024-03-29', '15:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `escalageral`
--

CREATE TABLE `escalageral` (
  `codEscalaGeral` int(11) NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFinal` date NOT NULL,
  `qtd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `escalageral`
--

INSERT INTO `escalageral` (`codEscalaGeral`, `dataInicio`, `dataFinal`, `qtd`) VALUES
(1, '2024-03-20', '2024-04-07', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcao`
--

CREATE TABLE `funcao` (
  `codFuncao` int(11) NOT NULL,
  `nomeFuncao` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcao`
--

INSERT INTO `funcao` (`codFuncao`, `nomeFuncao`) VALUES
(1, 'Cerimonial'),
(2, 'Microfone'),
(3, 'Missal'),
(4, 'Turibulo'),
(5, 'Naveta'),
(6, 'Servir');

-- --------------------------------------------------------

--
-- Estrutura para tabela `missa`
--

CREATE TABLE `missa` (
  `codMissa` int(11) NOT NULL,
  `diaSemana` varchar(20) NOT NULL,
  `horarioMissa` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `missa`
--

INSERT INTO `missa` (`codMissa`, `diaSemana`, `horarioMissa`) VALUES
(1, 'Extraordinária', NULL),
(2, 'Sábado', '15:00:00'),
(3, 'Domingo', '09:00:00'),
(4, 'Domingo', '11:00:00'),
(5, 'Domingo', '15:00:00'),
(6, 'Domingo', '18:00:00'),
(7, 'Quarta-feira', '19:30:00'),
(8, 'Sexta-feira', '06:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `acolito`
--
ALTER TABLE `acolito`
  ADD PRIMARY KEY (`codAcolito`),
  ADD UNIQUE KEY `nomeAcolito` (`nomeAcolito`);

--
-- Índices de tabela `escala`
--
ALTER TABLE `escala`
  ADD PRIMARY KEY (`codEscala`),
  ADD KEY `fk_acolito` (`fk_acolito`),
  ADD KEY `fk_funcao` (`fk_funcao`),
  ADD KEY `fk_escalaGeral` (`fk_escalaGeral`),
  ADD KEY `fk_missa` (`fk_missa`);

--
-- Índices de tabela `escalageral`
--
ALTER TABLE `escalageral`
  ADD PRIMARY KEY (`codEscalaGeral`);

--
-- Índices de tabela `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`codFuncao`);

--
-- Índices de tabela `missa`
--
ALTER TABLE `missa`
  ADD PRIMARY KEY (`codMissa`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acolito`
--
ALTER TABLE `acolito`
  MODIFY `codAcolito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de tabela `escala`
--
ALTER TABLE `escala`
  MODIFY `codEscala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de tabela `escalageral`
--
ALTER TABLE `escalageral`
  MODIFY `codEscalaGeral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `funcao`
--
ALTER TABLE `funcao`
  MODIFY `codFuncao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `missa`
--
ALTER TABLE `missa`
  MODIFY `codMissa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `escala`
--
ALTER TABLE `escala`
  ADD CONSTRAINT `escala_ibfk_1` FOREIGN KEY (`fk_acolito`) REFERENCES `acolito` (`codAcolito`),
  ADD CONSTRAINT `escala_ibfk_2` FOREIGN KEY (`fk_escalaGeral`) REFERENCES `escalageral` (`codEscalaGeral`),
  ADD CONSTRAINT `escala_ibfk_3` FOREIGN KEY (`fk_missa`) REFERENCES `missa` (`codMissa`),
  ADD CONSTRAINT `escala_ibfk_4` FOREIGN KEY (`fk_funcao`) REFERENCES `funcao` (`codFuncao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

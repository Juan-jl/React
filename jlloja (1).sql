-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 28-Mar-2022 às 16:09
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jlloja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblchat`
--

CREATE TABLE `tblchat` (
  `id` int(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblcomentarios`
--

CREATE TABLE `tblcomentarios` (
  `id` int(255) NOT NULL,
  `idUsuarioComent` int(255) NOT NULL,
  `idproduto` int(255) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `nota` int(5) NOT NULL,
  `recomendacao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblcomentarios`
--

INSERT INTO `tblcomentarios` (`id`, `idUsuarioComent`, `idproduto`, `comentario`, `nota`, `recomendacao`) VALUES
(32, 2, 35, 'OLá!', 0, ''),
(33, 2, 35, 'eae', 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbllogins`
--

CREATE TABLE `tbllogins` (
  `loginUsuario` varchar(11) NOT NULL,
  `senhaUsuario` varchar(32) NOT NULL,
  `nomeUsuario` varchar(255) NOT NULL,
  `nomeLoja` varchar(11) NOT NULL,
  `idiomaUsuario` varchar(255) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbllogins`
--

INSERT INTO `tbllogins` (`loginUsuario`, `senhaUsuario`, `nomeUsuario`, `nomeLoja`, `idiomaUsuario`, `idUsuario`) VALUES
('admin', '4a7d1ed414474e4033ac29ccb8653d9b', 'Administrador', '', '', 1),
('juan_jl', 'e10adc3949ba59abbe56e057f20f883e', 'Juan', '', 'jn', 2),
('conta3', '4a7d1ed414474e4033ac29ccb8653d9b', 'conta3', '', '', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblproduto`
--

CREATE TABLE `tblproduto` (
  `nomeProduto` varchar(255) NOT NULL,
  `valorProduto` decimal(10,2) NOT NULL,
  `codigoProduto` int(5) NOT NULL,
  `estoqueProduto` int(255) NOT NULL,
  `descricaoProduto` varchar(255) NOT NULL,
  `dataFabriProduto` date NOT NULL,
  `condicaoProduto` varchar(10) NOT NULL,
  `imagemNome` varchar(255) NOT NULL,
  `idLogin` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblproduto`
--

INSERT INTO `tblproduto` (`nomeProduto`, `valorProduto`, `codigoProduto`, `estoqueProduto`, `descricaoProduto`, `dataFabriProduto`, `condicaoProduto`, `imagemNome`, `idLogin`, `id`) VALUES
('Estojo', '24.00', 1, 32, 'Um estojo para lápis', '2004-11-30', 'Novo', '', 1, 5),
('Lápis', '248.00', 2, 1, 'Lápis usado pela metade', '2021-10-11', 'Usado', '', 1, 6),
('Peixe Betta', '8.51', 9, 1, 'Peixe Betta azul', '2021-02-09', 'Usado', '', 1, 8),
('Notebook Samsung', '2750.90', 8, 985, 'Notebook Samsung Book e20', '2021-04-09', 'Novo', '', 1, 9),
('Rainha Elizabeth', '243.00', 332, 1, 'A Rainha Elizabeth II é um produto muito útil para se ter em casa, ela serve para muitas coisas, entre eles: Ficar sentada no sofá e dar ordens. Adiquira já a sua, estamos com promoção!', '1887-11-30', 'Novo', 'applogo.png', 1, 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblchat`
--
ALTER TABLE `tblchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomentarios`
--
ALTER TABLE `tblcomentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllogins`
--
ALTER TABLE `tbllogins`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `tblproduto`
--
ALTER TABLE `tblproduto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblchat`
--
ALTER TABLE `tblchat`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblcomentarios`
--
ALTER TABLE `tblcomentarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tbllogins`
--
ALTER TABLE `tbllogins`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblproduto`
--
ALTER TABLE `tblproduto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

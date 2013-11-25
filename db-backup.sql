-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 13-Nov-2013 às 19:04
-- Versão do servidor: 5.6.12-log
-- versão do PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `sigen`
--
CREATE DATABASE IF NOT EXISTS `sigen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sigen`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bootstrap`
--

CREATE TABLE IF NOT EXISTS `bootstrap` (
  `idbootstrap` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbootstrap`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `bootstrap`
--

INSERT INTO `bootstrap` (`idbootstrap`, `tipo`, `class`, `descricao`) VALUES
(1, 'espaçamento', 'span1', ''),
(2, 'espaçamento', 'span2', ''),
(3, 'espaçamento', 'span3', ''),
(4, 'espaçamento', 'span4', ''),
(5, 'espaçamento', 'span5', ''),
(6, 'espaçamento', 'span6', ''),
(7, 'espaçamento', 'span7', ''),
(8, 'espaçamento', 'span8', ''),
(9, 'espaçamento', 'span9', ''),
(10, 'espaçamento', 'span10', ''),
(11, 'espaçamento', 'span11', ''),
(12, 'espaçamento', 'span12', ''),
(13, 'botões', 'btn', 'Botão padrão cinza com gradiente'),
(14, 'botões', 'btn btn-primary', 'Provê peso extra visual e identifica a ação p'),
(15, 'botões', 'btn btn-info 	', 'Usado como uma alternativa para os estilos pa'),
(16, 'botões', 'btn btn-success', 'Indica uma ação bem sucedida e positiva'),
(17, 'botões', 'btn btn-warning', 'Indicação de cuidado deve ser feita com esta '),
(18, 'botões', 'btn btn-danger', 'Indica uma ação potencialmente perigosa'),
(19, 'botões', 'btn btn-inverse', 'Botão alternativo cinza, não ligado a uma açã'),
(20, 'botões', 'btn btn-link', 'Desenfatizar um botão por fazer parecer como ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `codcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `codgrupo` varchar(50) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `datacadastro` date DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codcategoria`,`codgrupo`),
  UNIQUE KEY `codgrupo_UNIQUE` (`codgrupo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `codgrupo`, `nome`, `datacadastro`, `descricao`, `ativo`, `data`) VALUES
(1, '33.90.30.03', 'COMBUSTÍVEIS E LUBRIFICANTES', '2013-10-25', '', '1', '2013-10-25'),
(2, '33.90.30.07', 'GÊNEROS DE ALIMENTAÇÃO', '2013-10-25', '', '1', '2013-10-25'),
(3, '33.90.30.11', 'MATERIAL  QUÍMICO', '2013-10-25', '', '1', '2013-10-25'),
(4, '33.90.30.16', 'MATERIAL DE EXPEDIENTE', '2013-10-25', '', '1', '2013-10-25'),
(5, '33.90.30.17', 'MATERIAL DE PROCESSAMENTO DE DADOS', '2013-10-25', '', '1', '2013-10-25'),
(6, '33.90.30.19', 'MATERIAL DE ACOND. E EMBALAGEM', '2013-10-25', '', '1', '2013-10-25'),
(7, '33.90.30.20', 'MATERIAL DE CAMA E MESA', '2013-10-25', '', '1', '2013-10-25'),
(8, '33.90.30.21', 'MATERIAL DE COPA E COZINHA', '2013-10-25', '', '1', '2013-10-25'),
(9, '33.90.30.22', 'MATERIAL DE LIMPEZA E HIGIENIZAÇÃO', '2013-10-25', '', '1', '2013-10-25'),
(10, '33.90.30.23', 'UNIFORMES, TECIDOS E AVIAMENTOS', '2013-10-25', '', '1', '2013-10-25'),
(11, '33.90.30.25', 'MATERIAL P/MANUT. DE BENS MÓVEIS', '2013-10-25', '', '1', '2013-10-25'),
(12, '33.90.30.26', 'MATERIAL ELETRICO', '2013-10-25', '', '1', '2013-10-25'),
(13, '33.90.30.27', 'MAT. P/MANOBRA E PATRULHAMENTO', '2013-10-25', '', '1', '2013-10-25'),
(14, '33.90.30.28', 'MAT. DE PROTEÇÃO E SEGURANÇA', '2013-10-25', '', '1', '2013-10-25'),
(15, '33.90.30.29', 'MATERIAL P/ AUDIO,VÍDEO E FOTO', '2013-10-25', '', '1', '2013-10-25'),
(16, '33.90.30.30', 'MATERIAL PARA COMUNICAÇÕES', '2013-10-25', '', '1', '2013-10-25'),
(17, '33.90.30.33', 'MATERIAL PARA PRODUÇÃO INDUSTRIAL', '2013-10-25', '', '1', '2013-10-25'),
(18, '33.90.30.35', 'MATERIAL LABORATORIAL', '2013-10-25', '', '1', '2013-10-25'),
(19, '33.90.30.39', 'MATERIAL MANUTENÇÃO DE VEÍCULOS', '2013-10-25', '', '1', '2013-10-25'),
(20, '33.90.30.41', 'MATERIAL PARA UTILIZAÇÃO EM GRÁFICA', '2013-10-25', '', '1', '2013-10-25'),
(21, '33.90.30.42', 'FERRAMENTAS', '2013-10-25', '', '1', '2013-10-25'),
(22, '33.90.30.47', 'MATERIAL', '2013-10-25', '', '1', '2013-10-25'),
(23, '33.90.30.50', 'BANDEIRAS, FLAMULAS E INSÍGNIAS', '2013-10-25', '', '1', '2013-10-25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empenho`
--

CREATE TABLE IF NOT EXISTS `empenho` (
  `codempenho` int(11) NOT NULL AUTO_INCREMENT,
  `empenho` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  PRIMARY KEY (`codempenho`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `empenho`
--

INSERT INTO `empenho` (`codempenho`, `empenho`, `nome`, `data`, `ativo`) VALUES
(1, '1251451456', '15454.1651', '2013-12-11', '1'),
(2, '20131420', 'LTDA Wender', '2013-08-11', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE IF NOT EXISTS `fornecedor` (
  `codfornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `end` varchar(85) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `obs` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  PRIMARY KEY (`codfornecedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE IF NOT EXISTS `historico` (
  `idhistorico` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_codusuario` int(11) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `acao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhistorico`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`idhistorico`, `usuario_codusuario`, `ip`, `data`, `acao`) VALUES
(109, 2, 'ip', '2013-10-10', 'logar'),
(110, 1, 'ip', '2013-10-10', 'logar'),
(111, 1, 'ip', '2013-10-10', 'logar'),
(112, 1, 'ip', '2013-10-10', 'logar'),
(113, 1, 'ip', '2013-10-10', 'logar'),
(114, 2, 'ip', '2013-10-10', 'logar'),
(115, 1, 'ip', '2013-10-10', 'logar'),
(116, 1, 'ip', '2013-10-10', 'logar'),
(117, 1, 'ip', '2013-10-10', 'logar'),
(118, 1, 'ip', '2013-10-10', 'logar'),
(119, 1, 'ip', '2013-10-10', 'logar'),
(120, 1, 'ip', '2013-10-10', 'logar'),
(121, 1, 'ip', '2013-10-10', 'logar'),
(122, 1, 'ip', '2013-10-10', 'logar'),
(123, 1, 'ip', '2013-10-10', 'logar'),
(124, 1, 'ip', '2013-10-10', 'logar'),
(125, 1, 'ip', '2013-10-10', 'logar'),
(126, 1, 'ip', '2013-10-10', 'logar'),
(127, 1, 'ip', '2013-10-10', 'logar'),
(128, 1, 'ip', '2013-10-10', 'logar'),
(129, 1, 'ip', '2013-10-10', 'logar'),
(130, 1, '127.0.0.1', '2013-11-08', 'logar'),
(131, 1, '127.0.0.1', '2013-11-08', 'logar'),
(132, 1, '127.0.0.1', '2013-11-11', 'logar'),
(133, 1, '127.0.0.1', '2013-11-12', 'logar'),
(134, 1, '127.0.0.1', '2013-11-12', 'logar'),
(135, 2, '127.0.0.1', '2013-11-12', 'logar'),
(136, 1, '127.0.0.1', '2013-11-12', 'logar'),
(137, 1, '127.0.0.1', '2013-11-12', 'logar'),
(138, 1, '127.0.0.1', '2013-11-13', 'logar'),
(139, 1, '127.0.0.1', '2013-11-13', 'logar'),
(140, 1, '127.0.0.1', '2013-11-13', 'logar'),
(141, 1, '127.0.0.1', '2013-11-13', 'logar'),
(142, 2, '127.0.0.1', '2013-11-13', 'logar'),
(143, 1, '127.0.0.1', '2013-11-13', 'logar'),
(144, 2, '127.0.0.1', '2013-11-13', 'logar'),
(145, 1, '127.0.0.1', '2013-11-13', 'logar'),
(146, 1, '127.0.0.1', '2013-11-13', 'logar'),
(147, 1, '127.0.0.1', '2013-11-13', 'logar'),
(148, 2, '127.0.0.1', '2013-11-13', 'logar'),
(149, 1, '127.0.0.1', '2013-11-13', 'logar'),
(150, 2, '127.0.0.1', '2013-11-13', 'logar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `opcao`
--

CREATE TABLE IF NOT EXISTS `opcao` (
  `idopcao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idopcao`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `opcao`
--

INSERT INTO `opcao` (`idopcao`, `nome`, `categoria`) VALUES
(1, 'ativo', 'ativar'),
(2, 'inativo', 'inativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `codpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido` varchar(45) NOT NULL,
  `nome` varchar(145) DEFAULT NULL,
  `setor_codigosetor` varchar(45) NOT NULL,
  `ativo` char(1) NOT NULL,
  `datacriacao` timestamp NULL DEFAULT NULL,
  `datafechamento` date DEFAULT NULL,
  `usuario_codusuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codpedido`,`idpedido`),
  UNIQUE KEY `numeropedido_UNIQUE` (`idpedido`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`codpedido`, `idpedido`, `nome`, `setor_codigosetor`, `ativo`, `datacriacao`, `datafechamento`, `usuario_codusuario`) VALUES
(1, '1244', 'wender', '1', '1', '2013-11-01 15:36:27', '0000-00-00', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidomovimentacao`
--

CREATE TABLE IF NOT EXISTS `pedidomovimentacao` (
  `codmovimentacao` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_idpedido` varchar(45) NOT NULL,
  `precoproduto_idprecoproduto` int(11) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `usuariosistema` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codmovimentacao`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Extraindo dados da tabela `pedidomovimentacao`
--

INSERT INTO `pedidomovimentacao` (`codmovimentacao`, `pedido_idpedido`, `precoproduto_idprecoproduto`, `quantidade`, `usuariosistema`, `data`) VALUES
(22, '1244', 6, '3', 0, '2013-11-13');

--
-- Acionadores `pedidomovimentacao`
--
DROP TRIGGER IF EXISTS `tgr_movimenta_produtos_delete`;
DELIMITER //
CREATE TRIGGER `tgr_movimenta_produtos_delete` AFTER DELETE ON `pedidomovimentacao`
 FOR EACH ROW BEGIN
	UPDATE precoproduto 
		SET quantidade = quantidade + OLD.quantidade 
	WHERE idprecoproduto= OLD.precoproduto_idprecoproduto;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `tgr_movimenta_produtos_inser`;
DELIMITER //
CREATE TRIGGER `tgr_movimenta_produtos_inser` AFTER INSERT ON `pedidomovimentacao`
 FOR EACH ROW BEGIN
	UPDATE precoproduto 
		SET quantidade = quantidade - NEW.quantidade 
	WHERE idprecoproduto= NEW.precoproduto_idprecoproduto;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `precoproduto`
--

CREATE TABLE IF NOT EXISTS `precoproduto` (
  `idprecoproduto` int(11) NOT NULL AUTO_INCREMENT,
  `empenho_codempenho` int(11) DEFAULT NULL,
  `produto_codproduto` int(11) NOT NULL,
  `produto_idproduto` varchar(45) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `quantidadeentrada` varchar(45) NOT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idprecoproduto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `precoproduto`
--

INSERT INTO `precoproduto` (`idprecoproduto`, `empenho_codempenho`, `produto_codproduto`, `produto_idproduto`, `preco`, `quantidade`, `quantidadeentrada`, `ativo`, `data`) VALUES
(6, 1, 8, '1336', 12.00, '0', '3', '1', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `codproduto` int(11) NOT NULL AUTO_INCREMENT,
  `idproduto` varchar(45) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `quantidademinima` double DEFAULT NULL,
  `quantidademaxima` double DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `categoria_codcategoria` int(11) DEFAULT NULL,
  `unidademedida_codunidademedida` int(11) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codproduto`),
  UNIQUE KEY `idproduto_UNIQUE` (`idproduto`),
  KEY `idproduto` (`idproduto`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=583 ;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codproduto`, `idproduto`, `nome`, `quantidademinima`, `quantidademaxima`, `descricao`, `categoria_codcategoria`, `unidademedida_codunidademedida`, `ativo`, `data`) VALUES
(1, '1387', 'ANTICORROSIVO WD-40', 0, 0, '', 1, 1, '1', '0000-00-00'),
(3, '1701', 'OLEO LUBRIFICANTE, HIDROSTÁTICO E DIELÉTRICO', 0, 0, '', 1, 1, '1', '0000-00-00'),
(4, '1335', 'AÇÚCAR', 0, 0, '', 2, 2, '1', '0000-00-00'),
(5, '1546', 'ADOÇANTE DIETÉTICO 200 ML', 0, 0, '', 2, 2, '1', '0000-00-00'),
(6, '1558', 'AGUA MINERAL GARRAFA C/ 600 ML', 0, 0, '', 2, 2, '1', '0000-00-00'),
(7, '1559', 'AGUA MINERAL GARRAFÃO DE 20 LTS', 0, 0, '', 2, 2, '1', '0000-00-00'),
(8, '1336', 'CAFÉ', 0, 0, '', 2, 2, '1', '0000-00-00'),
(9, '1632', 'AGENDA PERMANENTE, 200X132MM, PAPEL OFF SET, CAPA PVC', 0, 0, '', 4, 4, '1', '0000-00-00'),
(10, '1555', 'AGENDA TELEFONICA', 0, 0, '', 4, 4, '1', '0000-00-00'),
(11, '426', 'ALMOFADA PARA CARIMBO', 0, 0, '', 4, 4, '1', '0000-00-00'),
(12, '1378', 'APAGADOR PARA QUADRO MAGNÉTICO, MEDINDO 18CM', 0, 0, '', 4, 4, '1', '0000-00-00'),
(13, '185', 'APONTADOR', 0, 0, '', 4, 4, '1', '0000-00-00'),
(14, '1312', 'ARALDITE', 0, 0, '', 4, 4, '1', '0000-00-00'),
(17, '1485', 'FITA FILME PARA FAX SHARP  UX-5 CR', 0, 0, '', 4, 4, '1', '0000-00-00'),
(18, '212', 'FITA GOMADA DUPLA FACE', 0, 0, '', 4, 4, '1', '0000-00-00'),
(19, '1644', 'BANDEJA DUPLA EM ACRÍLICO, COR FUMÊ, MEDIDA 36,5CMX26,5CM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(22, '1645', 'BARBANTE DE ALGODÃO, 8 FIOS, CRU ROLO C/250 G.', 0, 0, '', 4, 29, '1', '0000-00-00'),
(23, '39', 'BARBANTE PLÁSTICO', 0, 0, '', 4, 26, '1', '0000-00-00'),
(24, '1760', 'BISTURI DESCARTÁVEL, Nº22', 0, 0, '', 4, 29, '1', '0000-00-00'),
(25, '1647', 'BLOCO DE APONTAMENTO (FLIPCHART) COR BRANCA LISO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(26, '1022', 'BLOCO DE GUIA DE ARRECADAÇÃO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(27, '1169', 'BLOCO DE GUIA DE ENCAMINHAMENTO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(28, '1164', 'BLOCO DE GUIA DE PROTOCOLO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(29, '1187', 'BLOCO DE GUIA PARA FORMAÇÃO DE PROCESSO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(30, '1809', 'BLOCO DE INGRESSO P/ MUSEU', 0, 0, '', 4, 29, '1', '0000-00-00'),
(31, '1490', 'BLOCO LEMBRETE AUTO ADESIVO AMARELO (GRANDE)', 0, 0, '', 4, 29, '1', '0000-00-00'),
(32, '1670', 'BLOCO LEMBRETE AUTO ADESIVO AMARELO (PEQUENO),PCT C/4 UNID.', 0, 0, '', 4, 29, '1', '0000-00-00'),
(33, '807', 'BLOCO LISO 1/2 OFÍCIO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(34, '926', 'BLOCO LISO OFÍCIO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(35, '1609', 'BLOCO MARCADOR DE PÁGINAS COLORIDO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(36, '812', 'BLOCO PARA COMUNICAÇÃO INTERNA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(37, '7', 'BLOCO PARA REQUISIÇÃO DE MATERIAL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(38, '756', 'BLOCO PAUTADO  OFÍCIO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(39, '709', 'BLOCO PAUTADO 1/2 OFÍCIO, COM 100F', 0, 0, '', 4, 29, '1', '0000-00-00'),
(40, '1296', 'BLOCO PAUTADO 1/8', 0, 0, '', 4, 29, '1', '0000-00-00'),
(41, '1191', 'BLOCO REQUISIÇÃO RECIBO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(42, '214', 'BOBINA PARA CALCULADORA - MED. 57 X 65', 0, 0, '', 4, 29, '1', '0000-00-00'),
(43, '1374', 'BOBINA PARA CALCULADORA - MED. 69 X 60', 0, 0, '', 4, 29, '1', '0000-00-00'),
(44, '1047', 'BOBINA PARA FAX SMILE - MED. 216 X 30', 0, 0, '', 4, 29, '1', '0000-00-00'),
(45, '153', 'BORRACHA TK - PLAST', 0, 0, '', 4, 29, '1', '0000-00-00'),
(46, '1610', 'CADERNO CAPA DURA PAUTADO 22 x 15 cm', 0, 0, '', 4, 29, '1', '0000-00-00'),
(47, '1603', 'CANETA CORRETIVA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(48, '337', 'CANETA ESFEROGRÁFICA  AZUL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(49, '1655', 'CANETA ESFEROGRÁFICA  PRETA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(50, '1608', 'CANETA ESFEROGRÁFICA  VERMELHA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(51, '249', 'CANETA HIDROCOR, ESTOJO C/12 CORES', 0, 0, '', 4, 29, '1', '0000-00-00'),
(52, '1261', 'CANETA LUMI COLOR', 0, 0, '', 4, 29, '1', '0000-00-00'),
(53, '1379', 'CANETA PILOT PARA QUADRO BRANCO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(54, '1720', 'CANETA RETROPROGETOR ', 0, 0, '', 4, 29, '1', '0000-00-00'),
(55, '1383', 'CAPA PARA ENCADERNAÇÃO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(56, '61', 'CAPA PARA PROCESSO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(57, '1525', 'CARIMBOS EM GERAL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(58, '77', 'CARTÃO DA FCRB', 0, 0, '', 4, 29, '1', '0000-00-00'),
(59, '1719', 'CARTOLINA, COR: AMARELA, AZUL, BRANCA, ROSA E VERDE', 0, 0, '', 4, 29, '1', '0000-00-00'),
(60, '1260', 'CLIPS DE PLÁSTICO', 0, 0, '', 4, 4, '1', '0000-00-00'),
(61, '485', 'CLIPS METÁLICO  -   Nº 2/0', 0, 0, '', 4, 4, '1', '0000-00-00'),
(62, '1552', 'CLIPS METÁLICO  -  Nº 4/0', 0, 0, '', 4, 4, '1', '0000-00-00'),
(63, '1650', 'CLIPS NIQUELADO, 6/0, FORMATO PARALELO', 0, 0, '', 4, 4, '1', '0000-00-00'),
(64, '1204', 'COLA EM BASTÃO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(65, '68', 'COLA PLÁSTICA, FRASCO C/ 40 GRAMAS', 0, 0, '', 4, 29, '1', '0000-00-00'),
(66, '1758', 'COLA EM PÓ, TIPO SAL SÓDICO,242N (LACRE)', 0, 0, '', 4, 29, '1', '0000-00-00'),
(67, '1716', 'COLCHETE LATONADO - Nº 06', 0, 0, '', 4, 4, '1', '0000-00-00'),
(68, '584', 'COLCHETE LATONADO - Nº 10', 0, 0, '', 4, 4, '1', '0000-00-00'),
(69, '1717', 'COLCHETE LATONADO - Nº 12', 0, 0, '', 4, 4, '1', '0000-00-00'),
(70, '1699', 'CRACHÁ SEMINÁRIO PAPEL KRAFT 600G MED 14 X 10 C/ CORDÃO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(71, '1309', 'DUREPOX', 0, 0, '', 4, 4, '1', '0000-00-00'),
(72, '1626', 'ELÁSTICO PARA PROCESSO, LÁTEX, COR BRANCA, PCT C/10', 0, 0, '', 4, 29, '1', '0000-00-00'),
(73, '339', 'ELÁSTICO, LÁTEX, COR AMARELA', 0, 0, '', 4, 4, '1', '0000-00-00'),
(74, '1208', 'ENVELOPE BRANCO TIMBRADO  24 x 34', 0, 0, '', 4, 29, '1', '0000-00-00'),
(75, '1127', 'ENVELOPE CARTA LISO BRANCO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(76, '644', 'ENVELOPE CARTA TIMBRADO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(77, '657', 'ENVELOPE KRAFT  24 x 34', 0, 0, '', 4, 29, '1', '0000-00-00'),
(78, '1484', 'ENVELOPE KRAFT 18 x 25', 0, 0, '', 4, 29, '1', '0000-00-00'),
(79, '645', 'ENVELOPE OFÍCIO TIMBRADO 24 x 34', 0, 0, '', 4, 29, '1', '0000-00-00'),
(80, '656', 'ENVELOPE PARDO  31 x 41', 0, 0, '', 4, 29, '1', '0000-00-00'),
(81, '1554', 'ENVELOPE TIMBRADO BRANCO 19,03 X 12,08 ', 0, 0, '', 4, 29, '1', '0000-00-00'),
(82, '1385', 'ENVELOPE TIMBRADO BRANCO SANFONADO - 24 X 34', 0, 0, '', 4, 29, '1', '0000-00-00'),
(83, '1657', 'ENVELOPE TIMBRADO OFICIO P/ CONVITE 22,06 X 11,03 CM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(84, '1654', 'ESPIRAL PARA ENCADERNAÇÃO, COR PRETA, 25X300MM, 45 ANÉIS', 0, 0, '', 4, 29, '1', '0000-00-00'),
(85, '1652', 'ESPIRAL PARA ENCADERNAÇÃO, COR PRETA, 40X320MM, 45 ANÉIS', 0, 0, '', 4, 29, '1', '0000-00-00'),
(86, '1120', 'ESTILETE, LÂMINA LARGA 18MM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(87, '1686', 'ETIQUETA "URGENTE" MED 13 x 45 mm P/ PROCESSO', 0, 0, '', 4, 22, '1', '0000-00-00'),
(88, '1714', 'ETIQUETA ADESIVA, MED. 101,6 X 84,7 MM', 0, 0, '', 4, 10, '1', '0000-00-00'),
(89, '1736', 'ETIQUETA EM BOPP PEROLADO, MED. 50X20MM, IM: 00363740', 0, 0, '', 4, 26, '1', '0000-00-00'),
(90, '1643', 'ETIQUETA PARA CD, COR BRANCA, 115MM, CAIXA C/50', 0, 0, '', 4, 29, '1', '0000-00-00'),
(91, '1301', 'ETIQUETA PIMACO  -  REFERÊNCIA  6181', 0, 0, '', 4, 4, '1', '0000-00-00'),
(92, '1256', 'ETIQUETA PIMACO  -  REFERÊNCIA  6183', 0, 0, '', 4, 4, '1', '0000-00-00'),
(93, '1288', 'ETIQUETA PIMACO  -  REFERÊNCIA  6287', 0, 0, '', 4, 4, '1', '0000-00-00'),
(94, '1285', 'ETIQUETA PIMACO  -  REFERÊNCIA 6180', 0, 0, '', 4, 4, '1', '0000-00-00'),
(95, '1349', 'EXTRATOR DE GRAMPOS', 0, 0, '', 4, 29, '1', '0000-00-00'),
(96, '617', 'FICHA DE ESTOQUE DE MATERIAL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(97, '219', 'FICHA LISA  -  TAMANHO  3 X 5', 0, 0, '', 4, 11, '1', '0000-00-00'),
(98, '31', 'FICHA LISA  -  TAMANHO  5 X 8', 0, 0, '', 4, 11, '1', '0000-00-00'),
(99, '388', 'FICHA PAUTADA  -  TAMANHO  3 X 5', 0, 0, '', 4, 7, '1', '0000-00-00'),
(100, '405', 'FICHA PAUTADA  -  TAMANHO  4 X 6', 0, 0, '', 4, 7, '1', '0000-00-00'),
(101, '316', 'FICHA PAUTADA  -  TAMANHO  5 X 8', 0, 0, '', 4, 7, '1', '0000-00-00'),
(102, '1648', 'FICHÁRIO DE MESA  6X9', 0, 0, '', 4, 29, '1', '0000-00-00'),
(103, '501', 'FITA  PARA CALCULADORA (SHARP)', 0, 0, '', 4, 29, '1', '0000-00-00'),
(104, '620', 'FITA ADESIVA - DUREX', 0, 0, '', 4, 26, '1', '0000-00-00'),
(105, '1347', 'FITA ADESIVA PLÁSTICA - 45 X 50', 0, 0, '', 4, 26, '1', '0000-00-00'),
(106, '1606', 'FITA ADESIVA PLÁSTICA TRANSPARENTE 25X50MM', 0, 0, '', 4, 26, '1', '0000-00-00'),
(107, '1625', 'FITA CORRETIVA CARACOL, 6MX5MM', 0, 0, '', 4, 26, '1', '0000-00-00'),
(108, '961', 'FITA CORRETIVA P/ MÁQUINA IBM  MOD. 6746 - REF. 1337765', 0, 0, '', 4, 29, '1', '0000-00-00'),
(109, '962', 'FITA CORRIGÍVEL P/ MÁQUINA IBM  MOD. 6746 - REF. 1337761', 0, 0, '', 4, 29, '1', '0000-00-00'),
(110, '1501', 'FITA FILME P/FAX  KX-FA57A PANASSONIC', 0, 0, '', 4, 29, '1', '0000-00-00'),
(111, '1399', 'FITA FILME PARA FAX FO 1650  REF. 16CR', 0, 0, '', 4, 29, '1', '0000-00-00'),
(112, '353', 'FITA GOMADA CREPE   -  25 X 50', 0, 0, '', 4, 26, '1', '0000-00-00'),
(113, '401', 'FITA GOMADA CREPE   - 45 X 50', 0, 0, '', 4, 26, '1', '0000-00-00'),
(114, '1851', 'FITA DE SINALIZAÇÃO 185X70CM', 0, 0, '', 4, 26, '1', '0000-00-00'),
(115, '1665', 'GRAFITE 0,5', 0, 0, '', 4, 8, '1', '0000-00-00'),
(116, '1668', 'GRAFITE 0,7', 0, 0, '', 4, 8, '1', '0000-00-00'),
(117, '1669', 'GRAFITE 0,9', 0, 0, '', 4, 8, '1', '0000-00-00'),
(118, '1287', 'GRAMPEADOR 26/6', 0, 0, '', 4, 29, '1', '0000-00-00'),
(119, '1646', 'GRAMPEADOR METAL, TIPO MESA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(120, '1721', 'GRAMPEADOR PEQUENO, PARA GRMPO 26/6 CAP. PARA 10 FLS.', 0, 0, '', 4, 29, '1', '0000-00-00'),
(121, '924', 'GRAMPO PARA GRAMPEADOR  26/6', 0, 0, '', 4, 4, '1', '0000-00-00'),
(122, '1685', 'GRAMPO PARA GRAMPEADOR 23/10 ', 0, 0, '', 4, 9, '1', '0000-00-00'),
(123, '192', 'GRAMPO PARA GRAMPEADOR SKREBBA', 0, 0, '', 4, 4, '1', '0000-00-00'),
(124, '1060', 'GRAMPO PARA PASTA CLIKTELOS - MODELO 4711', 0, 0, '', 4, 4, '1', '0000-00-00'),
(125, '1198', 'LÁPIS BORRACHA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(126, '418', 'LÁPIS PRETO Nº 02', 0, 0, '', 4, 29, '1', '0000-00-00'),
(127, '1529', 'LÁPIS PRETO Nº 6B', 0, 0, '', 4, 29, '1', '0000-00-00'),
(128, '1641', 'LAPISEIRA PLÁSTICA 0,5MM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(129, '1642', 'LAPISEIRA PLÁSTICA 0,7MM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(130, '1637', 'LIVRO ATA, CAPA DURA, COR PRETA, PAUTADO, 100FL NUMERADAS', 0, 0, '', 4, 29, '1', '0000-00-00'),
(131, '1638', 'LIVRO DE PROTOCOLO, CAPA DURA, COR PRETA, PAUTADO, 100FL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(132, '1751', 'MARCADOR DE PÁGINAS, COLORIDO, 25MM X 43MM C/20 FOLHAS', 0, 0, '', 4, 29, '1', '0000-00-00'),
(133, '1640', 'MARCADOR PARA QUADRO BRANCO, COR AZUL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(134, '1639', 'MARCADOR PARA QUADRO BRANCO, COR VERMELHA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(135, '1765', 'PAPEL ADESIVO(CONTACT), ROLO C/ 25 MTS. X 0,45CM', 0, 0, '', 4, 26, '1', '0000-00-00'),
(136, '115', 'PAPEL  ALMAÇO  LISO', 0, 0, '', 4, 3, '1', '0000-00-00'),
(137, '116', 'PAPEL  ALMAÇO PAUTADO', 0, 0, '', 4, 3, '1', '0000-00-00'),
(138, '1666', 'PAPEL ALTA ALVURA BRANCO 75G/M² , 960 x 660 MM', 0, 0, '', 4, 23, '1', '0000-00-00'),
(139, '1759', 'PAPEL FILME, ROLO C/ 50 M X 0,2 CM, AUTO ADESIVO', 0, 0, '', 4, 26, '1', '0000-00-00'),
(140, '1748', 'PAPEL MATA-BORRÃO, VEGETAL, 250G/M², 60CM COMP. 60CM LARG. BRANCO', 0, 0, '', 4, 12, '1', '0000-00-00'),
(141, '1754', 'PAPEL NEUTRO ALCALINO, 76CM X 112CM, COR BRANCA', 0, 0, '', 4, 25, '1', '0000-00-00'),
(142, '121', 'PAPEL OFÍCIO TIMBRADO', 0, 0, '', 4, 12, '1', '0000-00-00'),
(143, '1635', 'PAPEL PARA REPOGRAFIA E IMPRESSORA LAZER A3', 0, 0, '', 4, 25, '1', '0000-00-00'),
(144, '95', 'PAPEL PARA REPROGRAFIA A4  - MED. 210 X 297mm', 0, 0, '', 4, 25, '1', '0000-00-00'),
(145, '504', 'PAPEL PARA REPROGRAFIA OFÍCIO II - MED. 216 X 330mm', 0, 0, '', 4, 25, '1', '0000-00-00'),
(146, '1122', 'PAPEL VEGETAL - 80g', 0, 0, '', 4, 2, '1', '0000-00-00'),
(147, '1103', 'PAPEL VERGÊ', 0, 0, '', 4, 25, '1', '0000-00-00'),
(148, '1506', 'PAPEL VERGÊ 85 G/M2 - A4  210  X  297 ', 0, 0, '', 4, 4, '1', '0000-00-00'),
(149, '1839', 'PAPEL VERGE COR CINZA 90 GR 210X297', 0, 0, '', 4, 4, '1', '0000-00-00'),
(150, '1840', 'PAPEL VERGE COR BRANCA 90 GR 210X297', 0, 0, '', 4, 4, '1', '0000-00-00'),
(151, '1755', 'PAPELÃO RECICLADO, COR CINZA,1.OOOM X 800MM', 0, 0, '', 4, 24, '1', '0000-00-00'),
(152, '1651', 'PASTA CATÁLOGO COM 50 SACOS PLÁSTICOS, COR PRETA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(153, '356', 'PASTA DE CARTOLINA COM ELÁSTICO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(154, '582', 'PASTA DE CARTOLINA COM FERRAGEM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(155, '1064', 'PASTA INTERCALADORA MODELO TELOS 4211', 0, 0, '', 4, 4, '1', '0000-00-00'),
(156, '1326', 'PASTA PARA CORRESPONDENCIA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(157, '1520', 'PASTA PLASTICA COM CANALETA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(158, '1495', 'PASTA PLÁSTICA EM "L"  TRANSPARENTE', 0, 0, '', 4, 29, '1', '0000-00-00'),
(159, '1496', 'PASTA PLÄSTICA TRANSPARENTE T/OFÍCIO C/ELAST.', 0, 0, '', 4, 29, '1', '0000-00-00'),
(160, '1323', 'PASTA POLIONDA  6cm - POLICART', 0, 0, '', 4, 29, '1', '0000-00-00'),
(161, '1753', 'PASTA POLIONDA TIPO ARQUIVO, 130 X 250 X 360MM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(162, '1698', 'PASTA SEMINÁRIO PAPEL KRAFT 420G MED 23 X 31 X 1CM ', 0, 0, '', 4, 29, '1', '0000-00-00'),
(163, '1539', 'PASTA SUSPENSA  PLASTICA TRANSPARENTE', 0, 0, '', 4, 29, '1', '0000-00-00'),
(164, '1671', 'PASTA SUSPENSA C/ SUPORTE PLÁSTICO, 260x260mm', 0, 0, '', 4, 29, '1', '0000-00-00'),
(165, '1556', 'PASTA TIPO SANFONADA DE PAPELÃO C/ 35 DIVISÔES COR PRETA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(166, '433', 'PERCEVEJO DE METAL', 0, 0, '', 4, 4, '1', '0000-00-00'),
(167, '1236', 'PERFURADOR DE PAPEL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(168, '1684', 'PERFURADOR DE PAPEL DE FERRO P/ 60 FLS', 0, 0, '', 4, 29, '1', '0000-00-00'),
(169, '1548', 'PILHA GRANDE TIPO ALCALINA', 0, 0, '', 4, 5, '1', '0000-00-00'),
(170, '1346', 'PILHA PALITO AAA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(171, '1272', 'PILHA PEQUENA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(172, '1649', 'PORTA-LÁPIS EM ACRÍLICO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(173, '1683', 'PRANCHETA PORTÁTIL ACRÍLICA FUMÊ 3,34MM x 2,34MM x 2MM', 0, 0, '', 4, 29, '1', '0000-00-00'),
(174, '1756', 'PRENDEDOR DE PAPEL(BINDER), 32MM, PARA 100FLS.', 0, 0, '', 4, 29, '1', '0000-00-00'),
(175, '340', 'REGISTRADOR  TAMANHO CARTA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(176, '341', 'REGISTRADOR  TAMANHO OFÍCIO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(177, '502', 'RÉGUA PLÁSTICA  - 30 cm', 0, 0, '', 4, 29, '1', '0000-00-00'),
(178, '1846', 'ROLETE ENTINTADO  TINTA PRETA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(179, '1348', 'SUPORTE PARA TEXTO', 0, 0, '', 4, 29, '1', '0000-00-00'),
(180, '669', 'TALÃO NOTA DE DISTRIBUIÇÃO PROMOCIONAL', 0, 0, '', 4, 29, '1', '0000-00-00'),
(181, '438', 'TALÃO NOTA DE VENDA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(182, '1235', 'TESOURA', 0, 0, '', 4, 29, '1', '0000-00-00'),
(183, '1908', 'ADESIVO DE SIILICONE', 0, 0, '', 4, 29, '1', '0000-00-00'),
(184, '1913', 'BATERIA ALCALINA DE 9VTS.', 0, 0, '', 4, 29, '1', '0000-00-00'),
(185, '1917', 'PORTA CRACHÁ RIGIDO VERTICAL VERDE', 0, 0, '', 4, 29, '1', '0000-00-00'),
(186, '1921', 'CORDÃO PARA CRACHA EM POLIESTER', 0, 0, '', 4, 29, '1', '0000-00-00'),
(187, '1428', 'BASE PARA MOUSE', 0, 0, '', 5, 29, '1', '0000-00-00'),
(188, '1494', 'BATERIA PARA PC TIPO  LITHIUM', 0, 0, '', 5, 29, '1', '0000-00-00'),
(189, '1533', 'CABO  DE REDE P/ COMPUTADOR FURUKAWA', 0, 0, '', 5, 4, '1', '0000-00-00'),
(190, '1872', 'CAR. P/ IMP EPSON STYLUS COR MAGENTA T0473', 0, 0, '', 5, 6, '1', '0000-00-00'),
(191, '1593', 'CONECTOR RJ 45 MACHO', 0, 0, '', 5, 28, '1', '0000-00-00'),
(192, '1587', 'CAR. P/ IMP EPSON STYLUS COR AMARELA T0474', 0, 0, '', 5, 6, '1', '0000-00-00'),
(193, '1589', 'CAR. P/ IMP EPSON STYLUS COR PRETA T0461', 0, 0, '', 5, 6, '1', '0000-00-00'),
(194, '1588', 'CAR. P/ IMP EPSON STYLUS COR CIANO T0472', 0, 0, '', 5, 6, '1', '0000-00-00'),
(195, '1592', 'CAR. P/ IMP HP C6578AL (78) COLORIDO ', 0, 0, '', 5, 6, '1', '0000-00-00'),
(196, '1544', 'CAR. P/ IMP HP C8727AL (27) PRETA', 0, 0, '', 5, 6, '1', '0000-00-00'),
(197, '1545', 'CAR. P/ IMP HP C8728AL (28) COLORIDO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(198, '1579', 'CAR. P/ IMP HP C6648BL (29) PRETA', 0, 0, '', 5, 6, '1', '0000-00-00'),
(199, '1580', 'CAR. P/ IMP HP C6650BL (45) PRETA', 0, 0, '', 5, 6, '1', '0000-00-00'),
(200, '1489', 'CAR. P/ IMP HP C6625 COLORIDO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(201, '1581', 'CAR. P/ IMP HP C8799BL (49) COLORIDO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(202, '1584', 'CAR. P/ IMP HP C9363WL (97) COLORIDO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(203, '1286', 'CAR. P/ IMP OU FAX C51626A (26) PRETO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(204, '1441', 'CAR. P/ IMP HP C1823T COLORIDO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(205, '1577', 'CAR. P/ IMP HP C8767WL (96) PRETO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(206, '1380', 'CAR. P/ IMP HP C51641AL (41) COLORIDO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(207, '1258', 'CAR. P/ IMP HP 5515 ', 0, 0, '', 5, 6, '1', '0000-00-00'),
(208, '1741', 'CAR. P/ IMP HP Q; 7581 A, COR CYAN', 0, 0, '', 5, 6, '1', '0000-00-00'),
(209, '1742', 'CAR. P/ IMP HP Q; 7582 A, COR AMARELO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(210, '1743', 'CAR. P/ IMP HP Q; 7583 A, COR MAGENTA', 0, 0, '', 5, 6, '1', '0000-00-00'),
(211, '1744', 'CAR. P/ IMP HP Q; 6470 A, COR PRETO', 0, 0, '', 5, 6, '1', '0000-00-00'),
(212, '1590', 'CAR. P/ IMP LEXMARK REF 10N0016 PRETO (16)', 0, 0, '', 5, 6, '1', '0000-00-00'),
(213, '1595', 'CAR. P/ IMP LEXMARK REF 10N0016 COLORIDO (26)', 0, 0, '', 5, 6, '1', '0000-00-00'),
(214, '1578', 'CD RW 700MB 80 MIN TIPO REGRAVÁVEL (CD-RW)', 0, 0, '', 5, 29, '1', '0000-00-00'),
(215, '1426', 'CD ROM GRAVÁVEL', 0, 0, '', 5, 29, '1', '0000-00-00'),
(216, '1212', 'DISQUETTE 3.1/2"  HD', 0, 0, '', 5, 4, '1', '0000-00-00'),
(217, '1633', 'DVD-R GRAVÁVEL', 0, 0, '', 5, 29, '1', '0000-00-00'),
(218, '1634', 'DVD-RW REGRAVÁVEL', 0, 0, '', 5, 29, '1', '0000-00-00'),
(219, '1598', 'ENVE P/ ACONDICIONAMENTO DE CD S COM ABAS 12,5CM X 12,5CM', 0, 0, '', 5, 29, '1', '0000-00-00'),
(220, '1845', 'ESTOJO PARA ACONDICIONAMENTO DE CD', 0, 0, '', 5, 29, '1', '0000-00-00'),
(221, '1462', 'FITA PARA IMPRESSORA  EPSON FX 2180 SO 15086', 0, 0, '', 5, 29, '1', '0000-00-00'),
(222, '1488', 'FITA PARA IMPRESSORA EPSON FX 1180', 0, 0, '', 5, 29, '1', '0000-00-00'),
(223, '1586', 'FITA PARA IMPRESSORA MAT. NYLON COR PRETA 8MMX1,80M', 0, 0, '', 5, 4, '1', '0000-00-00'),
(224, '968', 'FORMULÁRIO CONT. COM 01 VIA E 80 COLUNAS - COD. 74', 0, 0, '', 5, 4, '1', '0000-00-00'),
(225, '804', 'FORMULÁRIO CONTÍNUO COM 02 VIAS E 132 COLUNAS', 0, 0, '', 5, 4, '1', '0000-00-00'),
(226, '1597', 'ISOLANTE TÉRMICO P/ COMPUTADOR TIPO SERINGA', 0, 0, '', 5, 4, '1', '0000-00-00'),
(227, '1142', 'MOUSE ÓPTICO PS2', 0, 0, '', 5, 29, '1', '0000-00-00'),
(228, '1745', 'MOUSE ÓPTICO USB', 0, 0, '', 5, 29, '1', '0000-00-00'),
(229, '1864', 'PEN DRIVE DE 8GB', 0, 0, '', 5, 29, '1', '0000-00-00'),
(230, '1752', 'PLACA MÃE INTEL, MOD. DG41RQ', 0, 0, '', 5, 29, '1', '0000-00-00'),
(231, '1735', 'RIBON EM RESINA, COR PRETO, MED. 110 X 74 M, IM: 000150541', 0, 0, '', 5, 26, '1', '0000-00-00'),
(232, '1194', 'TECLADO PARA COMPUTADOR', 0, 0, '', 5, 29, '1', '0000-00-00'),
(233, '1357', 'TELA ANTI-REFLEXIVA PARA MONITOR', 0, 0, '', 5, 29, '1', '0000-00-00'),
(234, '1740', 'TONER P/ IMP LAZER  JET CB435A PRETO/ -SUBST.CE285A', 0, 0, '', 5, 27, '1', '0000-00-00'),
(235, '1266', 'TONER P/ IMP LASER JET C3903A ', 0, 0, '', 5, 27, '1', '0000-00-00'),
(236, '1366', 'TONER P/ IMP LASER JET (IIIP) 92275-A ', 0, 0, '', 5, 27, '1', '0000-00-00'),
(237, '1439', 'TONER P/ IMP LASER JET  C4096A PRETO', 0, 0, '', 5, 27, '1', '0000-00-00'),
(238, '1442', 'TONER P/ IMP LASER JET C41 (27X) PRETO', 0, 0, '', 5, 27, '1', '0000-00-00'),
(239, '1551', 'TONER P/ IMP LASER JET 2300 Q2610A (10A) PRETO', 0, 0, '', 5, 27, '1', '0000-00-00'),
(240, '1689', 'TONER P/ IMP LASERJET Q6000A, IMP 1600, 2600, 2605 PRETA ', 0, 0, '', 5, 27, '1', '0000-00-00'),
(241, '1690', 'TONER P/ IMP LASERJET Q6001A, IMP 1600, 2600, 2605 AZUL', 0, 0, '', 5, 27, '1', '0000-00-00'),
(242, '1691', 'TONER P/ IMP LASERJET Q6002A, IMP 1600, 2600, 2605 AMARELO', 0, 0, '', 5, 27, '1', '0000-00-00'),
(243, '1692', 'TONER P/ IMP LASERJET Q6003A, IMP 1600, 2600, 2605 VERMELHO', 0, 0, '', 5, 27, '1', '0000-00-00'),
(244, '1764', 'TONER P/ IMP LAZERJET CB436A, MOD. M112O,M1522 E P1505', 0, 0, '', 5, 29, '1', '0000-00-00'),
(245, '1766', 'TONER P/ IMP LAZERJET, CC530A', 0, 0, '', 5, 29, '1', '0000-00-00'),
(246, '1767', 'TONER P/ IMP LAZERJET, CC531A', 0, 0, '', 5, 29, '1', '0000-00-00'),
(247, '1768', 'TONER P/ IMP LAZERJET, CC532A', 0, 0, '', 5, 29, '1', '0000-00-00'),
(248, '1769', 'TONER P/ IMP LAZERJET, CC533A', 0, 0, '', 5, 29, '1', '0000-00-00'),
(249, '1916', 'CAMERA DE VIDEO CONFERENCIA', 0, 0, '', 5, 29, '1', '0000-00-00'),
(250, '1919', 'CARTÃO DE PROXIMIDADE CONTROLE DE ACESSO', 0, 0, '', 5, 29, '1', '0000-00-00'),
(251, '1922', 'FITA MAGICARD  MA300YMCKO  DYE FILM.', 0, 0, '', 5, 29, '1', '0000-00-00'),
(252, '1658', 'BOBINA DE PLÁSTICO BOLHA ', 0, 0, '', 6, 1, '1', '0000-00-00'),
(253, '345', 'BOBINA DE PAPEL KRAFT ', 0, 0, '', 6, 29, '1', '0000-00-00'),
(254, '1757', 'CADARÇO, 100% ALGODÃO, ROLO C/ 50M', 0, 0, '', 6, 29, '1', '0000-00-00'),
(255, '1613', 'CAIXA BANK BOX 340 mm X 140 X 240 (pequena) ', 0, 0, '', 6, 29, '1', '0000-00-00'),
(256, '1612', 'CAIXA BANK BOX 380 X 180 X 290 (grande)', 0, 0, '', 6, 29, '1', '0000-00-00'),
(257, '1738', 'CAIXA DE ARQUIVO, COM BASE DE 40 X 30 X 6 CM, TAMPA, 41 X 31 X 6  CX 2436', 0, 0, '', 6, 29, '1', '0000-00-00'),
(258, '1119', 'CAIXA DE PAPELÃO ONDULADO 90 cm X 50 cm x 40 alt.', 0, 0, '', 6, 29, '1', '0000-00-00'),
(259, '1617', 'CAIXA DE PAPELÃO PLASTIFICADO (PORTIFÓLIO) 400mm X 300mm', 0, 0, '', 6, 29, '1', '0000-00-00'),
(260, '1618', 'CAIXA TELESCÓPICA 34,5 X 23,5 X 6 CXT/1', 0, 0, '', 6, 29, '1', '0000-00-00'),
(261, '1619', 'CAIXA TELESCÓPICA 40 X 30 X 6 CXT/2', 0, 0, '', 6, 29, '1', '0000-00-00'),
(262, '1620', 'CAIXA TELESCÓPICA 44 X 34 X 8', 0, 0, '', 6, 29, '1', '0000-00-00'),
(263, '1672', 'CAIXA TELESCÓPICA 44 X 34 X 10,5', 0, 0, '', 6, 29, '1', '0000-00-00'),
(264, '1621', 'CAIXA TELESCÓPICA 57 X 43 X 5', 0, 0, '', 6, 29, '1', '0000-00-00'),
(265, '1674', 'EMBALAGEM PLÁSTICA TRANSPARENTE C/ TAMPA FIXA 12 X 12 X 43CM', 0, 0, '', 6, 29, '1', '0000-00-00'),
(266, '1675', 'EMBALAGEM PLÁSTICA TRANSPARENTE COM TAMPA FIXA20 X 15 X 45 CM', 0, 0, '', 6, 29, '1', '0000-00-00'),
(267, '1615', 'FOLHA PARA ENCAIXE DE FOTOGRAFIA, 320 X 45MM (2 FOTOS 13 X 18)', 0, 0, '', 6, 29, '1', '0000-00-00'),
(268, '1616', 'FOLHA PARA ENCAIXE DE FOTOGRAFIA, 320 X 245MM (4 FOTOS 10 X 15)', 0, 0, '', 6, 29, '1', '0000-00-00'),
(269, '1614', 'FOLHA PARA DE ENCAIXE DE FOTOGRAFIA, 320 X 245MM (1 FOTO 20 X 25)', 0, 0, '', 6, 29, '1', '0000-00-00'),
(270, '1687', 'PALLET MOD 400 P1 C/ SAPATAS, 16cm x 1,00cm x 120cm', 0, 0, '', 6, 29, '1', '0000-00-00'),
(271, '1611', 'PAPEL NEUTRO 70 X 100 CM', 0, 0, '', 6, 21, '1', '0000-00-00'),
(272, '1676', 'PAPEL FILME EM PVC', 0, 0, '', 6, 26, '1', '0000-00-00'),
(273, '1739', 'PAPEL OFFSET, NEUTRO, BRANCO, DE  76 X 12 CM, GRAMATURA, 63G/M2', 0, 0, '', 6, 25, '1', '0000-00-00'),
(274, '1677', 'PAPEL SEDA 70 CM X 50 ', 0, 0, '', 6, 12, '1', '0000-00-00'),
(275, '1622', 'PASTAS SUSPENSAS ESPECIAL ', 0, 0, '', 6, 29, '1', '0000-00-00'),
(276, '1762', 'REFIL DE EMBALADOR DE GUARDA-CHUVA, CXA.C/1000', 0, 0, '', 6, 10, '1', '0000-00-00'),
(277, '1213', 'SACOLA PLÁSTICA PARA EMBALAGEM', 0, 0, '', 6, 29, '1', '0000-00-00'),
(278, '1902', 'SACOLA DE COMPRAS EM BAMBOO', 0, 0, '', 6, 29, '1', '0000-00-00'),
(279, '1894', 'CAIXA PARA PRESERVAÇÃO DE DOC.37,5X2,5X1305CM.', 0, 0, '', 6, 29, '1', '0000-00-00'),
(280, '1918', 'FITILHO PLASTICO', 0, 0, '', 6, 29, '1', '0000-00-00'),
(283, '1184', 'GUARDANAPO DE PAPEL TAMANHO 24 X 24', 0, 0, '', 7, 18, '1', '0000-00-00'),
(284, '1185', 'GUARDANAPO DE PAPEL TAMANHO 34 X 34', 0, 0, '', 7, 18, '1', '0000-00-00'),
(285, '1823', '', 0, 0, '', 0, 0, '1', '0000-00-00'),
(286, '1824', 'AÇUCAREIRO EM AÇO INOX. MED. 500ML', 0, 0, '', 8, 29, '1', '0000-00-00'),
(287, '1825', 'BULE EM AÇO INOX. BICO CURTO, MED. O1 LITRO', 0, 0, '', 8, 29, '1', '0000-00-00'),
(288, '1826', 'COLHER EM AÇO INOX. PEQUENA, PARA CAFÉ, MED. 1,50MM DE ESPESSURA', 0, 0, '', 8, 29, '1', '0000-00-00'),
(289, '1827', 'COPO DE VIDRO 300ML, BOCA 65MM DE DIANMETRO,140 ALT. INCOLOR', 0, 0, '', 8, 29, '1', '0000-00-00'),
(290, '1178', 'COPO PLASTICO PARA AGUA DE 200 ML', 0, 0, '', 8, 7, '1', '0000-00-00'),
(291, '1182', 'COPO PLASTICO PARA CAFÉ', 0, 0, '', 8, 7, '1', '0000-00-00'),
(292, '1487', 'GARRAFA TERMICA', 0, 0, '', 8, 29, '1', '0000-00-00'),
(294, '1828', 'JARRA EM AÇO INOX, TAMPA C/ APARADOR DE GELO, MED. 02 LTS', 0, 0, '', 8, 29, '1', '0000-00-00'),
(295, '1770', 'PORTA COPO EM AÇO INOXIDÁVEL', 0, 0, '', 8, 29, '1', '0000-00-00'),
(296, '1829', 'PORTA-COPO EM AÇO INOX, MED. 09 CM DE DIANMETRO,TIPO PIRES', 0, 0, '', 8, 29, '1', '0000-00-00'),
(297, '1830', 'XÍCARA EM PORCELANA BRANCA, C/PIRES, MED. 80ML', 0, 0, '', 8, 29, '1', '0000-00-00'),
(298, '1900', 'CANECA TERMICA', 0, 0, '', 8, 29, '1', '0000-00-00'),
(299, '1899', 'COPO CANECA TRANSPARENTE', 0, 0, '', 8, 29, '1', '0000-00-00'),
(300, '1901', 'COPO DE PAPEL RECICLAVEL', 0, 0, '', 8, 29, '1', '0000-00-00'),
(301, '1624', 'ÁLCOOL ISOPROPÍLICO', 0, 0, '', 9, 29, '1', '0000-00-00'),
(302, '1111', 'CAPACHO', 0, 0, '', 9, 29, '1', '0000-00-00'),
(303, '1177', 'CESTA PARA LIXO', 0, 0, '', 9, 29, '1', '0000-00-00'),
(304, '566', 'ESTOPA', 0, 0, '', 9, 18, '1', '0000-00-00'),
(305, '1715', 'SABONETEIRA DE VIDRO, P/ SABONETE LÍQUIDO, CAPC. 400ML C/SPTE.', 0, 0, '', 9, 29, '1', '0000-00-00'),
(306, '1911', 'ASSENTO DE VASO SANITÁRIO', 0, 0, '', 9, 29, '1', '0000-00-00'),
(307, '398', 'BOTINA', 0, 0, '', 10, 19, '1', '0000-00-00'),
(308, '201', 'CALÇA JEANS', 0, 0, '', 10, 29, '1', '0000-00-00'),
(309, '231', 'CAMISA', 0, 0, '', 10, 29, '1', '0000-00-00'),
(310, '1303', 'CINTO', 0, 0, '', 10, 29, '1', '0000-00-00'),
(312, '1304', '', 0, 0, '', 0, 0, '1', '0000-00-00'),
(313, '601', 'JALECO', 0, 0, '', 10, 29, '1', '0000-00-00'),
(314, '1302', 'MEIA', 0, 0, '', 10, 19, '1', '0000-00-00'),
(315, '197', 'SAPATO', 0, 0, '', 10, 19, '1', '0000-00-00'),
(316, '1664', 'BROCA DE VÍDEA', 0, 0, '', 24, 16, '1', '0000-00-00'),
(317, '1832', 'COLA PARA APLICAÇÃO COM PISTOLA( quente), TIPO, HOT-MELT', 0, 0, '', 24, 29, '1', '0000-00-00'),
(318, '1627', 'CANTONEIRA DE FERRO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(319, '1629', 'COMPENSADO DE CEDRO 10MM', 0, 0, '', 24, 29, '1', '0000-00-00'),
(320, '1628', 'COMPENSADO DE CEDRO 15MM', 0, 0, '', 24, 29, '1', '0000-00-00'),
(321, '1706', 'CONEXÃO METÁLICA, GALVANIZADA, MED. 3" POLEGADAS', 0, 0, '', 24, 29, '1', '0000-00-00'),
(322, '1855', 'CORTINA BREEZE  E BREEZE PARA 55 JANELAS', 0, 0, '', 24, 29, '1', '0000-00-00'),
(323, '1680', 'FECHADURA', 0, 0, '', 24, 29, '1', '0000-00-00'),
(324, '1575', 'FITA TEFLON', 0, 0, '', 24, 29, '1', '0000-00-00'),
(325, '1708', 'JOELHO DE PVC MED. 40 MM X 45 GRAUS', 0, 0, '', 24, 29, '1', '0000-00-00'),
(326, '1746', 'LIXA DE FERRO , PACOTE COM 50 FOLHAS', 0, 0, '', 24, 29, '1', '0000-00-00'),
(327, '1747', 'MASSA PVA 18 LTS.', 0, 0, '', 24, 29, '1', '0000-00-00'),
(328, '1065', 'MATERIAL PARA OBRAS E INSTALAÇÕES', 0, 0, '', 24, 29, '1', '0000-00-00'),
(329, '1661', 'MATERIAL PARA MANUTENÇÃO DO JARDIM ', 0, 0, '', 24, 29, '1', '0000-00-00'),
(330, '1844', 'MOLA AEREA HIDRAULICA F-2 ', 0, 0, '', 24, 29, '1', '0000-00-00'),
(331, '1761', 'PARFUSO ZINCADO, FENDA SIMPLES, MED. 4,8 X 65 CM', 0, 0, '', 24, 29, '1', '0000-00-00'),
(332, '1798', 'PENEIRA DE AÇO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(333, '1631', 'PERNA DE TRÊS ', 0, 0, '', 24, 29, '1', '0000-00-00'),
(334, '1709', 'PINCEL PARA PINTURA PREDIAL, REF. 821 - 06', 0, 0, '', 24, 29, '1', '0000-00-00'),
(335, '1710', 'RABICHO PARA LAVATÓRIO EM PVC, MED. 40 CM DE COMP.', 0, 0, '', 24, 29, '1', '0000-00-00'),
(336, '1707', 'REGISTRO DE PRESSÃO, AÇO INOXIDÁVEL, MED.3/4" DE POLEGADAS', 0, 0, '', 24, 29, '1', '0000-00-00'),
(337, '1688', 'REPARO DE VÁLVULA DESCARTÁVEL BITOLA 1´ 1/2 X 1´ 1/4 ', 0, 0, '', 24, 29, '1', '0000-00-00'),
(338, '1763', 'RIPA DE MADEIRA APARELHADA, 1,50M X 0,7CM X 0,3 CM', 0, 0, '', 24, 29, '1', '0000-00-00'),
(339, '1711', 'ROLO P/PINTURA PREDIAL, LÃ DE CARNEIRO, MED. 30 CM', 0, 0, '', 24, 29, '1', '0000-00-00'),
(340, '1705', 'SIFÃO METÁLICO, MED. 11/2" x 11/4" POLEGADAS', 0, 0, '', 24, 29, '1', '0000-00-00'),
(341, '1630', 'TÁBUA DE PINHO 3M X 30CM', 0, 0, '', 24, 29, '1', '0000-00-00'),
(342, '1771', 'TAMPA P/ SANITÁRIO EM PLÁSTICO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(343, '1663', 'TINTA PARA PINTURA', 0, 0, '', 24, 29, '1', '0000-00-00'),
(344, '1703', 'TRINCHA, PELO DE ESQUILO, MED.1/2" POLEGADAS, Nº 02', 0, 0, '', 24, 29, '1', '0000-00-00'),
(345, '1704', 'TRINCHA, PELO DE ESQUILO, MED.1/2" POLEGADAS, Nº 03', 0, 0, '', 24, 29, '1', '0000-00-00'),
(346, '1884', 'PAINEL DE VIDRO DUPLO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(347, '1885', 'PAINEL CEGO  VIDRO DUPLO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(348, '1886', 'MOD P1 PORTA CEGA', 0, 0, '', 24, 29, '1', '0000-00-00'),
(349, '1887', 'PERSIANA DE ALUMINIO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(350, '1888', 'RODAPE DE ALUMINIO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(351, '1889', 'MOD P4 PORTA DUPLA', 0, 0, '', 24, 29, '1', '0000-00-00'),
(352, '1890', 'PERSIANA DE ALUMINIO HORIZONTAL', 0, 0, '', 24, 29, '1', '0000-00-00'),
(353, '1891', 'PAINEL CEGO COM BANDEIRA CEGA', 0, 0, '', 24, 29, '1', '0000-00-00'),
(354, '1892', 'RODAPE DE ALUMINIO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(355, '1893', 'MOD PAINEL DE VIDRO DUPLO PISO TETO', 0, 0, '', 24, 29, '1', '0000-00-00'),
(356, '1895', 'COLA PVA EXTRA', 0, 0, '', 24, 29, '1', '0000-00-00'),
(357, '1636', 'COLUNA DEIONIZADORA 100 L/H, REFIL DE RÁDIO', 0, 0, '', 11, 29, '1', '0000-00-00'),
(358, '1860', 'CONTADO TRIFASICO 220V 32A LC1D32 ', 0, 0, '', 11, 29, '1', '0000-00-00'),
(359, '1865', 'CONTATOR TRIFÁSICO DE 18A', 0, 0, '', 11, 29, '1', '0000-00-00'),
(360, '1866', 'CONTATOR TRIFASICO DE 9 A DE', 0, 0, '', 11, 29, '1', '0000-00-00'),
(361, '1867', 'CONTATOR TRIFASICO DE 9A  DE 5 A 8', 0, 0, '', 11, 29, '1', '0000-00-00'),
(362, '1868', 'CONTATOR TRIFASICO DE 38A', 0, 0, '', 11, 29, '1', '0000-00-00'),
(363, '1468', 'COMPRESSOR HERMÉTICO, 5TR', 0, 0, '', 11, 29, '1', '0000-00-00'),
(364, '1861', 'COMPRESSOR HERMETICO DE 7,5 TR 220V', 0, 0, '', 11, 29, '1', '0000-00-00'),
(365, '1863', 'COMPRESSOR DE 10 TR 220V SCROOL', 0, 0, '', 11, 29, '1', '0000-00-00'),
(366, '1700', 'FILTRO P/ AR CONDICIONADO CENTRAL, MOD. OXPA103DA32POOBB', 0, 0, '', 11, 29, '1', '0000-00-00'),
(367, '1737', 'FILTRO P/ AR CONDICIONADO CENTRAL, CLASSE G3, F. SINT.697X600X25MM', 0, 0, '', 11, 29, '1', '0000-00-00'),
(368, '1850', 'FILTRO PARA AR CONDICIONADO 439X665X24MM', 0, 0, '', 11, 29, '1', '0000-00-00'),
(369, '1327', 'MATERIAL P/MANUTENCÀO DE BENS MOVEIS', 0, 0, '', 11, 29, '1', '0000-00-00'),
(370, '1862', 'TERMOSTATO  ELETRONICO 10 E15 TR 220/380V', 0, 0, '', 11, 29, '1', '0000-00-00'),
(371, '1833', 'VENTILADOR P/ DESUMIDIFICADOR DE AR, MOD. E11 NY, 115/220V', 0, 0, '', 11, 29, '1', '0000-00-00'),
(372, '1879', 'FILTRO AEROGLASS PD-P 770X770X25MM', 0, 0, '', 11, 29, '1', '0000-00-00'),
(373, '1878', 'FILTRO AEROGLASS 760X600X25MM', 0, 0, '', 11, 29, '1', '0000-00-00'),
(374, '1877', 'FILTRO AEROGALASS 609X406X50MM0', 0, 0, '', 11, 29, '1', '0000-00-00'),
(375, '1876', 'FILTRO 300X305X45MM', 0, 0, '', 11, 29, '1', '0000-00-00'),
(376, '1920', 'PRATELEIRA', 0, 0, '', 11, 29, '1', '0000-00-00'),
(377, '1723', 'ABRAÇADEIRA DE METAL 3/4" POLEGADA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(378, '1843', 'ADAPTADOR 4 POLOS P/TOMADA RJ', 0, 0, '', 12, 29, '1', '0000-00-00'),
(379, '1679', 'BATERIA 9 VOLTS, ALCALINA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(380, '641', 'BENJAMIN', 0, 0, '', 12, 29, '1', '0000-00-00'),
(381, '571', 'BOCAL DE PORCELANDA PARA LÂMPADA', 0, 0, '', 12, 26, '1', '0000-00-00'),
(382, '1571', 'BOCAL PARA LAMPADA DICROICA C/ RABICHO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(383, '1869', 'CABO DE EXTENSÃO PARA TELEFONE PRETO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(385, '1871', 'CABO ESPIRAL DE CONEXÃO P TEL  GELO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(386, '1870', 'CABO ESPIRAL DE CONEXÃO P TEL  PRETO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(387, '1847', 'CABO FLEXIVEL PP. 2X2,5MM', 0, 0, '', 12, 26, '1', '0000-00-00'),
(388, '1810', 'CABO FLEXIVEL PP, 3X2,5MM, 750V', 0, 0, '', 12, 26, '1', '0000-00-00'),
(389, '1813', 'CABO FLEXIVEL 0,5MM, 3 PARES', 0, 0, '', 12, 26, '1', '0000-00-00'),
(390, '1873', 'CALHA PARA LAMPADA FLUORESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(391, '1695', 'CABO FLEXÍVEL 1 X 1,5MM²', 0, 0, '', 12, 26, '1', '0000-00-00'),
(392, '1117', 'CHAVE DE BÓIA AUTOMÁTICA 30 A SUPERIOR', 0, 0, '', 12, 29, '1', '0000-00-00'),
(393, '1693', 'CHAVE MAGNÉTICA QCX - 2 4CV', 0, 0, '', 12, 29, '1', '0000-00-00'),
(394, '1726', 'CONDUITE AMARELO 3/4" POLEGADA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(395, '1573', 'CONECTOR PAR TRANÇADO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(396, '1233', 'DISJUNTOR  - 10 A / 120V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(397, '176', 'DISJUNTOR  - 15 A / 120V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(398, '1849', 'DISJUNTOR MONO DE 16 A.', 0, 0, '', 12, 29, '1', '0000-00-00'),
(399, '1049', 'DISJUNTOR  - 20 A  BIFÁSICO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(400, '174', 'DISJUNTOR  - 20 A / 120V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(401, '1364', 'DISJUNTOR  - 20 A TRIFÁSICO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(402, '64', 'DISJUNTOR  - 25 A / 120V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(403, '785', 'DISJUNTOR  - 3 X 100 A - TRIFÁSICO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(404, '65', 'DISJUNTOR  - 30 A / 120V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(405, '1050', 'DISJUNTOR  - 30 A TRIFASICO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(406, '1021', 'DISJUNTOR  - 40 A / 120V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(407, '1857', 'DISJUNTOR TRIFASICO DE 50 AMPER', 0, 0, '', 12, 29, '1', '0000-00-00'),
(408, '391', 'DISJUNTOR  - 60 A  - TRIFÁSICO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(409, '1821', 'DISJUNTOR DE BAIXA TENSÃO, UNIPOLAR, 32A X 127V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(410, '1820', 'DISJUNTOR DE BAIXA TENSÃO, BIPOLAR, 25A X 380VCA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(411, '1822', 'DISJUNTOR DE BAIXA TENSÃO, BIPOLAR, 40A X 127V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(412, '1819', 'DISJUNTOR DE BAIXA TENSÃO,BIPOLAR,600VCA X 70A X25KA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(413, '1541', 'EBULIDOR', 0, 0, '', 12, 26, '1', '0000-00-00'),
(414, '1725', 'ELETRODUTO (CONDUITE AMARELO, 1/2" POLEGADA', 0, 0, '', 12, 26, '1', '0000-00-00'),
(415, '1724', 'ELETRODUTO EM PVC PRETO, BITOLA 3/4" POLEGADA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(416, '928', 'ESPELHO PARA TOMADA', 0, 0, '', 12, 26, '1', '0000-00-00'),
(417, '1087', 'FIO DE TELEFONE', 0, 0, '', 12, 26, '1', '0000-00-00'),
(418, '1811', 'FIO ELÉTRICO FLEXIVEL, BITOLA 6,0MM', 0, 0, '', 12, 26, '1', '0000-00-00'),
(419, '1814', 'FIO ELÉTRICO FLEXIVEL, TENSÃO, 2,5MM X 750V', 0, 0, '', 12, 26, '1', '0000-00-00'),
(420, '1712', 'FIO ELÉTRICO, FLEXIVEL, 4 MM', 0, 0, '', 12, 26, '1', '0000-00-00'),
(421, '1713', 'FIO ELÉTRICO, RÍGIDO, 4,0 MM', 0, 0, '', 12, 29, '1', '0000-00-00'),
(422, '1727', 'FITA HELLERMAN, MODELO T IBI COR PRETA', 0, 0, '', 12, 20, '1', '0000-00-00'),
(423, '534', 'FITA ISOLANTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(424, '1728', 'FITA ISOLANTE DE AUTA FUSÃO', 0, 0, '', 12, 26, '1', '0000-00-00'),
(425, '99', 'FUSÍVEL   10 A / 500 V  - GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(426, '100', 'FUSÍVEL   35 A / 500 V  - GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(427, '146', 'FUSÍVEL  100 A / 250V - FACA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(428, '237', 'FUSÍVEL  20 A / 50V -GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(429, '639', 'FUSÍVEL  200 A / 250 V - FACA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(430, '139', 'FUSÍVEL  25 A/ 500 V - GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(431, '636', 'FUSÍVEL  3 MAI 330   - 500V / 100 KA  FACA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(432, '473', 'FUSÍVEL  400 A / 250V - FACA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(433, '141', 'FUSÍVEL  50 A / 500V - GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(434, '475', 'FUSÍVEL  500 A / 250V - FACA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(435, '560', 'FUSÍVEL  6 A / 500V - GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(436, '637', 'FUSÍVEL  60 A / 250V - CARTUCHO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(437, '1099', 'FUSÍVEL  63 A / 500 V  100KA  -  FACA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(438, '103', 'FUSÍVEL 16 A / 500 V - GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(439, '472', 'FUSÍVEL 200 A / 250V - FACA NEGRINE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(440, '640', 'FUSÍVEL 30 A / 250 V - LOUÇA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(441, '492', 'FUSÍVEL 30 A / 250V - CARTUCHO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(442, '101', 'FUSÍVEL 63 A / 500 V - GARRAFINHA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(443, '1730', 'INTERRUPTOR EXTERNO DE 10A', 0, 0, '', 12, 29, '1', '0000-00-00'),
(444, '1731', 'INTERRUPTOR INTERNO DE UMA SEÇÃO COM PLACA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(445, '166', 'LÂMPADA 100 W / 120 V  INCANDESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(446, '772', 'LÂMPADA 100 W / 127 V REFLETORA FACHO MÉDIO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(447, '686', 'LÂMPADA 20 W  -  FLUORESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(448, '178', 'LÂMPADA 25 W / 127 V  INCANDESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(449, '35', 'LÂMPADA 40 W / 127 V  INCANDESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(450, '431', 'LÂMPADA 40 W / 127V  BICUDA LEITOSA VELA GRANDE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(451, '367', 'LÂMPADA 40 W / 127V  BICUDA LEITOSA VELA PEQUENA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(452, '299', 'LÂMPADA 40 W FLUORESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(453, '285', 'LÂMPADA 60 W / 120 V  MINI-SPOT', 0, 0, '', 12, 29, '1', '0000-00-00'),
(454, '38', 'LÂMPADA 60 W / 127 V  INCANDESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(455, '1404', 'LÂMPADA DICROICA 12 V / 50 W ', 0, 0, '', 12, 29, '1', '0000-00-00'),
(456, '1718', 'LÂMPADA ELETRÔNICA COMPACTA FLUORESCENTE DE 18W X 127 V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(457, '1858', 'LAMPADA FLUORESCENTE COMPACTA DE 30W ELETRONICA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(458, '1386', 'LÂMPADA ELETRÔNICA PL  24 W / 127 V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(459, '1859', 'LAMPADA FLUORESCENTE DE 28 W', 0, 0, '', 12, 29, '1', '0000-00-00'),
(460, '1547', 'LÂMPADA FLUORECENTE 32 W', 0, 0, '', 12, 29, '1', '0000-00-00'),
(461, '1562', 'LÂMPADA FLUORESCENTE TIPO ELETRÔNICA BASE ', 0, 0, '', 12, 29, '1', '0000-00-00'),
(462, '1772', 'LÂMPADA FLUORESCENTE TUBOLAR, 54W X 220V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(463, '1574', 'LÂMPADA HALOGENA 200W X 130V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(464, '1576', 'LÂMPADA HALOGENA 50W X 127V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(465, '1503', 'LAMPADA INCANDESCENTE 15W  X  127V LEITOSA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(466, '1773', 'LÂMPADA LUZ MISTA, 220V POTENCIA, 160W, 27MM', 0, 0, '', 12, 29, '1', '0000-00-00'),
(467, '1852', 'LAMPADA HALOGENA  127X100W  PALITO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(468, '1853', 'LAMPADA HALOGENA 300X220  LAPISEIRA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(469, '1483', 'LUMINARIA DE EMERGÊNCIA C/2 LAM. DE 8W', 0, 0, '', 12, 29, '1', '0000-00-00'),
(470, '1732', 'PINO DE TOMADA PRIME, 3 FASES', 0, 0, '', 12, 29, '1', '0000-00-00'),
(471, '1599', 'QUADRO ELÉTRICO P/ IRRIGAÇÃO NO JARDIM', 0, 0, '', 12, 29, '1', '0000-00-00'),
(472, '1561', 'RABICHO P/ LÂMPADA DICRÓICA DE 120V X 50W', 0, 0, '', 12, 29, '1', '0000-00-00'),
(473, '1560', 'REATOR PARTIDA RÁPIDA ELETRÔNICO 2 X 40W / 110V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(474, '873', 'REATOR 18 W (T8) X 20 W (T10/T12) PARTIDA RÁPIDA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(475, '98', 'REATOR 2 X 20 W  PARTIDA RÁPIDA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(476, '1572', 'REATOR 2 X 32 W, 110V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(477, '1774', 'REATOR ELETRONICO, MODELO,QTPS, 2 X 54W', 0, 0, '', 12, 29, '1', '0000-00-00'),
(478, '73', 'REATOR PARTIDA RÁPIDA ELETRÔNICO 1 X 32W / 110V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(479, '1126', 'RECEPTÁCULOS PARA LÂMPADA FLUORESCENTE', 0, 0, '', 12, 29, '1', '0000-00-00'),
(480, '1834', 'REFLETOR P/ LÂMPADA DICRÓICA HALOGENA, TIPO LAPIZEIRA,118MM', 0, 0, '', 12, 29, '1', '0000-00-00'),
(481, '1694', 'RELÊ C902130.2000', 0, 0, '', 12, 29, '1', '0000-00-00'),
(482, '1812', 'RELE FOTOELETRICO,TENSÃO NOMINAL, 127X220V, TENSÃO,50/60HZ X1200VA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(483, '1729', 'ROLO PASSA FIO 15M, APLIC NA PASSAGEM DE FIO NA REDE ELÉTRICA', 0, 0, '', 12, 26, '1', '0000-00-00'),
(484, '1623', 'SENSOR DE CHUVA P/ JARDIM', 0, 0, '', 12, 29, '1', '0000-00-00'),
(485, '1733', 'TARRACHA DE 3/4", PARA ABERTURA DE ROSCA EM PVC', 0, 0, '', 12, 29, '1', '0000-00-00'),
(486, '1656', 'TOMADA DE SOBREPOR , 2 PINOS CHATOS E 2 REDONDOS', 0, 0, '', 12, 29, '1', '0000-00-00'),
(487, '742', 'TOMADA FÊMEA COM OU SEM ESPELHO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(488, '1816', 'TOMADA FEMEA DE PORCELANA, 2P, 30A X 220V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(489, '1817', 'TOMADA FEMEA DE PORCELANA, 3P, 30A X 127/220V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(490, '1601', 'TOMADA P/ TELEFONE, TIPO FEMEA', 0, 0, '', 12, 29, '1', '0000-00-00'),
(491, '1818', 'TOMADA TIPO BENJAMIM, PINO T, 6 CONTATOS REDONDO,10A X 250V', 0, 0, '', 12, 29, '1', '0000-00-00'),
(492, '478', 'TOMADA MACHO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(493, '1523', 'TOMADA MACHO (PLUG) 2 PINO CHATO E 1 REDONDO', 0, 0, '', 12, 29, '1', '0000-00-00'),
(494, '1734', 'TOMADA PRIME, INTERNA COM 3 FASES', 0, 0, '', 12, 29, '1', '0000-00-00'),
(495, '1407', 'TRANSFORMADOR PARA LÂMPADA DICROICA 12V X 50W', 0, 0, '', 12, 29, '1', '0000-00-00'),
(496, '1342', 'LANTERNA', 0, 0, '', 13, 29, '1', '0000-00-00'),
(497, '1854', 'CONE PARA SINALIZAÇÃO', 0, 0, '', 14, 29, '1', '0000-00-00'),
(498, '1536', 'LUVA', 0, 0, '', 14, 29, '1', '0000-00-00'),
(499, '1537', 'MÁSCARA DESCARTÁVEL', 0, 0, '', 14, 29, '1', '0000-00-00'),
(500, '1538', 'ÓCULOS DE PROTEÇÃO', 0, 0, '', 14, 29, '1', '0000-00-00'),
(501, '1875', 'CARGA PARA INSTINTOR DE INCENDIO', 0, 0, '', 14, 29, '1', '0000-00-00'),
(502, '1881', 'OMBRELONE SUSP 3,50M GIRAT.', 0, 0, '', 14, 29, '1', '0000-00-00'),
(503, '1898', 'FITA ANTIDERRAPANTE', 0, 0, '', 14, 29, '1', '0000-00-00'),
(504, '1903', 'MATERIAL DE LIMPEZA', 0, 0, '', 14, 29, '1', '0000-00-00'),
(505, '1678', 'CARTÃO DE MEMÓRIA SD, 2GB', 0, 0, '', 15, 29, '1', '0000-00-00'),
(506, '1662', 'CABO PARA MICROFONE', 0, 0, '', 15, 29, '1', '0000-00-00'),
(507, '747', 'FITA CASSETE', 0, 0, '', 15, 29, '1', '0000-00-00'),
(508, '1241', 'FITA P/ VIDEO CASSETE ', 0, 0, '', 15, 29, '1', '0000-00-00'),
(509, '779', 'FIXADOR PROSTAR PLUS', 0, 0, '', 15, 14, '1', '0000-00-00'),
(510, '1344', 'LÂMPADA PARA PROJETOR REF. FCS - 24V / 150W', 0, 0, '', 15, 29, '1', '0000-00-00'),
(511, '1434', 'LÂMPADA PARA PROJETOR SHARP MOD.XCE1200 U 370W', 0, 0, '', 15, 29, '1', '0000-00-00'),
(512, '1345', 'LÂMPADA PARA RETROPROJETOR REF. EHA -120V / 500W', 0, 0, '', 15, 29, '1', '0000-00-00'),
(513, '829', 'LÂMPADA P/ PROJET MULTI, MOD PLC XV46, 300 W / 120 V', 0, 0, '', 15, 29, '1', '0000-00-00'),
(514, '1144', 'LASER FILM RHODIA A4', 0, 0, '', 15, 4, '1', '0000-00-00'),
(515, '1750', 'LIMPADOR DE IMPUREZA, KODAK', 0, 0, '', 15, 29, '1', '0000-00-00'),
(516, '1497', 'MICROFILME 35MM X 1000 PÉS DDP NEGATIVO', 0, 0, '', 15, 29, '1', '0000-00-00'),
(517, '1749', 'MICROFILME P/ DUPLICAÇÃO DDP, 35MM, POSITIVO', 0, 0, '', 15, 26, '1', '0000-00-00'),
(520, '778', 'REVELADOR PROSTAR PLUS', 0, 0, '', 15, 14, '1', '0000-00-00'),
(521, '1697', 'CABO DE TELEFONE COBRE ISOLADO PVC 0,5 X 0,2MM 2 PARES', 0, 0, '', 16, 29, '1', '0000-00-00'),
(522, '1696', 'CORDÃO EXPIRAL MONOFONE PT (TA 102PT)', 0, 0, '', 16, 29, '1', '0000-00-00'),
(525, '1880', 'Mdf branco 2,75X1,85 2 faces', 0, 0, '', 17, 29, '1', '0000-00-00'),
(526, '1882', 'MDF  BRANCO 2,75X1,83X15MM', 0, 0, '', 17, 29, '1', '0000-00-00'),
(527, '1883', 'MDF BANCO 2,75X1,83X25MM', 0, 0, '', 17, 29, '1', '0000-00-00'),
(528, '1201', 'BISTURI DESCARTÁVEL', 0, 0, '', 18, 4, '1', '0000-00-00'),
(529, '977', 'PNEU', 0, 0, '', 19, 29, '1', '0000-00-00'),
(530, '1722', 'VIDRO LATERAL ESQUERDO  P/ KOMBI', 0, 0, '', 19, 29, '1', '0000-00-00'),
(531, '1653', 'ESPIRAL PARA ENCADERNAÇÃO, COR PRETA, 09X300MM, 45 ANÉIS', 0, 0, '', 20, 29, '1', '0000-00-00'),
(532, '1835', 'ESPIRAL PARA ENCADERNAÇÃO, COR PRETA, 12X300MM, 45 ANÉIS', 0, 0, '', 20, 29, '1', '0000-00-00'),
(533, '1836', 'ESPIRAL PARA ENCADERNAÇÃO, COR PRETA, 14X300MM, 45 ANÉIS', 0, 0, '', 20, 29, '1', '0000-00-00'),
(534, '1837', 'ESPIRAL PARA ENCADERNAÇÃO, COR PRETA, 18X300MM, 45 ANÉIS', 0, 0, '', 20, 29, '1', '0000-00-00'),
(535, '1838', 'ESPIRAL PARA ENCADERNAÇÃO, COR PRETA, 23X300MM, 45 ANÉIS', 0, 0, '', 20, 29, '1', '0000-00-00'),
(538, '1800', 'ALICATE DE BICO, CABO ISOLADO, 165MM', 0, 0, '', 21, 29, '1', '0000-00-00'),
(539, '1799', 'ALICATE DE BICO, TIPO CORTE, 165MM', 0, 0, '', 21, 29, '1', '0000-00-00'),
(540, '1569', 'ALICATE DE PRESSÃO 10"', 0, 0, '', 21, 29, '1', '0000-00-00'),
(541, '1801', 'ALICATE DESCASCADOR DE FIO, 180MM', 0, 0, '', 21, 15, '1', '0000-00-00'),
(542, '1803', 'ALICATE REBITADOR DE PEÇAS', 0, 0, '', 21, 15, '1', '0000-00-00'),
(543, '1804', 'ALICATE UNIVERSAL, CORTE RETO, 8" POLEGADAS', 0, 0, '', 21, 15, '1', '0000-00-00'),
(544, '1776', 'CHAVE AJUSTÁVEL DE AÇO, 15" POLEGADAS', 0, 0, '', 21, 29, '1', '0000-00-00'),
(545, '1775', 'CHAVE AJUSTÁVEL DE AÇO, 18" POLEGADAS', 0, 0, '', 21, 15, '1', '0000-00-00'),
(546, '1805', 'CHAVE AJUSTÁVEL, 24" POLEGADAS', 0, 0, '', 21, 29, '1', '0000-00-00'),
(547, '1570', 'CHAVE ALLEN 10" X 1,3MM', 0, 0, '', 21, 29, '1', '0000-00-00'),
(548, '1566', 'CHAVE DE FENDA 3/16 X 4"', 0, 0, '', 21, 29, '1', '0000-00-00'),
(549, '1806', 'CHAVE DE FENDA PHILIPS, 1/4" X 4" POLEGADAS', 0, 0, '', 21, 15, '1', '0000-00-00'),
(550, '1778', 'CHAVE DE FENDA PHILIPS, 3/8" X 8" POLEGADAS', 0, 0, '', 21, 29, '1', '0000-00-00'),
(551, '1565', 'CHAVE DE FENDA SIMPLES 1/4 X 5"', 0, 0, '', 21, 29, '1', '0000-00-00'),
(552, '1568', 'CHAVE DE FENDA SIMPLES 1/4 X 5" (PHILIPS)', 0, 0, '', 21, 29, '1', '0000-00-00'),
(553, '1779', 'CHAVE DE FENDA, 5/16" X 6" POLEGADAS, 150MM', 0, 0, '', 21, 29, '1', '0000-00-00'),
(554, '1777', 'CHAVE FIXA, AÇO CROMADO', 0, 0, '', 21, 15, '1', '0000-00-00'),
(555, '1797', 'CHIBANCA CABO DE MADEIRA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(556, '1780', 'COLHER DE PEDREIRO, CABO DE MADEIRA, 8" POLEGADAS', 0, 0, '', 21, 29, '1', '0000-00-00'),
(557, '1781', 'DISCO DE CORTE, AÇO, 110MM X 20MM, CORTE À SECO', 0, 0, '', 21, 29, '1', '0000-00-00'),
(558, '1782', 'DISCO DE CORTE, SERRA VIDEA, 300MM X 30MM, 36 DENTES', 0, 0, '', 21, 29, '1', '0000-00-00'),
(559, '1783', 'ESPÁTULA DE AÇO INOX, CABO EM PVC, 12CM', 0, 0, '', 21, 29, '1', '0000-00-00'),
(560, '1807', 'ESPÁTULA DE AÇO INOX, CABO EM PVC, 6CM', 0, 0, '', 21, 29, '1', '0000-00-00'),
(561, '1808', 'ESQUADRO, TIPO RÉGUA, 42CM, GRADUAÇÃO SIMPLES 1MM, 130MM COMP.', 0, 0, '', 21, 29, '1', '0000-00-00'),
(562, '1784', 'FORMÃO CROMADO, CABO DE MADEIRA, 1" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(563, '1785', 'FORMÃO CROMADO, CABO DE MADEIRA, 1/2" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(564, '1786', 'FORMÃO CROMADO, CABO DE MADEIRA, 1/4" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(565, '1787', 'FORMÃO CROMADO, CABO DE MADEIRA, 3/8" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(566, '1702', 'LÂMINA DE SERRA, AÇO RÁPIDO, 12"POLEGADAS, LARG.10 MM', 0, 0, '', 21, 26, '1', '0000-00-00'),
(567, '1788', 'METRO DOBRÁVEL DE MADEIRA, GRADUAÇÃO SIMPLES, 2M', 0, 0, '', 21, 29, '1', '0000-00-00'),
(568, '1789', 'NÍVEL BOLHA, CORPO DE MADEIRA, 300MM, AMPOLA 360º GRAUS', 0, 0, '', 21, 29, '1', '0000-00-00'),
(569, '1831', 'PISTOLA APLICADORA DE COLA QUENTE, 127V X 220V X 100W, PROFISSIONAL', 0, 0, '', 21, 29, '1', '0000-00-00'),
(570, '1796', 'ROLO PASSA FIO DE NYLON, 20M', 0, 0, '', 21, 29, '1', '0000-00-00'),
(571, '1792', 'TARRAXA P/ ABRIR ROSCA, 1" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(572, '1793', 'TARRAXA P/ ABRIR ROSCA, 1/2" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(573, '1790', 'TARRAXA P/ ABRIR ROSCA, 11/2" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(574, '1791', 'TARRAXA P/ ABRIR ROSCA, 11/4" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(575, '1794', 'TARRAXA P/ ABRIR ROSCA, 2" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(576, '1795', 'TARRAXA P/ ABRIR ROSCA, 3/4" POLEGADA', 0, 0, '', 21, 29, '1', '0000-00-00'),
(577, '1912', 'KIT SERRA COPO ', 0, 0, '', 21, 29, '1', '0000-00-00'),
(578, '1914', 'CHAVE DE FENDA 1/8 X 4', 0, 0, '', 21, 29, '1', '0000-00-00'),
(579, '1915', 'CHAVE DE FENDA 3/16 X 6', 0, 0, '', 21, 29, '1', '0000-00-00'),
(580, '1910', 'CHAVE DE FENDA PHILIPS', 0, 0, '', 21, 29, '1', '0000-00-00'),
(581, '1909', 'TENA DE AÇO 10CMX20M', 0, 0, '', 21, 29, '1', '0000-00-00'),
(582, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE IF NOT EXISTS `setor` (
  `codsetor` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(45) DEFAULT NULL,
  `nomesetor` varchar(145) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codsetor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`codsetor`, `setor`, `nomesetor`, `ativo`, `data`) VALUES
(1, 'Desen', 'Desenvolvedor Sistema', '1', '0000-00-00'),
(2, 'ADM', 'Administrador Sistema', '1', '0000-00-00'),
(3, 'OPE', 'Operador Sistema', '1', '0000-00-00'),
(4, 'APO', 'Assistente Técnico  da \r\n\r\nPresidência(Orçame', '1', '2013-10-09'),
(5, 'ASCOM', 'Assistente Técnico da Presidência (Imprensa)', '1', '0000-00-00'),
(6, 'ATP-L', 'Assistente Técnico da Presidência (Licitações', '1', '2013-10-09'),
(7, 'AUDIT', 'Auditoria Interna', '1', '2013-10-09'),
(8, 'DDC', 'Divisão de Difusão Cultural', '1', '2013-10-09'),
(9, 'DE', 'Diretoria Executiva', '1', '2013-10-09'),
(10, 'GAB', 'Gabinete da Diretoria', '1', '2013-10-09'),
(11, 'PRES', 'Presidência', '1', '2013-10-09'),
(12, 'PROC', 'Procuradoria Federal', '1', '2013-10-09'),
(13, 'CGPA', 'Coordenação Geral de Planejamento e Administr', '1', '2013-10-09'),
(14, 'ASSCGPA', 'Assessoria do CGPA', '1', '2013-10-09'),
(15, 'RH', 'Serviço de Administração de Recursos \r\n\r\nHuma', '1', '2013-10-09'),
(16, 'SASG', 'Serviço de Administração de Serviços Gerais', '1', '2013-10-09'),
(17, 'SEOF', 'Serviço de Execução Orçamentária, Contábil e ', '1', '2013-10-09'),
(18, 'SINF', 'Serviço de Informática', '1', '0000-00-00'),
(19, 'CP', 'Centro de Pesquisas', '1', '2013-10-09'),
(20, 'EDIT', 'Serviço de Editoração', '1', '2013-10-09'),
(21, 'PC', 'Serviço de Pesquisa em Política Cultural', '1', '2013-10-09'),
(22, 'SD', 'Serviço de Pesquisa em Direito', '1', '2013-10-09'),
(23, 'SF', 'Serviço de Pesquisa em Filologia', '1', '2013-10-09'),
(24, 'SH', 'Serviço de Pesquisa em \r\n\r\nHistória', '1', '2013-10-09'),
(25, 'SR', 'Serviço de Pesquisa Ruiana', '1', '2013-10-09'),
(26, 'CMI', 'Centro de Memória e \r\n\r\nInformação', '1', '2013-10-09'),
(27, 'AMLB', 'Divisão de Arquivo-Museu de Literatura Brasil', '1', '2013-10-09'),
(28, 'ARQUI', 'Serviço de Prevervação Arquitetônica', '1', '2013-10-09'),
(29, 'BIB', 'Serviço de Biblioteca BIB', '1', '2013-10-09'),
(30, 'BIN', 'Serviço de Biblioteca', '1', '2013-10-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `idtipousuario` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `tipousuario`
--

INSERT INTO `tipousuario` (`idtipousuario`, `perfil`, `descricao`) VALUES
(1, 'Desenvolvedor', ''),
(2, 'Administrador', ''),
(3, 'Operador', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidademedida`
--

CREATE TABLE IF NOT EXISTS `unidademedida` (
  `codunidademedida` int(11) NOT NULL AUTO_INCREMENT,
  `medida` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codunidademedida`),
  UNIQUE KEY `medida_UNIQUE` (`medida`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Extraindo dados da tabela `unidademedida`
--

INSERT INTO `unidademedida` (`codunidademedida`, `medida`, `descricao`, `ativo`, `data`) VALUES
(1, 'BOBINA', '', '0', '0000-00-00'),
(2, 'CA C/ 100', '', '0', '0000-00-00'),
(3, 'CADER', '', '0', '0000-00-00'),
(4, 'CAIXA', '', '0', '0000-00-00'),
(5, 'CARTELA', '', '0', '0000-00-00'),
(6, 'CARTU', '', '0', '0000-00-00'),
(7, 'CENTENA', '', '0', '0000-00-00'),
(8, 'CX 12', '', '0', '0000-00-00'),
(9, 'CX 5000', '', '0', '0000-00-00'),
(10, 'CXA', '', '0', '0000-00-00'),
(11, 'DEZENA', '', '0', '0000-00-00'),
(12, 'FOLHA', '', '0', '0000-00-00'),
(13, 'FRASCO', '', '0', '0000-00-00'),
(14, 'GALÃO', '', '0', '0000-00-00'),
(15, 'JOGO', '', '0', '0000-00-00'),
(16, 'JOGO C/ 8', '', '0', '0000-00-00'),
(17, 'KG', '', '0', '0000-00-00'),
(18, 'PACOTE', '', '0', '0000-00-00'),
(19, 'PAR', '', '0', '0000-00-00'),
(20, 'PCT 200', '', '0', '0000-00-00'),
(21, 'PCT 250 FLS', '', '0', '0000-00-00'),
(22, 'PCT C/10', '', '0', '0000-00-00'),
(23, 'PCT C/100', '', '0', '0000-00-00'),
(24, 'PTE', '', '0', '0000-00-00'),
(25, 'RESMA', '', '0', '0000-00-00'),
(26, 'ROLO', '', '0', '0000-00-00'),
(27, 'TONER', '', '0', '0000-00-00'),
(28, 'UM', '', '0', '0000-00-00'),
(29, 'UNID', '', '0', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `codusuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tipousuario` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `setor_codsetor` int(11) DEFAULT NULL,
  PRIMARY KEY (`codusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codusuario`, `login`, `senha`, `email`, `tipousuario`, `ativo`, `datacadastro`, `setor_codsetor`) VALUES
(1, 'wender', '57a68c1dbe07ec8cf9d4114cc941ac9d', 'wendercorrea@gmail.com', '1', '1', '2013-10-09', 2),
(2, 'administrador', '4cd51e51a4225287c8bb2fa0eb4343e1', 'admin@funarte.gov.br', '2', '1', '2013-10-09', 1),
(6, 'operador', '4cd51e51a4225287c8bb2fa0eb4343e1', 'operador@gmail.com', '3', '1', '2013-10-31', 1),
(7, '142030', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '0', '2013-11-13', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

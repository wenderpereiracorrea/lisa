DROP TABLE IF EXISTS bootstrap;


#
# Criação da Tabela : bootstrap
#

CREATE TABLE `bootstrap` (
  `idbootstrap` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbootstrap`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `bootstrap`  VALUES (1,'espa�amento','span1','');
INSERT INTO `bootstrap`  VALUES (2,'espa�amento','span2','');
INSERT INTO `bootstrap`  VALUES (3,'espa�amento','span3','');
INSERT INTO `bootstrap`  VALUES (4,'espa�amento','span4','');
INSERT INTO `bootstrap`  VALUES (5,'espa�amento','span5','');
INSERT INTO `bootstrap`  VALUES (6,'espa�amento','span6','');
INSERT INTO `bootstrap`  VALUES (7,'espa�amento','span7','');
INSERT INTO `bootstrap`  VALUES (8,'espa�amento','span8','');
INSERT INTO `bootstrap`  VALUES (9,'espa�amento','span9','');
INSERT INTO `bootstrap`  VALUES (10,'espa�amento','span10','');
INSERT INTO `bootstrap`  VALUES (11,'espa�amento','span11','');
INSERT INTO `bootstrap`  VALUES (12,'espa�amento','span12','');
INSERT INTO `bootstrap`  VALUES (13,'bot�es','btn','Bot�o padr�o cinza com gradiente');
INSERT INTO `bootstrap`  VALUES (14,'bot�es','btn btn-primary','Prov� peso extra visual e identifica a a��o p');
INSERT INTO `bootstrap`  VALUES (15,'bot�es','btn btn-info 	','Usado como uma alternativa para os estilos pa');
INSERT INTO `bootstrap`  VALUES (16,'bot�es','btn btn-success','Indica uma a��o bem sucedida e positiva');
INSERT INTO `bootstrap`  VALUES (17,'bot�es','btn btn-warning','Indica��o de cuidado deve ser feita com esta ');
INSERT INTO `bootstrap`  VALUES (18,'bot�es','btn btn-danger','Indica uma a��o potencialmente perigosa');
INSERT INTO `bootstrap`  VALUES (19,'bot�es','btn btn-inverse','Bot�o alternativo cinza, n�o ligado a uma a��');
INSERT INTO `bootstrap`  VALUES (20,'bot�es','btn btn-link','Desenfatizar um bot�o por fazer parecer como ');
DROP TABLE IF EXISTS categoria;


#
# Criação da Tabela : categoria
#

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `codgrupo` varchar(50) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `datacadastro` date DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codcategoria`,`codgrupo`),
  UNIQUE KEY `codgrupo_UNIQUE` (`codgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `categoria`  VALUES (1,'33.90.30.03','COMBUST�VEIS E LUBRIFICANTES','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (2,'33.90.30.07','G�NEROS DE ALIMENTA��O','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (3,'33.90.30.11','MATERIAL  QU�MICO','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (4,'33.90.30.16','MATERIAL DE EXPEDIENTE','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (5,'33.90.30.17','MATERIAL DE PROCESSAMENTO DE DADOS','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (6,'33.90.30.19','MATERIAL DE ACOND. E EMBALAGEM','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (7,'33.90.30.20','MATERIAL DE CAMA E MESA','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (8,'33.90.30.21','MATERIAL DE COPA E COZINHA','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (9,'33.90.30.22','MATERIAL DE LIMPEZA E HIGIENIZA��O','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (10,'33.90.30.23','UNIFORMES, TECIDOS E AVIAMENTOS','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (11,'33.90.30.25','MATERIAL P/MANUT. DE BENS M�VEIS','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (12,'33.90.30.26','MATERIAL ELETRICO','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (13,'33.90.30.27','MAT. P/MANOBRA E PATRULHAMENTO','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (14,'33.90.30.28','MAT. DE PROTE��O E SEGURAN�A','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (15,'33.90.30.29','MATERIAL P/ AUDIO,V�DEO E FOTO','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (16,'33.90.30.30','MATERIAL PARA COMUNICA��ES','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (17,'33.90.30.33','MATERIAL PARA PRODU��O INDUSTRIAL','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (18,'33.90.30.35','MATERIAL LABORATORIAL','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (19,'33.90.30.39','MATERIAL MANUTEN��O DE VE�CULOS','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (20,'33.90.30.41','MATERIAL PARA UTILIZA��O EM GR�FICA','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (21,'33.90.30.42','FERRAMENTAS','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (22,'33.90.30.47','MATERIAL','2013-10-25','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (23,'33.90.30.50','BANDEIRAS, FLAMULAS E INS�GNIAS','2013-10-25','',1,'2013-10-25');
DROP TABLE IF EXISTS empenho;


#
# Criação da Tabela : empenho
#

CREATE TABLE `empenho` (
  `codempenho` int(11) NOT NULL AUTO_INCREMENT,
  `empenho` varchar(45) DEFAULT NULL,
  `fornecedor_codfornecedor` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  PRIMARY KEY (`codempenho`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `empenho`  VALUES (8,000001,4,'','2014-01-02',1);
DROP TABLE IF EXISTS fornecedor;


#
# Criação da Tabela : fornecedor
#

CREATE TABLE `fornecedor` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `fornecedor`  VALUES (4,'INICIAL',000000,000000,0000,'123@GMAIL.COM',1111,111,'2014-01-02',1);
DROP TABLE IF EXISTS historico;


#
# Criação da Tabela : historico
#

CREATE TABLE `historico` (
  `idhistorico` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_codusuario` int(11) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `acao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhistorico`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `historico`  VALUES (109,2,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (110,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (111,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (112,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (113,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (114,2,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (115,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (116,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (117,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (118,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (119,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (120,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (121,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (122,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (123,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (124,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (125,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (126,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (127,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (128,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (129,1,'ip','2013-10-10','logar');
INSERT INTO `historico`  VALUES (130,1,'127.0.0.1','2013-11-08','logar');
INSERT INTO `historico`  VALUES (131,1,'127.0.0.1','2013-11-08','logar');
INSERT INTO `historico`  VALUES (132,1,'127.0.0.1','2013-11-11','logar');
INSERT INTO `historico`  VALUES (133,1,'127.0.0.1','2013-11-12','logar');
INSERT INTO `historico`  VALUES (134,1,'127.0.0.1','2013-11-12','logar');
INSERT INTO `historico`  VALUES (135,2,'127.0.0.1','2013-11-12','logar');
INSERT INTO `historico`  VALUES (136,1,'127.0.0.1','2013-11-12','logar');
INSERT INTO `historico`  VALUES (137,1,'127.0.0.1','2013-11-12','logar');
INSERT INTO `historico`  VALUES (138,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (139,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (140,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (141,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (142,2,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (143,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (144,2,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (145,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (146,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (147,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (148,2,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (149,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (150,2,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (151,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (152,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (153,1,'127.0.0.1','2013-11-13','logar');
INSERT INTO `historico`  VALUES (154,1,'127.0.0.1','2013-11-21','logar');
INSERT INTO `historico`  VALUES (155,1,'127.0.0.1','2013-11-21','logar');
INSERT INTO `historico`  VALUES (156,0,'127.0.0.1','2013-11-21','logar');
INSERT INTO `historico`  VALUES (157,0,'127.0.0.1','2013-11-21','logar');
INSERT INTO `historico`  VALUES (158,0,'127.0.0.1','2013-11-21','logar');
INSERT INTO `historico`  VALUES (159,10,'127.0.0.1','2013-11-21','logar');
INSERT INTO `historico`  VALUES (160,10,'127.0.0.1','2013-11-21','logar');
INSERT INTO `historico`  VALUES (161,0,'127.0.0.1','2013-11-26','logar');
INSERT INTO `historico`  VALUES (162,10,'127.0.0.1','2013-11-26','logar');
INSERT INTO `historico`  VALUES (163,0,'127.0.0.1','2013-11-26','logar');
INSERT INTO `historico`  VALUES (164,10,'127.0.0.1','2013-11-26','logar');
INSERT INTO `historico`  VALUES (165,13,'127.0.0.1','2013-11-26','logar');
INSERT INTO `historico`  VALUES (166,10,'127.0.0.1','2013-11-26','logar');
INSERT INTO `historico`  VALUES (167,10,'127.0.0.1','2013-11-26','logar');
INSERT INTO `historico`  VALUES (168,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (169,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (170,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (171,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (172,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (173,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (174,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (175,10,'127.0.0.1','2013-11-27','logar');
INSERT INTO `historico`  VALUES (176,10,'127.0.0.1','2013-11-28','logar');
INSERT INTO `historico`  VALUES (177,10,'127.0.0.1','2013-11-28','logar');
INSERT INTO `historico`  VALUES (178,10,'127.0.0.1','2013-11-29','logar');
INSERT INTO `historico`  VALUES (179,10,'127.0.0.1','2013-12-02','logar');
INSERT INTO `historico`  VALUES (180,10,'127.0.0.1','2013-12-02','logar');
INSERT INTO `historico`  VALUES (181,10,'127.0.0.1','2013-12-02','logar');
INSERT INTO `historico`  VALUES (182,10,'127.0.0.1','2013-12-02','logar');
INSERT INTO `historico`  VALUES (183,10,'127.0.0.1','2013-12-02','logar');
INSERT INTO `historico`  VALUES (184,10,'127.0.0.1','2013-12-03','logar');
INSERT INTO `historico`  VALUES (185,10,'127.0.0.1','2013-12-05','logar');
INSERT INTO `historico`  VALUES (186,10,'127.0.0.1','2013-12-06','logar');
INSERT INTO `historico`  VALUES (187,10,'127.0.0.1','2013-12-09','logar');
INSERT INTO `historico`  VALUES (188,0,'127.0.0.1','2013-12-10','logar');
INSERT INTO `historico`  VALUES (189,0,'127.0.0.1','2013-12-10','logar');
INSERT INTO `historico`  VALUES (190,0,'127.0.0.1','2013-12-10','logar');
INSERT INTO `historico`  VALUES (191,10,'127.0.0.1','2013-12-10','logar');
INSERT INTO `historico`  VALUES (192,10,'127.0.0.1','2013-12-10','logar');
INSERT INTO `historico`  VALUES (193,10,'127.0.0.1','2013-12-10','logar');
INSERT INTO `historico`  VALUES (194,10,'127.0.0.1','2013-12-16','logar');
INSERT INTO `historico`  VALUES (195,0,'127.0.0.1','2013-12-17','logar');
INSERT INTO `historico`  VALUES (196,10,'127.0.0.1','2013-12-17','logar');
INSERT INTO `historico`  VALUES (197,14,'127.0.0.1','2014-01-02','logar');
INSERT INTO `historico`  VALUES (198,1,'127.0.0.1','2014-01-02','logar');
INSERT INTO `historico`  VALUES (199,14,'127.0.0.1','2014-01-02','logar');
INSERT INTO `historico`  VALUES (200,1,'127.0.0.1','2014-01-02','logar');
INSERT INTO `historico`  VALUES (201,14,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (202,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (203,14,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (204,0,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (205,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (206,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (207,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (208,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (209,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (210,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (211,14,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (212,1,'127.0.0.1','2014-01-03','logar');
INSERT INTO `historico`  VALUES (213,14,'127.0.0.1','2014-01-03','logar');
DROP TABLE IF EXISTS opcao;


#
# Criação da Tabela : opcao
#

CREATE TABLE `opcao` (
  `idopcao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idopcao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `opcao`  VALUES (1,'ativo',1);
INSERT INTO `opcao`  VALUES (2,'inativo',1);
DROP TABLE IF EXISTS pedido;


#
# Criação da Tabela : pedido
#

CREATE TABLE `pedido` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `pedido`  VALUES (4,002,'Rosangela',27,1,'2014-01-02 17:59:57','0000-00-00',14);
INSERT INTO `pedido`  VALUES (5,007,'museu',35,1,'2014-01-02 18:23:55','0000-00-00',1);
INSERT INTO `pedido`  VALUES (6,004,'',19,1,'2014-01-03 12:14:32','0000-00-00',14);
INSERT INTO `pedido`  VALUES (7,001,'',16,1,'2014-01-03 12:31:34','0000-00-00',14);
DROP TABLE IF EXISTS pedidomovimentacao;


#
# Criação da Tabela : pedidomovimentacao
#

CREATE TABLE `pedidomovimentacao` (
  `codmovimentacao` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_idpedido` varchar(45) NOT NULL,
  `precoproduto_idprecoproduto` int(11) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `usuariosistema` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codmovimentacao`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `pedidomovimentacao`  VALUES (22,1244,6,3,0,'2013-11-13');
INSERT INTO `pedidomovimentacao`  VALUES (23,1244,7,4,0,'2013-11-21');
INSERT INTO `pedidomovimentacao`  VALUES (24,1244,8,10,0,'2013-11-21');
INSERT INTO `pedidomovimentacao`  VALUES (25,1244,9,5,0,'2013-11-26');
INSERT INTO `pedidomovimentacao`  VALUES (26,2419,10,10,0,'2013-12-02');
INSERT INTO `pedidomovimentacao`  VALUES (27,2419,17,4,2,'2013-12-03');
INSERT INTO `pedidomovimentacao`  VALUES (28,142,18,7,2,'2013-12-17');
INSERT INTO `pedidomovimentacao`  VALUES (29,002,140,22,2,'2014-01-02');
INSERT INTO `pedidomovimentacao`  VALUES (30,002,261,2,2,'2014-01-02');
INSERT INTO `pedidomovimentacao`  VALUES (31,002,142,20,2,'2014-01-02');
INSERT INTO `pedidomovimentacao`  VALUES (32,002,141,50,2,'2014-01-02');
INSERT INTO `pedidomovimentacao`  VALUES (33,007,262,2,2,'2014-01-02');
INSERT INTO `pedidomovimentacao`  VALUES (34,004,264,5,2,'2014-01-03');
DROP TABLE IF EXISTS precoproduto;


#
# Criação da Tabela : precoproduto
#

CREATE TABLE `precoproduto` (
  `idprecoproduto` int(11) NOT NULL AUTO_INCREMENT,
  `empenho_codempenho` int(11) DEFAULT NULL,
  `produto_codproduto` int(11) NOT NULL,
  `produto_idproduto` varchar(45) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `quantidadeentrada` varchar(45) NOT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idprecoproduto`),
  UNIQUE KEY `idprecoproduto_2` (`idprecoproduto`),
  KEY `idprecoproduto` (`idprecoproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `precoproduto`  VALUES (1,8,1,1387,5.36,17,17,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (2,8,4,1335,1.59,45,45,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (3,8,5,1546,2.30,31,31,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (4,8,7,1559,5.25,150,150,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (5,8,8,1336,14.08,205,205,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (6,8,9,1632,7.64,11,11,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (7,8,11,426,2.51,12,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (8,8,12,1378,2.78,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (9,8,13,185,0.48,86,86,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (10,8,19,1644,11.99,15,15,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (11,8,23,39,4.90,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (12,8,24,1760,1.66,50,50,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (13,8,26,1022,4.66,29,29,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (14,8,27,1169,5.40,50,50,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (15,8,28,1164,4.71,25,25,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (16,8,29,1187,8.28,28,28,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (17,8,30,1809,31.10,18,18,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (18,8,31,1490,0.17,104,104,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (19,8,32,1670,4.14,151,151,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (20,8,34,926,1.95,200,200,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (21,8,36,812,2.74,56,56,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (22,8,37,7,5.80,45,45,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (23,8,39,709,0.81,194,194,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (24,8,40,1296,0.43,186,186,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (25,8,41,1191,4.72,46,46,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (26,8,42,214,0.41,42,42,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (27,8,43,1374,0.86,51,51,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (28,8,45,153,0.25,60,60,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (29,8,46,1610,5.90,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (30,8,47,1603,6.63,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (31,8,51,249,3.76,34,34,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (32,8,52,1261,0.36,132,132,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (33,8,53,1379,1.98,11,11,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (34,8,55,1383,0.16,1000,1000,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (35,8,56,61,0.31,1365,1365,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (36,8,58,77,0.09,800,800,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (37,8,59,1719,0.26,240,240,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (38,8,60,1260,2.69,102,102,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (39,8,63,1650,2.17,162,162,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (40,8,64,1204,0.76,30,30,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (41,8,65,68,0.43,78,78,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (42,8,67,1716,1.84,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (43,8,68,584,3.93,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (44,8,69,1717,3.16,25,25,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (45,8,70,1699,1.25,300,300,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (46,8,71,1309,15.76,13,13,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (47,8,73,339,1.02,21,21,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (48,8,75,1127,0.01,870,870,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (49,8,76,644,0.09,4350,4350,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (50,8,79,645,0.40,1940,1940,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (51,8,82,1385,2.29,21,21,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (52,8,83,1657,0.11,1484,1484,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (53,8,85,1652,1.00,18,18,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (54,8,86,1120,1.44,17,17,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (55,8,87,1686,2.58,19,19,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (56,8,88,1714,17.79,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (57,8,89,1736,0.86,400,400,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (58,8,95,1349,0.41,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (59,8,96,617,0.19,424,424,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (60,8,104,620,1.35,80,80,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (61,8,105,1347,16.80,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (62,8,18,212,3.30,50,50,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (63,8,114,1851,8.59,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (64,8,118,1287,7.40,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (65,8,123,192,11.99,49,49,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (66,8,124,1060,0.13,4043,4043,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (67,8,125,1198,0.58,215,215,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (68,8,126,418,0.06,341,341,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (69,8,127,1529,2.27,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (70,8,130,1637,4.31,19,19,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (71,8,131,1638,5.80,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (72,8,132,1751,6.04,39,39,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (73,8,135,1765,28.00,23,23,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (74,8,139,1759,126.58,57,57,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (75,8,140,1748,69.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (76,8,141,1754,297.50,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (77,8,142,121,0.05,3850,3850,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (78,8,143,1635,18.90,14,14,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (79,8,145,504,14.02,84,84,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (80,8,147,1103,10.72,65,65,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (81,8,151,1755,19.60,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (82,8,152,1651,6.29,22,22,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (83,8,154,582,1.56,40,40,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (84,8,155,120,2.90,120,120,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (85,8,156,1326,0.07,4279,4279,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (86,8,159,1496,0.00,199,199,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (87,8,161,1753,1.57,27,27,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (88,8,164,1671,2.93,315,315,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (89,8,165,1556,60.60,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (90,8,167,1236,3.90,37,37,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (91,8,168,1684,23.45,6,6,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (92,8,169,1548,7.75,16,16,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (93,8,170,1346,0.91,160,160,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (94,8,171,1272,3.85,122,122,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (95,8,174,1756,0.44,44,44,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (96,8,179,1348,3.50,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (97,8,180,669,3.56,33,33,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (98,8,181,438,13.50,37,37,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (99,8,183,1908,9.29,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (100,8,184,1913,6.00,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (101,8,185,1917,0.38,1000,1000,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (102,8,186,1921,0.99,1000,1000,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (103,8,187,1428,12.61,26,26,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (104,8,191,1593,20.37,6,6,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (105,8,194,1588,31.10,6,6,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (106,8,201,1581,61.40,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (107,8,208,1741,187.25,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (108,8,209,1742,386.29,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (109,8,210,1743,396.52,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (110,8,211,1744,94.93,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (111,8,215,1426,1.04,796,796,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (112,8,217,1633,2.87,129,129,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (113,8,220,1845,0.11,189,189,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (114,8,223,1586,3.45,12,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (115,8,224,968,17.14,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (116,8,225,804,33.80,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (117,8,226,1597,100.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (118,8,228,1745,5.45,24,24,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (119,8,231,1735,256.21,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (120,8,232,1194,14.18,34,34,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (121,8,233,1357,15.21,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (122,8,239,1551,25.00,6,6,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (123,8,241,1690,48.96,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (124,8,242,1691,48.96,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (125,8,243,1692,49.16,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (126,8,244,1764,8.58,28,28,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (127,8,245,1766,223.01,6,6,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (128,8,246,1767,243.12,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (129,8,247,1768,144.47,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (130,8,248,1769,223.89,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (131,8,249,1916,198.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (132,8,250,1919,1.99,1000,1000,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (133,8,254,1757,16.30,169,169,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (134,8,256,1612,28.42,173,173,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (135,8,259,1617,151.75,19,19,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (136,8,260,1618,32.00,15,15,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (137,8,261,1619,48.45,15,15,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (138,8,262,1620,52.11,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (139,8,264,1621,56.45,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (140,8,267,1615,4.58,78,100,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (141,8,268,1616,3.79,800,850,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (142,8,269,1614,4.99,230,250,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (143,8,277,1213,5.46,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (144,8,280,1918,5.80,12,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (145,8,286,1824,39.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (146,8,289,1827,2.28,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (147,8,292,1487,100.00,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (148,8,294,1828,70.85,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (149,8,295,1770,33.80,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (150,8,300,1901,0.09,20000,20000,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (151,8,301,1624,16.25,19,19,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (152,8,304,566,3.84,12,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (153,8,306,1911,8.45,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (154,8,313,601,27.00,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (155,8,317,1832,17.87,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (156,8,321,1706,42.87,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (157,8,324,1575,1.59,46,46,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (158,8,325,1708,0.47,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (159,8,328,1065,22.17,100,100,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (160,8,334,1709,3.60,11,11,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (161,8,336,1707,13.00,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (162,8,339,1711,16.50,14,14,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (163,8,340,1705,25.29,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (164,8,342,1771,10.99,31,31,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (165,8,353,1891,0.00,'0,439999999999998','0,439999999999998',1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (166,8,359,1865,115.65,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (167,8,360,1866,42.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (168,8,362,1868,144.98,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (169,8,363,1468,2253.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (170,8,364,1861,1912.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (171,8,365,1863,4500.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (172,8,366,1700,1.18,34,34,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (173,8,367,1737,21.13,150,150,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (174,8,372,1879,28.00,50,50,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (175,8,373,1878,23.64,88,88,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (176,8,374,1877,75.04,27,27,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (177,8,375,1876,168.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (178,8,376,1920,195.00,31,31,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (179,8,377,1723,0.82,30,30,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (180,8,378,1843,3.19,30,30,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (181,8,381,571,1.20,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (182,8,383,1869,0.71,14,14,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (183,8,389,1813,334.99,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (184,8,391,1695,190.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (185,8,392,1117,11.50,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (186,8,394,1726,71.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (187,8,395,1573,69.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (188,8,398,1849,3.50,27,27,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (189,8,407,1857,4.30,15,15,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (190,8,409,1821,14.32,12,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (191,8,410,1820,1.97,36,36,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (192,8,411,1822,80.85,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (193,8,412,1819,10.98,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (194,8,414,1725,79.88,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (195,8,415,1724,10.19,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (196,8,418,1811,220.83,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (197,8,419,1814,573.33,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (198,8,422,1727,25.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (199,8,423,534,2.35,78,78,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (200,8,424,1728,12.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (201,8,438,103,0.01,30,30,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (202,8,440,640,0.01,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (203,8,441,492,0.03,11,11,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (204,8,442,101,1.01,16,16,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (205,8,443,1730,1.95,9,9,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (206,8,452,299,68.40,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (207,8,456,1718,0.92,212,212,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (208,8,457,1858,16.70,61,61,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (209,8,459,1859,9.89,100,100,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (210,8,462,1772,496.25,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (211,8,463,1574,4.00,36,36,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (212,8,466,1773,14.19,40,40,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (213,8,469,1483,31.12,68,68,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (214,8,470,1732,5.53,18,18,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (215,8,472,1561,4.13,40,40,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (216,8,473,1560,14.64,140,140,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (217,8,474,873,1.56,50,50,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (218,8,476,1572,93.50,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (219,8,477,1774,115.34,30,30,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (220,8,479,1126,0.85,110,110,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (221,8,480,1834,70.60,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (222,8,481,1694,21.23,30,30,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (223,8,482,1812,65.75,48,48,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (224,8,485,1733,6.04,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (225,8,487,742,9.03,27,27,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (226,8,488,1816,0.51,24,24,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (227,8,489,1817,12.00,15,15,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (228,8,490,1601,0.07,26,26,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (229,8,491,1818,1.87,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (230,8,492,478,4.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (231,8,493,1523,2.98,67,67,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (232,8,494,1734,11.14,25,25,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (233,8,495,1407,13.09,65,65,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (234,8,496,1342,155.16,9,9,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (235,8,498,1536,16.87,219,219,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (236,8,499,1537,3.98,301,301,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (237,8,500,1538,3.50,34,34,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (238,8,503,1898,89.46,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (239,8,510,1344,4.35,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (240,8,511,1434,1489.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (241,8,512,1345,27.50,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (242,8,513,829,233.23,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (243,8,521,1697,93.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (244,8,529,977,128.00,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (245,8,531,1653,0.26,300,300,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (246,8,533,1836,0.26,300,300,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (247,8,534,1837,0.26,300,300,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (248,8,535,43,0.43,300,300,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (249,8,541,1801,7.50,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (250,8,548,1566,2.39,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (251,8,550,1778,9.88,11,11,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (252,8,557,1781,6.90,6,6,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (253,8,558,1782,38.64,16,16,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (254,8,566,1702,2.73,13,13,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (255,8,569,1831,64.95,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (256,8,570,1796,4.16,6,6,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (257,8,578,1914,1.49,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (258,8,579,1915,2.77,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (259,8,580,1910,1.00,'8,84','8,84',1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (260,8,581,1909,33.98,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (261,8,583,1905,7.35,18,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (262,8,22,1645,4.54,10,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (263,8,48,337,0.19,2626,2626,1,'2014-01-03');
INSERT INTO `precoproduto`  VALUES (264,8,144,95,22.83,71,76,1,'2014-01-03');
INSERT INTO `precoproduto`  VALUES (265,8,756,756,2.00,195,195,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (266,8,1655,1655,0.00,145,145,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (267,8,1608,1608,0.00,433,433,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (268,8,485,485,1.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (269,8,657,657,0.00,35230,35230,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (270,8,656,656,0.00,12,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (271,8,1554,1554,0.00,5935,5935,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (272,8,1301,1301,22.00,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (273,8,1256,1256,17.00,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (274,8,1288,1288,21.00,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (275,8,219,219,0.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (276,8,316,316,1.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (277,8,501,501,0.00,15,15,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (278,8,961,961,11.00,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (279,8,962,962,4.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (280,8,1501,1501,27.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (281,8,1399,1399,42.00,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (282,8,1485,1485,15.00,12,12,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (283,8,353,353,2.00,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (284,8,401,401,4.00,13,13,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (285,8,924,924,1.00,38,38,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (286,8,115,115,2.00,30,30,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (287,8,116,116,0.00,100,100,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (288,8,1495,1495,0.00,160,160,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (289,8,1323,1323,2.00,16,16,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (290,8,1698,1698,3.00,1965,1965,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (291,8,1539,1539,12.00,800,800,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (292,8,502,502,18.00,15,15,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (293,8,1846,1846,7.00,28,28,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (294,8,586,1924,0.27,198,198,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (295,8,1494,1494,7.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (296,8,189,1533,247.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (297,8,216,1212,4.00,28,28,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (298,8,234,1740,6.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (299,8,235,1266,30.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (300,8,236,1366,161.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (301,8,237,1439,162.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (302,8,240,1689,72.00,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (303,8,251,1926,229.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (304,8,585,1923,92.00,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (305,8,273,1739,319.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (306,8,583,1905,7.00,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (308,8,587,1922,229.00,2000,2000,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (309,8,72,1626,0.00,551,551,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (310,8,330,1844,44.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (311,8,337,1688,23.00,5,5,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (312,8,361,1867,98.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (313,8,190,1872,3.00,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (314,8,385,1871,8.00,7,7,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (315,8,386,1870,7.00,4,4,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (316,8,396,1233,0.00,40,40,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (317,8,397,176,2.00,28,28,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (318,8,399,1049,16.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (319,8,400,174,2.00,53,53,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (320,8,401,1364,3.00,27,27,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (321,8,402,64,6.00,35,35,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (322,8,403,785,1.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (323,8,404,65,22.00,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (324,8,405,1050,4.00,10,10,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (325,8,406,1021,99.00,3,3,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (326,8,408,391,8.00,21,21,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (327,8,425,99,0.00,1177,1177,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (328,8,426,100,2.51,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (329,8,427,146,0.00,42,42,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (330,8,428,237,20.00,2,2,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (331,8,429,639,0.00,40,40,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (332,8,430,139,5.00,20,20,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (333,8,431,636,0.00,35,35,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (334,8,433,141,0.00,22,22,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (335,8,435,560,0.00,34,34,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (336,8,437,1099,1.00,11,11,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (337,8,445,166,1.00,740,740,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (338,8,447,686,0.00,100,100,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (339,8,448,178,1.00,50,50,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (340,8,449,35,4.00,41,41,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (341,8,450,431,2.00,251,251,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (342,8,451,367,5.00,1,1,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (343,8,453,285,21.00,8,8,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (344,8,454,38,1.00,454,454,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (345,8,455,1404,2.00,95,95,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (346,8,461,1562,6.00,190,190,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (347,8,465,1503,4.00,100,100,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (348,8,468,1853,3.00,41,41,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (349,8,475,98,13.00,250,250,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (350,8,508,1241,5.00,25,25,1,'2014-01-02');
INSERT INTO `precoproduto`  VALUES (351,8,584,1925,11.00,60,60,1,'2014-01-02');
DROP TABLE IF EXISTS produto;


#
# Criação da Tabela : produto
#

CREATE TABLE `produto` (
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
) ENGINE=InnoDB AUTO_INCREMENT=588 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `produto`  VALUES (1,1387,'ANTICORROSIVO WD-40',0,0,'',1,1,1,'0000-00-00');
INSERT INTO `produto`  VALUES (3,1701,'OLEO LUBRIFICANTE, HIDROST�TICO E DIEL�TRICO',0,0,'',1,1,1,'0000-00-00');
INSERT INTO `produto`  VALUES (4,1335,'A��CAR',0,0,'',2,2,1,'0000-00-00');
INSERT INTO `produto`  VALUES (5,1546,'ADO�ANTE DIET�TICO 200 ML',0,0,'',2,2,1,'0000-00-00');
INSERT INTO `produto`  VALUES (6,1558,'AGUA MINERAL GARRAFA C/ 600 ML',0,0,'',2,2,1,'0000-00-00');
INSERT INTO `produto`  VALUES (7,1559,'AGUA MINERAL GARRAF�O DE 20 LTS',0,0,'',2,2,1,'0000-00-00');
INSERT INTO `produto`  VALUES (8,1336,'CAF�',0,0,'',2,2,1,'0000-00-00');
INSERT INTO `produto`  VALUES (9,1632,'AGENDA PERMANENTE, 200X132MM, PAPEL OFF SET, CAPA PVC',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (10,1555,'AGENDA TELEFONICA',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (11,426,'ALMOFADA PARA CARIMBO',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (12,1378,'APAGADOR PARA QUADRO MAGN�TICO, MEDINDO 18CM',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (13,185,'APONTADOR',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (14,1312,'ARALDITE',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (17,1485,'FITA FILME PARA FAX SHARP  UX-5 CR',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (18,212,'FITA GOMADA DUPLA FACE',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (19,1644,'BANDEJA DUPLA EM ACR�LICO, COR FUM�, MEDIDA 36,5CMX26,5CM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (22,1645,'BARBANTE DE ALGOD�O, 8 FIOS, CRU ROLO C/250 G.',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (23,39,'BARBANTE PL�STICO',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (24,1760,'BISTURI DESCART�VEL, N�22',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (25,1647,'BLOCO DE APONTAMENTO (FLIPCHART) COR BRANCA LISO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (26,1022,'BLOCO DE GUIA DE ARRECADA��O',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (27,1169,'BLOCO DE GUIA DE ENCAMINHAMENTO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (28,1164,'BLOCO DE GUIA DE PROTOCOLO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (29,1187,'BLOCO DE GUIA PARA FORMA��O DE PROCESSO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (30,1809,'BLOCO DE INGRESSO P/ MUSEU',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (31,1490,'BLOCO LEMBRETE AUTO ADESIVO AMARELO (GRANDE)',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (32,1670,'BLOCO LEMBRETE AUTO ADESIVO AMARELO (PEQUENO),PCT C/4 UNID.',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (33,807,'BLOCO LISO 1/2 OF�CIO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (34,926,'BLOCO LISO OF�CIO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (35,1609,'BLOCO MARCADOR DE P�GINAS COLORIDO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (36,812,'BLOCO PARA COMUNICA��O INTERNA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (37,7,'BLOCO PARA REQUISI��O DE MATERIAL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (38,756,'BLOCO PAUTADO  OF�CIO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (39,709,'BLOCO PAUTADO 1/2 OF�CIO, COM 100F',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (40,1296,'BLOCO PAUTADO 1/8',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (41,1191,'BLOCO REQUISI��O RECIBO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (42,214,'BOBINA PARA CALCULADORA - MED. 57 X 65',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (43,1374,'BOBINA PARA CALCULADORA - MED. 69 X 60',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (44,1047,'BOBINA PARA FAX SMILE - MED. 216 X 30',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (45,153,'BORRACHA TK - PLAST',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (46,1610,'CADERNO CAPA DURA PAUTADO 22 x 15 cm',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (47,1603,'CANETA CORRETIVA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (48,337,'CANETA ESFEROGR�FICA  AZUL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (49,1655,'CANETA ESFEROGR�FICA  PRETA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (50,1608,'CANETA ESFEROGR�FICA  VERMELHA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (51,249,'CANETA HIDROCOR, ESTOJO C/12 CORES',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (52,1261,'CANETA LUMI COLOR',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (53,1379,'CANETA PILOT PARA QUADRO BRANCO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (54,1720,'CANETA RETROPROGETOR ',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (55,1383,'CAPA PARA ENCADERNA��O',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (56,61,'CAPA PARA PROCESSO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (57,1525,'CARIMBOS EM GERAL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (58,77,'CART�O DA FCRB',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (59,1719,'CARTOLINA, COR: AMARELA, AZUL, BRANCA, ROSA E VERDE',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (60,1260,'CLIPS DE PL�STICO',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (61,485,'CLIPS MET�LICO  -   N� 2/0',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (62,1552,'CLIPS MET�LICO  -  N� 4/0',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (63,1650,'CLIPS NIQUELADO, 6/0, FORMATO PARALELO',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (64,1204,'COLA EM BAST�O',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (65,68,'COLA PL�STICA, FRASCO C/ 40 GRAMAS',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (66,1758,'COLA EM P�, TIPO SAL S�DICO,242N (LACRE)',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (67,1716,'COLCHETE LATONADO - N� 06',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (68,584,'COLCHETE LATONADO - N� 10',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (69,1717,'COLCHETE LATONADO - N� 12',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (70,1699,'CRACH� SEMIN�RIO PAPEL KRAFT 600G MED 14 X 10 C/ CORD�O',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (71,1309,'DUREPOX',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (72,1626,'EL�STICO PARA PROCESSO, L�TEX, COR BRANCA, PCT C/10',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (73,339,'EL�STICO, L�TEX, COR AMARELA',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (74,1208,'ENVELOPE BRANCO TIMBRADO  24 x 34',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (75,1127,'ENVELOPE CARTA LISO BRANCO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (76,644,'ENVELOPE CARTA TIMBRADO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (77,657,'ENVELOPE KRAFT  24 x 34',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (78,1484,'ENVELOPE KRAFT 18 x 25',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (79,645,'ENVELOPE OF�CIO TIMBRADO 24 x 34',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (80,656,'ENVELOPE PARDO  31 x 41',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (81,1554,'ENVELOPE TIMBRADO BRANCO 19,03 X 12,08 ',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (82,1385,'ENVELOPE TIMBRADO BRANCO SANFONADO - 24 X 34',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (83,1657,'ENVELOPE TIMBRADO OFICIO P/ CONVITE 22,06 X 11,03 CM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (84,1654,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 25X300MM, 45 AN�IS',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (85,1652,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 40X320MM, 45 AN�IS',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (86,1120,'ESTILETE, L�MINA LARGA 18MM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (87,1686,'ETIQUETA \"URGENTE\" MED 13 x 45 mm P/ PROCESSO',0,0,'',4,22,1,'0000-00-00');
INSERT INTO `produto`  VALUES (88,1714,'ETIQUETA ADESIVA, MED. 101,6 X 84,7 MM',0,0,'',4,10,1,'0000-00-00');
INSERT INTO `produto`  VALUES (89,1736,'ETIQUETA EM BOPP PEROLADO, MED. 50X20MM, IM: 00363740',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (90,1643,'ETIQUETA PARA CD, COR BRANCA, 115MM, CAIXA C/50',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (91,1301,'ETIQUETA PIMACO  -  REFER�NCIA  6181',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (92,1256,'ETIQUETA PIMACO  -  REFER�NCIA  6183',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (93,1288,'ETIQUETA PIMACO  -  REFER�NCIA  6287',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (94,1285,'ETIQUETA PIMACO  -  REFER�NCIA 6180',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (95,1349,'EXTRATOR DE GRAMPOS',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (96,617,'FICHA DE ESTOQUE DE MATERIAL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (97,219,'FICHA LISA  -  TAMANHO  3 X 5',0,0,'',4,11,1,'0000-00-00');
INSERT INTO `produto`  VALUES (98,31,'FICHA LISA  -  TAMANHO  5 X 8',0,0,'',4,11,1,'0000-00-00');
INSERT INTO `produto`  VALUES (99,388,'FICHA PAUTADA  -  TAMANHO  3 X 5',0,0,'',4,7,1,'0000-00-00');
INSERT INTO `produto`  VALUES (100,405,'FICHA PAUTADA  -  TAMANHO  4 X 6',0,0,'',4,7,1,'0000-00-00');
INSERT INTO `produto`  VALUES (101,316,'FICHA PAUTADA  -  TAMANHO  5 X 8',0,0,'',4,7,1,'0000-00-00');
INSERT INTO `produto`  VALUES (102,1648,'FICH�RIO DE MESA  6X9',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (103,501,'FITA  PARA CALCULADORA (SHARP)',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (104,620,'FITA ADESIVA - DUREX',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (105,1347,'FITA ADESIVA PL�STICA - 45 X 50',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (106,1606,'FITA ADESIVA PL�STICA TRANSPARENTE 25X50MM',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (107,1625,'FITA CORRETIVA CARACOL, 6MX5MM',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (108,961,'FITA CORRETIVA P/ M�QUINA IBM  MOD. 6746 - REF. 1337765',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (109,962,'FITA CORRIG�VEL P/ M�QUINA IBM  MOD. 6746 - REF. 1337761',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (110,1501,'FITA FILME P/FAX  KX-FA57A PANASSONIC',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (111,1399,'FITA FILME PARA FAX FO 1650  REF. 16CR',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (112,353,'FITA GOMADA CREPE   -  25 X 50',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (113,401,'FITA GOMADA CREPE   - 45 X 50',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (114,1851,'FITA DE SINALIZA��O 185X70CM',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (115,1665,'GRAFITE 0,5',0,0,'',4,8,1,'0000-00-00');
INSERT INTO `produto`  VALUES (116,1668,'GRAFITE 0,7',0,0,'',4,8,1,'0000-00-00');
INSERT INTO `produto`  VALUES (117,1669,'GRAFITE 0,9',0,0,'',4,8,1,'0000-00-00');
INSERT INTO `produto`  VALUES (118,1287,'GRAMPEADOR 26/6',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (119,1646,'GRAMPEADOR METAL, TIPO MESA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (120,1721,'GRAMPEADOR PEQUENO, PARA GRMPO 26/6 CAP. PARA 10 FLS.',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (121,924,'GRAMPO PARA GRAMPEADOR  26/6',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (122,1685,'GRAMPO PARA GRAMPEADOR 23/10 ',0,0,'',4,9,1,'0000-00-00');
INSERT INTO `produto`  VALUES (123,192,'GRAMPO PARA GRAMPEADOR SKREBBA',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (124,1060,'GRAMPO PARA PASTA CLIKTELOS - MODELO 4711',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (125,1198,'L�PIS BORRACHA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (126,418,'L�PIS PRETO N� 02',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (127,1529,'L�PIS PRETO N� 6B',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (128,1641,'LAPISEIRA PL�STICA 0,5MM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (129,1642,'LAPISEIRA PL�STICA 0,7MM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (130,1637,'LIVRO ATA, CAPA DURA, COR PRETA, PAUTADO, 100FL NUMERADAS',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (131,1638,'LIVRO DE PROTOCOLO, CAPA DURA, COR PRETA, PAUTADO, 100FL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (132,1751,'MARCADOR DE P�GINAS, COLORIDO, 25MM X 43MM C/20 FOLHAS',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (133,1640,'MARCADOR PARA QUADRO BRANCO, COR AZUL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (134,1639,'MARCADOR PARA QUADRO BRANCO, COR VERMELHA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (135,1765,'PAPEL ADESIVO(CONTACT), ROLO C/ 25 MTS. X 0,45CM',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (136,115,'PAPEL  ALMA�O  LISO',0,0,'',4,3,1,'0000-00-00');
INSERT INTO `produto`  VALUES (137,116,'PAPEL  ALMA�O PAUTADO',0,0,'',4,3,1,'0000-00-00');
INSERT INTO `produto`  VALUES (138,1666,'PAPEL ALTA ALVURA BRANCO 75G/M� , 960 x 660 MM',0,0,'',4,23,1,'0000-00-00');
INSERT INTO `produto`  VALUES (139,1759,'PAPEL FILME, ROLO C/ 50 M X 0,2 CM, AUTO ADESIVO',0,0,'',4,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (140,1748,'PAPEL MATA-BORR�O, VEGETAL, 250G/M�, 60CM COMP. 60CM LARG. BRANCO',0,0,'',4,12,1,'0000-00-00');
INSERT INTO `produto`  VALUES (141,1754,'PAPEL NEUTRO ALCALINO, 76CM X 112CM, COR BRANCA',0,0,'',4,25,1,'0000-00-00');
INSERT INTO `produto`  VALUES (142,121,'PAPEL OF�CIO TIMBRADO',0,0,'',4,12,1,'0000-00-00');
INSERT INTO `produto`  VALUES (143,1635,'PAPEL PARA REPOGRAFIA E IMPRESSORA LAZER A3',0,0,'',4,25,1,'0000-00-00');
INSERT INTO `produto`  VALUES (144,95,'PAPEL PARA REPROGRAFIA A4  - MED. 210 X 297mm',0,0,'',4,25,1,'0000-00-00');
INSERT INTO `produto`  VALUES (145,504,'PAPEL PARA REPROGRAFIA OF�CIO II - MED. 216 X 330mm',0,0,'',4,25,1,'0000-00-00');
INSERT INTO `produto`  VALUES (146,1122,'PAPEL VEGETAL - 80g',0,0,'',4,2,1,'0000-00-00');
INSERT INTO `produto`  VALUES (147,1103,'PAPEL VERG�',0,0,'',4,25,1,'0000-00-00');
INSERT INTO `produto`  VALUES (148,1506,'PAPEL VERG� 85 G/M2 - A4  210  X  297 ',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (149,1839,'PAPEL VERGE COR CINZA 90 GR 210X297',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (150,1840,'PAPEL VERGE COR BRANCA 90 GR 210X297',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (151,1755,'PAPEL�O RECICLADO, COR CINZA,1.OOOM X 800MM',0,0,'',4,24,1,'0000-00-00');
INSERT INTO `produto`  VALUES (152,1651,'PASTA CAT�LOGO COM 50 SACOS PL�STICOS, COR PRETA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (153,356,'PASTA DE CARTOLINA COM EL�STICO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (154,582,'PASTA DE CARTOLINA COM FERRAGEM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (155,1064,'PASTA INTERCALADORA MODELO TELOS 4211',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (156,1326,'PASTA PARA CORRESPONDENCIA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (157,1520,'PASTA PLASTICA COM CANALETA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (158,1495,'PASTA PL�STICA EM \"L\"  TRANSPARENTE',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (159,1496,'PASTA PL�STICA TRANSPARENTE T/OF�CIO C/ELAST.',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (160,1323,'PASTA POLIONDA  6cm - POLICART',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (161,1753,'PASTA POLIONDA TIPO ARQUIVO, 130 X 250 X 360MM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (162,1698,'PASTA SEMIN�RIO PAPEL KRAFT 420G MED 23 X 31 X 1CM ',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (163,1539,'PASTA SUSPENSA  PLASTICA TRANSPARENTE',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (164,1671,'PASTA SUSPENSA C/ SUPORTE PL�STICO, 260x260mm',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (165,1556,'PASTA TIPO SANFONADA DE PAPEL�O C/ 35 DIVIS�ES COR PRETA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (166,433,'PERCEVEJO DE METAL',0,0,'',4,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (167,1236,'PERFURADOR DE PAPEL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (168,1684,'PERFURADOR DE PAPEL DE FERRO P/ 60 FLS',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (169,1548,'PILHA GRANDE TIPO ALCALINA',0,0,'',4,5,1,'0000-00-00');
INSERT INTO `produto`  VALUES (170,1346,'PILHA PALITO AAA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (171,1272,'PILHA PEQUENA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (172,1649,'PORTA-L�PIS EM ACR�LICO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (173,1683,'PRANCHETA PORT�TIL ACR�LICA FUM� 3,34MM x 2,34MM x 2MM',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (174,1756,'PRENDEDOR DE PAPEL(BINDER), 32MM, PARA 100FLS.',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (175,340,'REGISTRADOR  TAMANHO CARTA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (176,341,'REGISTRADOR  TAMANHO OF�CIO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (177,502,'R�GUA PL�STICA  - 30 cm',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (178,1846,'ROLETE ENTINTADO  TINTA PRETA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (179,1348,'SUPORTE PARA TEXTO',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (180,669,'TAL�O NOTA DE DISTRIBUI��O PROMOCIONAL',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (181,438,'TAL�O NOTA DE VENDA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (182,1235,'TESOURA',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (183,1908,'ADESIVO DE SIILICONE',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (184,1913,'BATERIA ALCALINA DE 9VTS.',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (185,1917,'PORTA CRACH� RIGIDO VERTICAL VERDE',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (186,1921,'CORD�O PARA CRACHA EM POLIESTER',0,0,'',4,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (187,1428,'BASE PARA MOUSE',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (188,1494,'BATERIA PARA PC TIPO  LITHIUM',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (189,1533,'CABO  DE REDE P/ COMPUTADOR FURUKAWA',0,0,'',5,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (190,1872,'CAR. P/ IMP EPSON STYLUS COR MAGENTA T0473',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (191,1593,'CONECTOR RJ 45 MACHO',0,0,'',5,28,1,'0000-00-00');
INSERT INTO `produto`  VALUES (192,1587,'CAR. P/ IMP EPSON STYLUS COR AMARELA T0474',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (193,1589,'CAR. P/ IMP EPSON STYLUS COR PRETA T0461',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (194,1588,'CAR. P/ IMP EPSON STYLUS COR CIANO T0472',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (195,1592,'CAR. P/ IMP HP C6578AL (78) COLORIDO ',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (196,1544,'CAR. P/ IMP HP C8727AL (27) PRETA',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (197,1545,'CAR. P/ IMP HP C8728AL (28) COLORIDO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (198,1579,'CAR. P/ IMP HP C6648BL (29) PRETA',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (199,1580,'CAR. P/ IMP HP C6650BL (45) PRETA',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (200,1489,'CAR. P/ IMP HP C6625 COLORIDO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (201,1581,'CAR. P/ IMP HP C8799BL (49) COLORIDO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (202,1584,'CAR. P/ IMP HP C9363WL (97) COLORIDO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (203,1286,'CAR. P/ IMP OU FAX C51626A (26) PRETO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (204,1441,'CAR. P/ IMP HP C1823T COLORIDO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (205,1577,'CAR. P/ IMP HP C8767WL (96) PRETO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (206,1380,'CAR. P/ IMP HP C51641AL (41) COLORIDO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (207,1258,'CAR. P/ IMP HP 5515 ',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (208,1741,'CAR. P/ IMP HP Q; 7581 A, COR CYAN',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (209,1742,'CAR. P/ IMP HP Q; 7582 A, COR AMARELO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (210,1743,'CAR. P/ IMP HP Q; 7583 A, COR MAGENTA',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (211,1744,'CAR. P/ IMP HP Q; 6470 A, COR PRETO',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (212,1590,'CAR. P/ IMP LEXMARK REF 10N0016 PRETO (16)',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (213,1595,'CAR. P/ IMP LEXMARK REF 10N0016 COLORIDO (26)',0,0,'',5,6,1,'0000-00-00');
INSERT INTO `produto`  VALUES (214,1578,'CD RW 700MB 80 MIN TIPO REGRAV�VEL (CD-RW)',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (215,1426,'CD ROM GRAV�VEL',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (216,1212,'DISQUETTE 3.1/2\"  HD',0,0,'',5,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (217,1633,'DVD-R GRAV�VEL',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (218,1634,'DVD-RW REGRAV�VEL',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (219,1598,'ENVE P/ ACONDICIONAMENTO DE CD S COM ABAS 12,5CM X 12,5CM',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (220,1845,'ESTOJO PARA ACONDICIONAMENTO DE CD',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (221,1462,'FITA PARA IMPRESSORA  EPSON FX 2180 SO 15086',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (222,1488,'FITA PARA IMPRESSORA EPSON FX 1180',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (223,1586,'FITA PARA IMPRESSORA MAT. NYLON COR PRETA 8MMX1,80M',0,0,'',5,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (224,968,'FORMUL�RIO CONT. COM 01 VIA E 80 COLUNAS - COD. 74',0,0,'',5,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (225,804,'FORMUL�RIO CONT�NUO COM 02 VIAS E 132 COLUNAS',0,0,'',5,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (226,1597,'ISOLANTE T�RMICO P/ COMPUTADOR TIPO SERINGA',0,0,'',5,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (227,1142,'MOUSE �PTICO PS2',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (228,1745,'MOUSE �PTICO USB',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (229,1864,'PEN DRIVE DE 8GB',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (230,1752,'PLACA M�E INTEL, MOD. DG41RQ',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (231,1735,'RIBON EM RESINA, COR PRETO, MED. 110 X 74 M, IM: 000150541',0,0,'',5,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (232,1194,'TECLADO PARA COMPUTADOR',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (233,1357,'TELA ANTI-REFLEXIVA PARA MONITOR',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (234,1740,'TONER P/ IMP LAZER  JET CB435A PRETO/ -SUBST.CE285A',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (235,1266,'TONER P/ IMP LASER JET C3903A ',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (236,1366,'TONER P/ IMP LASER JET (IIIP) 92275-A ',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (237,1439,'TONER P/ IMP LASER JET  C4096A PRETO',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (238,1442,'TONER P/ IMP LASER JET C41 (27X) PRETO',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (239,1551,'TONER P/ IMP LASER JET 2300 Q2610A (10A) PRETO',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (240,1689,'TONER P/ IMP LASERJET Q6000A, IMP 1600, 2600, 2605 PRETA ',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (241,1690,'TONER P/ IMP LASERJET Q6001A, IMP 1600, 2600, 2605 AZUL',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (242,1691,'TONER P/ IMP LASERJET Q6002A, IMP 1600, 2600, 2605 AMARELO',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (243,1692,'TONER P/ IMP LASERJET Q6003A, IMP 1600, 2600, 2605 VERMELHO',0,0,'',5,27,1,'0000-00-00');
INSERT INTO `produto`  VALUES (244,1764,'TONER P/ IMP LAZERJET CB436A, MOD. M112O,M1522 E P1505',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (245,1766,'TONER P/ IMP LAZERJET, CC530A',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (246,1767,'TONER P/ IMP LAZERJET, CC531A',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (247,1768,'TONER P/ IMP LAZERJET, CC532A',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (248,1769,'TONER P/ IMP LAZERJET, CC533A',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (249,1916,'CAMERA DE VIDEO CONFERENCIA',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (250,1919,'CART�O DE PROXIMIDADE CONTROLE DE ACESSO',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (251,1926,'FITA MAGICARD  MA300YMCKO  DYE FILM.',0,0,'',5,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (252,1658,'BOBINA DE PL�STICO BOLHA ',0,0,'',6,1,1,'0000-00-00');
INSERT INTO `produto`  VALUES (253,345,'BOBINA DE PAPEL KRAFT ',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (254,1757,'CADAR�O, 100% ALGOD�O, ROLO C/ 50M',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (255,1613,'CAIXA BANK BOX 340 mm X 140 X 240 (pequena) ',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (256,1612,'CAIXA BANK BOX 380 X 180 X 290 (grande)',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (257,1738,'CAIXA DE ARQUIVO, COM BASE DE 40 X 30 X 6 CM, TAMPA, 41 X 31 X 6  CX 2436',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (258,1119,'CAIXA DE PAPEL�O ONDULADO 90 cm X 50 cm x 40 alt.',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (259,1617,'CAIXA DE PAPEL�O PLASTIFICADO (PORTIF�LIO) 400mm X 300mm',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (260,1618,'CAIXA TELESC�PICA 34,5 X 23,5 X 6 CXT/1',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (261,1619,'CAIXA TELESC�PICA 40 X 30 X 6 CXT/2',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (262,1620,'CAIXA TELESC�PICA 44 X 34 X 8',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (263,1672,'CAIXA TELESC�PICA 44 X 34 X 10,5',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (264,1621,'CAIXA TELESC�PICA 57 X 43 X 5',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (265,1674,'EMBALAGEM PL�STICA TRANSPARENTE C/ TAMPA FIXA 12 X 12 X 43CM',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (266,1675,'EMBALAGEM PL�STICA TRANSPARENTE COM TAMPA FIXA20 X 15 X 45 CM',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (267,1615,'FOLHA PARA ENCAIXE DE FOTOGRAFIA, 320 X 45MM (2 FOTOS 13 X 18)',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (268,1616,'FOLHA PARA ENCAIXE DE FOTOGRAFIA, 320 X 245MM (4 FOTOS 10 X 15)',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (269,1614,'FOLHA PARA DE ENCAIXE DE FOTOGRAFIA, 320 X 245MM (1 FOTO 20 X 25)',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (270,1687,'PALLET MOD 400 P1 C/ SAPATAS, 16cm x 1,00cm x 120cm',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (271,1611,'PAPEL NEUTRO 70 X 100 CM',0,0,'',6,21,1,'0000-00-00');
INSERT INTO `produto`  VALUES (272,1676,'PAPEL FILME EM PVC',0,0,'',6,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (273,1739,'PAPEL OFFSET, NEUTRO, BRANCO, DE  76 X 12 CM, GRAMATURA, 63G/M2',0,0,'',6,25,1,'0000-00-00');
INSERT INTO `produto`  VALUES (274,1677,'PAPEL SEDA 70 CM X 50 ',0,0,'',6,12,1,'0000-00-00');
INSERT INTO `produto`  VALUES (275,1622,'PASTAS SUSPENSAS ESPECIAL ',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (276,1762,'REFIL DE EMBALADOR DE GUARDA-CHUVA, CXA.C/1000',0,0,'',6,10,1,'0000-00-00');
INSERT INTO `produto`  VALUES (277,1213,'SACOLA PL�STICA PARA EMBALAGEM',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (278,1902,'SACOLA DE COMPRAS EM BAMBOO',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (279,1894,'CAIXA PARA PRESERVA��O DE DOC.37,5X2,5X1305CM.',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (280,1918,'FITILHO PLASTICO',0,0,'',6,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (283,1184,'GUARDANAPO DE PAPEL TAMANHO 24 X 24',0,0,'',7,18,1,'0000-00-00');
INSERT INTO `produto`  VALUES (284,1185,'GUARDANAPO DE PAPEL TAMANHO 34 X 34',0,0,'',7,18,1,'0000-00-00');
INSERT INTO `produto`  VALUES (285,1823,'TOALHA DE MESA, M�STICA, MED. 1,40M X 220M
',0,0,'',0,0,1,'0000-00-00');
INSERT INTO `produto`  VALUES (286,1824,'A�UCAREIRO EM A�O INOX. MED. 500ML',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (287,1825,'BULE EM A�O INOX. BICO CURTO, MED. O1 LITRO',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (288,1826,'COLHER EM A�O INOX. PEQUENA, PARA CAF�, MED. 1,50MM DE ESPESSURA',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (289,1827,'COPO DE VIDRO 300ML, BOCA 65MM DE DIANMETRO,140 ALT. INCOLOR',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (290,1178,'COPO PLASTICO PARA AGUA DE 200 ML',0,0,'',8,7,1,'0000-00-00');
INSERT INTO `produto`  VALUES (291,1182,'COPO PLASTICO PARA CAF�',0,0,'',8,7,1,'0000-00-00');
INSERT INTO `produto`  VALUES (292,1487,'GARRAFA TERMICA',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (294,1828,'JARRA EM A�O INOX, TAMPA C/ APARADOR DE GELO, MED. 02 LTS',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (295,1770,'PORTA COPO EM A�O INOXID�VEL',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (296,1829,'PORTA-COPO EM A�O INOX, MED. 09 CM DE DIANMETRO,TIPO PIRES',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (297,1830,'X�CARA EM PORCELANA BRANCA, C/PIRES, MED. 80ML',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (298,1900,'CANECA TERMICA',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (299,1899,'COPO CANECA TRANSPARENTE',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (300,1901,'COPO DE PAPEL RECICLAVEL',0,0,'',8,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (301,1624,'�LCOOL ISOPROP�LICO',0,0,'',9,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (302,1111,'CAPACHO',0,0,'',9,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (303,1177,'CESTA PARA LIXO',0,0,'',9,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (304,566,'ESTOPA',0,0,'',9,18,1,'0000-00-00');
INSERT INTO `produto`  VALUES (305,1715,'SABONETEIRA DE VIDRO, P/ SABONETE L�QUIDO, CAPC. 400ML C/SPTE.',0,0,'',9,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (306,1911,'ASSENTO DE VASO SANIT�RIO',0,0,'',9,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (307,398,'BOTINA',0,0,'',10,19,1,'0000-00-00');
INSERT INTO `produto`  VALUES (308,201,'CAL�A JEANS',0,0,'',10,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (309,231,'CAMISA',0,0,'',10,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (310,1303,'CINTO',0,0,'',10,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (312,1304,'GRAVATA
',0,0,'',0,0,1,'0000-00-00');
INSERT INTO `produto`  VALUES (313,601,'JALECO',0,0,'',10,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (314,1302,'MEIA',0,0,'',10,19,1,'0000-00-00');
INSERT INTO `produto`  VALUES (315,197,'SAPATO',0,0,'',10,19,1,'0000-00-00');
INSERT INTO `produto`  VALUES (316,1664,'BROCA DE V�DEA',0,0,'',24,16,1,'0000-00-00');
INSERT INTO `produto`  VALUES (317,1832,'COLA PARA APLICA��O COM PISTOLA( quente), TIPO, HOT-MELT',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (318,1627,'CANTONEIRA DE FERRO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (319,1629,'COMPENSADO DE CEDRO 10MM',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (320,1628,'COMPENSADO DE CEDRO 15MM',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (321,1706,'CONEX�O MET�LICA, GALVANIZADA, MED. 3\" POLEGADAS',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (322,1855,'CORTINA BREEZE  E BREEZE PARA 55 JANELAS',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (323,1680,'FECHADURA',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (324,1575,'FITA TEFLON',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (325,1708,'JOELHO DE PVC MED. 40 MM X 45 GRAUS',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (326,1746,'LIXA DE FERRO , PACOTE COM 50 FOLHAS',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (327,1747,'MASSA PVA 18 LTS.',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (328,1065,'MATERIAL PARA OBRAS E INSTALA��ES',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (329,1661,'MATERIAL PARA MANUTEN��O DO JARDIM ',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (330,1844,'MOLA AEREA HIDRAULICA F-2 ',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (331,1761,'PARFUSO ZINCADO, FENDA SIMPLES, MED. 4,8 X 65 CM',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (332,1798,'PENEIRA DE A�O',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (333,1631,'PERNA DE TR�S ',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (334,1709,'PINCEL PARA PINTURA PREDIAL, REF. 821 - 06',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (335,1710,'RABICHO PARA LAVAT�RIO EM PVC, MED. 40 CM DE COMP.',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (336,1707,'REGISTRO DE PRESS�O, A�O INOXID�VEL, MED.3/4\" DE POLEGADAS',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (337,1688,'REPARO DE V�LVULA DESCART�VEL BITOLA 1� 1/2 X 1� 1/4 ',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (338,1763,'RIPA DE MADEIRA APARELHADA, 1,50M X 0,7CM X 0,3 CM',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (339,1711,'ROLO P/PINTURA PREDIAL, L� DE CARNEIRO, MED. 30 CM',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (340,1705,'SIF�O MET�LICO, MED. 11/2\" x 11/4\" POLEGADAS',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (341,1630,'T�BUA DE PINHO 3M X 30CM',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (342,1771,'TAMPA P/ SANIT�RIO EM PL�STICO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (343,1663,'TINTA PARA PINTURA',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (344,1703,'TRINCHA, PELO DE ESQUILO, MED.1/2\" POLEGADAS, N� 02',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (345,1704,'TRINCHA, PELO DE ESQUILO, MED.1/2\" POLEGADAS, N� 03',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (346,1884,'PAINEL DE VIDRO DUPLO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (347,1885,'PAINEL CEGO  VIDRO DUPLO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (348,1886,'MOD P1 PORTA CEGA',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (349,1887,'PERSIANA DE ALUMINIO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (350,1888,'RODAPE DE ALUMINIO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (351,1889,'MOD P4 PORTA DUPLA',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (352,1890,'PERSIANA DE ALUMINIO HORIZONTAL',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (353,1891,'PAINEL CEGO COM BANDEIRA CEGA',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (354,1892,'RODAPE DE ALUMINIO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (355,1893,'MOD PAINEL DE VIDRO DUPLO PISO TETO',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (356,1895,'COLA PVA EXTRA',0,0,'',24,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (357,1636,'COLUNA DEIONIZADORA 100 L/H, REFIL DE R�DIO',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (358,1860,'CONTADO TRIFASICO 220V 32A LC1D32 ',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (359,1865,'CONTATOR TRIF�SICO DE 18A',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (360,1866,'CONTATOR TRIFASICO DE 9 A DE',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (361,1867,'CONTATOR TRIFASICO DE 9A  DE 5 A 8',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (362,1868,'CONTATOR TRIFASICO DE 38A',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (363,1468,'COMPRESSOR HERM�TICO, 5TR',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (364,1861,'COMPRESSOR HERMETICO DE 7,5 TR 220V',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (365,1863,'COMPRESSOR DE 10 TR 220V SCROOL',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (366,1700,'FILTRO P/ AR CONDICIONADO CENTRAL, MOD. OXPA103DA32POOBB',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (367,1737,'FILTRO P/ AR CONDICIONADO CENTRAL, CLASSE G3, F. SINT.697X600X25MM',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (368,1850,'FILTRO PARA AR CONDICIONADO 439X665X24MM',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (369,1327,'MATERIAL P/MANUTENC�O DE BENS MOVEIS',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (370,1862,'TERMOSTATO  ELETRONICO 10 E15 TR 220/380V',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (371,1833,'VENTILADOR P/ DESUMIDIFICADOR DE AR, MOD. E11 NY, 115/220V',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (372,1879,'FILTRO AEROGLASS PD-P 770X770X25MM',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (373,1878,'FILTRO AEROGLASS 760X600X25MM',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (374,1877,'FILTRO AEROGALASS 609X406X50MM0',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (375,1876,'FILTRO 300X305X45MM',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (376,1920,'PRATELEIRA',0,0,'',11,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (377,1723,'ABRA�ADEIRA DE METAL 3/4\" POLEGADA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (378,1843,'ADAPTADOR 4 POLOS P/TOMADA RJ',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (379,1679,'BATERIA 9 VOLTS, ALCALINA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (380,641,'BENJAMIN',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (381,571,'BOCAL DE PORCELANDA PARA L�MPADA',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (382,1571,'BOCAL PARA LAMPADA DICROICA C/ RABICHO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (383,1869,'CABO DE EXTENS�O PARA TELEFONE PRETO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (385,1871,'CABO ESPIRAL DE CONEX�O P TEL  GELO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (386,1870,'CABO ESPIRAL DE CONEX�O P TEL  PRETO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (387,1847,'CABO FLEXIVEL PP. 2X2,5MM',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (388,1810,'CABO FLEXIVEL PP, 3X2,5MM, 750V',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (389,1813,'CABO FLEXIVEL 0,5MM, 3 PARES',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (390,1873,'CALHA PARA LAMPADA FLUORESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (391,1695,'CABO FLEX�VEL 1 X 1,5MM�',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (392,1117,'CHAVE DE B�IA AUTOM�TICA 30 A SUPERIOR',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (393,1693,'CHAVE MAGN�TICA QCX - 2 4CV',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (394,1726,'CONDUITE AMARELO 3/4\" POLEGADA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (395,1573,'CONECTOR PAR TRAN�ADO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (396,1233,'DISJUNTOR  - 10 A / 120V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (397,176,'DISJUNTOR  - 15 A / 120V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (398,1849,'DISJUNTOR MONO DE 16 A.',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (399,1049,'DISJUNTOR  - 20 A  BIF�SICO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (400,174,'DISJUNTOR  - 20 A / 120V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (401,1364,'DISJUNTOR  - 20 A TRIF�SICO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (402,64,'DISJUNTOR  - 25 A / 120V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (403,785,'DISJUNTOR  - 3 X 100 A - TRIF�SICO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (404,65,'DISJUNTOR  - 30 A / 120V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (405,1050,'DISJUNTOR  - 30 A TRIFASICO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (406,1021,'DISJUNTOR  - 40 A / 120V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (407,1857,'DISJUNTOR TRIFASICO DE 50 AMPER',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (408,391,'DISJUNTOR  - 60 A  - TRIF�SICO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (409,1821,'DISJUNTOR DE BAIXA TENS�O, UNIPOLAR, 32A X 127V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (410,1820,'DISJUNTOR DE BAIXA TENS�O, BIPOLAR, 25A X 380VCA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (411,1822,'DISJUNTOR DE BAIXA TENS�O, BIPOLAR, 40A X 127V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (412,1819,'DISJUNTOR DE BAIXA TENS�O,BIPOLAR,600VCA X 70A X25KA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (413,1541,'EBULIDOR',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (414,1725,'ELETRODUTO (CONDUITE AMARELO, 1/2\" POLEGADA',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (415,1724,'ELETRODUTO EM PVC PRETO, BITOLA 3/4\" POLEGADA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (416,928,'ESPELHO PARA TOMADA',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (417,1087,'FIO DE TELEFONE',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (418,1811,'FIO EL�TRICO FLEXIVEL, BITOLA 6,0MM',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (419,1814,'FIO EL�TRICO FLEXIVEL, TENS�O, 2,5MM X 750V',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (420,1712,'FIO EL�TRICO, FLEXIVEL, 4 MM',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (421,1713,'FIO EL�TRICO, R�GIDO, 4,0 MM',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (422,1727,'FITA HELLERMAN, MODELO T IBI COR PRETA',0,0,'',12,20,1,'0000-00-00');
INSERT INTO `produto`  VALUES (423,534,'FITA ISOLANTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (424,1728,'FITA ISOLANTE DE AUTA FUS�O',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (425,99,'FUS�VEL   10 A / 500 V  - GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (426,100,'FUS�VEL   35 A / 500 V  - GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (427,146,'FUS�VEL  100 A / 250V - FACA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (428,237,'FUS�VEL  20 A / 50V -GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (429,639,'FUS�VEL  200 A / 250 V - FACA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (430,139,'FUS�VEL  25 A/ 500 V - GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (431,636,'FUS�VEL  3 MAI 330   - 500V / 100 KA  FACA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (432,473,'FUS�VEL  400 A / 250V - FACA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (433,141,'FUS�VEL  50 A / 500V - GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (434,475,'FUS�VEL  500 A / 250V - FACA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (435,560,'FUS�VEL  6 A / 500V - GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (436,637,'FUS�VEL  60 A / 250V - CARTUCHO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (437,1099,'FUS�VEL  63 A / 500 V  100KA  -  FACA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (438,103,'FUS�VEL 16 A / 500 V - GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (439,472,'FUS�VEL 200 A / 250V - FACA NEGRINE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (440,640,'FUS�VEL 30 A / 250 V - LOU�A',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (441,492,'FUS�VEL 30 A / 250V - CARTUCHO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (442,101,'FUS�VEL 63 A / 500 V - GARRAFINHA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (443,1730,'INTERRUPTOR EXTERNO DE 10A',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (444,1731,'INTERRUPTOR INTERNO DE UMA SE��O COM PLACA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (445,166,'L�MPADA 100 W / 120 V  INCANDESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (446,772,'L�MPADA 100 W / 127 V REFLETORA FACHO M�DIO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (447,686,'L�MPADA 20 W  -  FLUORESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (448,178,'L�MPADA 25 W / 127 V  INCANDESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (449,35,'L�MPADA 40 W / 127 V  INCANDESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (450,431,'L�MPADA 40 W / 127V  BICUDA LEITOSA VELA GRANDE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (451,367,'L�MPADA 40 W / 127V  BICUDA LEITOSA VELA PEQUENA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (452,299,'L�MPADA 40 W FLUORESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (453,285,'L�MPADA 60 W / 120 V  MINI-SPOT',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (454,38,'L�MPADA 60 W / 127 V  INCANDESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (455,1404,'L�MPADA DICROICA 12 V / 50 W ',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (456,1718,'L�MPADA ELETR�NICA COMPACTA FLUORESCENTE DE 18W X 127 V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (457,1858,'LAMPADA FLUORESCENTE COMPACTA DE 30W ELETRONICA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (458,1386,'L�MPADA ELETR�NICA PL  24 W / 127 V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (459,1859,'LAMPADA FLUORESCENTE DE 28 W',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (460,1547,'L�MPADA FLUORECENTE 32 W',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (461,1562,'L�MPADA FLUORESCENTE TIPO ELETR�NICA BASE ',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (462,1772,'L�MPADA FLUORESCENTE TUBOLAR, 54W X 220V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (463,1574,'L�MPADA HALOGENA 200W X 130V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (464,1576,'L�MPADA HALOGENA 50W X 127V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (465,1503,'LAMPADA INCANDESCENTE 15W  X  127V LEITOSA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (466,1773,'L�MPADA LUZ MISTA, 220V POTENCIA, 160W, 27MM',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (467,1852,'LAMPADA HALOGENA  127X100W  PALITO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (468,1853,'LAMPADA HALOGENA 300X220  LAPISEIRA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (469,1483,'LUMINARIA DE EMERG�NCIA C/2 LAM. DE 8W',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (470,1732,'PINO DE TOMADA PRIME, 3 FASES',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (471,1599,'QUADRO EL�TRICO P/ IRRIGA��O NO JARDIM',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (472,1561,'RABICHO P/ L�MPADA DICR�ICA DE 120V X 50W',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (473,1560,'REATOR PARTIDA R�PIDA ELETR�NICO 2 X 40W / 110V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (474,873,'REATOR 18 W (T8) X 20 W (T10/T12) PARTIDA R�PIDA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (475,98,'REATOR 2 X 20 W  PARTIDA R�PIDA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (476,1572,'REATOR 2 X 32 W, 110V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (477,1774,'REATOR ELETRONICO, MODELO,QTPS, 2 X 54W',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (478,73,'REATOR PARTIDA R�PIDA ELETR�NICO 1 X 32W / 110V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (479,1126,'RECEPT�CULOS PARA L�MPADA FLUORESCENTE',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (480,1834,'REFLETOR P/ L�MPADA DICR�ICA HALOGENA, TIPO LAPIZEIRA,118MM',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (481,1694,'REL� C902130.2000',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (482,1812,'RELE FOTOELETRICO,TENS�O NOMINAL, 127X220V, TENS�O,50/60HZ X1200VA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (483,1729,'ROLO PASSA FIO 15M, APLIC NA PASSAGEM DE FIO NA REDE EL�TRICA',0,0,'',12,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (484,1623,'SENSOR DE CHUVA P/ JARDIM',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (485,1733,'TARRACHA DE 3/4\", PARA ABERTURA DE ROSCA EM PVC',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (486,1656,'TOMADA DE SOBREPOR , 2 PINOS CHATOS E 2 REDONDOS',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (487,742,'TOMADA F�MEA COM OU SEM ESPELHO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (488,1816,'TOMADA FEMEA DE PORCELANA, 2P, 30A X 220V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (489,1817,'TOMADA FEMEA DE PORCELANA, 3P, 30A X 127/220V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (490,1601,'TOMADA P/ TELEFONE, TIPO FEMEA',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (491,1818,'TOMADA TIPO BENJAMIM, PINO T, 6 CONTATOS REDONDO,10A X 250V',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (492,478,'TOMADA MACHO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (493,1523,'TOMADA MACHO (PLUG) 2 PINO CHATO E 1 REDONDO',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (494,1734,'TOMADA PRIME, INTERNA COM 3 FASES',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (495,1407,'TRANSFORMADOR PARA L�MPADA DICROICA 12V X 50W',0,0,'',12,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (496,1342,'LANTERNA',0,0,'',13,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (497,1854,'CONE PARA SINALIZA��O',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (498,1536,'LUVA',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (499,1537,'M�SCARA DESCART�VEL',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (500,1538,'�CULOS DE PROTE��O',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (501,1875,'CARGA PARA INSTINTOR DE INCENDIO',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (502,1881,'OMBRELONE SUSP 3,50M GIRAT.',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (503,1898,'FITA ANTIDERRAPANTE',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (504,1903,'MATERIAL DE LIMPEZA',0,0,'',14,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (505,1678,'CART�O DE MEM�RIA SD, 2GB',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (506,1662,'CABO PARA MICROFONE',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (507,747,'FITA CASSETE',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (508,1241,'FITA P/ VIDEO CASSETE ',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (509,779,'FIXADOR PROSTAR PLUS',0,0,'',15,14,1,'0000-00-00');
INSERT INTO `produto`  VALUES (510,1344,'L�MPADA PARA PROJETOR REF. FCS - 24V / 150W',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (511,1434,'L�MPADA PARA PROJETOR SHARP MOD.XCE1200 U 370W',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (512,1345,'L�MPADA PARA RETROPROJETOR REF. EHA -120V / 500W',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (513,829,'L�MPADA P/ PROJET MULTI, MOD PLC XV46, 300 W / 120 V',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (514,1144,'LASER FILM RHODIA A4',0,0,'',15,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (515,1750,'LIMPADOR DE IMPUREZA, KODAK',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (516,1497,'MICROFILME 35MM X 1000 P�S DDP NEGATIVO',0,0,'',15,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (517,1749,'MICROFILME P/ DUPLICA��O DDP, 35MM, POSITIVO',0,0,'',15,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (520,778,'REVELADOR PROSTAR PLUS',0,0,'',15,14,1,'0000-00-00');
INSERT INTO `produto`  VALUES (521,1697,'CABO DE TELEFONE COBRE ISOLADO PVC 0,5 X 0,2MM 2 PARES',0,0,'',16,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (522,1696,'CORD�O EXPIRAL MONOFONE PT (TA 102PT)',0,0,'',16,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (525,1880,'Mdf branco 2,75X1,85 2 faces',0,0,'',17,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (526,1882,'MDF  BRANCO 2,75X1,83X15MM',0,0,'',17,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (527,1883,'MDF BANCO 2,75X1,83X25MM',0,0,'',17,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (528,1201,'BISTURI DESCART�VEL',0,0,'',18,4,1,'0000-00-00');
INSERT INTO `produto`  VALUES (529,977,'PNEU',0,0,'',19,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (530,1722,'VIDRO LATERAL ESQUERDO  P/ KOMBI',0,0,'',19,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (531,1653,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 09X300MM, 45 AN�IS',0,0,'',20,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (532,1835,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 12X300MM, 45 AN�IS',0,0,'',20,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (533,1836,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 14X300MM, 45 AN�IS',0,0,'',20,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (534,1837,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 18X300MM, 45 AN�IS',0,0,'',20,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (535,1838,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 23X300MM, 45 AN�IS',0,0,'',20,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (538,1800,'ALICATE DE BICO, CABO ISOLADO, 165MM',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (539,1799,'ALICATE DE BICO, TIPO CORTE, 165MM',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (540,1569,'ALICATE DE PRESS�O 10\"',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (541,1801,'ALICATE DESCASCADOR DE FIO, 180MM',0,0,'',21,15,1,'0000-00-00');
INSERT INTO `produto`  VALUES (542,1803,'ALICATE REBITADOR DE PE�AS',0,0,'',21,15,1,'0000-00-00');
INSERT INTO `produto`  VALUES (543,1804,'ALICATE UNIVERSAL, CORTE RETO, 8\" POLEGADAS',0,0,'',21,15,1,'0000-00-00');
INSERT INTO `produto`  VALUES (544,1776,'CHAVE AJUST�VEL DE A�O, 15\" POLEGADAS',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (545,1775,'CHAVE AJUST�VEL DE A�O, 18\" POLEGADAS',0,0,'',21,15,1,'0000-00-00');
INSERT INTO `produto`  VALUES (546,1805,'CHAVE AJUST�VEL, 24\" POLEGADAS',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (547,1570,'CHAVE ALLEN 10\" X 1,3MM',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (548,1566,'CHAVE DE FENDA 3/16 X 4\"',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (549,1806,'CHAVE DE FENDA PHILIPS, 1/4\" X 4\" POLEGADAS',0,0,'',21,15,1,'0000-00-00');
INSERT INTO `produto`  VALUES (550,1778,'CHAVE DE FENDA PHILIPS, 3/8\" X 8\" POLEGADAS',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (551,1565,'CHAVE DE FENDA SIMPLES 1/4 X 5\"',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (552,1568,'CHAVE DE FENDA SIMPLES 1/4 X 5\" (PHILIPS)',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (553,1779,'CHAVE DE FENDA, 5/16\" X 6\" POLEGADAS, 150MM',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (554,1777,'CHAVE FIXA, A�O CROMADO',0,0,'',21,15,1,'0000-00-00');
INSERT INTO `produto`  VALUES (555,1797,'CHIBANCA CABO DE MADEIRA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (556,1780,'COLHER DE PEDREIRO, CABO DE MADEIRA, 8\" POLEGADAS',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (557,1781,'DISCO DE CORTE, A�O, 110MM X 20MM, CORTE � SECO',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (558,1782,'DISCO DE CORTE, SERRA VIDEA, 300MM X 30MM, 36 DENTES',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (559,1783,'ESP�TULA DE A�O INOX, CABO EM PVC, 12CM',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (560,1807,'ESP�TULA DE A�O INOX, CABO EM PVC, 6CM',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (561,1808,'ESQUADRO, TIPO R�GUA, 42CM, GRADUA��O SIMPLES 1MM, 130MM COMP.',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (562,1784,'FORM�O CROMADO, CABO DE MADEIRA, 1\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (563,1785,'FORM�O CROMADO, CABO DE MADEIRA, 1/2\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (564,1786,'FORM�O CROMADO, CABO DE MADEIRA, 1/4\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (565,1787,'FORM�O CROMADO, CABO DE MADEIRA, 3/8\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (566,1702,'L�MINA DE SERRA, A�O R�PIDO, 12\"POLEGADAS, LARG.10 MM',0,0,'',21,26,1,'0000-00-00');
INSERT INTO `produto`  VALUES (567,1788,'METRO DOBR�VEL DE MADEIRA, GRADUA��O SIMPLES, 2M',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (568,1789,'N�VEL BOLHA, CORPO DE MADEIRA, 300MM, AMPOLA 360� GRAUS',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (569,1831,'PISTOLA APLICADORA DE COLA QUENTE, 127V X 220V X 100W, PROFISSIONAL',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (570,1796,'ROLO PASSA FIO DE NYLON, 20M',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (571,1792,'TARRAXA P/ ABRIR ROSCA, 1\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (572,1793,'TARRAXA P/ ABRIR ROSCA, 1/2\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (573,1790,'TARRAXA P/ ABRIR ROSCA, 11/2\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (574,1791,'TARRAXA P/ ABRIR ROSCA, 11/4\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (575,1794,'TARRAXA P/ ABRIR ROSCA, 2\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (576,1795,'TARRAXA P/ ABRIR ROSCA, 3/4\" POLEGADA',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (577,1912,'KIT SERRA COPO ',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (578,1914,'CHAVE DE FENDA 1/8 X 4',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (579,1915,'CHAVE DE FENDA 3/16 X 6',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (580,1910,'CHAVE DE FENDA PHILIPS',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (581,1909,'TENA DE A�O 10CMX20M',0,0,'',21,29,1,'0000-00-00');
INSERT INTO `produto`  VALUES (582,'','',0,0,'',0,0,'','0000-00-00');
INSERT INTO `produto`  VALUES (583,1905,'FOLHA PARA ENCAIXE DE FOTOGRAFIA COM 9 BOLSAS P/FOTOG 6X9CM.',0,0,'FOLHA PARA ENCAIXE DE FOTOGRAFIA COM 9 BOLSAS P/FOTOG 6X9CM.',6,29,1,'2014-01-02');
INSERT INTO `produto`  VALUES (584,1925,'IDENTIFICADOR',0,0,'',1,0,1,'2014-01-03');
INSERT INTO `produto`  VALUES (585,1923,'CARTUCHO TONER SANSUNG D101 BK',0,0,'',5,0,1,'2014-01-03');
INSERT INTO `produto`  VALUES (586,1924,'CANETA ESFEROGRAFICA  COR VERDE',0,0,'',4,0,1,'2014-01-03');
INSERT INTO `produto`  VALUES (587,1922,'REFIL PARA GUARDA CHUVA',0,0,'',6,0,1,'2014-01-03');
DROP TABLE IF EXISTS relatorio_analitico;


#
# Criação da Tabela : relatorio_analitico
#

CREATE TABLE `relatorio_analitico` (
  `codgrupo` varchar(20) NOT NULL DEFAULT '',
  `saldo_anterior` float(10,2) NOT NULL DEFAULT '0.00',
  `entrada` float(10,2) NOT NULL DEFAULT '0.00',
  `saida` float(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`codgrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.03',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.07',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.11',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.16',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.17',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.19',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.20',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.21',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.22',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.23',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.25',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.26',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.27',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.28',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.29',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.30',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.33',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.35',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.39',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.41',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.42',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.47',0.00,0.00,0.00);
INSERT INTO `relatorio_analitico`  VALUES ('33.90.30.50',0.00,0.00,0.00);
DROP TABLE IF EXISTS setor;


#
# Criação da Tabela : setor
#

CREATE TABLE `setor` (
  `codsetor` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(45) DEFAULT NULL,
  `nomesetor` varchar(145) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codsetor`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `setor`  VALUES (1,'DESEN','Desenvolvedor Sistema',1,'0000-00-00');
INSERT INTO `setor`  VALUES (2,'ADM','Administrador Sistema',1,'0000-00-00');
INSERT INTO `setor`  VALUES (3,'OPE','Operador Sistema',1,'0000-00-00');
INSERT INTO `setor`  VALUES (4,'APO','Assistente T�cnico  da 

Presid�ncia(Or�ame',1,'2013-10-09');
INSERT INTO `setor`  VALUES (5,'ASCOM','Assistente T�cnico da Presid�ncia (Imprensa)',1,'0000-00-00');
INSERT INTO `setor`  VALUES (6,'ATP-L','Assistente T�cnico da Presid�ncia (Licita��es',1,'2013-10-09');
INSERT INTO `setor`  VALUES (7,'AUDIT','Auditoria Interna',1,'2013-10-09');
INSERT INTO `setor`  VALUES (8,'DDC','Divis�o de Difus�o Cultural',1,'2013-10-09');
INSERT INTO `setor`  VALUES (9,'DE','Diretoria Executiva',1,'2013-10-09');
INSERT INTO `setor`  VALUES (10,'GAB','Gabinete da Diretoria',1,'2013-10-09');
INSERT INTO `setor`  VALUES (11,'PRES','Presid�ncia',1,'2013-10-09');
INSERT INTO `setor`  VALUES (12,'PROC','Procuradoria Federal',1,'2013-10-09');
INSERT INTO `setor`  VALUES (13,'CGPA','Coordena��o Geral de Planejamento e Administr',1,'2013-10-09');
INSERT INTO `setor`  VALUES (14,'ASSCGPA','Assessoria do CGPA',1,'2013-10-09');
INSERT INTO `setor`  VALUES (15,'RH','Servi�o de Administra��o de Recursos 

Huma',1,'2013-10-09');
INSERT INTO `setor`  VALUES (16,'SASG','Servi�o de Administra��o de Servi�os Gerais',1,'2013-10-09');
INSERT INTO `setor`  VALUES (17,'SEOF','Servi�o de Execu��o Or�ament�ria, Cont�bil e ',1,'2013-10-09');
INSERT INTO `setor`  VALUES (18,'SINF','Servi�o de Inform�tica',1,'0000-00-00');
INSERT INTO `setor`  VALUES (19,'CP','Centro de Pesquisas',1,'2013-10-09');
INSERT INTO `setor`  VALUES (20,'EDIT','Servi�o de Editora��o',1,'2013-10-09');
INSERT INTO `setor`  VALUES (21,'PC','Servi�o de Pesquisa em Pol�tica Cultural',1,'2013-10-09');
INSERT INTO `setor`  VALUES (22,'SD','Servi�o de Pesquisa em Direito',1,'2013-10-09');
INSERT INTO `setor`  VALUES (23,'SF','Servi�o de Pesquisa em Filologia',1,'2013-10-09');
INSERT INTO `setor`  VALUES (24,'SH','Servi�o de Pesquisa em 

Hist�ria',1,'2013-10-09');
INSERT INTO `setor`  VALUES (25,'SR','Servi�o de Pesquisa Ruiana',1,'2013-10-09');
INSERT INTO `setor`  VALUES (26,'CMI','Centro de Mem�ria e 

Informa��o',1,'2013-10-09');
INSERT INTO `setor`  VALUES (27,'AMLB','Divis�o de Arquivo-Museu de Literatura Brasil',1,'2013-10-09');
INSERT INTO `setor`  VALUES (28,'ARQUI','Servi�o de Preverva��o Arquitet�nica',1,'2013-10-09');
INSERT INTO `setor`  VALUES (29,'BIB','Servi�o de Biblioteca BIB',1,'2013-10-09');
INSERT INTO `setor`  VALUES (30,'BIN','Servi�o de Biblioteca',1,'2013-10-09');
INSERT INTO `setor`  VALUES (32,'LP','Limpeza',2,'0000-00-00');
INSERT INTO `setor`  VALUES (33,'asasd','sadasda',2,'0000-00-00');
INSERT INTO `setor`  VALUES (34,'MU','Museu',2,'0000-00-00');
INSERT INTO `setor`  VALUES (35,'Museu','MU',1,'2014-01-02');
DROP TABLE IF EXISTS tipousuario;


#
# Criação da Tabela : tipousuario
#

CREATE TABLE `tipousuario` (
  `idtipousuario` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `tipousuario`  VALUES (1,'Desenvolvedor','');
INSERT INTO `tipousuario`  VALUES (2,'Administrador','');
INSERT INTO `tipousuario`  VALUES (3,'Operador','');
DROP TABLE IF EXISTS unidademedida;


#
# Criação da Tabela : unidademedida
#

CREATE TABLE `unidademedida` (
  `codunidademedida` int(11) NOT NULL AUTO_INCREMENT,
  `medida` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codunidademedida`),
  UNIQUE KEY `medida_UNIQUE` (`medida`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `unidademedida`  VALUES (1,'BOBINA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (2,'CA C/ 100','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (3,'CADER','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (4,'CAIXA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (5,'CARTELA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (6,'CARTU','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (7,'CENTENA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (8,'CX 12','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (9,'CX 5000','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (10,'CXA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (11,'DEZENA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (12,'FOLHA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (13,'FRASCO','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (14,'GAL�O','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (15,'JOGO','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (16,'JOGO C/ 8','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (17,'KG','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (18,'PACOTE','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (19,'PAR','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (20,'PCT 200','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (21,'PCT 250 FLS','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (22,'PCT C/10','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (23,'PCT C/100','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (24,'PTE','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (25,'RESMA','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (26,'ROLO','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (27,'TONER','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (28,'UM','',0,'0000-00-00');
INSERT INTO `unidademedida`  VALUES (29,'UNID','',0,'0000-00-00');
DROP TABLE IF EXISTS usuario;


#
# Criação da Tabela : usuario
#

CREATE TABLE `usuario` (
  `codusuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tipousuario` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `datacadastro` date DEFAULT NULL,
  `setor_codsetor` int(11) DEFAULT NULL,
  PRIMARY KEY (`codusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO `usuario`  VALUES (1,'wender','57a68c1dbe07ec8cf9d4114cc941ac9d','wendercorrea@gmail.com',1,1,'2013-10-09',2);
INSERT INTO `usuario`  VALUES (2,'administrador','4cd51e51a4225287c8bb2fa0eb4343e1','admin@funarte.gov.br',2,1,'2013-10-09',1);
INSERT INTO `usuario`  VALUES (6,'operador','4cd51e51a4225287c8bb2fa0eb4343e1','operador@gmail.com',3,1,'2013-10-31',1);
INSERT INTO `usuario`  VALUES (9,'_juanclaudio','d41d8cd98f00b204e9800998ecf8427e','_juan1206@gmail.com',1,0,'2013-11-13',1);
INSERT INTO `usuario`  VALUES (10,'vinicius','56ae96f913164224fd5a7b420b79143e','viniciuspandin@gmail.com',1,1,'2013-11-21',2);
INSERT INTO `usuario`  VALUES (11,'teste12','aa1bf4646de67fd9086cf6c79007026c','vinicius.rodrigues@funarte.gov',1,1,'2013-11-26',2);
INSERT INTO `usuario`  VALUES (13,'teste12','e99a18c428cb38d5f260853678922e03','asanskdja@asdas',1,1,'2013-11-26',2);
INSERT INTO `usuario`  VALUES (14,'martins','4cd51e51a4225287c8bb2fa0eb4343e1','martins@rb.gov.br',2,1,'2013-12-17',2);

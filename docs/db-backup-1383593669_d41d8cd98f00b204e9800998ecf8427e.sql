DROP TABLE IF EXISTS bootstrap;


#
# Cria��o da Tabela : bootstrap
#

CREATE TABLE `bootstrap` (
  `idbootstrap` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbootstrap`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
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
# Cria��o da Tabela : categoria
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `categoria`  VALUES (1,'33.90.30.03','COMBUST�VEIS E LUBRIFICANTES','','',1,'2013-10-25');
INSERT INTO `categoria`  VALUES (2,'33.90.30.07','G�NEROS DE ALIMENTA��O','','',1,'');
INSERT INTO `categoria`  VALUES (3,'33.90..30.11','MATERIAL  QU�MICO','','',1,'');
INSERT INTO `categoria`  VALUES (4,'33.90.30.16','MATERIAL DE EXPEDIENTE','','',1,'');
INSERT INTO `categoria`  VALUES (5,'33.90.30.17','MATERIAL DE PROCESSAMENTO DE DADOS','','',1,'');
INSERT INTO `categoria`  VALUES (6,'33.90.30.19','MATERIAL DE ACOND. E EMBALAGEM','','',1,'');
INSERT INTO `categoria`  VALUES (7,'33.90.30.20','MATERIAL DE CAMA E MESA','','',1,'');
INSERT INTO `categoria`  VALUES (8,'33.90.30.21','MATERIAL DE COPA E COZINHA','','',1,'');
INSERT INTO `categoria`  VALUES (9,'33.90.30.22','MATERIAL DE LIMPEZA E HIGIENIZA��O','','',1,'');
INSERT INTO `categoria`  VALUES (10,'33.90.30.23','UNIFORMES, TECIDOS E AVIAMENTOS','','',1,'');
INSERT INTO `categoria`  VALUES (11,'33.90.30.25','MATERIAL P/MANUT. DE BENS M�VEIS','','',1,'');
INSERT INTO `categoria`  VALUES (12,'33.90.30.26','MATERIAL ELETRICO','','',1,'');
INSERT INTO `categoria`  VALUES (13,'33.90.30.27','MAT. P/MANOBRA E PATRULHAMENTO','','',1,'');
INSERT INTO `categoria`  VALUES (14,'33.90.30.28','MAT. DE PROTE��O E SEGURAN�A','','',1,'');
INSERT INTO `categoria`  VALUES (15,'33.90.30.29','MATERIAL P/ AUDIO,V�DEO E FOTO','','',1,'');
INSERT INTO `categoria`  VALUES (16,'33.90.30.30','MATERIAL PARA COMUNICA��ES','','',1,'');
INSERT INTO `categoria`  VALUES (17,'33.90.30.33','MATERIAL PARA PRODU��O INDUSTRIAL','','',1,'');
INSERT INTO `categoria`  VALUES (18,'33.90.30.35','MATERIAL LABORATORIAL','','',1,'');
INSERT INTO `categoria`  VALUES (19,'33.90.30.39','MATERIAL MANUTEN��O DE VE�CULOS','','',1,'');
INSERT INTO `categoria`  VALUES (20,'33.90.30.41','MATERIAL PARA UTILIZA��O EM GR�FICA','','',1,'');
INSERT INTO `categoria`  VALUES (21,'33.90.30.42','FERRAMENTAS','','',1,'');
INSERT INTO `categoria`  VALUES (22,'33.90.30.47','MATERIAL','','',1,'');
INSERT INTO `categoria`  VALUES (23,'33.90.30.50','BANDEIRAS, FLAMULAS E INS�GNIAS','','',1,'');
DROP TABLE IF EXISTS historico;


#
# Cria��o da Tabela : historico
#

CREATE TABLE `historico` (
  `idhistorico` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_codusuario` int(11) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `acao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhistorico`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `historico`  VALUES (109,2,'ip','2013-10-10','logar');
DROP TABLE IF EXISTS opcao;


#
# Cria��o da Tabela : opcao
#

CREATE TABLE `opcao` (
  `idopcao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idopcao`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `opcao`  VALUES (0,'inativo','ativar');
INSERT INTO `opcao`  VALUES (1,'ativo','ativar');
DROP TABLE IF EXISTS pedido;


#
# Cria��o da Tabela : pedido
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `pedido`  VALUES (1,1244,'wender',1,1,'2013-11-01 13:36:27','0000-00-00',2);
DROP TABLE IF EXISTS pedidomovimentacao;


#
# Cria��o da Tabela : pedidomovimentacao
#

CREATE TABLE `pedidomovimentacao` (
  `codmovimentacao` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_idpedido` varchar(45) NOT NULL,
  `precoproduto_idprecoproduto` int(11) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `usuariosistema` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codmovimentacao`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `pedidomovimentacao`  VALUES (1,1244,1,1,0,'');
DROP TABLE IF EXISTS precoproduto;


#
# Cria��o da Tabela : precoproduto
#

CREATE TABLE `precoproduto` (
  `idprecoproduto` int(11) NOT NULL AUTO_INCREMENT,
  `produto_codproduto` int(11) NOT NULL,
  `produto_idproduto` varchar(45) NOT NULL,
  `preco` float(10,2) NOT NULL,
  `quantidade` varchar(45) NOT NULL,
  `quantidadeentrada` varchar(45) NOT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`idprecoproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `precoproduto`  VALUES (1,182,1235,10.00,0,1,1,'');
DROP TABLE IF EXISTS produto;


#
# Cria��o da Tabela : produto
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
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `produto`  VALUES (1,1387,'ANTICORROSIVO WD-40',0,0,'',1,1,1,'');
INSERT INTO `produto`  VALUES (3,1701,'OLEO LUBRIFICANTE, HIDROST�TICO E DIEL�TRICO',0,0,'',1,1,1,'');
INSERT INTO `produto`  VALUES (4,1335,'A��CAR',0,0,'',2,2,1,'');
INSERT INTO `produto`  VALUES (5,1546,'ADO�ANTE DIET�TICO 200 ML',0,0,'',2,2,1,'');
INSERT INTO `produto`  VALUES (6,1558,'AGUA MINERAL GARRAFA C/ 600 ML',0,0,'',2,2,1,'');
INSERT INTO `produto`  VALUES (7,1559,'AGUA MINERAL GARRAF�O DE 20 LTS',0,0,'',2,2,1,'');
INSERT INTO `produto`  VALUES (8,1336,'CAF�',0,0,'',2,2,1,'');
INSERT INTO `produto`  VALUES (9,1632,'AGENDA PERMANENTE, 200X132MM, PAPEL OFF SET, CAPA PVC',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (10,1555,'AGENDA TELEFONICA',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (11,426,'ALMOFADA PARA CARIMBO',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (12,1378,'APAGADOR PARA QUADRO MAGN�TICO, MEDINDO 18CM',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (13,185,'APONTADOR',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (14,1312,'ARALDITE',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (17,1485,'FITA FILME PARA FAX SHARP  UX-5 CR',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (18,212,'FITA GOMADA DUPLA FACE',0,0,'',4,4,1,'');
INSERT INTO `produto`  VALUES (19,1644,'BANDEJA DUPLA EM ACR�LICO, COR FUM�, MEDIDA 36,5CMX26,5CM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (22,1645,'BARBANTE DE ALGOD�O, 8 FIOS, CRU ROLO C/250 G.','','','',4,29,'','');
INSERT INTO `produto`  VALUES (23,39,'BARBANTE PL�STICO','','','',4,26,'','');
INSERT INTO `produto`  VALUES (24,1760,'BISTURI DESCART�VEL, N�22','','','',4,29,'','');
INSERT INTO `produto`  VALUES (25,1647,'BLOCO DE APONTAMENTO (FLIPCHART) COR BRANCA LISO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (26,1022,'BLOCO DE GUIA DE ARRECADA��O','','','',4,29,'','');
INSERT INTO `produto`  VALUES (27,1169,'BLOCO DE GUIA DE ENCAMINHAMENTO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (28,1164,'BLOCO DE GUIA DE PROTOCOLO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (29,1187,'BLOCO DE GUIA PARA FORMA��O DE PROCESSO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (30,1809,'BLOCO DE INGRESSO P/ MUSEU','','','',4,29,'','');
INSERT INTO `produto`  VALUES (31,1490,'BLOCO LEMBRETE AUTO ADESIVO AMARELO (GRANDE)','','','',4,29,'','');
INSERT INTO `produto`  VALUES (32,1670,'BLOCO LEMBRETE AUTO ADESIVO AMARELO (PEQUENO),PCT C/4 UNID.','','','',4,29,'','');
INSERT INTO `produto`  VALUES (33,807,'BLOCO LISO 1/2 OF�CIO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (34,926,'BLOCO LISO OF�CIO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (35,1609,'BLOCO MARCADOR DE P�GINAS COLORIDO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (36,812,'BLOCO PARA COMUNICA��O INTERNA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (37,7,'BLOCO PARA REQUISI��O DE MATERIAL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (38,756,'BLOCO PAUTADO  OF�CIO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (39,709,'BLOCO PAUTADO 1/2 OF�CIO, COM 100F','','','',4,29,'','');
INSERT INTO `produto`  VALUES (40,1296,'BLOCO PAUTADO 1/8','','','',4,29,'','');
INSERT INTO `produto`  VALUES (41,1191,'BLOCO REQUISI��O RECIBO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (42,214,'BOBINA PARA CALCULADORA - MED. 57 X 65','','','',4,29,'','');
INSERT INTO `produto`  VALUES (43,1374,'BOBINA PARA CALCULADORA - MED. 69 X 60','','','',4,29,'','');
INSERT INTO `produto`  VALUES (44,1047,'BOBINA PARA FAX SMILE - MED. 216 X 30','','','',4,29,'','');
INSERT INTO `produto`  VALUES (45,153,'BORRACHA TK - PLAST','','','',4,29,'','');
INSERT INTO `produto`  VALUES (46,1610,'CADERNO CAPA DURA PAUTADO 22 x 15 cm','','','',4,29,'','');
INSERT INTO `produto`  VALUES (47,1603,'CANETA CORRETIVA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (48,337,'CANETA ESFEROGR�FICA  AZUL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (49,1655,'CANETA ESFEROGR�FICA  PRETA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (50,1608,'CANETA ESFEROGR�FICA  VERMELHA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (51,249,'CANETA HIDROCOR, ESTOJO C/12 CORES','','','',4,29,'','');
INSERT INTO `produto`  VALUES (52,1261,'CANETA LUMI COLOR','','','',4,29,'','');
INSERT INTO `produto`  VALUES (53,1379,'CANETA PILOT PARA QUADRO BRANCO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (54,1720,'CANETA RETROPROGETOR ','','','',4,29,'','');
INSERT INTO `produto`  VALUES (55,1383,'CAPA PARA ENCADERNA��O','','','',4,29,'','');
INSERT INTO `produto`  VALUES (56,61,'CAPA PARA PROCESSO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (57,1525,'CARIMBOS EM GERAL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (58,77,'CART�O DA FCRB','','','',4,29,'','');
INSERT INTO `produto`  VALUES (59,1719,'CARTOLINA, COR: AMARELA, AZUL, BRANCA, ROSA E VERDE','','','',4,29,'','');
INSERT INTO `produto`  VALUES (60,1260,'CLIPS DE PL�STICO','','','',4,4,'','');
INSERT INTO `produto`  VALUES (61,485,'CLIPS MET�LICO  -   N� 2/0','','','',4,4,'','');
INSERT INTO `produto`  VALUES (62,1552,'CLIPS MET�LICO  -  N� 4/0','','','',4,4,'','');
INSERT INTO `produto`  VALUES (63,1650,'CLIPS NIQUELADO, 6/0, FORMATO PARALELO','','','',4,4,'','');
INSERT INTO `produto`  VALUES (64,1204,'COLA EM BAST�O','','','',4,29,'','');
INSERT INTO `produto`  VALUES (65,68,'COLA PL�STICA, FRASCO C/ 40 GRAMAS','','','',4,29,'','');
INSERT INTO `produto`  VALUES (66,1758,'COLA EM P�, TIPO SAL S�DICO,242N (LACRE)','','','',4,29,'','');
INSERT INTO `produto`  VALUES (67,1716,'COLCHETE LATONADO - N� 06','','','',4,4,'','');
INSERT INTO `produto`  VALUES (68,584,'COLCHETE LATONADO - N� 10','','','',4,4,'','');
INSERT INTO `produto`  VALUES (69,1717,'COLCHETE LATONADO - N� 12','','','',4,4,'','');
INSERT INTO `produto`  VALUES (70,1699,'CRACH� SEMIN�RIO PAPEL KRAFT 600G MED 14 X 10 C/ CORD�O','','','',4,29,'','');
INSERT INTO `produto`  VALUES (71,1309,'DUREPOX','','','',4,4,'','');
INSERT INTO `produto`  VALUES (72,1626,'EL�STICO PARA PROCESSO, L�TEX, COR BRANCA, PCT C/10','','','',4,29,'','');
INSERT INTO `produto`  VALUES (73,339,'EL�STICO, L�TEX, COR AMARELA','','','',4,4,'','');
INSERT INTO `produto`  VALUES (74,1208,'ENVELOPE BRANCO TIMBRADO  24 x 34','','','',4,29,'','');
INSERT INTO `produto`  VALUES (75,1127,'ENVELOPE CARTA LISO BRANCO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (76,644,'ENVELOPE CARTA TIMBRADO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (77,657,'ENVELOPE KRAFT  24 x 34','','','',4,29,'','');
INSERT INTO `produto`  VALUES (78,1484,'ENVELOPE KRAFT 18 x 25','','','',4,29,'','');
INSERT INTO `produto`  VALUES (79,645,'ENVELOPE OF�CIO TIMBRADO 24 x 34','','','',4,29,'','');
INSERT INTO `produto`  VALUES (80,656,'ENVELOPE PARDO  31 x 41','','','',4,29,'','');
INSERT INTO `produto`  VALUES (81,1554,'ENVELOPE TIMBRADO BRANCO 19,03 X 12,08 ','','','',4,29,'','');
INSERT INTO `produto`  VALUES (82,1385,'ENVELOPE TIMBRADO BRANCO SANFONADO - 24 X 34','','','',4,29,'','');
INSERT INTO `produto`  VALUES (83,1657,'ENVELOPE TIMBRADO OFICIO P/ CONVITE 22,06 X 11,03 CM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (84,1654,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 25X300MM, 45 AN�IS','','','',4,29,'','');
INSERT INTO `produto`  VALUES (85,1652,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 40X320MM, 45 AN�IS','','','',4,29,'','');
INSERT INTO `produto`  VALUES (86,1120,'ESTILETE, L�MINA LARGA 18MM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (87,1686,'ETIQUETA \"URGENTE\" MED 13 x 45 mm P/ PROCESSO','','','',4,22,'','');
INSERT INTO `produto`  VALUES (88,1714,'ETIQUETA ADESIVA, MED. 101,6 X 84,7 MM','','','',4,10,'','');
INSERT INTO `produto`  VALUES (89,1736,'ETIQUETA EM BOPP PEROLADO, MED. 50X20MM, IM: 00363740','','','',4,26,'','');
INSERT INTO `produto`  VALUES (90,1643,'ETIQUETA PARA CD, COR BRANCA, 115MM, CAIXA C/50','','','',4,29,'','');
INSERT INTO `produto`  VALUES (91,1301,'ETIQUETA PIMACO  -  REFER�NCIA  6181','','','',4,4,'','');
INSERT INTO `produto`  VALUES (92,1256,'ETIQUETA PIMACO  -  REFER�NCIA  6183','','','',4,4,'','');
INSERT INTO `produto`  VALUES (93,1288,'ETIQUETA PIMACO  -  REFER�NCIA  6287','','','',4,4,'','');
INSERT INTO `produto`  VALUES (94,1285,'ETIQUETA PIMACO  -  REFER�NCIA 6180','','','',4,4,'','');
INSERT INTO `produto`  VALUES (95,1349,'EXTRATOR DE GRAMPOS','','','',4,29,'','');
INSERT INTO `produto`  VALUES (96,617,'FICHA DE ESTOQUE DE MATERIAL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (97,219,'FICHA LISA  -  TAMANHO  3 X 5','','','',4,11,'','');
INSERT INTO `produto`  VALUES (98,31,'FICHA LISA  -  TAMANHO  5 X 8','','','',4,11,'','');
INSERT INTO `produto`  VALUES (99,388,'FICHA PAUTADA  -  TAMANHO  3 X 5','','','',4,7,'','');
INSERT INTO `produto`  VALUES (100,405,'FICHA PAUTADA  -  TAMANHO  4 X 6','','','',4,7,'','');
INSERT INTO `produto`  VALUES (101,316,'FICHA PAUTADA  -  TAMANHO  5 X 8','','','',4,7,'','');
INSERT INTO `produto`  VALUES (102,1648,'FICH�RIO DE MESA  6X9','','','',4,29,'','');
INSERT INTO `produto`  VALUES (103,501,'FITA  PARA CALCULADORA (SHARP)','','','',4,29,'','');
INSERT INTO `produto`  VALUES (104,620,'FITA ADESIVA - DUREX','','','',4,26,'','');
INSERT INTO `produto`  VALUES (105,1347,'FITA ADESIVA PL�STICA - 45 X 50','','','',4,26,'','');
INSERT INTO `produto`  VALUES (106,1606,'FITA ADESIVA PL�STICA TRANSPARENTE 25X50MM','','','',4,26,'','');
INSERT INTO `produto`  VALUES (107,1625,'FITA CORRETIVA CARACOL, 6MX5MM','','','',4,26,'','');
INSERT INTO `produto`  VALUES (108,961,'FITA CORRETIVA P/ M�QUINA IBM  MOD. 6746 - REF. 1337765','','','',4,29,'','');
INSERT INTO `produto`  VALUES (109,962,'FITA CORRIG�VEL P/ M�QUINA IBM  MOD. 6746 - REF. 1337761','','','',4,29,'','');
INSERT INTO `produto`  VALUES (110,1501,'FITA FILME P/FAX  KX-FA57A PANASSONIC','','','',4,29,'','');
INSERT INTO `produto`  VALUES (111,1399,'FITA FILME PARA FAX FO 1650  REF. 16CR','','','',4,29,'','');
INSERT INTO `produto`  VALUES (112,353,'FITA GOMADA CREPE   -  25 X 50','','','',4,26,'','');
INSERT INTO `produto`  VALUES (113,401,'FITA GOMADA CREPE   - 45 X 50','','','',4,26,'','');
INSERT INTO `produto`  VALUES (114,1851,'FITA DE SINALIZA��O 185X70CM','','','',4,26,'','');
INSERT INTO `produto`  VALUES (115,1665,'GRAFITE 0,5','','','',4,8,'','');
INSERT INTO `produto`  VALUES (116,1668,'GRAFITE 0,7','','','',4,8,'','');
INSERT INTO `produto`  VALUES (117,1669,'GRAFITE 0,9','','','',4,8,'','');
INSERT INTO `produto`  VALUES (118,1287,'GRAMPEADOR 26/6','','','',4,29,'','');
INSERT INTO `produto`  VALUES (119,1646,'GRAMPEADOR METAL, TIPO MESA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (120,1721,'GRAMPEADOR PEQUENO, PARA GRMPO 26/6 CAP. PARA 10 FLS.','','','',4,29,'','');
INSERT INTO `produto`  VALUES (121,924,'GRAMPO PARA GRAMPEADOR  26/6','','','',4,4,'','');
INSERT INTO `produto`  VALUES (122,1685,'GRAMPO PARA GRAMPEADOR 23/10 ','','','',4,9,'','');
INSERT INTO `produto`  VALUES (123,192,'GRAMPO PARA GRAMPEADOR SKREBBA','','','',4,4,'','');
INSERT INTO `produto`  VALUES (124,1060,'GRAMPO PARA PASTA CLIKTELOS - MODELO 4711','','','',4,4,'','');
INSERT INTO `produto`  VALUES (125,1198,'L�PIS BORRACHA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (126,418,'L�PIS PRETO N� 02','','','',4,29,'','');
INSERT INTO `produto`  VALUES (127,1529,'L�PIS PRETO N� 6B','','','',4,29,'','');
INSERT INTO `produto`  VALUES (128,1641,'LAPISEIRA PL�STICA 0,5MM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (129,1642,'LAPISEIRA PL�STICA 0,7MM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (130,1637,'LIVRO ATA, CAPA DURA, COR PRETA, PAUTADO, 100FL NUMERADAS','','','',4,29,'','');
INSERT INTO `produto`  VALUES (131,1638,'LIVRO DE PROTOCOLO, CAPA DURA, COR PRETA, PAUTADO, 100FL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (132,1751,'MARCADOR DE P�GINAS, COLORIDO, 25MM X 43MM C/20 FOLHAS','','','',4,29,'','');
INSERT INTO `produto`  VALUES (133,1640,'MARCADOR PARA QUADRO BRANCO, COR AZUL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (134,1639,'MARCADOR PARA QUADRO BRANCO, COR VERMELHA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (135,1765,'PAPEL ADESIVO(CONTACT), ROLO C/ 25 MTS. X 0,45CM','','','',4,26,'','');
INSERT INTO `produto`  VALUES (136,115,'PAPEL  ALMA�O  LISO','','','',4,3,'','');
INSERT INTO `produto`  VALUES (137,116,'PAPEL  ALMA�O PAUTADO','','','',4,3,'','');
INSERT INTO `produto`  VALUES (138,1666,'PAPEL ALTA ALVURA BRANCO 75G/M� , 960 x 660 MM','','','',4,23,'','');
INSERT INTO `produto`  VALUES (139,1759,'PAPEL FILME, ROLO C/ 50 M X 0,2 CM, AUTO ADESIVO','','','',4,26,'','');
INSERT INTO `produto`  VALUES (140,1748,'PAPEL MATA-BORR�O, VEGETAL, 250G/M�, 60CM COMP. 60CM LARG. BRANCO','','','',4,12,'','');
INSERT INTO `produto`  VALUES (141,1754,'PAPEL NEUTRO ALCALINO, 76CM X 112CM, COR BRANCA','','','',4,25,'','');
INSERT INTO `produto`  VALUES (142,121,'PAPEL OF�CIO TIMBRADO','','','',4,12,'','');
INSERT INTO `produto`  VALUES (143,1635,'PAPEL PARA REPOGRAFIA E IMPRESSORA LAZER A3','','','',4,25,'','');
INSERT INTO `produto`  VALUES (144,95,'PAPEL PARA REPROGRAFIA A4  - MED. 210 X 297mm','','','',4,25,'','');
INSERT INTO `produto`  VALUES (145,504,'PAPEL PARA REPROGRAFIA OF�CIO II - MED. 216 X 330mm','','','',4,25,'','');
INSERT INTO `produto`  VALUES (146,1122,'PAPEL VEGETAL - 80g','','','',4,2,'','');
INSERT INTO `produto`  VALUES (147,1103,'PAPEL VERG�','','','',4,25,'','');
INSERT INTO `produto`  VALUES (148,1506,'PAPEL VERG� 85 G/M2 - A4  210  X  297 ','','','',4,4,'','');
INSERT INTO `produto`  VALUES (149,1839,'PAPEL VERGE COR CINZA 90 GR 210X297','','','',4,4,'','');
INSERT INTO `produto`  VALUES (150,1840,'PAPEL VERGE COR BRANCA 90 GR 210X297','','','',4,4,'','');
INSERT INTO `produto`  VALUES (151,1755,'PAPEL�O RECICLADO, COR CINZA,1.OOOM X 800MM','','','',4,24,'','');
INSERT INTO `produto`  VALUES (152,1651,'PASTA CAT�LOGO COM 50 SACOS PL�STICOS, COR PRETA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (153,356,'PASTA DE CARTOLINA COM EL�STICO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (154,582,'PASTA DE CARTOLINA COM FERRAGEM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (155,1064,'PASTA INTERCALADORA MODELO TELOS 4211','','','',4,4,'','');
INSERT INTO `produto`  VALUES (156,1326,'PASTA PARA CORRESPONDENCIA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (157,1520,'PASTA PLASTICA COM CANALETA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (158,1495,'PASTA PL�STICA EM \"L\"  TRANSPARENTE','','','',4,29,'','');
INSERT INTO `produto`  VALUES (159,1496,'PASTA PL�STICA TRANSPARENTE T/OF�CIO C/ELAST.','','','',4,29,'','');
INSERT INTO `produto`  VALUES (160,1323,'PASTA POLIONDA  6cm - POLICART','','','',4,29,'','');
INSERT INTO `produto`  VALUES (161,1753,'PASTA POLIONDA TIPO ARQUIVO, 130 X 250 X 360MM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (162,1698,'PASTA SEMIN�RIO PAPEL KRAFT 420G MED 23 X 31 X 1CM ','','','',4,29,'','');
INSERT INTO `produto`  VALUES (163,1539,'PASTA SUSPENSA  PLASTICA TRANSPARENTE','','','',4,29,'','');
INSERT INTO `produto`  VALUES (164,1671,'PASTA SUSPENSA C/ SUPORTE PL�STICO, 260x260mm','','','',4,29,'','');
INSERT INTO `produto`  VALUES (165,1556,'PASTA TIPO SANFONADA DE PAPEL�O C/ 35 DIVIS�ES COR PRETA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (166,433,'PERCEVEJO DE METAL','','','',4,4,'','');
INSERT INTO `produto`  VALUES (167,1236,'PERFURADOR DE PAPEL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (168,1684,'PERFURADOR DE PAPEL DE FERRO P/ 60 FLS','','','',4,29,'','');
INSERT INTO `produto`  VALUES (169,1548,'PILHA GRANDE TIPO ALCALINA','','','',4,5,'','');
INSERT INTO `produto`  VALUES (170,1346,'PILHA PALITO AAA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (171,1272,'PILHA PEQUENA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (172,1649,'PORTA-L�PIS EM ACR�LICO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (173,1683,'PRANCHETA PORT�TIL ACR�LICA FUM� 3,34MM x 2,34MM x 2MM','','','',4,29,'','');
INSERT INTO `produto`  VALUES (174,1756,'PRENDEDOR DE PAPEL(BINDER), 32MM, PARA 100FLS.','','','',4,29,'','');
INSERT INTO `produto`  VALUES (175,340,'REGISTRADOR  TAMANHO CARTA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (176,341,'REGISTRADOR  TAMANHO OF�CIO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (177,502,'R�GUA PL�STICA  - 30 cm','','','',4,29,'','');
INSERT INTO `produto`  VALUES (178,1846,'ROLETE ENTINTADO  TINTA PRETA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (179,1348,'SUPORTE PARA TEXTO','','','',4,29,'','');
INSERT INTO `produto`  VALUES (180,669,'TAL�O NOTA DE DISTRIBUI��O PROMOCIONAL','','','',4,29,'','');
INSERT INTO `produto`  VALUES (181,438,'TAL�O NOTA DE VENDA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (182,1235,'TESOURA','','','',4,29,'','');
INSERT INTO `produto`  VALUES (183,1908,'ADESIVO DE SIILICONE','','','',4,29,'','');
INSERT INTO `produto`  VALUES (184,1913,'BATERIA ALCALINA DE 9VTS.','','','',4,29,'','');
INSERT INTO `produto`  VALUES (185,1917,'PORTA CRACH� RIGIDO VERTICAL VERDE','','','',4,29,'','');
INSERT INTO `produto`  VALUES (186,1921,'CORD�O PARA CRACHA EM POLIESTER','','','',4,29,'','');
INSERT INTO `produto`  VALUES (187,1428,'BASE PARA MOUSE','','','',5,29,'','');
INSERT INTO `produto`  VALUES (188,1494,'BATERIA PARA PC TIPO  LITHIUM','','','',5,29,'','');
INSERT INTO `produto`  VALUES (189,1533,'CABO  DE REDE P/ COMPUTADOR FURUKAWA','','','',5,4,'','');
INSERT INTO `produto`  VALUES (190,1872,'CAR. P/ IMP EPSON STYLUS COR MAGENTA T0473','','','',5,6,'','');
INSERT INTO `produto`  VALUES (191,1593,'CONECTOR RJ 45 MACHO','','','',5,28,'','');
INSERT INTO `produto`  VALUES (192,1587,'CAR. P/ IMP EPSON STYLUS COR AMARELA T0474','','','',5,6,'','');
INSERT INTO `produto`  VALUES (193,1589,'CAR. P/ IMP EPSON STYLUS COR PRETA T0461','','','',5,6,'','');
INSERT INTO `produto`  VALUES (194,1588,'CAR. P/ IMP EPSON STYLUS COR CIANO T0472','','','',5,6,'','');
INSERT INTO `produto`  VALUES (195,1592,'CAR. P/ IMP HP C6578AL (78) COLORIDO ','','','',5,6,'','');
INSERT INTO `produto`  VALUES (196,1544,'CAR. P/ IMP HP C8727AL (27) PRETA','','','',5,6,'','');
INSERT INTO `produto`  VALUES (197,1545,'CAR. P/ IMP HP C8728AL (28) COLORIDO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (198,1579,'CAR. P/ IMP HP C6648BL (29) PRETA','','','',5,6,'','');
INSERT INTO `produto`  VALUES (199,1580,'CAR. P/ IMP HP C6650BL (45) PRETA','','','',5,6,'','');
INSERT INTO `produto`  VALUES (200,1489,'CAR. P/ IMP HP C6625 COLORIDO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (201,1581,'CAR. P/ IMP HP C8799BL (49) COLORIDO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (202,1584,'CAR. P/ IMP HP C9363WL (97) COLORIDO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (203,1286,'CAR. P/ IMP OU FAX C51626A (26) PRETO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (204,1441,'CAR. P/ IMP HP C1823T COLORIDO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (205,1577,'CAR. P/ IMP HP C8767WL (96) PRETO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (206,1380,'CAR. P/ IMP HP C51641AL (41) COLORIDO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (207,1258,'CAR. P/ IMP HP 5515 ','','','',5,6,'','');
INSERT INTO `produto`  VALUES (208,1741,'CAR. P/ IMP HP Q; 7581 A, COR CYAN','','','',5,6,'','');
INSERT INTO `produto`  VALUES (209,1742,'CAR. P/ IMP HP Q; 7582 A, COR AMARELO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (210,1743,'CAR. P/ IMP HP Q; 7583 A, COR MAGENTA','','','',5,6,'','');
INSERT INTO `produto`  VALUES (211,1744,'CAR. P/ IMP HP Q; 6470 A, COR PRETO','','','',5,6,'','');
INSERT INTO `produto`  VALUES (212,1590,'CAR. P/ IMP LEXMARK REF 10N0016 PRETO (16)','','','',5,6,'','');
INSERT INTO `produto`  VALUES (213,1595,'CAR. P/ IMP LEXMARK REF 10N0016 COLORIDO (26)','','','',5,6,'','');
INSERT INTO `produto`  VALUES (214,1578,'CD RW 700MB 80 MIN TIPO REGRAV�VEL (CD-RW)','','','',5,29,'','');
INSERT INTO `produto`  VALUES (215,1426,'CD ROM GRAV�VEL','','','',5,29,'','');
INSERT INTO `produto`  VALUES (216,1212,'DISQUETTE 3.1/2\"  HD','','','',5,4,'','');
INSERT INTO `produto`  VALUES (217,1633,'DVD-R GRAV�VEL','','','',5,29,'','');
INSERT INTO `produto`  VALUES (218,1634,'DVD-RW REGRAV�VEL','','','',5,29,'','');
INSERT INTO `produto`  VALUES (219,1598,'ENVE P/ ACONDICIONAMENTO DE CD S COM ABAS 12,5CM X 12,5CM','','','',5,29,'','');
INSERT INTO `produto`  VALUES (220,1845,'ESTOJO PARA ACONDICIONAMENTO DE CD','','','',5,29,'','');
INSERT INTO `produto`  VALUES (221,1462,'FITA PARA IMPRESSORA  EPSON FX 2180 SO 15086','','','',5,29,'','');
INSERT INTO `produto`  VALUES (222,1488,'FITA PARA IMPRESSORA EPSON FX 1180','','','',5,29,'','');
INSERT INTO `produto`  VALUES (223,1586,'FITA PARA IMPRESSORA MAT. NYLON COR PRETA 8MMX1,80M','','','',5,4,'','');
INSERT INTO `produto`  VALUES (224,968,'FORMUL�RIO CONT. COM 01 VIA E 80 COLUNAS - COD. 74','','','',5,4,'','');
INSERT INTO `produto`  VALUES (225,804,'FORMUL�RIO CONT�NUO COM 02 VIAS E 132 COLUNAS','','','',5,4,'','');
INSERT INTO `produto`  VALUES (226,1597,'ISOLANTE T�RMICO P/ COMPUTADOR TIPO SERINGA','','','',5,4,'','');
INSERT INTO `produto`  VALUES (227,1142,'MOUSE �PTICO PS2','','','',5,29,'','');
INSERT INTO `produto`  VALUES (228,1745,'MOUSE �PTICO USB','','','',5,29,'','');
INSERT INTO `produto`  VALUES (229,1864,'PEN DRIVE DE 8GB','','','',5,29,'','');
INSERT INTO `produto`  VALUES (230,1752,'PLACA M�E INTEL, MOD. DG41RQ','','','',5,29,'','');
INSERT INTO `produto`  VALUES (231,1735,'RIBON EM RESINA, COR PRETO, MED. 110 X 74 M, IM: 000150541','','','',5,26,'','');
INSERT INTO `produto`  VALUES (232,1194,'TECLADO PARA COMPUTADOR','','','',5,29,'','');
INSERT INTO `produto`  VALUES (233,1357,'TELA ANTI-REFLEXIVA PARA MONITOR','','','',5,29,'','');
INSERT INTO `produto`  VALUES (234,1740,'TONER P/ IMP LAZER  JET CB435A PRETO/ -SUBST.CE285A','','','',5,27,'','');
INSERT INTO `produto`  VALUES (235,1266,'TONER P/ IMP LASER JET C3903A ','','','',5,27,'','');
INSERT INTO `produto`  VALUES (236,1366,'TONER P/ IMP LASER JET (IIIP) 92275-A ','','','',5,27,'','');
INSERT INTO `produto`  VALUES (237,1439,'TONER P/ IMP LASER JET  C4096A PRETO','','','',5,27,'','');
INSERT INTO `produto`  VALUES (238,1442,'TONER P/ IMP LASER JET C41 (27X) PRETO','','','',5,27,'','');
INSERT INTO `produto`  VALUES (239,1551,'TONER P/ IMP LASER JET 2300 Q2610A (10A) PRETO','','','',5,27,'','');
INSERT INTO `produto`  VALUES (240,1689,'TONER P/ IMP LASERJET Q6000A, IMP 1600, 2600, 2605 PRETA ','','','',5,27,'','');
INSERT INTO `produto`  VALUES (241,1690,'TONER P/ IMP LASERJET Q6001A, IMP 1600, 2600, 2605 AZUL','','','',5,27,'','');
INSERT INTO `produto`  VALUES (242,1691,'TONER P/ IMP LASERJET Q6002A, IMP 1600, 2600, 2605 AMARELO','','','',5,27,'','');
INSERT INTO `produto`  VALUES (243,1692,'TONER P/ IMP LASERJET Q6003A, IMP 1600, 2600, 2605 VERMELHO','','','',5,27,'','');
INSERT INTO `produto`  VALUES (244,1764,'TONER P/ IMP LAZERJET CB436A, MOD. M112O,M1522 E P1505','','','',5,29,'','');
INSERT INTO `produto`  VALUES (245,1766,'TONER P/ IMP LAZERJET, CC530A','','','',5,29,'','');
INSERT INTO `produto`  VALUES (246,1767,'TONER P/ IMP LAZERJET, CC531A','','','',5,29,'','');
INSERT INTO `produto`  VALUES (247,1768,'TONER P/ IMP LAZERJET, CC532A','','','',5,29,'','');
INSERT INTO `produto`  VALUES (248,1769,'TONER P/ IMP LAZERJET, CC533A','','','',5,29,'','');
INSERT INTO `produto`  VALUES (249,1916,'CAMERA DE VIDEO CONFERENCIA','','','',5,29,'','');
INSERT INTO `produto`  VALUES (250,1919,'CART�O DE PROXIMIDADE CONTROLE DE ACESSO','','','',5,29,'','');
INSERT INTO `produto`  VALUES (251,1922,'FITA MAGICARD  MA300YMCKO  DYE FILM.','','','',5,29,'','');
INSERT INTO `produto`  VALUES (252,1658,'BOBINA DE PL�STICO BOLHA ','','','',6,1,'','');
INSERT INTO `produto`  VALUES (253,345,'BOBINA DE PAPEL KRAFT ','','','',6,29,'','');
INSERT INTO `produto`  VALUES (254,1757,'CADAR�O, 100% ALGOD�O, ROLO C/ 50M','','','',6,29,'','');
INSERT INTO `produto`  VALUES (255,1613,'CAIXA BANK BOX 340 mm X 140 X 240 (pequena) ','','','',6,29,'','');
INSERT INTO `produto`  VALUES (256,1612,'CAIXA BANK BOX 380 X 180 X 290 (grande)','','','',6,29,'','');
INSERT INTO `produto`  VALUES (257,1738,'CAIXA DE ARQUIVO, COM BASE DE 40 X 30 X 6 CM, TAMPA, 41 X 31 X 6  CX 2436','','','',6,29,'','');
INSERT INTO `produto`  VALUES (258,1119,'CAIXA DE PAPEL�O ONDULADO 90 cm X 50 cm x 40 alt.','','','',6,29,'','');
INSERT INTO `produto`  VALUES (259,1617,'CAIXA DE PAPEL�O PLASTIFICADO (PORTIF�LIO) 400mm X 300mm','','','',6,29,'','');
INSERT INTO `produto`  VALUES (260,1618,'CAIXA TELESC�PICA 34,5 X 23,5 X 6 CXT/1','','','',6,29,'','');
INSERT INTO `produto`  VALUES (261,1619,'CAIXA TELESC�PICA 40 X 30 X 6 CXT/2','','','',6,29,'','');
INSERT INTO `produto`  VALUES (262,1620,'CAIXA TELESC�PICA 44 X 34 X 8','','','',6,29,'','');
INSERT INTO `produto`  VALUES (263,1672,'CAIXA TELESC�PICA 44 X 34 X 10,5','','','',6,29,'','');
INSERT INTO `produto`  VALUES (264,1621,'CAIXA TELESC�PICA 57 X 43 X 5','','','',6,29,'','');
INSERT INTO `produto`  VALUES (265,1674,'EMBALAGEM PL�STICA TRANSPARENTE C/ TAMPA FIXA 12 X 12 X 43CM','','','',6,29,'','');
INSERT INTO `produto`  VALUES (266,1675,'EMBALAGEM PL�STICA TRANSPARENTE COM TAMPA FIXA20 X 15 X 45 CM','','','',6,29,'','');
INSERT INTO `produto`  VALUES (267,1615,'FOLHA PARA ENCAIXE DE FOTOGRAFIA, 320 X 45MM (2 FOTOS 13 X 18)','','','',6,29,'','');
INSERT INTO `produto`  VALUES (268,1616,'FOLHA PARA ENCAIXE DE FOTOGRAFIA, 320 X 245MM (4 FOTOS 10 X 15)','','','',6,29,'','');
INSERT INTO `produto`  VALUES (269,1614,'FOLHA PARA DE ENCAIXE DE FOTOGRAFIA, 320 X 245MM (1 FOTO 20 X 25)','','','',6,29,'','');
INSERT INTO `produto`  VALUES (270,1687,'PALLET MOD 400 P1 C/ SAPATAS, 16cm x 1,00cm x 120cm','','','',6,29,'','');
INSERT INTO `produto`  VALUES (271,1611,'PAPEL NEUTRO 70 X 100 CM','','','',6,21,'','');
INSERT INTO `produto`  VALUES (272,1676,'PAPEL FILME EM PVC','','','',6,26,'','');
INSERT INTO `produto`  VALUES (273,1739,'PAPEL OFFSET, NEUTRO, BRANCO, DE  76 X 12 CM, GRAMATURA, 63G/M2','','','',6,25,'','');
INSERT INTO `produto`  VALUES (274,1677,'PAPEL SEDA 70 CM X 50 ','','','',6,12,'','');
INSERT INTO `produto`  VALUES (275,1622,'PASTAS SUSPENSAS ESPECIAL ','','','',6,29,'','');
INSERT INTO `produto`  VALUES (276,1762,'REFIL DE EMBALADOR DE GUARDA-CHUVA, CXA.C/1000','','','',6,10,'','');
INSERT INTO `produto`  VALUES (277,1213,'SACOLA PL�STICA PARA EMBALAGEM','','','',6,29,'','');
INSERT INTO `produto`  VALUES (278,1902,'SACOLA DE COMPRAS EM BAMBOO','','','',6,29,'','');
INSERT INTO `produto`  VALUES (279,1894,'CAIXA PARA PRESERVA��O DE DOC.37,5X2,5X1305CM.','','','',6,29,'','');
INSERT INTO `produto`  VALUES (280,1918,'FITILHO PLASTICO','','','',6,29,'','');
INSERT INTO `produto`  VALUES (283,1184,'GUARDANAPO DE PAPEL TAMANHO 24 X 24','','','',7,18,'','');
INSERT INTO `produto`  VALUES (284,1185,'GUARDANAPO DE PAPEL TAMANHO 34 X 34','','','',7,18,'','');
INSERT INTO `produto`  VALUES (285,1823,'',0,0,'',0,0,1,'');
INSERT INTO `produto`  VALUES (286,1824,'A�UCAREIRO EM A�O INOX. MED. 500ML','','','',8,29,'','');
INSERT INTO `produto`  VALUES (287,1825,'BULE EM A�O INOX. BICO CURTO, MED. O1 LITRO','','','',8,29,'','');
INSERT INTO `produto`  VALUES (288,1826,'COLHER EM A�O INOX. PEQUENA, PARA CAF�, MED. 1,50MM DE ESPESSURA','','','',8,29,'','');
INSERT INTO `produto`  VALUES (289,1827,'COPO DE VIDRO 300ML, BOCA 65MM DE DIANMETRO,140 ALT. INCOLOR','','','',8,29,'','');
INSERT INTO `produto`  VALUES (290,1178,'COPO PLASTICO PARA AGUA DE 200 ML','','','',8,7,'','');
INSERT INTO `produto`  VALUES (291,1182,'COPO PLASTICO PARA CAF�','','','',8,7,'','');
INSERT INTO `produto`  VALUES (292,1487,'GARRAFA TERMICA','','','',8,29,'','');
INSERT INTO `produto`  VALUES (294,1828,'JARRA EM A�O INOX, TAMPA C/ APARADOR DE GELO, MED. 02 LTS','','','',8,29,'','');
INSERT INTO `produto`  VALUES (295,1770,'PORTA COPO EM A�O INOXID�VEL','','','',8,29,'','');
INSERT INTO `produto`  VALUES (296,1829,'PORTA-COPO EM A�O INOX, MED. 09 CM DE DIANMETRO,TIPO PIRES','','','',8,29,'','');
INSERT INTO `produto`  VALUES (297,1830,'X�CARA EM PORCELANA BRANCA, C/PIRES, MED. 80ML','','','',8,29,'','');
INSERT INTO `produto`  VALUES (298,1900,'CANECA TERMICA','','','',8,29,'','');
INSERT INTO `produto`  VALUES (299,1899,'COPO CANECA TRANSPARENTE','','','',8,29,'','');
INSERT INTO `produto`  VALUES (300,1901,'COPO DE PAPEL RECICLAVEL','','','',8,29,'','');
INSERT INTO `produto`  VALUES (301,1624,'�LCOOL ISOPROP�LICO','','','',9,29,'','');
INSERT INTO `produto`  VALUES (302,1111,'CAPACHO','','','',9,29,'','');
INSERT INTO `produto`  VALUES (303,1177,'CESTA PARA LIXO','','','',9,29,'','');
INSERT INTO `produto`  VALUES (304,566,'ESTOPA','','','',9,18,'','');
INSERT INTO `produto`  VALUES (305,1715,'SABONETEIRA DE VIDRO, P/ SABONETE L�QUIDO, CAPC. 400ML C/SPTE.','','','',9,29,'','');
INSERT INTO `produto`  VALUES (306,1911,'ASSENTO DE VASO SANIT�RIO','','','',9,29,'','');
INSERT INTO `produto`  VALUES (307,398,'BOTINA','','','',10,19,'','');
INSERT INTO `produto`  VALUES (308,201,'CAL�A JEANS','','','',10,29,'','');
INSERT INTO `produto`  VALUES (309,231,'CAMISA','','','',10,29,'','');
INSERT INTO `produto`  VALUES (310,1303,'CINTO','','','',10,29,'','');
INSERT INTO `produto`  VALUES (312,1304,'',0,0,'',0,0,1,'');
INSERT INTO `produto`  VALUES (313,601,'JALECO','','','',10,29,'','');
INSERT INTO `produto`  VALUES (314,1302,'MEIA','','','',10,19,'','');
INSERT INTO `produto`  VALUES (315,197,'SAPATO','','','',10,19,'','');
INSERT INTO `produto`  VALUES (316,1664,'BROCA DE V�DEA','','','',24,16,'','');
INSERT INTO `produto`  VALUES (317,1832,'COLA PARA APLICA��O COM PISTOLA( quente), TIPO, HOT-MELT','','','',24,29,'','');
INSERT INTO `produto`  VALUES (318,1627,'CANTONEIRA DE FERRO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (319,1629,'COMPENSADO DE CEDRO 10MM','','','',24,29,'','');
INSERT INTO `produto`  VALUES (320,1628,'COMPENSADO DE CEDRO 15MM','','','',24,29,'','');
INSERT INTO `produto`  VALUES (321,1706,'CONEX�O MET�LICA, GALVANIZADA, MED. 3\" POLEGADAS','','','',24,29,'','');
INSERT INTO `produto`  VALUES (322,1855,'CORTINA BREEZE  E BREEZE PARA 55 JANELAS','','','',24,29,'','');
INSERT INTO `produto`  VALUES (323,1680,'FECHADURA','','','',24,29,'','');
INSERT INTO `produto`  VALUES (324,1575,'FITA TEFLON','','','',24,29,'','');
INSERT INTO `produto`  VALUES (325,1708,'JOELHO DE PVC MED. 40 MM X 45 GRAUS','','','',24,29,'','');
INSERT INTO `produto`  VALUES (326,1746,'LIXA DE FERRO , PACOTE COM 50 FOLHAS','','','',24,29,'','');
INSERT INTO `produto`  VALUES (327,1747,'MASSA PVA 18 LTS.','','','',24,29,'','');
INSERT INTO `produto`  VALUES (328,1065,'MATERIAL PARA OBRAS E INSTALA��ES','','','',24,29,'','');
INSERT INTO `produto`  VALUES (329,1661,'MATERIAL PARA MANUTEN��O DO JARDIM ','','','',24,29,'','');
INSERT INTO `produto`  VALUES (330,1844,'MOLA AEREA HIDRAULICA F-2 ','','','',24,29,'','');
INSERT INTO `produto`  VALUES (331,1761,'PARFUSO ZINCADO, FENDA SIMPLES, MED. 4,8 X 65 CM','','','',24,29,'','');
INSERT INTO `produto`  VALUES (332,1798,'PENEIRA DE A�O','','','',24,29,'','');
INSERT INTO `produto`  VALUES (333,1631,'PERNA DE TR�S ','','','',24,29,'','');
INSERT INTO `produto`  VALUES (334,1709,'PINCEL PARA PINTURA PREDIAL, REF. 821 - 06','','','',24,29,'','');
INSERT INTO `produto`  VALUES (335,1710,'RABICHO PARA LAVAT�RIO EM PVC, MED. 40 CM DE COMP.','','','',24,29,'','');
INSERT INTO `produto`  VALUES (336,1707,'REGISTRO DE PRESS�O, A�O INOXID�VEL, MED.3/4\" DE POLEGADAS','','','',24,29,'','');
INSERT INTO `produto`  VALUES (337,1688,'REPARO DE V�LVULA DESCART�VEL BITOLA 1� 1/2 X 1� 1/4 ','','','',24,29,'','');
INSERT INTO `produto`  VALUES (338,1763,'RIPA DE MADEIRA APARELHADA, 1,50M X 0,7CM X 0,3 CM','','','',24,29,'','');
INSERT INTO `produto`  VALUES (339,1711,'ROLO P/PINTURA PREDIAL, L� DE CARNEIRO, MED. 30 CM','','','',24,29,'','');
INSERT INTO `produto`  VALUES (340,1705,'SIF�O MET�LICO, MED. 11/2\" x 11/4\" POLEGADAS','','','',24,29,'','');
INSERT INTO `produto`  VALUES (341,1630,'T�BUA DE PINHO 3M X 30CM','','','',24,29,'','');
INSERT INTO `produto`  VALUES (342,1771,'TAMPA P/ SANIT�RIO EM PL�STICO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (343,1663,'TINTA PARA PINTURA','','','',24,29,'','');
INSERT INTO `produto`  VALUES (344,1703,'TRINCHA, PELO DE ESQUILO, MED.1/2\" POLEGADAS, N� 02','','','',24,29,'','');
INSERT INTO `produto`  VALUES (345,1704,'TRINCHA, PELO DE ESQUILO, MED.1/2\" POLEGADAS, N� 03','','','',24,29,'','');
INSERT INTO `produto`  VALUES (346,1884,'PAINEL DE VIDRO DUPLO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (347,1885,'PAINEL CEGO  VIDRO DUPLO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (348,1886,'MOD P1 PORTA CEGA','','','',24,29,'','');
INSERT INTO `produto`  VALUES (349,1887,'PERSIANA DE ALUMINIO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (350,1888,'RODAPE DE ALUMINIO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (351,1889,'MOD P4 PORTA DUPLA','','','',24,29,'','');
INSERT INTO `produto`  VALUES (352,1890,'PERSIANA DE ALUMINIO HORIZONTAL','','','',24,29,'','');
INSERT INTO `produto`  VALUES (353,1891,'PAINEL CEGO COM BANDEIRA CEGA','','','',24,29,'','');
INSERT INTO `produto`  VALUES (354,1892,'RODAPE DE ALUMINIO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (355,1893,'MOD PAINEL DE VIDRO DUPLO PISO TETO','','','',24,29,'','');
INSERT INTO `produto`  VALUES (356,1895,'COLA PVA EXTRA','','','',24,29,'','');
INSERT INTO `produto`  VALUES (357,1636,'COLUNA DEIONIZADORA 100 L/H, REFIL DE R�DIO','','','',11,29,'','');
INSERT INTO `produto`  VALUES (358,1860,'CONTADO TRIFASICO 220V 32A LC1D32 ','','','',11,29,'','');
INSERT INTO `produto`  VALUES (359,1865,'CONTATOR TRIF�SICO DE 18A','','','',11,29,'','');
INSERT INTO `produto`  VALUES (360,1866,'CONTATOR TRIFASICO DE 9 A DE','','','',11,29,'','');
INSERT INTO `produto`  VALUES (361,1867,'CONTATOR TRIFASICO DE 9A  DE 5 A 8','','','',11,29,'','');
INSERT INTO `produto`  VALUES (362,1868,'CONTATOR TRIFASICO DE 38A','','','',11,29,'','');
INSERT INTO `produto`  VALUES (363,1468,'COMPRESSOR HERM�TICO, 5TR','','','',11,29,'','');
INSERT INTO `produto`  VALUES (364,1861,'COMPRESSOR HERMETICO DE 7,5 TR 220V','','','',11,29,'','');
INSERT INTO `produto`  VALUES (365,1863,'COMPRESSOR DE 10 TR 220V SCROOL','','','',11,29,'','');
INSERT INTO `produto`  VALUES (366,1700,'FILTRO P/ AR CONDICIONADO CENTRAL, MOD. OXPA103DA32POOBB','','','',11,29,'','');
INSERT INTO `produto`  VALUES (367,1737,'FILTRO P/ AR CONDICIONADO CENTRAL, CLASSE G3, F. SINT.697X600X25MM','','','',11,29,'','');
INSERT INTO `produto`  VALUES (368,1850,'FILTRO PARA AR CONDICIONADO 439X665X24MM','','','',11,29,'','');
INSERT INTO `produto`  VALUES (369,1327,'MATERIAL P/MANUTENC�O DE BENS MOVEIS','','','',11,29,'','');
INSERT INTO `produto`  VALUES (370,1862,'TERMOSTATO  ELETRONICO 10 E15 TR 220/380V','','','',11,29,'','');
INSERT INTO `produto`  VALUES (371,1833,'VENTILADOR P/ DESUMIDIFICADOR DE AR, MOD. E11 NY, 115/220V','','','',11,29,'','');
INSERT INTO `produto`  VALUES (372,1879,'FILTRO AEROGLASS PD-P 770X770X25MM','','','',11,29,'','');
INSERT INTO `produto`  VALUES (373,1878,'FILTRO AEROGLASS 760X600X25MM','','','',11,29,'','');
INSERT INTO `produto`  VALUES (374,1877,'FILTRO AEROGALASS 609X406X50MM0','','','',11,29,'','');
INSERT INTO `produto`  VALUES (375,1876,'FILTRO 300X305X45MM','','','',11,29,'','');
INSERT INTO `produto`  VALUES (376,1920,'PRATELEIRA','','','',11,29,'','');
INSERT INTO `produto`  VALUES (377,1723,'ABRA�ADEIRA DE METAL 3/4\" POLEGADA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (378,1843,'ADAPTADOR 4 POLOS P/TOMADA RJ','','','',12,29,'','');
INSERT INTO `produto`  VALUES (379,1679,'BATERIA 9 VOLTS, ALCALINA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (380,641,'BENJAMIN','','','',12,29,'','');
INSERT INTO `produto`  VALUES (381,571,'BOCAL DE PORCELANDA PARA L�MPADA','','','',12,26,'','');
INSERT INTO `produto`  VALUES (382,1571,'BOCAL PARA LAMPADA DICROICA C/ RABICHO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (383,1869,'CABO DE EXTENS�O PARA TELEFONE PRETO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (385,1871,'CABO ESPIRAL DE CONEX�O P TEL  GELO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (386,1870,'CABO ESPIRAL DE CONEX�O P TEL  PRETO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (387,1847,'CABO FLEXIVEL PP. 2X2,5MM','','','',12,26,'','');
INSERT INTO `produto`  VALUES (388,1810,'CABO FLEXIVEL PP, 3X2,5MM, 750V','','','',12,26,'','');
INSERT INTO `produto`  VALUES (389,1813,'CABO FLEXIVEL 0,5MM, 3 PARES','','','',12,26,'','');
INSERT INTO `produto`  VALUES (390,1873,'CALHA PARA LAMPADA FLUORESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (391,1695,'CABO FLEX�VEL 1 X 1,5MM�','','','',12,26,'','');
INSERT INTO `produto`  VALUES (392,1117,'CHAVE DE B�IA AUTOM�TICA 30 A SUPERIOR','','','',12,29,'','');
INSERT INTO `produto`  VALUES (393,1693,'CHAVE MAGN�TICA QCX - 2 4CV','','','',12,29,'','');
INSERT INTO `produto`  VALUES (394,1726,'CONDUITE AMARELO 3/4\" POLEGADA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (395,1573,'CONECTOR PAR TRAN�ADO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (396,1233,'DISJUNTOR  - 10 A / 120V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (397,176,'DISJUNTOR  - 15 A / 120V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (398,1849,'DISJUNTOR MONO DE 16 A.','','','',12,29,'','');
INSERT INTO `produto`  VALUES (399,1049,'DISJUNTOR  - 20 A  BIF�SICO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (400,174,'DISJUNTOR  - 20 A / 120V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (401,1364,'DISJUNTOR  - 20 A TRIF�SICO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (402,64,'DISJUNTOR  - 25 A / 120V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (403,785,'DISJUNTOR  - 3 X 100 A - TRIF�SICO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (404,65,'DISJUNTOR  - 30 A / 120V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (405,1050,'DISJUNTOR  - 30 A TRIFASICO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (406,1021,'DISJUNTOR  - 40 A / 120V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (407,1857,'DISJUNTOR TRIFASICO DE 50 AMPER','','','',12,29,'','');
INSERT INTO `produto`  VALUES (408,391,'DISJUNTOR  - 60 A  - TRIF�SICO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (409,1821,'DISJUNTOR DE BAIXA TENS�O, UNIPOLAR, 32A X 127V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (410,1820,'DISJUNTOR DE BAIXA TENS�O, BIPOLAR, 25A X 380VCA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (411,1822,'DISJUNTOR DE BAIXA TENS�O, BIPOLAR, 40A X 127V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (412,1819,'DISJUNTOR DE BAIXA TENS�O,BIPOLAR,600VCA X 70A X25KA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (413,1541,'EBULIDOR','','','',12,26,'','');
INSERT INTO `produto`  VALUES (414,1725,'ELETRODUTO (CONDUITE AMARELO, 1/2\" POLEGADA','','','',12,26,'','');
INSERT INTO `produto`  VALUES (415,1724,'ELETRODUTO EM PVC PRETO, BITOLA 3/4\" POLEGADA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (416,928,'ESPELHO PARA TOMADA','','','',12,26,'','');
INSERT INTO `produto`  VALUES (417,1087,'FIO DE TELEFONE','','','',12,26,'','');
INSERT INTO `produto`  VALUES (418,1811,'FIO EL�TRICO FLEXIVEL, BITOLA 6,0MM','','','',12,26,'','');
INSERT INTO `produto`  VALUES (419,1814,'FIO EL�TRICO FLEXIVEL, TENS�O, 2,5MM X 750V','','','',12,26,'','');
INSERT INTO `produto`  VALUES (420,1712,'FIO EL�TRICO, FLEXIVEL, 4 MM','','','',12,26,'','');
INSERT INTO `produto`  VALUES (421,1713,'FIO EL�TRICO, R�GIDO, 4,0 MM','','','',12,29,'','');
INSERT INTO `produto`  VALUES (422,1727,'FITA HELLERMAN, MODELO T IBI COR PRETA','','','',12,20,'','');
INSERT INTO `produto`  VALUES (423,534,'FITA ISOLANTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (424,1728,'FITA ISOLANTE DE AUTA FUS�O','','','',12,26,'','');
INSERT INTO `produto`  VALUES (425,99,'FUS�VEL   10 A / 500 V  - GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (426,100,'FUS�VEL   35 A / 500 V  - GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (427,146,'FUS�VEL  100 A / 250V - FACA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (428,237,'FUS�VEL  20 A / 50V -GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (429,639,'FUS�VEL  200 A / 250 V - FACA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (430,139,'FUS�VEL  25 A/ 500 V - GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (431,636,'FUS�VEL  3 MAI 330   - 500V / 100 KA  FACA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (432,473,'FUS�VEL  400 A / 250V - FACA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (433,141,'FUS�VEL  50 A / 500V - GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (434,475,'FUS�VEL  500 A / 250V - FACA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (435,560,'FUS�VEL  6 A / 500V - GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (436,637,'FUS�VEL  60 A / 250V - CARTUCHO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (437,1099,'FUS�VEL  63 A / 500 V  100KA  -  FACA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (438,103,'FUS�VEL 16 A / 500 V - GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (439,472,'FUS�VEL 200 A / 250V - FACA NEGRINE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (440,640,'FUS�VEL 30 A / 250 V - LOU�A','','','',12,29,'','');
INSERT INTO `produto`  VALUES (441,492,'FUS�VEL 30 A / 250V - CARTUCHO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (442,101,'FUS�VEL 63 A / 500 V - GARRAFINHA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (443,1730,'INTERRUPTOR EXTERNO DE 10A','','','',12,29,'','');
INSERT INTO `produto`  VALUES (444,1731,'INTERRUPTOR INTERNO DE UMA SE��O COM PLACA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (445,166,'L�MPADA 100 W / 120 V  INCANDESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (446,772,'L�MPADA 100 W / 127 V REFLETORA FACHO M�DIO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (447,686,'L�MPADA 20 W  -  FLUORESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (448,178,'L�MPADA 25 W / 127 V  INCANDESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (449,35,'L�MPADA 40 W / 127 V  INCANDESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (450,431,'L�MPADA 40 W / 127V  BICUDA LEITOSA VELA GRANDE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (451,367,'L�MPADA 40 W / 127V  BICUDA LEITOSA VELA PEQUENA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (452,299,'L�MPADA 40 W FLUORESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (453,285,'L�MPADA 60 W / 120 V  MINI-SPOT','','','',12,29,'','');
INSERT INTO `produto`  VALUES (454,38,'L�MPADA 60 W / 127 V  INCANDESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (455,1404,'L�MPADA DICROICA 12 V / 50 W ','','','',12,29,'','');
INSERT INTO `produto`  VALUES (456,1718,'L�MPADA ELETR�NICA COMPACTA FLUORESCENTE DE 18W X 127 V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (457,1858,'LAMPADA FLUORESCENTE COMPACTA DE 30W ELETRONICA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (458,1386,'L�MPADA ELETR�NICA PL  24 W / 127 V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (459,1859,'LAMPADA FLUORESCENTE DE 28 W','','','',12,29,'','');
INSERT INTO `produto`  VALUES (460,1547,'L�MPADA FLUORECENTE 32 W','','','',12,29,'','');
INSERT INTO `produto`  VALUES (461,1562,'L�MPADA FLUORESCENTE TIPO ELETR�NICA BASE ','','','',12,29,'','');
INSERT INTO `produto`  VALUES (462,1772,'L�MPADA FLUORESCENTE TUBOLAR, 54W X 220V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (463,1574,'L�MPADA HALOGENA 200W X 130V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (464,1576,'L�MPADA HALOGENA 50W X 127V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (465,1503,'LAMPADA INCANDESCENTE 15W  X  127V LEITOSA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (466,1773,'L�MPADA LUZ MISTA, 220V POTENCIA, 160W, 27MM','','','',12,29,'','');
INSERT INTO `produto`  VALUES (467,1852,'LAMPADA HALOGENA  127X100W  PALITO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (468,1853,'LAMPADA HALOGENA 300X220  LAPISEIRA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (469,1483,'LUMINARIA DE EMERG�NCIA C/2 LAM. DE 8W','','','',12,29,'','');
INSERT INTO `produto`  VALUES (470,1732,'PINO DE TOMADA PRIME, 3 FASES','','','',12,29,'','');
INSERT INTO `produto`  VALUES (471,1599,'QUADRO EL�TRICO P/ IRRIGA��O NO JARDIM','','','',12,29,'','');
INSERT INTO `produto`  VALUES (472,1561,'RABICHO P/ L�MPADA DICR�ICA DE 120V X 50W','','','',12,29,'','');
INSERT INTO `produto`  VALUES (473,1560,'REATOR PARTIDA R�PIDA ELETR�NICO 2 X 40W / 110V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (474,873,'REATOR 18 W (T8) X 20 W (T10/T12) PARTIDA R�PIDA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (475,98,'REATOR 2 X 20 W  PARTIDA R�PIDA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (476,1572,'REATOR 2 X 32 W, 110V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (477,1774,'REATOR ELETRONICO, MODELO,QTPS, 2 X 54W','','','',12,29,'','');
INSERT INTO `produto`  VALUES (478,73,'REATOR PARTIDA R�PIDA ELETR�NICO 1 X 32W / 110V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (479,1126,'RECEPT�CULOS PARA L�MPADA FLUORESCENTE','','','',12,29,'','');
INSERT INTO `produto`  VALUES (480,1834,'REFLETOR P/ L�MPADA DICR�ICA HALOGENA, TIPO LAPIZEIRA,118MM','','','',12,29,'','');
INSERT INTO `produto`  VALUES (481,1694,'REL� C902130.2000','','','',12,29,'','');
INSERT INTO `produto`  VALUES (482,1812,'RELE FOTOELETRICO,TENS�O NOMINAL, 127X220V, TENS�O,50/60HZ X1200VA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (483,1729,'ROLO PASSA FIO 15M, APLIC NA PASSAGEM DE FIO NA REDE EL�TRICA','','','',12,26,'','');
INSERT INTO `produto`  VALUES (484,1623,'SENSOR DE CHUVA P/ JARDIM','','','',12,29,'','');
INSERT INTO `produto`  VALUES (485,1733,'TARRACHA DE 3/4\", PARA ABERTURA DE ROSCA EM PVC','','','',12,29,'','');
INSERT INTO `produto`  VALUES (486,1656,'TOMADA DE SOBREPOR , 2 PINOS CHATOS E 2 REDONDOS','','','',12,29,'','');
INSERT INTO `produto`  VALUES (487,742,'TOMADA F�MEA COM OU SEM ESPELHO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (488,1816,'TOMADA FEMEA DE PORCELANA, 2P, 30A X 220V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (489,1817,'TOMADA FEMEA DE PORCELANA, 3P, 30A X 127/220V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (490,1601,'TOMADA P/ TELEFONE, TIPO FEMEA','','','',12,29,'','');
INSERT INTO `produto`  VALUES (491,1818,'TOMADA TIPO BENJAMIM, PINO T, 6 CONTATOS REDONDO,10A X 250V','','','',12,29,'','');
INSERT INTO `produto`  VALUES (492,478,'TOMADA MACHO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (493,1523,'TOMADA MACHO (PLUG) 2 PINO CHATO E 1 REDONDO','','','',12,29,'','');
INSERT INTO `produto`  VALUES (494,1734,'TOMADA PRIME, INTERNA COM 3 FASES','','','',12,29,'','');
INSERT INTO `produto`  VALUES (495,1407,'TRANSFORMADOR PARA L�MPADA DICROICA 12V X 50W','','','',12,29,'','');
INSERT INTO `produto`  VALUES (496,1342,'LANTERNA','','','',13,29,'','');
INSERT INTO `produto`  VALUES (497,1854,'CONE PARA SINALIZA��O','','','',14,29,'','');
INSERT INTO `produto`  VALUES (498,1536,'LUVA','','','',14,29,'','');
INSERT INTO `produto`  VALUES (499,1537,'M�SCARA DESCART�VEL','','','',14,29,'','');
INSERT INTO `produto`  VALUES (500,1538,'�CULOS DE PROTE��O','','','',14,29,'','');
INSERT INTO `produto`  VALUES (501,1875,'CARGA PARA INSTINTOR DE INCENDIO','','','',14,29,'','');
INSERT INTO `produto`  VALUES (502,1881,'OMBRELONE SUSP 3,50M GIRAT.','','','',14,29,'','');
INSERT INTO `produto`  VALUES (503,1898,'FITA ANTIDERRAPANTE','','','',14,29,'','');
INSERT INTO `produto`  VALUES (504,1903,'MATERIAL DE LIMPEZA','','','',14,29,'','');
INSERT INTO `produto`  VALUES (505,1678,'CART�O DE MEM�RIA SD, 2GB','','','',15,29,'','');
INSERT INTO `produto`  VALUES (506,1662,'CABO PARA MICROFONE','','','',15,29,'','');
INSERT INTO `produto`  VALUES (507,747,'FITA CASSETE','','','',15,29,'','');
INSERT INTO `produto`  VALUES (508,1241,'FITA P/ VIDEO CASSETE ','','','',15,29,'','');
INSERT INTO `produto`  VALUES (509,779,'FIXADOR PROSTAR PLUS','','','',15,14,'','');
INSERT INTO `produto`  VALUES (510,1344,'L�MPADA PARA PROJETOR REF. FCS - 24V / 150W','','','',15,29,'','');
INSERT INTO `produto`  VALUES (511,1434,'L�MPADA PARA PROJETOR SHARP MOD.XCE1200 U 370W','','','',15,29,'','');
INSERT INTO `produto`  VALUES (512,1345,'L�MPADA PARA RETROPROJETOR REF. EHA -120V / 500W','','','',15,29,'','');
INSERT INTO `produto`  VALUES (513,829,'L�MPADA P/ PROJET MULTI, MOD PLC XV46, 300 W / 120 V','','','',15,29,'','');
INSERT INTO `produto`  VALUES (514,1144,'LASER FILM RHODIA A4','','','',15,4,'','');
INSERT INTO `produto`  VALUES (515,1750,'LIMPADOR DE IMPUREZA, KODAK','','','',15,29,'','');
INSERT INTO `produto`  VALUES (516,1497,'MICROFILME 35MM X 1000 P�S DDP NEGATIVO','','','',15,29,'','');
INSERT INTO `produto`  VALUES (517,1749,'MICROFILME P/ DUPLICA��O DDP, 35MM, POSITIVO','','','',15,26,'','');
INSERT INTO `produto`  VALUES (520,778,'REVELADOR PROSTAR PLUS','','','',15,14,'','');
INSERT INTO `produto`  VALUES (521,1697,'CABO DE TELEFONE COBRE ISOLADO PVC 0,5 X 0,2MM 2 PARES','','','',16,29,'','');
INSERT INTO `produto`  VALUES (522,1696,'CORD�O EXPIRAL MONOFONE PT (TA 102PT)','','','',16,29,'','');
INSERT INTO `produto`  VALUES (525,1880,'Mdf branco 2,75X1,85 2 faces','','','',17,29,'','');
INSERT INTO `produto`  VALUES (526,1882,'MDF  BRANCO 2,75X1,83X15MM','','','',17,29,'','');
INSERT INTO `produto`  VALUES (527,1883,'MDF BANCO 2,75X1,83X25MM','','','',17,29,'','');
INSERT INTO `produto`  VALUES (528,1201,'BISTURI DESCART�VEL','','','',18,4,'','');
INSERT INTO `produto`  VALUES (529,977,'PNEU','','','',19,29,'','');
INSERT INTO `produto`  VALUES (530,1722,'VIDRO LATERAL ESQUERDO  P/ KOMBI','','','',19,29,'','');
INSERT INTO `produto`  VALUES (531,1653,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 09X300MM, 45 AN�IS','','','',20,29,'','');
INSERT INTO `produto`  VALUES (532,1835,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 12X300MM, 45 AN�IS','','','',20,29,'','');
INSERT INTO `produto`  VALUES (533,1836,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 14X300MM, 45 AN�IS','','','',20,29,'','');
INSERT INTO `produto`  VALUES (534,1837,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 18X300MM, 45 AN�IS','','','',20,29,'','');
INSERT INTO `produto`  VALUES (535,1838,'ESPIRAL PARA ENCADERNA��O, COR PRETA, 23X300MM, 45 AN�IS','','','',20,29,'','');
INSERT INTO `produto`  VALUES (538,1800,'ALICATE DE BICO, CABO ISOLADO, 165MM','','','',21,29,'','');
INSERT INTO `produto`  VALUES (539,1799,'ALICATE DE BICO, TIPO CORTE, 165MM','','','',21,29,'','');
INSERT INTO `produto`  VALUES (540,1569,'ALICATE DE PRESS�O 10\"','','','',21,29,'','');
INSERT INTO `produto`  VALUES (541,1801,'ALICATE DESCASCADOR DE FIO, 180MM','','','',21,15,'','');
INSERT INTO `produto`  VALUES (542,1803,'ALICATE REBITADOR DE PE�AS','','','',21,15,'','');
INSERT INTO `produto`  VALUES (543,1804,'ALICATE UNIVERSAL, CORTE RETO, 8\" POLEGADAS','','','',21,15,'','');
INSERT INTO `produto`  VALUES (544,1776,'CHAVE AJUST�VEL DE A�O, 15\" POLEGADAS','','','',21,29,'','');
INSERT INTO `produto`  VALUES (545,1775,'CHAVE AJUST�VEL DE A�O, 18\" POLEGADAS','','','',21,15,'','');
INSERT INTO `produto`  VALUES (546,1805,'CHAVE AJUST�VEL, 24\" POLEGADAS','','','',21,29,'','');
INSERT INTO `produto`  VALUES (547,1570,'CHAVE ALLEN 10\" X 1,3MM','','','',21,29,'','');
INSERT INTO `produto`  VALUES (548,1566,'CHAVE DE FENDA 3/16 X 4\"','','','',21,29,'','');
INSERT INTO `produto`  VALUES (549,1806,'CHAVE DE FENDA PHILIPS, 1/4\" X 4\" POLEGADAS','','','',21,15,'','');
INSERT INTO `produto`  VALUES (550,1778,'CHAVE DE FENDA PHILIPS, 3/8\" X 8\" POLEGADAS','','','',21,29,'','');
INSERT INTO `produto`  VALUES (551,1565,'CHAVE DE FENDA SIMPLES 1/4 X 5\"','','','',21,29,'','');
INSERT INTO `produto`  VALUES (552,1568,'CHAVE DE FENDA SIMPLES 1/4 X 5\" (PHILIPS)','','','',21,29,'','');
INSERT INTO `produto`  VALUES (553,1779,'CHAVE DE FENDA, 5/16\" X 6\" POLEGADAS, 150MM','','','',21,29,'','');
INSERT INTO `produto`  VALUES (554,1777,'CHAVE FIXA, A�O CROMADO','','','',21,15,'','');
INSERT INTO `produto`  VALUES (555,1797,'CHIBANCA CABO DE MADEIRA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (556,1780,'COLHER DE PEDREIRO, CABO DE MADEIRA, 8\" POLEGADAS','','','',21,29,'','');
INSERT INTO `produto`  VALUES (557,1781,'DISCO DE CORTE, A�O, 110MM X 20MM, CORTE � SECO','','','',21,29,'','');
INSERT INTO `produto`  VALUES (558,1782,'DISCO DE CORTE, SERRA VIDEA, 300MM X 30MM, 36 DENTES','','','',21,29,'','');
INSERT INTO `produto`  VALUES (559,1783,'ESP�TULA DE A�O INOX, CABO EM PVC, 12CM','','','',21,29,'','');
INSERT INTO `produto`  VALUES (560,1807,'ESP�TULA DE A�O INOX, CABO EM PVC, 6CM','','','',21,29,'','');
INSERT INTO `produto`  VALUES (561,1808,'ESQUADRO, TIPO R�GUA, 42CM, GRADUA��O SIMPLES 1MM, 130MM COMP.','','','',21,29,'','');
INSERT INTO `produto`  VALUES (562,1784,'FORM�O CROMADO, CABO DE MADEIRA, 1\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (563,1785,'FORM�O CROMADO, CABO DE MADEIRA, 1/2\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (564,1786,'FORM�O CROMADO, CABO DE MADEIRA, 1/4\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (565,1787,'FORM�O CROMADO, CABO DE MADEIRA, 3/8\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (566,1702,'L�MINA DE SERRA, A�O R�PIDO, 12\"POLEGADAS, LARG.10 MM','','','',21,26,'','');
INSERT INTO `produto`  VALUES (567,1788,'METRO DOBR�VEL DE MADEIRA, GRADUA��O SIMPLES, 2M','','','',21,29,'','');
INSERT INTO `produto`  VALUES (568,1789,'N�VEL BOLHA, CORPO DE MADEIRA, 300MM, AMPOLA 360� GRAUS','','','',21,29,'','');
INSERT INTO `produto`  VALUES (569,1831,'PISTOLA APLICADORA DE COLA QUENTE, 127V X 220V X 100W, PROFISSIONAL','','','',21,29,'','');
INSERT INTO `produto`  VALUES (570,1796,'ROLO PASSA FIO DE NYLON, 20M','','','',21,29,'','');
INSERT INTO `produto`  VALUES (571,1792,'TARRAXA P/ ABRIR ROSCA, 1\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (572,1793,'TARRAXA P/ ABRIR ROSCA, 1/2\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (573,1790,'TARRAXA P/ ABRIR ROSCA, 11/2\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (574,1791,'TARRAXA P/ ABRIR ROSCA, 11/4\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (575,1794,'TARRAXA P/ ABRIR ROSCA, 2\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (576,1795,'TARRAXA P/ ABRIR ROSCA, 3/4\" POLEGADA','','','',21,29,'','');
INSERT INTO `produto`  VALUES (577,1912,'KIT SERRA COPO ','','','',21,29,'','');
INSERT INTO `produto`  VALUES (578,1914,'CHAVE DE FENDA 1/8 X 4','','','',21,29,'','');
INSERT INTO `produto`  VALUES (579,1915,'CHAVE DE FENDA 3/16 X 6','','','',21,29,'','');
INSERT INTO `produto`  VALUES (580,1910,'CHAVE DE FENDA PHILIPS','','','',21,29,'','');
INSERT INTO `produto`  VALUES (581,1909,'TENA DE A�O 10CMX20M','','','',21,29,'','');
DROP TABLE IF EXISTS setor;


#
# Cria��o da Tabela : setor
#

CREATE TABLE `setor` (
  `codsetor` int(11) NOT NULL AUTO_INCREMENT,
  `setor` varchar(45) DEFAULT NULL,
  `nomesetor` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`codsetor`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `setor`  VALUES (1,'Desen','Desenvolvedor Sistema',0,'');
INSERT INTO `setor`  VALUES (2,'ADM','Administrador Sistema',0,'');
INSERT INTO `setor`  VALUES (3,'OPE','Operador Sistema',0,'');
INSERT INTO `setor`  VALUES (4,'APO','Assistente T�cnico  da 

Presid�ncia(Or�ament',1,'2013-10-09');
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

Humano',1,'2013-10-09');
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
DROP TABLE IF EXISTS tipousuario;


#
# Cria��o da Tabela : tipousuario
#

CREATE TABLE `tipousuario` (
  `idtipousuario` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipousuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `tipousuario`  VALUES (1,'Desenvolvedor','');
INSERT INTO `tipousuario`  VALUES (2,'Administrador','');
INSERT INTO `tipousuario`  VALUES (3,'Operador','');
DROP TABLE IF EXISTS unidademedida;


#
# Cria��o da Tabela : unidademedida
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
# Dados a serem inclu�dos na tabela
#

INSERT INTO `unidademedida`  VALUES (1,'BOBINA','',0,'');
INSERT INTO `unidademedida`  VALUES (2,'CA C/ 100','',0,'');
INSERT INTO `unidademedida`  VALUES (3,'CADER','',0,'');
INSERT INTO `unidademedida`  VALUES (4,'CAIXA','',0,'');
INSERT INTO `unidademedida`  VALUES (5,'CARTELA','',0,'');
INSERT INTO `unidademedida`  VALUES (6,'CARTU','',0,'');
INSERT INTO `unidademedida`  VALUES (7,'CENTENA','',0,'');
INSERT INTO `unidademedida`  VALUES (8,'CX 12','',0,'');
INSERT INTO `unidademedida`  VALUES (9,'CX 5000','',0,'');
INSERT INTO `unidademedida`  VALUES (10,'CXA','',0,'');
INSERT INTO `unidademedida`  VALUES (11,'DEZENA','',0,'');
INSERT INTO `unidademedida`  VALUES (12,'FOLHA','',0,'');
INSERT INTO `unidademedida`  VALUES (13,'FRASCO','',0,'');
INSERT INTO `unidademedida`  VALUES (14,'GAL�O','',0,'');
INSERT INTO `unidademedida`  VALUES (15,'JOGO','',0,'');
INSERT INTO `unidademedida`  VALUES (16,'JOGO C/ 8','',0,'');
INSERT INTO `unidademedida`  VALUES (17,'KG','',0,'');
INSERT INTO `unidademedida`  VALUES (18,'PACOTE','',0,'');
INSERT INTO `unidademedida`  VALUES (19,'PAR','',0,'');
INSERT INTO `unidademedida`  VALUES (20,'PCT 200','',0,'');
INSERT INTO `unidademedida`  VALUES (21,'PCT 250 FLS','',0,'');
INSERT INTO `unidademedida`  VALUES (22,'PCT C/10','',0,'');
INSERT INTO `unidademedida`  VALUES (23,'PCT C/100','',0,'');
INSERT INTO `unidademedida`  VALUES (24,'PTE','',0,'');
INSERT INTO `unidademedida`  VALUES (25,'RESMA','',0,'');
INSERT INTO `unidademedida`  VALUES (26,'ROLO','',0,'');
INSERT INTO `unidademedida`  VALUES (27,'TONER','',0,'');
INSERT INTO `unidademedida`  VALUES (28,'UM','',0,'');
INSERT INTO `unidademedida`  VALUES (29,'UNID','',0,'');
DROP TABLE IF EXISTS usuario;


#
# Cria��o da Tabela : usuario
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Dados a serem inclu�dos na tabela
#

INSERT INTO `usuario`  VALUES (1,'wendercorrea','57a68c1dbe07ec8cf9d4114cc941ac9d','wendercorrea@gmail.com',1,1,'2013-10-09',2);
INSERT INTO `usuario`  VALUES (2,'administrador','4cd51e51a4225287c8bb2fa0eb4343e1','admin@funarte.gov.br',2,1,'2013-10-09',1);
INSERT INTO `usuario`  VALUES (6,'operador','4cd51e51a4225287c8bb2fa0eb4343e1','operador@gmail.com',3,1,'2013-10-31',1);

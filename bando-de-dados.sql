-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: webdev
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `avaliacoes`
--

DROP TABLE IF EXISTS `avaliacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `nota` int(2) NOT NULL,
  `mensagem` text NOT NULL,
  `serie_id` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacoes`
--

LOCK TABLES `avaliacoes` WRITE;
/*!40000 ALTER TABLE `avaliacoes` DISABLE KEYS */;
INSERT INTO `avaliacoes` VALUES (1,'Rodrigo Machado',4,'Muito Bom',1,'2021-07-21'),(2,'Rodrigo Machado',5,'Muito Bom',2,'2021-07-25');
/*!40000 ALTER TABLE `avaliacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `diretor` varchar(255) NOT NULL,
  `lancamento` varchar(10) NOT NULL,
  `duracao` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Breaking Bad','beaking-bad','A????o','Vince Gilligan','2008','5 temporadas','2021-06-19','capa_serie_1','O novo drama \"Breaking Bad\" narra a hist??ria de Walter White (Bryan Cranston), um humilde professor de qu??mica que v?? sua vida se transformar quando descobre ser portador de um c??ncer terminal. ... ele come??a a usar suas habilidades em qu??mica a favor do crime, montando um laborat??rio de drogas para financiar seus anseios.'),(2,'Stranger Things','stranger-things','Suspense','Mat Duffer','2016','4 temporadas','2021-06-19','capa_serie_2','Stranger Things ?? uma s??rie sobrenatural de fic????o cient??fica criada pelos irm??os Duffer para a Netflix. Situada na cidade ficcional de Hawkins, Indiana, a trama come??a no ano de 1983 com o desaparecimento do garoto Will.'),(3,'La Casa de Papel','la-casa-de-papel','Drama','Alex Pina','2017','4 temporadas','2021-06-19','capa_serie_3','Oito ladr??es se trancam com ref??ns na Casa da Moeda da Espanha. Seu l??der manipula a pol??cia para realizar um plano. Ser?? o maior roubo da hist??ria, ou uma miss??o em v??o?'),(4,'Game of Thrones','game-of-thrones','Drama','Mark Huffam','2009','8 temporadas','2021-06-19','capa_serie_4','Game of Thrones conta a hist??ra de um lugar onde uma for??a destruiu o equil??brio das esta????es, h?? muito tempo. Em uma terra onde os ver??es podem durar v??rios anos e o inverno toda uma vida, as reivindica????es e as for??as sobrenaturais correm as portas do Reino dos Sete Reinos.'),(5,'Sons of Anarchy','sons-of-anarchy','Drama','Kurt Sutter','2008','7 temporadas','2021-07-22','capa_serie_5','Uma gangue de motoqueiros segue suas pr??prias leis e comanda, por debaixo dos panos, o tr??fico de armas na regi??o da aparentemente pacata da cidade de Charming, protegendo-a contra forasteiros hostis.'),(6,'Band Of Brothers','band-of-brothers','Guerra','Tom Hanks','2001','1 temporada','2021-07-22','capa_serie_6','Band of Brothers acompanha a hist??ria da \"E\" Easy Company, o 506?? Regimento da 101?? Divis??o Aerotransportada, desde o treinamento inicial da equipe, em 1942, at?? o final da 2?? Guerra Mundial. Com um papel primordial para a resolu????o do conflito, eles foram uma das unidades de maior sucesso na hist??ria militar americana.'),(7,'The Flash','the-flash','A????o','Greg Berlanti','2014','7 temporadas','2021-07-22','capa_serie_7','Acompanhe as aventuras do homem mais veloz do planeta, o cientista da Central City Police Barry Allen, que ap??s um tr??gico acidente adquire o poder da velocidade.'),(8,'Prison Break','prison-break','Drama','Paul Scheuring','2005','5 temporadas','2021-07-22','capa_serie_8','Michael Scofield ?? um homem desesperado em uma situa????o desesperada. Seu irm??o, Lincoln Burrows, foi condenado por um crime que n??o cometeu e colocado no corredor da morte. Michael rende um banco para conseguir ser encarcerado junto ao irm??o na penitenci??ria estadual de Fox River e coloca em a????o uma s??rie de planos elaborados para permitir a fuga de Lincoln e provar sua inoc??ncia. Mesmo fora da pris??o, seus perigos n??o acabam -- os irm??os precisam fugir para evitar a recaptura e lutar contra uma intricada conspira????o policial que coloca a vida de todo mundo em risco.'),(9,'Mayans MC','mayans-mc','Crime','Kurt Sutter','2018','2 temporadas','2021-07-22','capa_serie_9','Ezekiel Reyes ?? um jovem muito inteligente cujo futuro ?? arruinado por um cartel. Depois de passar dois anos e meio na pris??o, ele promete se vingar.'),(10,'Coringa','coringa','Crime','Todd Philips','2019','2 horas','2021-07-22','capa_filme_10','Isolado, intimidado e desconsiderado pela sociedade, o fracassado comediante Arthur Fleck inicia seu caminho como uma mente criminosa ap??s assassinar tr??s homens em pleno metr??. Sua a????o inicia um movimento popular contra a elite de Gotham City, da qual Thomas Wayne ?? seu maior representante.'),(11,'Venom','venom','Aventura','Andy Serkis','2018','1h 52min','2021-07-22','capa_filme_11','Em Venom, Eddie Brock (Tom Hardy) ?? um jornalista investigativo, que tem um quadro pr??prio em uma emissora local. Um dia, ele ?? escalado para entrevistar Carlton Drake (Riz Ahmed), o criador da Funda????o Vida, que tem investido bastante em miss??es espaciais de forma a encontrar poss??veis usos medicinais para a humanidade. Ap??s acessar um documento sigiloso enviado ?? sua namorada, a advogada Anne Weying (Michelle Williams), Brock descobre que Drake tem feito experimentos cient??ficos em humanos. Ele resolve denunciar esta situa????o durante a entrevista, o que faz com que seja demitido. Seis meses depois, o ainda desempregado Brock ?? procurado pela dra. Dora Skirth (Jenny Slate) com uma den??ncia: Drake estaria usando simbiontes alien??genas em testes com humanos, muitos deles mortos como cobaias.'),(12,'Aves de Rapina','aves-de-rapina','Aventura','Cathy Yan','2020','1h 49min','2021-07-22','capa_filme_12','Em Aves de Rapina - Arlequina e sua Emancipa????o Fantabulosa, Arlequina (Margot Robbie), Can??rio Negro (Jurnee Smollett-Bell), Ca??adora (Mary Elizabeth Winstead), Cassandra Cain e a policial Ren??e Montoya (Rosie Perez) formam um grupo inusitado de hero??nas. Quando um perigoso criminoso come??a a causar destrui????o em Gotham, as cinco mulheres precisam se unir para defender a cidade.');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-14 14:27:34

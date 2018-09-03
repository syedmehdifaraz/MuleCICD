DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `ph_number` varchar(50) DEFAULT NULL,
  `credit_score` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `ph_number`, `credit_score`)
VALUES
	(1,'Janice','Murphy','jmurphy0@accuweather.com','6-(937)798-1804',740),
	(2,'Joe','Nichols','jnichols1@sbwire.com','8-(419)643-0445',789),
	(3,'Kathy','Elliott','kelliott2@usda.gov','5-(901)228-2351',406),
	(4,'Earl','Burton','eburton3@un.org','7-(834)121-2959',766),
	(5,'Theresa','Daniels','tdaniels4@networksolutions.com','6-(734)453-2128',723),
	(6,'Betty','Cooper','bcooper5@jigsy.com','9-(453)349-3944',618),
	(7,'Mark','Bailey','mbailey6@webnode.com','3-(127)595-3525',662),
	(8,'Nicholas','Gonzalez','ngonzalez7@google.ca','4-(214)357-0230',419),
	(9,'Donna','Patterson','dpatterson8@princeton.edu','4-(487)950-5138',462),
	(10,'Margaret','Parker','mparker9@wikia.com','2-(913)651-5509',617),
	(11,'Jimmy','Nelson','jnelsona@wufoo.com','6-(514)858-1135',568),
	(12,'Earl','Gomez','egomezb@discovery.com','8-(373)965-3771',466),
	(13,'Anne','Wright','awrightc@amazon.co.uk','2-(803)760-4075',693),
	(14,'Sara','Ray','srayd@globo.com','3-(880)324-8511',789),
	(15,'Louise','Brown','lbrowne@disqus.com','2-(078)957-2588',593),
	(16,'Anne','Rodriguez','arodriguezf@t.co','8-(647)428-2189',730),
	(17,'Irene','Richardson','irichardsong@shop-pro.jp','0-(921)397-0093',404),
	(18,'Paul','Romero','promeroh@technorati.com','6-(605)368-1117',735),
	(19,'Ryan','Pierce','rpiercei@privacy.gov.au','6-(433)137-3230',589),
	(20,'Benjamin','Scott','bscottj@nasa.gov','1-(280)666-7444',746),
	(21,'William','Young','wyoungk@cnn.com','5-(983)575-0755',453),
	(22,'Edward','Shaw','eshawl@exblog.jp','3-(901)708-8535',606),
	(23,'Dorothy','Perkins','dperkinsm@twitpic.com','4-(256)752-4597',782),
	(24,'Mildred','Dixon','mdixonn@t.co','2-(545)078-2478',634),
	(25,'Mildred','Little','mlittleo@biglobe.ne.jp','8-(042)879-8670',708),
	(26,'Martha','Cooper','mcooperp@gmpg.org','0-(150)236-8792',758),
	(27,'Gary','Gibson','ggibsonq@networksolutions.com','9-(810)179-8323',577),
	(28,'Michelle','Oliver','moliverr@photobucket.com','9-(199)558-7508',631),
	(29,'Raymond','Kennedy','rkennedys@arstechnica.com','4-(186)306-7606',577),
	(30,'Deborah','Price','dpricet@cam.ac.uk','7-(851)062-0938',720),
	(31,'David','Bryant','dbryantu@hc360.com','1-(654)354-6413',724),
	(32,'Jose','Morrison','jmorrisonv@usnews.com','4-(329)488-7041',684),
	(33,'Wayne','Russell','wrussellw@furl.net','9-(859)561-8606',419),
	(34,'Jacqueline','Lynch','jlynchx@list-manage.com','5-(436)873-9812',770),
	(35,'Jane','Hernandez','jhernandezy@webs.com','2-(651)145-7307',718),
	(36,'Ann','Stewart','astewartz@virginia.edu','9-(146)343-9220',593),
	(37,'Larry','Webb','lwebb10@yellowbook.com','4-(129)460-1785',491),
	(38,'Ralph','Burke','rburke11@ezinearticles.com','4-(590)656-3550',477),
	(39,'Anna','Hawkins','ahawkins12@un.org','7-(704)993-6122',478),
	(40,'Ernest','Berry','eberry13@salon.com','0-(486)186-4484',566),
	(41,'Willie','Little','wlittle14@over-blog.com','7-(822)283-3218',404),
	(42,'Brandon','Coleman','bcoleman15@ox.ac.uk','4-(435)035-5412',681),
	(43,'Eric','Morgan','emorgan16@npr.org','9-(438)498-2427',674),
	(44,'Larry','Sullivan','lsullivan17@amazon.co.jp','6-(505)248-0210',599),
	(45,'Albert','Boyd','aboyd18@nih.gov','8-(721)501-0380',780),
	(46,'Phyllis','Hanson','phanson19@xrea.com','8-(753)344-1461',532),
	(47,'Ashley','Pierce','apierce1a@parallels.com','6-(449)064-0637',493),
	(48,'Ernest','Greene','egreene1b@comsenz.com','7-(489)303-1267',424),
	(49,'Phyllis','Freeman','pfreeman1c@ehow.com','5-(162)278-6844',583),
	(50,'Shawn','Gomez','sgomez1d@blogspot.com','7-(412)390-5977',642);

/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

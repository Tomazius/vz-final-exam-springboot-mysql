-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2022 at 10:10 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmu-informacine-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmas`
--

DROP TABLE IF EXISTS `filmas`;
CREATE TABLE IF NOT EXISTS `filmas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aprasymas` varchar(3000) DEFAULT NULL,
  `imdb_rating` float NOT NULL,
  `metai` smallint(6) NOT NULL,
  `pavadinimas` varchar(255) DEFAULT NULL,
  `trukme_min` smallint(6) NOT NULL,
  `rezisieriaus_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtjjciuedbra7j8ik51r3p4dvu` (`rezisieriaus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filmas`
--

INSERT INTO `filmas` (`id`, `aprasymas`, `imdb_rating`, `metai`, `pavadinimas`, `trukme_min`, `rezisieriaus_id`) VALUES
(1, 'Negyvenamoje saloje turtingas išradėjas sukuria maža pasaulį, kuriame gyvena gyvi dinozaurai, atkurti iš gintare rastos priešistorinės DNR. Prieš atidarydamas parką lankytojams, jis pakviečia žymiausius mokslininkus - paleontologą, paleobotanikę, matematiką-teoriką ir du savo anūkusm kad šie, apžiūrėję parką, nuramintų investuotojus. Tačiau kompiuterių specialistas išjungia parko saugos sistemas, kad galėtų išnešti keletą pavogtų dinozaurų embrionų pavyzdžių. Ekskursija po parką savininko svečiams iš ramios ir įspūdingos virsta košmariška...\r\n\r\n', 8.2, 1993, 'Jurassic Park', 127, 1),
(2, 'Staiga mirus Romėnų imperatoriui Markusui Aurelijui, jo protingą ir ištikimą generolą Maksimą neteisėtai įkalina ir nuteisia gladiatorių kovoms suktas Markuso sūnus Komodusas. Tapęs naujuoju imperatoriumi, Komodusas bijo, kad Maksimas, pasinaudodamas savo valdžia bei geru vardu, gali nuversti jį ir pats užimti sostą.\r\n\r\nTačiau Maksimas greitai nusipelno šlovę ir kaip gladiatorius bei pasinaudoja ja prieš Komoduso valdžią – pastarojo ryšius su įtartinais romėnų žmonėmis, tikėdamasis atkurti tikėjimą užmirštomis vertybėmis bei nugalėti visur klestinčią korupciją.', 8.5, 2000, 'Gladiator', 155, 2),
(3, 'Slaptasis agentas Džeimsas Bondas sugrįžta į kino ekranus, bet šį kartą jo laukia ypatingas ir neįprastas nuotykis. 21-ajame populiariosios serijos filme pagrindinį vaidmenį atliks britų aktorius Danielis Craigas, kurio dėka Džeimsas Bondas bus jaunesnis, stipresnis, pavojingesnis, ištvermingesnis ir paslaptingesnis. Jis pasižymės žymiai platesniu kovos arsenalu ir remsis ne tik įmantriais ginklais, o reikalui esant sumaniai naudos fizinę jėgą. Lietuvos žiūrovams iš filmų \"Miunchenas\", \"Kapų plėšikė Lara Kroft\" ir \"Kelias į pražūtį\" pažįstamas aktorius taps šeštuoju oficialiu Džeimsu Bondu, kurį vaidino vaidino škotas Seanas Connery, australas George\'as Lazenby, anglas Rogeris Moore\'as, Timothy Daltonas ir airis Pierce\'as Brosnanas. Savo ruožtu, Naujoje Zelandijoje gimęs Martinas Campbellas į kino metraščius bus įrašytas kaip penktasis režisierius po Terence\'o Youngo, Guy\'aus Hamiltono, Lewiso Gilberto ir Johno Gleno, kuriems prodiuseriai patikėjo sukurti daugiau nei po vieną 007 serijos filmą.\r\n\r\n1995-siais veiksmo trilerį \"Auksinė akis\" režisavusio Martino Campbello vadovaujama kūrybinė grupė pirmą kartą ryžosi išvykti iš legendinės \"Pinewood\" studijos Londone ir naujus namus surado Čekijos sostinėje Prahoje esančioje \"Barandov\" kino studijoje, o daugelis scenų nufilmavo Pietų Afrikoje, Bahamuose ir Italijoje. Už dramas \"Avariją\" ir \"Mergina verta milijono\" apdovanoto Paulo Haggiso patobulintas scenarijus remiasi pačia pirmaja rašytojo Iano Flemingo novele, kuri ilgą laiką buvo tapusi dviejų didžiųjų Holivudo studijų teismų objektu. Įdomu ir tai, kad pagal šią medžiagą jau buvo sukurtas TV filmas (1954 m.) ir parodijų komedija (1967 m.), kurioje Džeimsą Bondą šmaikščiai vaidino juokdarys Peteris Sellersas.\r\n\r\n60 mln. JAV dolerių kainavusio kūrinio pradžioje Džeimsas Bondas dar tik dirba samdomu žudiku, kurį į savo organizaciją pakviečia D.Britanijos karališkoji tarnyba. Slaptasis agentas 007 gauna ne tik teisę žudyti, bet ir pirmąją užduotį - nuraminti Madagaskare siautėjantį teroristą Molaką. Sekdamas jo pėdsakais Džeimsas Bondas nukeliauja į Bahamus ir pradeda stebėti nedorėlio verslininko Dimitrio įtartinus santykius su paslaptinguoju bankininku pravarde \"Šifras\". Netrukus jis išsiaiškina, kad Rusijos teroristinėms organizacijos atstovaujantis niekšas planuoja lošti pokerį Juodkalnijoje esančiame \"Karališkame kazino\" už ypač milžiniškus pinigus. Džeimsas Bondas neturi kitos išeities ir ryžtasi sėsti prie žaidimų stalo. Jis yra patyręs ir protingas lošėjas, bet puikiai suvokia, kad šį kartą teks susidurti su visiškai kitokiomis taisyklėmis.', 8, 2006, 'Casino Royale', 144, 3),
(4, 'Buvęs jūrų pėstininkas Džeikas Salis, svajodamas vėl valdyti savo kūną, pasiryžta eksperimentui. Kūno nuo juosmens žemyn jis nebevaldo po vieno mūšio, o eksperimentas – būti išsiųstam į Pandoros planetą. Atlygis – dalyvavimas specialioje programoje \"Įsikūnijimas\", kurios pagalba jis gaus naują kūną ir vėl galės džiaugtis gyvenimo pilnatve.\r\n\r\nŠi planeta taip pat yra gimtoji Na\'vi rūšiai – trijų metrų ūgio mėlynos žaižaruojančios odos humanoidams su uodegomis. Kadangi žmogui Pandoros oras kvėpuoti netinkamas, Žemės mokslininkai sukūrė žmogaus ir Na‘vi hibridą, vadinamą avataru. Su avataro pagalba Džeikas vėl psijunta pilnaverčiu žmogumi.\r\nKuo toliau, tuo labiau Džeikas jaučiasi nebe žmogumi, o Na\'vi. Prie to prisideda ir Neytiri – Na\'vi moteris, kurios nuostabiam laukiniam grožiui Džeikas nesugeba atsispirti.', 7.8, 2009, 'Avatar', 162, 4),
(5, 'Komercinis erdvėlaivis Nostromo skrenda namo į žemę. Kompiuteris užfiksuoja SOS signalą iš netoliese esančios planetos ir iš žemės gauna nurodymą ištirti, kas šaukiasi pagalbos. Po komplikuoto nusileidimo dalis komandos susiruošia ištirti vietovę. Netrukus jie aptinka nežinomų padarų lizdavietę su begale kiaušinių, o laivo kompiuteris iššifruoja gautą signalą ne kaip pagalbos šauksmą, o kaip įspėjimą. Pajudinus vieną iš kiaušinių, įgulos laukia mirtinas pavojus...', 8.5, 1979, 'Alien', 117, 2),
(7, 'Ian`as Malcolm`as vadovauja tyrinėtojų komandai Isla Sorna saloje, kuri yra 89 mylios nuo Isla Nublar - kur prieš ketverius metus buvo įkurtas Juros periodo parkas. Būtent Isla Sorna saloje ir buvo veisiami dinozaurai, kuriuos vėliau perkeldavo į antrojoje saloje įkurtą parką. Atvykę į vietą, tyrinėtojai pastebi dar vieną grupę, kurios tikslas pargabenti dinozaurų pavyzdžių į San Diegą, kur bus įkurtas tam skirtas parkas. Praradusios komunikacinę įrangą, abi grupės papuola į sunkią padėtį, tad pradeda veikti drauge, kad išsigelbėtų nuo juos medžiojančių priešistorinių gyvių.', 6.5, 1997, 'The Lost World: Jurassic Park', 129, 1),
(8, 'Šaunus naikintuvo pilotas, danguje besijaučiantis kaip paukštis, tiek darbe, tiek asmeniniame gyvenime besivadovaujantis instinktais, įsimylėjo savo priešingybę skraidymo mokyklos dėstytoją rimtuolę astrofizikę. Ji nelieka abejinga žavingo vaikino kerams.\r\n\r\nLėktuvai, svaiginantys triukai, puikūs specialūs efektai.\r\n\r\nFilmas buvo nominuotas trims Oskarams ir pateko į tų metų pelningiausių filmų dešimtuką. Kompozitorius Giorgio Moroder pelnė Oskarą ir Auksinį Gaublį už geriausią dainą, o 2004 metais žurnalo „Men‘s Journal“ apklausoje užėmė septintą vietą tarp geriausių veiksmo filmų.', 6.9, 1986, 'Top Gun', 110, 6),
(9, 'Tolimoje žmonijos ateityje, Geležinio miesto metalo laužo supirktuvėje likimo valiai paliktą Alitą (akt. Rosa Salazar) suranda Ido (akt. Christoph Waltz) – kibernetikos daktaras. Alita ne tik nepamena, kas ji tokia, bet ir neturi jokio suvokimo apie ją supantį pasaulį. Viskas Alitai yra nauja, kiekviena patirtis yra pirmoji gyvenime. Kol Alita mokosi gyventi savo naują gyvenimą ir susipažįsta su klastingomis Geležinio miesto gatvėmis, Ido mėgina apsaugoti merginą nuo jos paslaptingos praeities, tačiau naujasis merginos draugas Hugo (akt. Keean Johnson) pasielgia priešingai: priverčia ją prisiminti. Kai Alitą pradeda sekti mirtinai pavojinga armija, tuomet mergina supranta, kad ji – ypatinga kovotoja. Ir ji privalo apsaugoti mylimus žmones. Ir turi surasti atsakymą: kas ji tokia. Alita ryžtasi kelionei, kurios metu teks įveikti tamsią bei korumpuotą šio pasaulio neteisybę ir suvokti, kad šį pasaulį dar galima išgelbėti.', 7.3, 2019, 'Alita: Battle Angel', 122, 5),
(10, 'Amerikietis keliautojas Brockas Lovettas (Billas Paxtonas) povandeniniu laivu nusileidžia į 4 km. gylį, kur filmuoja nuskendusio \"TITANIKO\" liekanas. Nuotykių ieškotojas vietoj briliantų papuošalo, kurį tikėjosi rasti, aptinka piešinį su nuogu jaunos merginos atvaizdu. 102 metų senutė Rose (Gloria Stuart) patvirtina, jog piešinyje būtent ji, o susidomėjusiam Lovettui sutinka papasakoti dramatiškos istorijos, nutikusios prieš 84 metus, smulkmenas…\r\n\r\nTurtinga ir graži Rose (Kate Winslet) plaukia į Filadelfiją, kur turėtų ištekėti už tokio pat turtingo ir pavydaus Calo Hochley (Billy Zane). Kitas gi jaunuolis Džekas (Leonardo DiCaprio) iš neturtingos šeimos, netikėtai kortų žaidime laimi laimingą bilietą į \"TITANIKĄ\" ir taip pat atsiduria laive.\r\n\r\n1912.IV.10, brangiausias ir neva saugiausias laineris išplaukia į savo paskutinę kelionę… Tačiau būtent jame susitinka Rose ir Džekas, tarp kurių užsimezga graži draugystė, netrukus peraugusi į aistringą meilę. Deja, praėjus vos kelioms dienoms, \"TITANIKAS\" trenkiasi į ledkalnį…', 7.9, 1997, 'Titanic', 194, 4),
(11, 'Earlo Stouno gyvenime – ne pats geriausias laikotarpis. Seniai išsiskyręs su žmona, vienišas vyriškis negali pasigirti ir itin gerais santykiais su dukra bei anūke. Lyg to būtų maža, Earlą užklumpa ir finansinės bėdos: bankrutuoja verslas. Kad pataisytų padėtį, Earlas imasi netikėtai gauto pasiūlymo užsidirbti tiesiog vairuojant - nuvežant mažus krovinius iš taško A į tašką B. Vyrui sutikus, po kurio laiko paaiškėja, kad jo darbdaviai - Meksikos narkotikų kartelis, ir galiausiai vyras įkliūna policijai su 3 milijonų dolerių vertės kokaino siunta. Tai, kas atrodė lyg gyvenimo šansas, pasirodė esanti didžiausia jo padaryta klaida.', 7, 2018, 'The Mule', 116, 8),
(12, 'Du šmaikštūs, drąsūs ir išradingi Majamio policininkai per 72 valandas privalo surasti iš policijos saugomos vietos pavogtus narkotikus ir apginti vienintelę liudytoją, kuri matė nusikaltėlių veidus.', 6.8, 1995, 'Bad Boys', 119, 7),
(14, 'ahujet', 9.8, 1993, 'Bandymas ištrinti', 133, 1),
(15, 'Žemės link artėja milžiniškas asteroidas. Jei jis atsitrenks į Žemę, tai visa, kas gyva, bus sunaikinta. NASA atstovai sukuria rizikingą planą – nuskristi į asteroidą, jo viduje padėti sprogmenų ir perskelti pusiau, kad dvi dalys aplenktų mūsų planetą.\r\n\r\nŠiam žygdarbiui suburiama neįprasta komanda: profesionalūs astronautai, pilotuosiantys kosminius laivus, ir… profesionalūs gręžėjai, galintys bet kur, net ir asteroide pragręžti skylę.', 6.7, 1998, 'Armageddon', 151, 7);

-- --------------------------------------------------------

--
-- Table structure for table `filmo_zanrai`
--

DROP TABLE IF EXISTS `filmo_zanrai`;
CREATE TABLE IF NOT EXISTS `filmo_zanrai` (
  `filmo_id` int(11) NOT NULL,
  `zanro_id` int(11) NOT NULL,
  PRIMARY KEY (`filmo_id`,`zanro_id`),
  KEY `FK9a6nfpn8ds2yxi7nmi8ecwbx4` (`zanro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filmo_zanrai`
--

INSERT INTO `filmo_zanrai` (`filmo_id`, `zanro_id`) VALUES
(1, 1),
(4, 1),
(5, 1),
(7, 1),
(9, 1),
(15, 1),
(2, 2),
(8, 2),
(10, 2),
(11, 2),
(12, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(7, 3),
(8, 3),
(12, 3),
(15, 3),
(2, 4),
(10, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(7, 5),
(8, 5),
(9, 5),
(12, 5),
(15, 5),
(1, 6),
(3, 6),
(7, 6),
(9, 6),
(11, 6),
(12, 6),
(15, 6),
(1, 7),
(4, 7),
(5, 7),
(12, 9),
(5, 10),
(7, 10),
(8, 11),
(9, 11),
(10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `komentaras`
--

DROP TABLE IF EXISTS `komentaras`;
CREATE TABLE IF NOT EXISTS `komentaras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tekstas` varchar(3000) DEFAULT NULL,
  `filmo_id` int(11) DEFAULT NULL,
  `vartotojo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs404ba54dch747ke6egg3yxi3` (`filmo_id`),
  KEY `FKfss6buiinuworte7qo1jxehik` (`vartotojo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `komentaras`
--

INSERT INTO `komentaras` (`id`, `tekstas`, `filmo_id`, `vartotojo_id`) VALUES
(1, 'gerulis filmas apie dinozaurus ir mokslą', 1, 2),
(2, 'va čia tai spy-movie!', 3, 1),
(3, 'laba sens films apie kažkuokė driežą. če bebra darbą', 1, 3),
(4, 'o nejaugi kažkas bus suėstas sėdintis ant tualeto???', 1, 1),
(5, 'vot ja gona do vot ja gona do ven i kam fo jū', 12, 1),
(6, 'maximus decimus meridius', 2, 1),
(7, 'liūdna pabaiga', 2, 7),
(8, 'klints ystvuds\r\n', 11, 7),
(9, 'Bandymas parašyti komentarą\r\n', 14, 21),
(10, 'dilofozauras suėdė Denisą Nerdį', 1, 7),
(11, 'BRIUSAS VILISAS WOOHOOO', 15, 7),
(12, 'suvalgė viens kitą dinozaurai\r\n', 1, 7),
(13, 'yippe ki yay madafaka', 15, 21);

-- --------------------------------------------------------

--
-- Table structure for table `privilegijos`
--

DROP TABLE IF EXISTS `privilegijos`;
CREATE TABLE IF NOT EXISTS `privilegijos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privilegijos`
--

INSERT INTO `privilegijos` (`id`, `pavadinimas`) VALUES
(1, 'SKAITYMO_PRIVILEGIJA'),
(2, 'RASYMO_PRIVILEGIJA');

-- --------------------------------------------------------

--
-- Table structure for table `rezisierius`
--

DROP TABLE IF EXISTS `rezisierius`;
CREATE TABLE IF NOT EXISTS `rezisierius` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vardas_pavarde` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rezisierius`
--

INSERT INTO `rezisierius` (`id`, `vardas_pavarde`) VALUES
(1, 'Steven Spielberg'),
(2, 'Ridley Scott'),
(3, 'Martin Campbell'),
(4, 'James Cameron'),
(5, 'Robert Rodriguez'),
(6, 'Tony Scott'),
(7, 'Michael Bay'),
(8, 'Clint Eastwood');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `pavadinimas`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_VARTOTOJAS');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FKgwdqnvhgfx78oeaxjx2acxqn8` (`role_id`),
  KEY `FKnjv0a4q1ld250wuuuqfwukexw` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`user_id`, `role_id`) VALUES
(7, 1),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roliu_privilegijos`
--

DROP TABLE IF EXISTS `roliu_privilegijos`;
CREATE TABLE IF NOT EXISTS `roliu_privilegijos` (
  `role_id` int(11) NOT NULL,
  `privilegijos_id` int(11) NOT NULL,
  KEY `FKm4n07vwvdlt9dr15mry9lx7ft` (`privilegijos_id`),
  KEY `FKkanj29mmamfmvmyxs31kyrwi6` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roliu_privilegijos`
--

INSERT INTO `roliu_privilegijos` (`role_id`, `privilegijos_id`) VALUES
(1, 1),
(1, 2),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vartotojas`
--

DROP TABLE IF EXISTS `vartotojas`;
CREATE TABLE IF NOT EXISTS `vartotojas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `elpastas` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pavarde` varchar(255) DEFAULT NULL,
  `token_expired` bit(1) NOT NULL,
  `vardas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vartotojas`
--

INSERT INTO `vartotojas` (`id`, `username`, `elpastas`, `enabled`, `password`, `pavarde`, `token_expired`, `vardas`) VALUES
(1, 'MasterYoda', 'vilkas@siena.pjauna', b'1', 'lopas', 'Yoda', b'0', 'Džeimsas'),
(2, 'megatronas', NULL, b'0', NULL, NULL, b'0', NULL),
(3, 'vartotojas_vartoja', NULL, b'0', NULL, NULL, b'0', NULL),
(7, 'Test', 'test@test.com', b'1', '$2a$10$ylXvWNwr40tmgUnDnAUM5u.PxKUgbaqwmKaHrqiB.0lDn1AUbBPbS', 'Test', b'0', 'Test'),
(8, 'Tomazius', 'liutkus.to@gmail.com', b'1', '$2a$10$c5OJwI.De702CBjr4wLdz.j5g0/zT9Z8P5kqwtkZwW1dKdP.ijJf6', 'Liutkus', b'0', 'Tomas'),
(9, '', 'liut', b'1', '$2a$10$RRMEe3eF2uMv7y.N6twojOaYpMHNxE884LSGNfwu2MglT60w4i5Pi', 'Liutkus', b'0', 'Tomas'),
(10, 'Tomazius', 'liutkus.to@gmail.com', b'1', '$2a$10$ZLiR.ypTTqHOW3RQ5xx6Q..6ZYsc1iagaog1R5eLKVcWmWA.42.Ni', 'Liutkus', b'0', 'Tomas'),
(11, 'gostreinas', 'tomabakaka', b'1', '$2a$10$Ih1ZjrSGsAXbhm79RMlCZu6ZRm6x00UMwnKYm989qGLfLlBf590Tm', 'Liutkus', b'0', 'Tomas'),
(12, 'tomazius', 'tomas@one.lt', b'1', '$2a$10$NAY6FiU/zYftawg98Cr8VOvhN4iehcSvP2I4z6hJZrizvocYgcebe', 'liutkus', b'0', 'tomas'),
(13, 'Psychinis', 'logistika@yra.gaidys', b'1', '$2a$10$XsmPQ7S3RFEW0NA/qjRTKOatVom8iE4EQbBpQXqntvrApeTzGT8oS', 'Slėnys', b'0', 'Martynas'),
(14, 'Psychinis', 'logistika@yra.gaidys', b'1', '$2a$10$A5MaHPkoN2.5mzgsDLlxde9nJNOWCiAo4etMo/C/iDoKDN3sI78Le', '', b'0', 'Martynas'),
(15, '', 'logistika@yra.gaidys', b'1', '$2a$10$nxLN72Ro7VHdplGhsNLPgOKiDtD1DMbQUvdw2z.udaTws.d.WtTxa', '', b'0', 'Martynas'),
(16, '', 'logistika@yra.gaidys', b'1', '$2a$10$y5R4w18vMUjKCXhSBpXQPOIHFfwblBB7uVsDQq3DdesgAvBvx778.', '', b'0', 'Martynas'),
(17, '', 'logistika@yra.gaidys', b'1', '$2a$10$ev5toTEYRhi8NQz/41aRue3x9RfXBuZqG5U16s9LAGR.KUDBQ7FM2', '', b'0', 'Martynas'),
(18, '', 'logistika@yra.gaidys', b'1', '$2a$10$CtswsROvCSk3q2OCHeMRZ.NU8VoTKCi/8RG81mO0DBU0ILzvB20Om', '', b'0', 'Martynas'),
(19, 'Julijonas', 'julius@one.lt', b'1', '$2a$10$7PX0pUBMTJLHEuO9XJoZoehNNi/VpN3oHgEIlDI8tE8UUpbHjKFCi', 'Jankauskis', b'0', 'Julius'),
(20, 'PYPLAS', 'tomas@one.lt', b'1', '$2a$10$BTl6AZpjdO9dxi0RbYzAZ.SY5uzAZjz2wxEqwU.C1Osl31BOuelpe', 'Liutkus', b'0', 'Tomas'),
(21, 'Lankytojas', 'lebron@james.lt', b'1', '$2a$10$7pW5axoR8LHfObtEQv98/OkPb5xeJdVyNK3RsNb7nyqlVYv04ZQX2', 'James', b'0', 'LeBron'),
(22, 'OptimasPraimas', 'leonas@ruudonkepuraite.lt', b'1', '$2a$10$YGNjLOJdColQdQD.t84HCOEi/uzXPJBKtpzqn3ONtv6yymxc8Y/OS', 'Vaickelionis', b'0', 'Leonas'),
(23, 'Raizekas', 'dovydas@valiokas.lt', b'1', '$2a$10$vsjHqU31QJqsdlAF9kCSqu1LEJW/G45PHyQ5l/YXmbMgMhGJXVoqa', 'Valiokas', b'0', 'Dovydas');

-- --------------------------------------------------------

--
-- Table structure for table `zanras`
--

DROP TABLE IF EXISTS `zanras`;
CREATE TABLE IF NOT EXISTS `zanras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zanras`
--

INSERT INTO `zanras` (`id`, `pavadinimas`) VALUES
(1, 'Sci-Fi'),
(2, 'Drama'),
(3, 'Adventure'),
(4, 'Historical'),
(5, 'Action'),
(6, 'Thriller'),
(7, 'Fantasy'),
(8, 'Western'),
(9, 'Comedy'),
(10, 'Horror'),
(11, 'Romance');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `filmas`
--
ALTER TABLE `filmas`
  ADD CONSTRAINT `FKtjjciuedbra7j8ik51r3p4dvu` FOREIGN KEY (`rezisieriaus_id`) REFERENCES `rezisierius` (`id`);

--
-- Constraints for table `filmo_zanrai`
--
ALTER TABLE `filmo_zanrai`
  ADD CONSTRAINT `FK9a6nfpn8ds2yxi7nmi8ecwbx4` FOREIGN KEY (`zanro_id`) REFERENCES `zanras` (`id`),
  ADD CONSTRAINT `FKp0g6e0cblbtr43t3qtw2nqrg5` FOREIGN KEY (`filmo_id`) REFERENCES `filmas` (`id`);

--
-- Constraints for table `komentaras`
--
ALTER TABLE `komentaras`
  ADD CONSTRAINT `FKfss6buiinuworte7qo1jxehik` FOREIGN KEY (`vartotojo_id`) REFERENCES `vartotojas` (`id`),
  ADD CONSTRAINT `FKs404ba54dch747ke6egg3yxi3` FOREIGN KEY (`filmo_id`) REFERENCES `filmas` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `FKgwdqnvhgfx78oeaxjx2acxqn8` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKnjv0a4q1ld250wuuuqfwukexw` FOREIGN KEY (`user_id`) REFERENCES `vartotojas` (`id`);

--
-- Constraints for table `roliu_privilegijos`
--
ALTER TABLE `roliu_privilegijos`
  ADD CONSTRAINT `FKkanj29mmamfmvmyxs31kyrwi6` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKm4n07vwvdlt9dr15mry9lx7ft` FOREIGN KEY (`privilegijos_id`) REFERENCES `privilegijos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

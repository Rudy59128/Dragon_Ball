SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=1;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
-- Création de la base de données dragonball
CREATE SCHEMA IF NOT EXISTS `dragonball` DEFAULT CHARACTER SET utf8 ;
-- Utilisation de la base de données dragonball
USE `dragonball`;

-- Table character
CREATE TABLE `character` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `birthday` VARCHAR(25) NOT NULL,
  `origin` VARCHAR(25),
  `species` VARCHAR(25),
  `description` TEXT,
  PRIMARY KEY (id)
);

-- Exemple d'insertion de données dans la table character
INSERT INTO `character` (`name`, `birthday`, `origin`, `species`, `description`)
VALUES
  ('Son Goku', '737', 'Planète Vegeta', 'Saiyan', "Le protagoniste principal de Dragon Ball, Goku est un Saiyan doté d'une force incroyable et d'un appétit insatiable. Avec son amour pour les combats et sa personnalité aimable, il est toujours prêt à se surpasser pour protéger ses proches et l'univers."),
  ('Son Gohan', '18 Mai 757', 'Planète Terre', 'Humain/Saiyan', "Le fils de Goku, Gohan possède un potentiel énorme en tant que combattant. Bien qu'il préfère les études et soit souvent réservé, il se révèle être un guerrier puissant lorsque le besoin s'en fait sentir, protégeant ceux qu'il aime avec courage et détermination."),
  ('Son Goten', '732', 'Planète Terre', 'Humain/Saiyan', "Le deuxième fils de Goku, Goten est un jeune garçon énergique et joyeux. Porté craché de son, il hérite des talents de combat de ce dernier et se joint souvent à Trunks pour former la célèbre équipe des Jeunes Guerriers."),
  ('Vegeta', '732', 'Planète Vegeta', 'Saiyan', "L'orgueilleux prince des Saiyans, Vegeta est constamment en compétition avec Goku. Bien qu'il ait commencé comme un ennemi, Vegeta évolue et se bat aux côtés des héros, montrant une loyauté féroce envers sa famille et développant une force inégalée."),
  ('Bulma', '733', 'Planète Terre', 'Humaine', "Une scientifique géniale et aventurière, Bulma est le cerveau derrière de nombreuses inventions et découvertes dans Dragon Ball. Son charme, son intelligence et son courage en font un pilier essentiel de l'équipe."),
  ('Trunks (Futur)', '766', 'Planète Terre', 'Humain/Saiyan', "Fils de Vegeta et Bulma, il vient d'un futur alternatif et apocalyptique où le monde a été décimé par les cyborgs. Il voyage à travers le temps afin de rectifier l'histoire et sauver son avenir, avec sa puissance et sa maîtrise de l'épée, il incarne l'espoir d'un avenir meilleur."),
  ('Trunks (enfant)', '766', 'Planète Terre', 'Humain/Saiyan', "Dans le présent, Trunks est un jeune garçon avec une personnalité enjouée et une grande affection pour son amie, Goten. Il participe aux aventures avec les autres enfants et possède également un grand potentiel de combat."),
  ('Piccolo', '753', 'Planète Namek', 'Namek', "Guerrier Namek puissant, Piccolo a été autrefois un ennemi de Goku. Cependant, il devient plus tard un allié précieux, apportant sa sagesse, sa stratégie et sa force redoutable dans la bataille contre les forces du mal. Il est le mentor de Gohan."),
  ('Krilin', '736', 'Planète Terre', 'Humain', "Un ami proche de Goku, Krilin est un combattant agile et compétent. Bien qu'il ne possède pas la puissance brute des Saiyans, sa détermination, son courage et sa loyauté en font un allié précieux dans les moments critiques."),
  ('Yamcha', '733', 'Planète Terre', 'Humain', "Un ancien bandit du désert, Yamcha abandonne sa vie criminelle et devient un combattant aux côtés de Goku et ses amis. Bien qu'il ne soit pas le plus puissant, il offre une touche d'humour et une grande habileté lors des batailles."),
  ('Tenshinhan', '733', 'Planète Terre', 'Humain', "Un ancien rival de Goku, Tenshinhan est un expert en arts martiaux et un membre dévoué de l'école des arts martiaux de la Grue. Il apporte une discipline féroce et une grande maîtrise des techniques spéciales lorsqu'il se joint aux combats."),
  ('Tortue Géniale', '430', 'Planète Terre', 'Humain', "Le maître de Goku, Krilin et Yamcha, Tortue Géniale est un sage expert en arts martiaux et fondateur de la célèbre école de la Tortue. Bien qu'il soit souvent perverti et excentrique, il transmet des enseignements précieux à ses élèves et reste un personnage emblématique de la série."),
  ('Dr. Brief', '708', 'Planète Terre', 'Humain', "Le père de Bulma et fondateur de Capsule Corporation, Dr Brief est un scientifique de génie responsable de nombreuses inventions technologiques dans Dragon Ball. Il contribue à l'aventure en fournissant un soutien technique et des solutions innovantes."),
  ('Professeur Bocks', '704', 'Planète Terre', 'Humain', "Frère disparu du Dr. Brief, il refait surface bien des années plus tard afin de prendre sa revanche contre son jeune frère. Animé par la haine et la vengeance, il n'hésitera pas à mettre le monde à feu et sang.");



-- Table gallery
CREATE TABLE `gallery` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `link` VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

-- Exemple d'insertion de données dans la table gallery
INSERT INTO `gallery` (`link`)
VALUES
  ('http://example.com/image1.jpg'),
  ('http://example.com/image2.jpg');

-- Table timeline
CREATE TABLE `timeline` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `year` VARCHAR(25) NOT NULL,
  `event` TEXT NOT NULL,
  PRIMARY KEY (id)
);

-- Exemple d'insertion de données dans la table timeline
INSERT INTO `timeline` (`year`, `event`)
VALUES
  ("An 704", "Naissance de Bocks"),
  ("An 737", "Naissance de Brief"),
  ("An 762", "Peu après le combat contre Vegeta, les Guerriers Z sont hospitalisés, Karin rend visite à Goku à l'hôpital, Bocks clone l'arbre à Senzu"),
  ("Août 764", "Venu du futur, Trunks élimine Freezer et Cold, averti Goku que deux cyborgs vont ravager la Terre dans 3 ans"),
  ("Août 766", "Bulma apprend, lors d'une conversation avec son père, l'identité du Dr. Gero grâce à un magazine scientifique. Bocks apparaît à ses côtés"),
  ("Décembre 766", "Dans l'espace, sur une planète isolée et sans vie, Vegeta devient Super Saiyan et dépasse Son Goku"),
  ("Mai 767", "Naissance de Cell, un bio-cyborg créé par le Dr. Gero. Alors qu'il n'est qu'à l'état d'un embryon, il est détruit par Trunks et Krilin. Ils sont procédés par le professeur Bocks qui récupère ses données personnelles et ses notes ainsi que les plans des cyborgs mais oublie ceux de C-17"),
  ("Août 774", "3 mois après la défaite de Majin Buu, nos héros s'entraînent ensemble. Au même moment, Bocks met à exécution son plan");  

-- Table story
CREATE TABLE `story` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `character_id` INT NOT NULL,
  `timeline_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`character_id`) REFERENCES `character`(`id`),
  FOREIGN KEY (`timeline_id`) REFERENCES `timeline`(`id`)
);

-- Exemple d'insertion de données dans la table story
INSERT INTO `story` (`name`, `character_id`, `timeline_id`)
VALUES
  ('The Saiyan Saga', 1, 2),
  ('The Namek Saga', 1, 2),
  ('The Cell Saga', 1, 3);

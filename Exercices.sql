-- -- Exercice 2
-- Suppression base de donnée
DROP DATABASE IF EXISTS `mediaBank`


-- -- Exercice 3
-- Création base de donnée utf8

CREATE DATABASE IF NOT EXISTS `mediaBank` CHARACTER SET `UTF8`


-- -- Exercice 5
-- Créer une table images contenant 8 colonnes :
    -- id INT AUTO INCREMENT
    -- name varchar(50)
    -- link varchar(255)
    -- width INT
    -- height INT
    -- format varchar(5)
    -- description TEXT
    -- publicationDate DATE

CREATE TABLE `images`( 
    `id` INT NOT NULL AUTO_INCREMENT, 
    -- clé primaire unique non nulle qui s'incrémentera de 1
    `name` VARCHAR(50), 
    `link` VARCHAR(255), 
    -- varchar = chaine de caractère (nombre de caratère)
    `width` INT, 
    `height` INT, 
    -- int = c'est un nombre entier (sans virgule)
    `format` VARCHAR(5), 
    `description` TEXT, 
    -- text = chaine de caractère sans limite de nombre de caractères
    `publicationDate` DATE, 
    -- date au format mysql = annee - mois - jour
    PRIMARY KEY (`id`) )

-- Créer une table videos avec 6 colonnes :

    --  id INT AUTO INCREMENT
    -- name varchar(50)
    -- link varchar(255)
    -- duration TIME
    -- description TEXT
    -- publicationDate DATE

    Même principe que pour la table précédente

    Pour supprimer une table : DROP TABLE `nom de la table`

    -- Exercice 6
    -- Insérez ces deux lignes dans la table images.

-- suppression de la première ligne crééer par le sql, puis on débute avec INSERT INTO qui signifie création de champs
INSERT INTO `images` (`name`, `link`, `width`, `height`, `format`, `description`, `publicationDate`) 
VALUES ('orwellPortrait', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg', 1176, 1596, 'jpg', 'Portrait de l’auteur Geroge Orwell', '2020-05-10'), 
('steinbeckPortrait', 'https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg', 640, 476, 'jpg', 'Portrait de l’auteur John Steinbeck', '2020-01-02');


Afficher les champs : SELECT `id`, `name`, `link`, `duration`, `description`, `publicationDate` FROM `video`

-- Utilisation de Limit si on veut admettons que les deuc premiers champs, offset pour dire qu'on veut qu'à partir du champs numéro...

-- Insérez ces deux lignes dans la table videos.


    -- Exercice 7
    -- Modifier la première ligne de la table images : changer la date de publication par la date du jour.
    UPDATE `images` SET `publicationDate` = '2020-11-23' (pour changer toutes les dates des lignes de ma table)
    UPDATE `images` SET `publicationDate` = '2020-11-23' WHERE id = 1 (on pourrait aussi mettre une fonction date CURDATE())

    -- Afficher la ligne.
    SELECT `publicationDate` FROM `images` WHERE id = 1 

    -- Modifier la deuxième ligne de la table videos : changer la durée par 1 :41.
    UPDATE `video` SET `duration` = '1 :41'
    -- Afficher la ligne.
    SELECT `duration` FROM `video` WHERE `duration` = '1 :41'


 -- Exercice 8
    -- Supprimer la deuxième ligne de la table images.
    DELETE FROM `images`
    WHERE `id` = 2
    -- Supprimer la première ligne de la table videos.
    DELETE FROM `video`
    WHERE `id` = 1


 -- Exercice 9
    --  Supprimer la table video.
    DROP TABLE `video`
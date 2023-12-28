INSERT INTO article (id, name, price, description, marque, sexe) VALUES (2, 'All Pro Nitro Jaune', 130, 'La All-Pro Nitro, qui va vous aider à faire la différence des 2 côtés du parquet. Comment ? Elle combine les technologies PUMA à un design sophistiqué.

Voici la All-Pro NITRO, la toute nouvelle paire de PUMA Hoops, conçue pour maximiser tous les aspects de votre jeu.', 'PUMA', 'homme');
INSERT INTO article (id, name, price, description, marque, sexe) VALUES (3, 'Chaussures imperméables de randonnée montagne - MH500 bleu', 70, "Cette chaussure vous apportera un bon amorti et sa semelle est très accrocheuse grâce à la technologie Outdoor Contact. Tige imperméable, en croute de cuir, qui s\'adapte à votre pied.

Nous avons conçu cette chaussure imperméable pour vos randonnées à la journée. Découvrez la montagne en alliant confort et sécurité à chacun de vos pas", 'QUECHUA', 'femme');



INSERT INTO variant (id, size) VALUES (9, '36');
INSERT INTO variant (id, size) VALUES (10, '37');
INSERT INTO variant (id, size) VALUES (11, '38');
INSERT INTO variant (id, size) VALUES (1, '39');
INSERT INTO variant (id, size) VALUES (2, '40');
INSERT INTO variant (id, size) VALUES (3, '41');
INSERT INTO variant (id, size) VALUES (4, '42');
INSERT INTO variant (id, size) VALUES (5, '43');
INSERT INTO variant (id, size) VALUES (6, '44');
INSERT INTO variant (id, size) VALUES (7, '45');
INSERT INTO variant (id, size) VALUES (8, '46');



INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 1);
INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 2);
INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 3);
INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 4);
INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 5);
INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 6);
INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 7);
INSERT INTO article_variant (idarticle, idvariant) VALUES (2, 8);
INSERT INTO article_variant (idarticle, idvariant) VALUES (3, 1);
INSERT INTO article_variant (idarticle, idvariant) VALUES (3, 2);
INSERT INTO article_variant (idarticle, idvariant) VALUES (3, 3);
INSERT INTO article_variant (idarticle, idvariant) VALUES (3, 4);
INSERT INTO article_variant (idarticle, idvariant) VALUES (3, 9);
INSERT INTO article_variant (idarticle, idvariant) VALUES (3, 10);
INSERT INTO article_variant (idarticle, idvariant) VALUES (3, 11);

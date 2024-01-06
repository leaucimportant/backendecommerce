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

INSERT INTO images (id, image, idarticle) VALUES (1, 'https://contents.mediadecathlon.com/p2559467/k$dd26ca80dd9a886bcdc9ac9ff73fb8a0/sq/chaussures-de-basketball-homme-puma-all-pro-nitro-jaune.jpg?f=3000x3000', 2);
INSERT INTO images (id, image, idarticle) VALUES (2, 'https://contents.mediadecathlon.com/p2559463/k$2489a7e604a7839f10b5bc66dbaab6a9/sq/chaussures-de-basketball-homme-puma-all-pro-nitro-jaune.jpg?f=3000x3000', 2);
INSERT INTO images (id, image, idarticle) VALUES (3, 'https://contents.mediadecathlon.com/p2559466/k$6791a9500dcf919fe4247f572d4a9d45/sq/chaussures-de-basketball-homme-puma-all-pro-nitro-jaune.jpg?f=3000x3000', 2);
INSERT INTO images (id, image, idarticle) VALUES (4, 'https://contents.mediadecathlon.com/p2559464/k$d20e6e407dd47261505694a37cadc0d4/sq/chaussures-de-basketball-homme-puma-all-pro-nitro-jaune.jpg?f=3000x3000', 2);
INSERT INTO images (id, image, idarticle) VALUES (5, 'https://contents.mediadecathlon.com/p2559465/k$b6ab46ddb426b1251c6f3df467e4ad07/sq/chaussures-de-basketball-homme-puma-all-pro-nitro-jaune.jpg?f=3000x3000', 2);
INSERT INTO images (id, image, idarticle) VALUES (6, 'https://contents.mediadecathlon.com/p2153576/k$f86eb976732c4d4878746933bcc6f6aa/sq/chaussures-impermeables-de-randonnee-montagne-mh500-bleu-femme.jpg?f=3000x3000', 3);
INSERT INTO images (id, image, idarticle) VALUES (7, 'https://contents.mediadecathlon.com/p2153581/k$6a786736b89d88ac8516db3cea29bed4/sq/chaussures-impermeables-de-randonnee-montagne-mh500-bleu-femme.jpg?f=3000x3000', 3);
INSERT INTO images (id, image, idarticle) VALUES (8, 'https://contents.mediadecathlon.com/p2153577/k$b85ec415746f19c76538860aa82edb53/sq/chaussures-impermeables-de-randonnee-montagne-mh500-bleu-femme.jpg?f=3000x3000', 3);
INSERT INTO images (id, image, idarticle) VALUES (9, 'https://contents.mediadecathlon.com/p2153578/k$c59963aa4c19103184cf046bb30200b1/sq/chaussures-impermeables-de-randonnee-montagne-mh500-bleu-femme.jpg?f=3000x3000', 3);
INSERT INTO images (id, image, idarticle) VALUES (10, 'https://contents.mediadecathlon.com/p2153579/k$cad355c28c75136f9208d70a848cb2d5/sq/chaussures-impermeables-de-randonnee-montagne-mh500-bleu-femme.jpg?f=3000x3000', 3);
INSERT INTO images (id, image, idarticle) VALUES (11, 'https://contents.mediadecathlon.com/p2153580/k$8cec21268a3cf05812a97ffd487fcf39/sq/chaussures-impermeables-de-randonnee-montagne-mh500-bleu-femme.jpg?f=3000x3000', 3);


create table breizhsportdb.articles
(
    id          int auto_increment
        primary key,
    name        varchar(20)  not null,
    price       float        not null,
    description varchar(255) not null,
    image       varchar(255) not null
);

INSERT INTO breizhsportdb.articles (id, name, price, description, image) VALUES (1, 'Super Baskets', 55.99, 'Paire de baskets montée sur ressort pour sauter plus haut Gianmarco Tamberi', 'https://img.kwcdn.com/product/Fancyalgo/VirtualModelMatting/1858001d4d7ca681d9a29fde26bdada0.jpg?imageView2/2/w/800/q/70');
INSERT INTO breizhsportdb.articles (id, name, price, description, image) VALUES (2, 'Bob Ricard', 9.99, 'Ce bob vous permettra de trouver la personne qui VOUS ressemble !', 'https://www.plaisirduyoga.com/cdn/shop/products/bob-ricard-jaune_1200x.png?v=1662131169');
INSERT INTO breizhsportdb.articles (id, name, price, description, image) VALUES (3, 'Ancien CESI', 1523.62, 'Collocation avec les voisins du dessus sont assez compliqué et place de parking limité. Parfait pour les apéros ainsi que les cafés', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUGyKLzUhXH34DPpebt6ovKBimdHivKlV4ZPla4KSQMh9G1BBrL1XqgW4sPe_Kfs9dO00&usqp=CAU');
INSERT INTO breizhsportdb.articles (id, name, price, description, image) VALUES (4, 'Transmission VW Polo', 99912, 'Cette transmission neuve vous fera passer d\'agréables moments en compagnie de VW !', 'https://s3.amazonaws.com/rparts-sites/8f00ecc91b6064a7571443bd0d01afe2/images/custom/transmission.jpg');


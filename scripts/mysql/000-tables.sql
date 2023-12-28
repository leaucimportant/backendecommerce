create table if not exists article
(
    id          int auto_increment
        primary key,
    name        varchar(100)  not null,
    price       int(3)        not null,
    description varchar(1000) not null,
    marque      varchar(25)   not null,
    sexe        varchar(20)   null
);
create table if not exists article_variant
(
    idarticle int not null,
    idvariant int not null,
    primary key (idarticle, idvariant)
);

create table if not exists variant
(
    id   int auto_increment
        primary key,
    size varchar(10) null,
    constraint variant_pk
        unique (size)
);



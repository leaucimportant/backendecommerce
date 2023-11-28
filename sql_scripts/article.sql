create table if not exists article
(
    id          int auto_increment
        primary key,
    name        varchar(20)  not null,
    price       int(3)       not null,
    description varchar(255) not null,
    image       varchar(255) not null
);


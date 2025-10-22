USE tifosi;

create table marque (
id_marque INT auto_increment primary KEY, 
nom VARCHAR(50) NOT NULL UNIQUE);

create table boisson (
id_boisson INT auto_increment PRIMARY KEY,
nom varchar(50) not null,
prix decimal(5,2) not null,
id_marque int,
foreign key (id_marque) references marque(id_marque)
);

create table ingredient (
in_ingredient INT auto_increment primary key,
nom varchar(50) not null unique
);

create table focaccia (
id_focaccia INT auto_increment primary key,
nom varchar(50) not null,
prix decimal(5,2) not null
);

create table focaccia_ingredient (
id_focaccia INT,
id_ingredient INT,
quantite INT not null,
primary key(id_focaccia, id_ingredient),
foreign key(id_focaccia) references focaccia(id_focaccia),
foreign key(id_ingredient) references ingredient(id_ingredient)
);

drop table ingredient;

create table ingredient (
id_ingredient INT auto_increment primary key,
nom varchar(50) not null unique
);

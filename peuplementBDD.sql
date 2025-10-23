use tifosi;

insert into marque (nom) values
('Coca-cola'),
('Cristalline'),
('Monster'),
('Pepsico');

insert into ingredient (nom) values
('Ail'),
('Ananas'),
('Artichaut'),
('Bacon'),
('Base Tomate'),
('Base Crème'),
('Champignon'),
('Chevre'),
('Cresson'),
('Emmental'),
('Gorgonzola'),
('Jambon cuit'),
('Jambon fumé'),
('Oeuf'),
('Oignon'),
('Olive noire'),
('Olive verte'),
('Parmesan'),
('Piment'),
('Poivre'),
('Pomme de terre'),
('Raclette'),
('Salami'),
('Tomate cerise'),
('Mozzarella');

insert into focaccia (nom, prix) values
('Mozzaccia', 9.80),
('Gorgonzollaccia', 10.80),
('Raclaccia', 8.90),
('Emmentalaccia', 9.80),
('Tradizione', 8.90),
('Hawaienne', 11.20),
('Américaine', 10.80),
('Paysanne', 12.80);

insert into focaccia_ingredient values
(1, 5, 200),
(1, 25, 50),
(1, 9, 20),
(1, 13, 80),
(1, 1, 2),
(1, 4, 20),
(1, 7, 40),
(1, 18, 50),
(1, 20, 1),
(1, 16, 20);

INSERT INTO focaccia_ingredient VALUES
(2, 5, 200),
(2, 11, 50),
(2, 9, 20),
(2, 3, 20),
(2, 7, 40),
(2, 18, 50),
(2, 20, 1),
(2, 16, 20);

INSERT INTO focaccia_ingredient VALUES
(3, 5, 200),
(3, 8, 50),
(3, 9, 20),
(3, 3, 20),
(3, 7, 40),
(3, 18, 2),
(3, 20, 80),
(3, 16, 20);

INSERT INTO focaccia_ingredient VALUES
(4, 5, 200),
(4, 25, 50),
(4, 9, 20),
(4, 13, 80),
(4, 7, 60),
(4, 18, 20),
(4, 20, 80),
(4, 16, 10);

INSERT INTO focaccia_ingredient VALUES
(5, 5, 200),
(5, 25, 50),
(5, 9, 20),
(5, 12, 80),  -- Jambon cuit (assunto come jambon cru)
(5, 7, 40),
(5, 18, 50),
(5, 20, 1),
(5, 16, 20);

INSERT INTO focaccia_ingredient VALUES
(6, 5, 200),
(6, 25, 50),
(6, 9, 20),
(6, 13, 80),
(6, 2, 40),
(6, 20, 1),
(6, 16, 20);

INSERT INTO focaccia_ingredient VALUES
(7, 5, 50),
(7, 25, 50),
(7, 9, 20),
(7, 4, 80),
(7, 21, 80),
(7, 15, 20),
(7, 16, 20),
(7, 17, 20); 

INSERT INTO focaccia_ingredient VALUES
(8, 6, 200),
(8, 8, 50),
(8, 9, 20),
(8, 21, 80),
(8, 13, 50),
(8, 3, 40),
(8, 7, 60),
(8, 18, 20),
(8, 20, 80),
(8, 16, 10);

INSERT INTO boisson (nom) VALUES
('Coca-cola zéro'),
('Coca-cola original'),
('Fanta citron'),
('Fanta orange'),
('Capri-sun'),
('Pepsi'),
('Pepsi Max Zéro'),
('Lipton zéro citron'),
('Lipton Peach'),
('Monster energy ultra gold'),
('Monster energy ultra blue'),
('Eau de source');

alter table boisson
modify column prix decimal (5, 2) null;
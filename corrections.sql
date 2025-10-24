use tifosi;


-- CORRECTION TEST 4.4
alter table boisson 
add constraint fk_boisson_marque 
foreign key (id_marque) references marque(id_marque); 

UPDATE boisson SET id_marque = 1 WHERE nom = 'Coca-cola zéro'; 
UPDATE boisson SET id_marque = 1 WHERE nom = 'Coca-cola original'; 
UPDATE boisson SET id_marque = 1 WHERE nom = 'Fanta citron'; 
UPDATE boisson SET id_marque = 1 WHERE nom = 'Fanta orange'; 
UPDATE boisson SET id_marque = 1 WHERE nom = 'Capri-sun'; 
UPDATE boisson SET id_marque = 4 WHERE nom = 'Pepsi'; 
UPDATE boisson SET id_marque = 4 WHERE nom = 'Pepsi Max Zéro'; 
UPDATE boisson SET id_marque = 4 WHERE nom = 'Lipton zéro citron'; 
UPDATE boisson SET id_marque = 4 WHERE nom = 'Lipton Peach'; 
UPDATE boisson SET id_marque = 3 WHERE nom = 'Monster energy ultra gold'; 
UPDATE boisson SET id_marque = 3 WHERE nom = 'Monster energy ultra blue'; 
UPDATE boisson SET id_marque = 2 WHERE nom = 'Eau de source';


-- CORRECTION TEST 4.5
DELETE FROM focaccia_ingredient
WHERE id_focaccia = 3;

INSERT INTO focaccia_ingredient VALUES
(3, 5, 200),
(3, 22, 50), 
(3, 9, 20),
(3, 1, 2),
(3, 7, 40),
(3, 18, 50),
(3, 20, 1);


-- CORRECTION TEST 4.6
DELETE FROM focaccia_ingredient
WHERE id_focaccia = 4 AND id_ingredient = 5;
INSERT INTO focaccia_ingredient VALUES (4, 6, 200);
DELETE FROM focaccia_ingredient
WHERE id_focaccia = 4 AND id_ingredient = 25;
DELETE FROM focaccia_ingredient
WHERE id_focaccia = 4 AND id_ingredient = 13;
INSERT INTO focaccia_ingredient VALUES (4, 10, 50);

DELETE FROM focaccia_ingredient
WHERE id_focaccia = 5 AND id_ingredient = 20;
INSERT INTO focaccia_ingredient VALUES (5, 17, 10);

DELETE FROM focaccia_ingredient
WHERE id_focaccia = 6 AND id_ingredient = 13;
INSERT INTO focaccia_ingredient VALUES (6, 4, 80);
INSERT INTO focaccia_ingredient VALUES (6, 19, 2);
INSERT INTO focaccia_ingredient VALUES (6, 18, 50);

INSERT INTO focaccia_ingredient VALUES (8, 1, 2);
INSERT INTO focaccia_ingredient VALUES (8, 14, 50);


-- CORRECTION TEST 4.6
DELETE FROM focaccia_ingredient
WHERE id_focaccia = 2 AND id_ingredient = 3;
INSERT INTO focaccia_ingredient VALUES (2, 1, 2);
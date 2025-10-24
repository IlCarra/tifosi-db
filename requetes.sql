use tifosi; 

-- 4.1 Vérifier le tri alphabétique des noms
select nom from focaccia order by nom asc;
-- Résultat attendu : Liste Triée
-- Résultat obtenu : Liste correctement triée
-- Commentaire : Le script marche

-- 4.2 Afficher le nombre totald'ingrédients
select COUNT(*) as total_ingredients from ingredient;
-- résultat attendu : 25
-- Résultat obtenu : 25
-- Commentaire : le script marche

-- 4.3 Afficher le prix moyen des focaccias
select round(AVG(prix), 2) as prix_moyen from focaccia;
-- Résultat attendu : Moyenne calculée (10.375)
-- Résultat obtenu : 10.38
-- Commenntaire : prix moyen arrondi grace a round()alter

-- 4.4 Liste des boissons avec leur marque, triée par nom de boisson
SELECT b.nom AS boisson, m.nom AS marque
FROM boisson b
LEFT JOIN marque m ON b.id_marque = m.id_marque
ORDER BY b.nom ASC;
-- Résultat attendu : Liste des boissons avec leur marque
-- Résultat obtenu : Affichage des boissons mais sans la marque
-- Commentaire : Modifié la table boisson en ajoutant le id_marque associé a la boisson

-- 4.5 Liste des ingrédients pour une Raclaccia
SELECT i.nom
FROM focaccia f
JOIN focaccia_ingredient fi ON f.id_focaccia = fi.id_focaccia
JOIN ingredient i ON fi.id_ingredient = i.id_ingredient
WHERE f.nom = 'Raclaccia';
-- Résultat attendu : Liste des ingrédients de Raclaccia
-- Résultat obtenu : Pas les bon ingredients
-- Commentaire : Modifié le contenu des ingrédients lié à la Raclaccia

-- 4.6 Afficher le nom et le nombre d'ingrédients pour chaque foccacia
select f.nom, count(fi.id_ingredient) as nb_ingredients
from focaccia f
join focaccia_ingredient fi on f.id_focaccia = fi.id_focaccia
group by f.nom;
-- Résultat attendu : Tableau avec nom et nombre d'ingrédients
-- Résultat obtenu : Pas le bon nombre de ingredients dans des focaccias
-- Commentaire : Modifié les tables des focaccias avec le mauvais numero de ingredients

-- 4.7 Focaccia avec le plus d'ingredients
select f.nom from focaccia f
join focaccia_ingredient fi on f.id_focaccia = fi.id_focaccia
group by f.nom
order by count(fi.id_ingredient) desc
limit 1;
-- Résultat attendu : "Paysanne"
-- Résultat obtenu : "Paysanne"

-- 4.8 Liste des focaccias avec de l'ail
select distinct f.nom from focaccia f
join focaccia_ingredient fi on f.id_focaccia = fi.id_focaccia
where fi.id_ingredient = 1;
-- Résultat attendu : "Mozzaccia", "Gorgonzalaccia", "Raclaccia", "Paysanne"
-- Résultat obtenu : "Mozzaccia", "Raclaccia", "Paysanne"
-- Commentaire : Modifié et ajouté l'ingredient manquant

-- 4.9 Afficher la liste des ingrédients inutilisés
select i.nom from ingredient i
left join focaccia_ingredient fi on i.id_ingredient = fi.id_ingredient
where fi.id_focaccia is null;
-- Résultat attendu : "Salami", "Tomate cerise"
-- Résultat obtenu : "Salami", "Tomate cerise"

-- 4.10 Afficher la liste des focaccia qui n'ont pas de champignons
select f.nom from focaccia f
where f.id_focaccia not in (
  select fi.id_focaccia 
  from focaccia_ingredient fi
  where fi.id_ingredient = 7
);
-- Résultat attendu : "Hawaienne", "Américaine"
-- Résultat obtenu : "Hawaienne", "Américaine"
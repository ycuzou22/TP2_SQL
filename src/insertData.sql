INSERT INTO nationality
VALUES
(1, 'France'),
(2, 'Espagnol'),
(3, 'Suisse'),
(4, 'Belgique'),
(5, 'Royaume-Uni'),
(6, 'Pays-Bas'),
(7, 'Finland'),
(8, 'Italie'),
(9, 'Allemand'),
(10, 'Chine'),
(11, 'états-unis'),
(12, 'Bresil'),
(13, 'Japon'),
(14, 'Autralie'),
(15, 'Inde');

INSERT INTO productsType
VALUES
(1, 'Calculatrice'),
(2, 'PC Gamers'),
(3, 'Iphone'),
(4, 'AirPod'),
(5, 'Imprimante'),
(6, 'Clé USB'),
(7, 'Cable HDMI'),
(8, 'Souris'),
(9, 'Clavier'),
(10, 'Casque Audio'),
(11, 'Télévision'),
(12, 'Carte Graphique'),
(13, 'Processeur'),
(14, 'Barrette de RAM'),
(15, 'Disque Dur SSD');

INSERT INTO products
VALUES
(1, 'Souris sans Fil', 9.99, 56, 8),
(2, 'ASUS ROG STRIX-G16-G614JV-N3134W', 1756.99, 47, 2),
(3, 'Processeur Intel Core i7 - 12700K', 16.56, 68, 13),
(4, 'Corsair Vengeance RBG PRO - DDR4', 25.25, 98, 14),
(5, 'Samsung 870 QVO MZ-77Q1T0BW - 1 To', 99.99, 58, 15),
(6, 'Apple iphone 11 128Go - Noir', 89.69, 57, 3),
(7, 'RCA iRB32H3 Téléviseur 32 Pouces, Dolby', 78.23, 120, 11),
(8, "HP DeskJet 2720e - Jet d'encre couleur", 5.26, 200, 5),
(9, 'CLé USB 64Go, Flash Drive', 3.23, 24, 6),
(10, 'Snowkids Câble HDMI 4K', 321.12, 57, 7),
(11, 'Fostex TH900 MKII Casque Audio HiFi', 1245.23, 98, 10),
(12, 'Casio LC-401LV-BU-BOITE', 8.56, 65, 1),
(13, 'Apple AirPods - Or 24K', 8951.23, 203, 4),
(14, 'SteelSeries Apex Pro TKL clavier gaming HyperMagnetic', 156.23, 52, 9),
(15, 'MSI GeForce RTX 4060 Ti Ventus 2X Black 16G OC', 1500.2, 60, 12);

INSERT INTO paymentType
VALUES
(1, 'Carte bancaire'),
(2, 'Portfeuille électronique'),
(3, 'Paiement mobile'),
(4, 'Virement bancaire'),
(5, 'Monnaies virtuelles');

INSERT INTO clientTypes
VALUES
(1, 'Client'),
(2, 'Entreprise');

INSERT INTO clients
VALUES
(1, 'Jean', 'Forby', 'Jean_Forby@gmail.com', '06 49 87 56 36', 1),
(2, 'Daniel', 'Balak', 'Daniel_Balak@gmail.com', '07 56 84 99 68', 5),
(3, 'Roger', 'Binair', 'Roger_Binair@gmail.com', '07 56 32 15 56', 3),
(4, 'Folo', 'Gambi', 'Folo_Gambi@gmail.com', '06 89 56 48 59', 4),
(5, 'Lolo', 'Huge', 'Lolo_Huge@gmail.com', '07 89 48 56 78', 12),
(6, 'Roamon', 'Gogo', 'Roamon_Gogo@gmail.com', '06 89 45 85 96', 13),
(7, 'Jeff', 'Bezos', 'Jeff_Bezos@gmail.com', '548 569 532', 6),
(8, 'Mark', 'Zuckerberg', 'Mark_Zuckerberg@gmail.com', '648 569 532', 8),
(9, 'Elon', 'Musk', 'Elon_Musk@gmail.com', '648 512 699', 9),
(10, 'Bernard', 'Harnet', 'Bernard_Harnet@gmail.com', '648 561 232', 10),
(11, 'Harmony', 'Sakazuki', 'Harmony_Sakazuki@gmail.com', '748 561 523', 1),
(12, 'Naruto', 'Uzumaki', 'Naruto_Uzumaki@gmail.com', '08 56 48 95 35', 7),
(13, 'Luffy', 'Monkey D.', 'Luffy_Monkey_D.@gmail.com', '06 95 62 31 54', 8),
(14, 'Ace', 'Porgace D.', 'Ace_Porgace_D.@gmail.com', '07 95 98 84 62', 9),
(15, 'Edward', 'Newgate', 'Edward_Newgate@gmail.com', '06 95 32 64 84', 13);

INSERT INTO historiques
VALUES
(1, 2, 1, 1, '2023-01-23'),
(2, 5, 4, 1, '2023-02-12'),
(3, 4, 6, 1, '2023-10-16'),
(4, 8, 7, 1, '2023-05-28'),
(5, 6, 9, 1, '2023-01-23'),
(6, 7, 11, 2, '2023-06-23'),
(7, 3, 13, 2, '2023-06-24'),
(8, 15, 15, 2, '2023-01-12'),
(9, 13, 5, 2, '2023-06-15'),
(10, 3, 4, 2, '2023-08-30'),
(11, 5, 15, 2, '2023-09-12'),
(12, 9, 12, 3, '2023-07-23'),
(13, 4, 15, 3, '2023-06-25'),
(14, 6, 14, 3, '2023-05-26'),
(15, 3, 13, 3, '2023-04-24'),
(16, 7, 7, 4, '2023-03-28'),
(17, 5, 8, 4, '2023-02-16'),
(18, 6, 6, 4, '2023-01-12'),
(19, 8, 4, 4, '2023-12-14'),
(20, 12, 3, 4, '2023-11-16'),
(21, 13, 7, 5, '2023-10-13'),
(22, 12, 6, 5, '2023-09-15'),
(23, 11, 4, 5, '2023-08-18'),
(24, 9, 1, 5, '2023-07-20'),
(25, 4, 3, 5, '2023-06-21'),
(26, 3, 5, 1, '2023-05-23'),
(27, 7, 9, 1, '2023-04-12'),
(28, 5, 6, 1, '2023-03-02'),
(29, 12, 8, 1, '2023-01-05'),
(30, 4, 9, 1, '2023-02-06');

INSERT INTO company
VALUES
(1, 1, 12),
(2, 2, 11),
(3, 1, 30),
(4, 1, 1),
(5, 1, 15),
(6, 2, 16),
(7, 2, 18),
(8, 2, 6),
(9, 1, 7),
(10, 2, 3),
(11, 1, 9),
(12, 2, 25),
(13, 1, 23),
(14, 2, 21),
(15, 1, 26);
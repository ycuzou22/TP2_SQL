CREATE TABLE nationality
(
    idNationality INTEGER PRIMARY KEY NOT NULL,
    Country VARCHAR(30)
);

CREATE TABLE productsType
(
    idProductType INTEGER PRIMARY KEY NOT NULL,
    Title VARCHAR(50)
);

CREATE TABLE products
(
    idProduct INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    Price INTEGER NOT NULL,
    Stock INTEGER,
    idProductType INTEGER,
    FOREIGN KEY(idProductType) REFERENCES productsType(idProductType) 
);

CREATE TABLE paymentType
(
    idPaymentType INTEGER PRIMARY KEY NOT NULL,
    MeansOfPayment VARCHAR(50)
);

CREATE TABLE historiques
(
    idHistorique INTEGER PRIMARY KEY NOT NULL,
    idClient INTEGER,
    idProduct INTEGER,
    idPaymentType INTEGER,
    FOREIGN KEY(idClient) REFERENCES clients(idClient),
    FOREIGN KEY(idProduct) REFERENCES products(idProduct),
    FOREIGN KEY(idPaymentType) REFERENCES paymentType(idPaymentType)
);

CREATE TABLE clientTypes
(
    idClientType INTEGER PRIMARY KEY NOT NULL,
    type VARCHAR(20)
);

CREATE TABLE clients
(
    idClient INTEGER PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(50),
    idNationality INTEGER,
    FOREIGN KEY(idNationality) REFERENCES nationality(idNationality)
);

CREATE TABLE company
(
    idClient INTEGER,
    idClientType INTEGER,
    idHistorique INTEGER,
    FOREIGN KEY(idHistorique) REFERENCES historique(idHistorique),
    FOREIGN KEY(idClientType) REFERENCES clientTypes(idClientType),
    FOREIGN KEY(idClient) REFERENCES clients(idClient)
);

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

-- INSERT INTO products
-- VALUES
-- (1, 'Souris sans Fil', 9.99, 56, 8),
-- (2, 'ASUS ROG STRIX-G16-G614JV-N3134W', 1756.99, 47, 2),
-- (3, 'Processeur Intel Core i7 - 12700K', 16.56, 68, 13),
-- (4, 'Corsair Vengeance RBG PRO - DDR4', 25.25, 98, 14),
-- (5, 'Samsung 870 QVO MZ-77Q1T0BW - 1 To', 99.99, 58, 15),
-- (6, 'Apple iphone 11 128Go - Noir', 89.69, 57, 3),
-- (7, 'RCA iRB32H3 Téléviseur 32 Pouces, Dolby', 78.23, 120, 11),
-- (8, "HP DeskJet 2720e - Jet d'encre couleur", 5.26, 200, ),
-- (9, '', 3.23, 24, ),
-- (10, '', 321.12, 57, ),
-- (11, '', 1245.23, 98, ),
-- (12, '', 8.56, 65, ),
-- (13, '', 8951.23, 203, ),
-- (14, '', 156.23, 52, ),
-- (15, '', 147.2, 60, ),

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
)

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

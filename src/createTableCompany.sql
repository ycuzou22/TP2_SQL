CREATE TABLE nationality
(
    idNationality INTEGER NOT NULL,
    Country VARCHAR(30)
    PRIMARY KEY(idNationality)
);

CREATE TABLE productsType
(
    idProductType INTEGER PRIMARY KEY NOT NULL,
    Title VARCHAR(50)
);

CREATE TABLE products
(
    idProduct INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    Price INTEGER NOT NULL,
    Stock INTEGER,
    idProductType INTEGER NOT NULL,
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
    idClient INTEGER NOT NULL,
    idProduct INTEGER NOT NULL,
    idPaymentType INTEGER NOT NULL,
    paymentDate DATE,
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
    idClient INTEGER NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(50),
    idNationality INTEGER,
    FOREIGN KEY(idNationality) REFERENCES nationality(idNationality)
    PRIMARY KEY(idClient)
);

CREATE TABLE company
(
    idClient INTEGER NOT NULL,
    idClientType INTEGER NOT NULL,
    idHistorique INTEGER NOT NULL,
    FOREIGN KEY(idHistorique) REFERENCES historiques(idHistorique),
    FOREIGN KEY(idClientType) REFERENCES clientTypes(idClientType),
    FOREIGN KEY(idClient) REFERENCES clients(idClient)
);
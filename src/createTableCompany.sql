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

CREATE TABLE MarketingOfficers
(
    idMarketingOfficers INTEGER NOT NULL,
    idClient INTEGER NOT NULL,
    idClientType INTEGER NOT NULL,
    idHistorique INTEGER NOT NULL,
    PRIMARY KEY(idMarketingOfficers),
    FOREIGN KEY(idHistorique) REFERENCES historiques(idHistorique),
    FOREIGN KEY(idClientType) REFERENCES clientTypes(idClientType),
    FOREIGN KEY(idClient) REFERENCES clients(idClient)
);

CREATE TABLE underMarketingDirection
(
    idUnderMarketingDirection INTEGER NOT NULL,
    idMarketingOfficers INTEGER NOT NULL,
    PRIMARY KEY(idUnderMarketingDirection),
    FOREIGN KEY(idMarketingOfficers)
    REFERENCES MarketingOfficers(idMarketingOfficers)
);

CREATE TABLE marketingDirection
(
    idMarketingDirection INTEGER NOT NULL,
    idUnderMarketingDirection INTEGER NOT NULL,
    PRIMARY KEY(idMarketingDirection),
    FOREIGN KEY(idUnderMarketingDirection)
    REFERENCES underMarketingDirection(idUnderMarketingDirection)
);

CREATE TABLE HRServiceOfficers
(
    idHRServiceOfficers INTEGER NOT NULL,
    PRIMARY KEY(idHRServiceOfficers)
);

CREATE TABLE underHRDept
(
    idUnderHRDept INTEGER NOT NULL,
    idHRServiceOfficers INTEGER NOT NULL,
    PRIMARY KEY(idUnderHRDept),
    FOREIGN KEY(idHRServiceOfficers)

    REFERENCES HRServiceOfficers(idHRServiceOfficers)
);

CREATE TABLE HR
(
    idHR INTEGER NOT NULL,
    idUnderHRDept INTEGER NOT NULL,
    PRIMARY KEY(idHR),
    FOREIGN KEY(idUnderHRDept)
    REFERENCES underHRDept(idUnderHRDept)
);

CREATE TABLE ProductionOfficer
(
    idProductionOfficer INTEGER NOT NULL,
    PRIMARY KEY(idProductionOfficer)
);

CREATE TABLE underProductionDirection
(
    idUnderProductionDirection INTEGER NOT NULL,
    idProductionOfficer INTEGER NOT NULL,
    PRIMARY KEY(idUnderProductionDirection),
    FOREIGN KEY(idProductionOfficer)
    REFERENCES ProductionOfficer(idProductionOfficer)
);

CREATE TABLE ProductionDirection
(
    idProductionDirection INTEGER NOT NULL,
    idUnderProductionDirection INTEGER NOT NULL,
    PRIMARY KEY (idProductionDirection),
    FOREIGN KEY(idUnderProductionDirection)
    REFERENCES underProductionDirection(idUnderProductionDirection)
);

CREATE TABLE generalDirection
(
    idGeneralDirection INTEGER NOT NULL,
    idHR INTEGER NOT NULL,
    idMarketingDirection INTEGER NOT NULL,
    idProductionDirection INTEGER NOT NULL,
    PRIMARY KEY (idGeneralDirection),
    FOREIGN KEY(idHR) REFERENCES HR(idHR),
    FOREIGN KEY(idMarketingDirection)
    REFERENCES marketingDirection(idMarketingDirection),
    FOREIGN KEY(idProductionDirection)
    REFERENCES ProductionDirection(idProductionDirection)
);

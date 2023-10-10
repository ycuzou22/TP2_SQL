CREATE TABLE IF NOT EXISTS nationality
(
    idNationality INTEGER PRIMARY KEY NOT NULL,
    Country VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS productsType
(
    idProductType INTEGER PRIMARY KEY NOT NULL,
    Title VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS products
(
    idProduct INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    Price INTEGER NOT NULL,
    Stock INTEGER,
    idProductType INTEGER NOT NULL,
    FOREIGN KEY(idProductType) REFERENCES productsType(idProductType) 
);

CREATE TABLE IF NOT EXISTS paymentType
(
    idPaymentType INTEGER PRIMARY KEY NOT NULL,
    MeansOfPayment VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS purchasingHistory
(
    idPurchasingHistory INTEGER PRIMARY KEY NOT NULL,
    idClient INTEGER NOT NULL,
    idProduct INTEGER NOT NULL,
    idPaymentType INTEGER NOT NULL,
    paymentDate DATE,
    FOREIGN KEY(idClient) REFERENCES clients(idClient),
    FOREIGN KEY(idProduct) REFERENCES products(idProduct),
    FOREIGN KEY(idPaymentType) REFERENCES paymentType(idPaymentType)
);

CREATE TABLE IF NOT EXISTS clientTypes
(
    idClientType INTEGER PRIMARY KEY NOT NULL,
    type VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS clients
(
    idClient INTEGER PRIMARY KEY NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(50),
    idNationality INTEGER,
    idClientType INTEGER NOT NULL,
    FOREIGN KEY(idClientType) REFERENCES clientTypes(idClientType),
    FOREIGN KEY(idNationality) REFERENCES nationality(idNationality)
);

CREATE TABLE IF NOT EXISTS MarketingOfficers
(
    idMarketingOfficers INTEGER PRIMARY KEY NOT NULL,
    idClient INTEGER NOT NULL,
    idPurchasingHistory INTEGER NOT NULL,
    FOREIGN KEY(idPurchasingHistory) REFERENCES purchasingHistory(idPurchasingHistory),
    FOREIGN KEY(idClient) REFERENCES clients(idClient)
);

CREATE TABLE IF NOT EXISTS underMarketingDirection
(
    idUnderMarketingDirection INTEGER NOT NULL,
    idMarketingOfficers INTEGER NOT NULL,
    PRIMARY KEY(idUnderMarketingDirection),
    FOREIGN KEY(idMarketingOfficers) REFERENCES MarketingOfficers(idMarketingOfficers)
);

CREATE TABLE IF NOT EXISTS marketingDirection
(
    idMarketingDirection INTEGER NOT NULL,
    idUnderMarketingDirection INTEGER NOT NULL,
    PRIMARY KEY(idMarketingDirection),
    FOREIGN KEY(idUnderMarketingDirection) REFERENCES underMarketingDirection(idUnderMarketingDirection)
);

CREATE TABLE IF NOT EXISTS HRServiceOfficers
(
    idHRServiceOfficers INTEGER NOT NULL,
    PRIMARY KEY(idHRServiceOfficers)
);

CREATE TABLE IF NOT EXISTS underHRDept
(
    idUnderHRDept INTEGER NOT NULL,
    idHRServiceOfficers INTEGER NOT NULL,
    PRIMARY KEY(idUnderHRDept),
    FOREIGN KEY(idHRServiceOfficers) REFERENCES HRServiceOfficers(idHRServiceOfficers)
);

CREATE TABLE IF NOT EXISTS HR
(
    idHR INTEGER NOT NULL,
    idUnderHRDept INTEGER NOT NULL,
    PRIMARY KEY(idHR),
    FOREIGN KEY(idUnderHRDept) REFERENCES underHRDept(idUnderHRDept)
);

CREATE TABLE IF NOT EXISTS ProductionOfficer
(
    idProductionOfficer INTEGER NOT NULL,
    PRIMARY KEY(idProductionOfficer)
);

CREATE TABLE IF NOT EXISTS underProductionDirection
(
    idUnderProductionDirection INTEGER NOT NULL,
    idProductionOfficer INTEGER NOT NULL,
    PRIMARY KEY(idUnderProductionDirection),
    FOREIGN KEY(idProductionOfficer) REFERENCES ProductionOfficer(idProductionOfficer)
);

CREATE TABLE IF NOT EXISTS ProductionDirection
(
    idProductionDirection INTEGER NOT NULL,
    idUnderProductionDirection INTEGER NOT NULL,
    PRIMARY KEY (idProductionDirection),
    FOREIGN KEY(idUnderProductionDirection) REFERENCES underProductionDirection(idUnderProductionDirection)
);

CREATE TABLE IF NOT EXISTS generalDirection
(
    idGeneralDirection INTEGER NOT NULL,
    idHR INTEGER NOT NULL,
    idMarketingDirection INTEGER NOT NULL,
    idProductionDirection INTEGER NOT NULL,
    PRIMARY KEY (idGeneralDirection),
    FOREIGN KEY(idHR) REFERENCES HR(idHR),
    FOREIGN KEY(idMarketingDirection) REFERENCES marketingDirection(idMarketingDirection),
    FOREIGN KEY(idProductionDirection) REFERENCES ProductionDirection(idProductionDirection)
);

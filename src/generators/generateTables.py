##
# @author Yamao Cuzou <yamao.cuzou@ynov.com>
 # @file Description
 # @desc Created on 2023-10-10 10:47:14 am
 # @copyright Cuzou Corporation
 #

import sqlite3
import random
import numpy as np

import csv
 
with open("Dictionary/Prenoms.csv", "r") as fsrce:
    with open("PrenomsTable.csv", "w", newline='') as fdest:
        my_reader = csv.reader(fsrce, delimiter = ';')
        my_writer = csv.writer(fdest, delimiter = ';')
        for ligne in my_reader:
            my_writer.writerow([ligne[0]])

conn = sqlite3.connect('Database/tests.db')
cursor = conn.cursor()

def generate_clients():
    clients = ["USA", "Canada", "UK", "Australia", "Germany", "France", "Japan", "China", "India", "Brazil", "Mexico"]
    return random.choice(clients)

df = pandas.read_csv('Dictionary/Prenom.csv', header=2)
print(df['aapeli'])

cursor.execute('''
    CREATE TABLE IF NOT EXISTS nationality (
        idNationality INTEGER NOT NULL PRIMARY KEY,
        Country VARCHAR(30)
    );
''')

cursor.execute('''
    CREATE TABLE IF NOT EXISTS productsType (
        idProductType INTEGER NOT NULL PRIMARY KEY,
        Title VARCHAR(50)
    );
''')

cursor.execute('''
    CREATE TABLE IF NOT EXISTS products (
        idProduct INTEGER PRIMARY KEY NOT NULL,
        name VARCHAR(100),
        Price INTEGER NOT NULL,
        Stock INTEGER,
        idProductType INTEGER NOT NULL,
        FOREIGN KEY(idProductType) REFERENCES productsType(idProductType)
    );
''')

cursor.execute('''
    CREATE TABLE IF NOT EXISTS paymentType (
        idPaymentType INTEGER PRIMARY KEY NOT NULL,
        MeansOfPayment VARCHAR(50)
    );
''')

cursor.execute('''
    CREATE TABLE IF NOT EXISTS clientTypes (
        idClientType INTEGER PRIMARY KEY NOT NULL,
        type VARCHAR(20)
    );
''')

# cursor.execute('''
#     CREATE TABLE IF NOT EXISTS purchasingHistory (
#         idPurchasingHistory INTEGER PRIMARY KEY NOT NULL,
#         idClient INTEGER NOT NULL,
#         idProduct INTEGER NOT NULL,
#         idPaymentType INTEGER NOT NULL,
#         paymentDate DATE,
#         FOREIGN KEY(idClient) REFERENCES clients(idClient),
#         FOREIGN KEY(idProduct) REFERENCES products(idProduct),
#         FOREIGN KEY(idPaymentType) REFERENCES paymentType(idPaymentType)
#     );
# ''')

nationalities = ["USA", "Canada", "UK", "Australia", "Germany", "France", "Japan", "China", "India", "Brazil", "Mexico", "Spanish", "Swiss", "Belgium", "Netherlands", "Finland", "Italia"]
for i in range(1, 18):
    country = nationalities[i - 1]
    cursor.execute('INSERT INTO nationality (idNationality, Country) VALUES (?, ?);', (i, country))

productsType = ["Calculator", "Gamers PC", "Iphone", "AirPod", "Printer", "USB Key", "HDMI Cable", "mouse", "Keyboard", "Headphone", "TV", "Graphic Card", "Processor", "RAM Stick", "SSD HardDisk"]
for i in range(1, 16):
    productT = productsType[i - 1]
    cursor.execute('INSERT INTO productsType (idProductType, Title) VALUES (?, ?);', (i, productT))

productsTab = [["Souris sans Fil", 8], ["ASUS ROG STRIX-G16-G614JV-N3134W", 2], ["Processeur Intel Core i7 - 12700K", 13], ["Corsair Vengeance RBG PRO - DDR4", 14]
, ["Samsung 870 QVO MZ-77Q1T0BW - 1 To", 15], ["Apple iphone 11 128Go - Noir", 3], ["RCA iRB32H3 Téléviseur 32 Pouces, Dolby", 11]
, ["HP DeskJet 2720e - Jet d'encre couleur", 5], ["CLé USB 64Go, Flash Drive", 6], ["Snowkids Câble HDMI 4K", 7], ["Fostex TH900 MKII Casque Audio HiFi", 10], ["Casio LC-401LV-BU-BOITE", 1]
, ["Apple AirPods - Or 24K", 4], ["SteelSeries Apex Pro TKL clavier gaming HyperMagnetic", 9], ["MSI GeForce RTX 4060 Ti Ventus 2X Black 16G OC", 12]]
for i in range(1, 16):
    product = productsTab[i - 1][0]
    productid = productsTab[i - 1][1]
    cursor.execute('INSERT INTO products (idProduct, name, Price, Stock, idProductType) VALUES (?, ?, ?, ?, ?);', (i, product, random.randint(9, 5000), random.randint(150, 500), productid))

paymentType = ["Carte bancaire", "Portfeuille électronique", "Paiement mobile", "Virement bancaire", "Monnaies virtuelles"]
for i in range(1, 6):
    payment = paymentType[i - 1]
    cursor.execute('INSERT INTO paymentType (idPaymentType, MeansOfPayment) VALUES (?, ?);', (i, payment))

clientType = ["Client", "Entreprise"]
for i in range(1, 3):
    client = clientType[i - 1]
    cursor.execute('INSERT INTO clientTypes (idClientType, type) VALUES (?, ?);', (i, client))

conn.commit()
conn.close()

print("Data insertion completed.")

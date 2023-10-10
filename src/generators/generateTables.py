##
# @author Yamao Cuzou <yamao.cuzou@ynov.com>
 # @file Description
 # @desc Created on 2023-10-10 10:47:14 am
 # @copyright Cuzou Corporation
 #

import sqlite3
import random

conn = sqlite3.connect('Database/tests.db')
cursor = conn.cursor()

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

nationalities = ["USA", "Canada", "UK", "Australia", "Germany", "France", "Japan", "China", "India", "Brazil", "Mexico", "Spanish", "Swiss", "Belgium", "Netherlands", "Finland", "Italia"]
for i in range(1, 18):
    country = nationalities[i - 1]
    cursor.execute('INSERT INTO nationality (idNationality, Country) VALUES (?, ?);', (i, country))

productsType = ["Calculator", "Gamers PC", "Iphone", "AirPod", "Printer", "USB Key", "HDMI Cable", "mouse", "Keyboard", "Headphone", "TV", "Graphic Card", "Processor", "RAM Stick", "SSD HardDisk"]
for i in range(1, 16):
    productT = productsType[i - 1]
    cursor.execute('INSERT INTO productsType (idProductType, Title) VALUES (?, ?);', (i, productT))

conn.commit()
conn.close()

print("Data insertion completed.")

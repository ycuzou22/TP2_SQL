##
# @author Yamao Cuzou <yamao.cuzou@ynov.com>
 # @file Description
 # @desc Created on 2023-10-10 10:47:14 am
 # @copyright Cuzou Corporation
 #

import sqlite3
import random

# def generate_data():
#     nationalities = ["USA", "Canada", "UK", "Australia", "Germany", "France", "Japan", "China", "India", "Brazil", "Mexico"]
#     return random.choice(nationalities)

conn = sqlite3.connect('../../Database/tests.db')
cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS nationality (
        idNationality INTEGER NOT NULL PRIMARY KEY,
        Country VARCHAR(30)
    );
''')

nationalities = ["USA", "Canada", "UK", "Australia", "Germany", "France", "Japan", "China", "India", "Brazil", "Mexico", "Spanish", "Swiss", "Belgium", "Netherlands", "Finland", "Italia"]
for i in range(1, 18):
    country = nationalities[i - 1]
    cursor.execute('INSERT INTO nationality (idNationality, Country) VALUES (?, ?);', (i, country))

conn.commit()
conn.close()

print("Data insertion completed.")

import sqlite3
import random

# def generate_data():
#     nationalities = ["USA", "Canada", "UK", "Australia", "Germany", "France", "Japan", "China", "India", "Brazil", "Mexico"]
#     return random.choice(nationalities)

conn = sqlite3.connect('../../Database/company.db')
cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS nationality (
        idNationality INTEGER NOT NULL PRIMARY KEY,
        Country VARCHAR(30)
    );
''')

nationalities = ["USA", "Canada", "UK", "Australia", "Germany", "France", "Japan", "China", "India", "Brazil", "Mexico"]
for i in range(1, 11):
    country = nationalities[i - 1]
    cursor.execute('INSERT INTO nationality (idNationality, Country) VALUES (?, ?);', (i, country))

conn.commit()
conn.close()

print("Data insertion completed.")

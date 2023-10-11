##
# @author Yamao Cuzou <yamao.cuzou@ynov.com>
 # @file Description
 # @desc Created on 2023-10-11 8:29:39 am
 # @copyright Cuzou Corporation
 #

import csv

with open('../../Dictionary/Prenoms.csv', 'r', newline='', encoding='ISO-8859-1') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=';')
    prenoms = []
    for row in csvreader:
        prenom = row[0]
        prenoms.append(prenom)

print(prenoms)
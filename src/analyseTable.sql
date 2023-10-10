/**
 * Bilan Annuel de DeliverGo Corp. des recettes de ventes
*/
SELECT SUM(products.Price) AS 'Bilan Annuel', " Euro" AS 'Monnaie' FROM historiques
INNER JOIN products ON products.idProduct = historiques.idProduct
WHERE strftime("%m", historiques.paymentDate)
IN ('01','02','03','04','05','06','07','08','09','10','11','12')
GROUP BY strftime("%m", historiques.paymentDate);

/**
 * Bilan Annuel des meilleurs ventes et de leur quantité par mois
*/
SELECT name, Price, COUNT(historiques.idProduct) AS Quantity FROM historiques
INNER JOIN products ON products.idProduct = historiques.idProduct
WHERE products.Price > 1000 AND strftime("%m", historiques.paymentDate)
IN ('01','02','03','04','05','06','07','08','09','10','11','12')
GROUP BY historiques.paymentDate
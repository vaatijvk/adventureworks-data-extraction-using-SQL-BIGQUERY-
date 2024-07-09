---1.1 
SELECT p.ProductID,
       p.Name,
       p.ProductNumber,
       p.Size,
       p.Color,
       p.ProductSubcategoryID,
       ps.Name AS Subcategory
FROM `tc-da-1.adwentureworks_db.product` p
JOIN `tc-da-1.adwentureworks_db.productsubcategory` ps
ON p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE p.ProductSubcategoryID IS NOT NULL
ORDER BY ps.Name
LIMIT 1000;



-- ROW_NUMBER
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(
               PARTITION BY Category
               ORDER BY Price DESC
           ) AS Row_Num
    FROM Products
) RankedProducts
WHERE Row_Num <=3;


-- RANK
SELECT *
FROM (
    SELECT *,
           RANK() OVER(
               PARTITION BY Category
               ORDER BY Price DESC
           ) AS Rank_Num
    FROM Products
) RankedProducts
WHERE Rank_Num <=3;


-- DENSE_RANK
SELECT *
FROM (
    SELECT *,
           DENSE_RANK() OVER(
               PARTITION BY Category
               ORDER BY Price DESC
           ) AS Dense_Rank
    FROM Products
) RankedProducts
WHERE Dense_Rank <=3;
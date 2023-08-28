SELECT SQRT((X1 - X2) * (X1 - X2) + (Y1 - Y2) * (Y1 - Y2)) AS ShortestDistance
FROM Points
WHERE PointID IN (1, 2); -- Replace 1 and 2 with the actual IDs of the points you want to find the distance between


# ques 19
SELECT
    C.CustomerName,
    COUNT(O.OrderID) AS OrderCount
FROM Customers AS C
LEFT JOIN Orders AS O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY OrderCount DESC, C.CustomerName ASC
LIMIT 5;
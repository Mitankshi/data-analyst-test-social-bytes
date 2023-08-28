SELECT SQRT((X1 - X2) * (X1 - X2) + (Y1 - Y2) * (Y1 - Y2)) AS ShortestDistance
FROM Points
WHERE PointID IN (1, 2); -- Replace 1 and 2 with the actual IDs of the points you want to find the distance between

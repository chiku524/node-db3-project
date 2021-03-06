-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.ProductName, c.CategoryName
FROM Product AS p
JOIN Category AS c
ON p.CategoryId = c.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id, s.CompanyName 
FROM [Order] AS o 
JOIN Shipper AS s 
ON o.ShipVia = s.Id 
WHERE o.OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.ProductName, od.Quantity 
FROM OrderDetail AS od 
JOIN [Order] AS o ON od.OrderId = o.Id 
JOIN Product AS p ON od.ProductId = p.Id
WHERE o.Id = 10251
ORDER BY p.ProductName 

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.Id, c.CompanyName, e.LastName
FROM Order AS o 
JOIN Customer AS c 
ON c.Id = o.CustomerId
JOIN Employee AS e 
ON e.Id = o.EmployeeId
-- 8 - Aplicación de Funciones en consultas de selección
--Boletin 8.1
--Escribe el código SQL necesario para realizar las siguientes operaciones sobre la base de datos "NorthWind”
USE Northwind
--Consultas sobre una sola Tabla
--1. Nombre del país y número de clientes de cada país, ordenados alfabéticamente por el nombre del país.
SELECT * FROM Customers
GO

SELECT Country, COUNT(*) AS [Nº DE CLIENTES] FROM Customers GROUP BY Country ORDER BY Country
GO
--2. ID de producto y número de unidades vendidas de cada producto.
SELECT * FROM Products
GO

SELECT ProductID, SUM(UnitsOnOrder) AS [Nº DE UNIDADES VENDIDAS] FROM Products GROUP BY ProductID
GO
--3. ID del cliente y número de pedidos que nos ha hecho.
SELECT * FROM Orders
GO

SELECT CustomerID, COUNT(*) AS [Nº PEDIDOS]  FROM Orders GROUP BY CustomerID
GO
--4. ID del cliente, año y número de pedidos que nos ha hecho cada año.
SELECT CustomerID, YEAR(OrderDate) AS AÑO, COUNT(*) AS [Nº PEDIDOS] FROM Orders GROUP BY CustomerID, YEAR(OrderDate)
GO
--5. ID del producto, precio unitario y total facturado de ese producto, ordenado por cantidad facturada de mayor a menor.
--Si hay varios precios unitarios para el mismo producto tomaremos el mayor.
SELECT * FROM Products
GO

SELECT ProductID, UnitPrice, (UnitPrice * UnitsOnOrder) AS [TOTAL FACTURADO] FROM Products ORDER BY [TOTAL FACTURADO] DESC, UnitPrice DESC
GO
--6. ID del proveedor e importe total del stock acumulado de productos correspondientes a ese proveedor.

--7. Número de pedidos registrados mes a mes de cada año.

--8. Año y tiempo medio transcurrido entre la fecha de cada pedido (OrderDate) y la fecha en la que lo hemos enviado (ShipDate),
--en días para cada año.

--9. ID del distribuidor y número de pedidos enviados a través de ese distribuidor.

--10. ID de cada proveedor y número de productos distintos que nos suministra.
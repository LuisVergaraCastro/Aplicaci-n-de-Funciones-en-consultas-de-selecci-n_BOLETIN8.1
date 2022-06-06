-- 8 - Aplicaci�n de Funciones en consultas de selecci�n
--Boletin 8.1
--Escribe el c�digo SQL necesario para realizar las siguientes operaciones sobre la base de datos "NorthWind�
USE Northwind
--Consultas sobre una sola Tabla
--1. Nombre del pa�s y n�mero de clientes de cada pa�s, ordenados alfab�ticamente por el nombre del pa�s.
SELECT * FROM Customers
GO

SELECT Country, COUNT(*) AS [N� DE CLIENTES] FROM Customers GROUP BY Country ORDER BY Country
GO
--2. ID de producto y n�mero de unidades vendidas de cada producto.
SELECT * FROM Products
GO

SELECT ProductID, SUM(UnitsOnOrder) AS [N� DE UNIDADES VENDIDAS] FROM Products GROUP BY ProductID
GO
--3. ID del cliente y n�mero de pedidos que nos ha hecho.
SELECT * FROM Orders
GO

SELECT CustomerID, COUNT(*) AS [N� PEDIDOS]  FROM Orders GROUP BY CustomerID
GO
--4. ID del cliente, a�o y n�mero de pedidos que nos ha hecho cada a�o.
SELECT
--5. ID del producto, precio unitario y total facturado de ese producto, ordenado por cantidad facturada de mayor a menor.
--Si hay varios precios unitarios para el mismo producto tomaremos el mayor.

--6. ID del proveedor e importe total del stock acumulado de productos correspondientes a ese proveedor.

--7. N�mero de pedidos registrados mes a mes de cada a�o.

--8. A�o y tiempo medio transcurrido entre la fecha de cada pedido (OrderDate) y la fecha en la que lo hemos enviado (ShipDate),
--en d�as para cada a�o.

--9. ID del distribuidor y n�mero de pedidos enviados a trav�s de ese distribuidor.

--10. ID de cada proveedor y n�mero de productos distintos que nos suministra.
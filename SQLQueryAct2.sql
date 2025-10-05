USE AkirasBoutiques

SELECT * FROM factura
WHERE fecha BETWEEN '2021-01-01' AND '2021-12-31';

SELECT * FROM factura
WHERE fecha BETWEEN '2022-12-01' AND '2022-12-31';


SELECT * FROM factura
WHERE fecha BETWEEN '2021-12-01' AND '2021-12-31';


SELECT c.id_cliente, c.nombre, c.apellido, f.id_factura, f.id_detalle, p.id_producto, p.nombre
FROM cliente c
JOIN factura f ON  c.id_cliente = f.id_cliente
JOIN producto p ON f.id_detalle = p.id_producto
WHERE f.id_cliente IN (2, 4, 11, 17, 24)


SELECT 
    p.id_producto, p.nombre, sum(d.cantidad) AS total_vendido
FROM producto p
JOIN detalle d ON p.id_producto = d.id_producto
GROUP BY p.id_producto, p.nombre
ORDER BY total_vendido DESC;


SELECT 
    g.id_categoria, g.nombre, SUM(p.stock) AS stock_total
FROM producto p
JOIN categoria g ON p.id_categoria = g.id_categoria
GROUP BY g.id_categoria, g.nombre;


SELECT p.id_producto, p.nombre, f.fecha
FROM producto p
JOIN factura f ON p.id_producto = f.id_detalle
ORDER BY f.fecha ASC;

SELECT * 
FROM cliente
ORDER BY nombre ASC;

SELECT c.id_categoria, c.nombre, p.id_producto, p.nombre
FROM categoria c
JOIN producto p ON c.id_categoria = p.id_categoria
WHERE c.nombre IN ('blusa', 'Falda', 'Pantalón','Pijama', 'Camisa',  'Zapatos', 'Chamarra', 'Sueter', 'Vestido', 'Accesorios')
ORDER BY c.id_categoria

SELECT s.NumSucursal, s.nomsucursal, e.nompersonal
FROM sucursal s
JOIN Empleados e ON s.NomEncargado = e.NomPersonal
ORDER BY s.NumSucursal


SELECT IDSucursal, NomPersonal, Direccion
FROM Empleados
WHERE IDSucursal = 'Akiras Boutique: Constitucion'

SELECT id_cliente, nombre, apellido, fec_nac,
    DATEDIFF(YEAR, fec_nac, GETDATE()) AS edad
FROM cliente
WHERE DATEDIFF(YEAR, fec_nac, GETDATE()) > 30
ORDER BY edad DESC;


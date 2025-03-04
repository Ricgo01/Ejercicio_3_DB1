---------------------------------------------------------------------
--3.1. Ejercicios Simples
---------------------------------------------------------------------

-- Listar todos los productos disponibles en la tienda
select nombre, descripcion FROM productos
WHERE productos.estado = 'disponible';

-- Obtener la cantidad total de pedidos realizados en el sistema
SELECT COUNT(id)
FROM pedidos;

Select * from pedidos;

-- Mostrar los detalles de todos los pedidos pagados
SELECT * FROM pedidos
WHERE estado = 'pagado';

---------------------------------------------------------------------
--3.2. Ejercicios Intermedios
---------------------------------------------------------------------

-- Mostrar los 5 productos con mayor cantidad de stock disponible
SELECT id, nombre, stock
FROM productos
ORDER BY stock DESC
LIMIT 5;

--Obtener el total de dinero generado por ventas en la tienda
SELECT SUM(total) AS total_ventas
FROM pedidos
WHERE estado = 'pagado';

--Listar los 10 clientes que más han gastado en compras.
SELECT us.nombre as cliente, SUM(pe.total) AS total 
FROM pedidos pe
JOIN usuarios us ON pe.comprador_id = us.id
WHERE pe.estado = 'pagado'
GROUP BY us.id, us.nombre
ORDER BY total DESC;

--Obtener el total de pedidos realizados en cada mes del último año.
SELECT DATE_TRUNC('month', fecha_pedido) AS mes, COUNT(*) AS total_pedidos
FROM pedidos
WHERE fecha_pedido >= CURRENT_DATE - INTERVAL '1 year'
GROUP BY DATE_TRUNC('month', fecha_pedido)
ORDER BY mes DESC;

---------------------------------------------------------------------
--3.3. Ejercicios Complejos
---------------------------------------------------------------------

--Obtener el top 3 de categorías con más productos vendidos.
SELECT cat.nombre AS categoria,
       SUM(dp.cantidad) AS mas_vendidos
FROM detalles_pedidos dp
JOIN productos pr ON dp.productos_id = pr.id
JOIN categorias cat ON pr.categoria_id = cat.id
GROUP BY cat.id, cat.nombre
ORDER BY mas_vendidos DESC
LIMIT 3;

--Determinar el mes con mayores ventas en el último año.
SELECT date_trunc('month', pe.fecha_pedido) AS mes_con_mayor_venta, COUNT(pe.fecha_pedido) AS total
FROM pedidos pe
WHERE pe.estado = 'pagado'
	AND pe.fecha_pedido >= CURRENT_DATE - INTERVAL '1 year'
GROUP BY date_trunc('month', pe.fecha_pedido)
ORDER BY total DESC
LIMIT 1;

--Listar los clientes que han realizado más de 5 pedidos y el monto total que han gastado.
SELECT us.nombre as cliente, COUNT(*) AS num_pedidos, SUM(pe.total) AS total 
FROM pedidos pe
JOIN usuarios us ON pe.comprador_id = us.id
WHERE pe.estado = 'pagado'
GROUP BY us.id, us.nombre
HAVING COUNT(*) > 5
ORDER BY total DESC
LIMIT 5;
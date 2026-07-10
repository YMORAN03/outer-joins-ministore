-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: [YAMILA MORAN]
-- Fecha: [09.07.26]
-- ══════════════════════════════════════════
-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.
-- SELECT productos.producto_id,productos.nombre, productos.categoria,
COUNT(ventas.venta_id) AS total_ventas
FROM productos
LEFT JOIN ventas
ON productos.producto_id = ventas.producto_id
group by productos.producto_id, productos.nombre, productos.categoria;


-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.
-- SELECT ventas.producto_id,ventas.fecha_venta, ventas.venta_id, ventas.cliente_id
FROM productos
RIGHT JOIN ventas 
ON productos.producto_id = ventas.producto_id
where productos.producto_id is null;

-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.
SELECT productos.producto_id, productos.nombre, 
ventas.venta_id, ventas.fecha_venta , ventas.producto_id 
FROM productos
FULL OUTER JOIN ventas
ON productos.producto_id = ventas.producto_id;


-- ============================================================
-- Script   : Unidades vendidas por producto
-- Capa     : Gold
-- Objetivo : Calcular el total de unidades vendidas
--            de cada producto con su categoría
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 3 Julio 2026
-- ============================================================

SELECT
    dp.nombre           AS producto,
    dp.categoria_nombre,
    SUM(fv.cantidad)    AS cantidad_vendida
FROM gold.fact_ventas AS fv
INNER JOIN gold.dim_productos AS dp
    ON fv.producto_id = dp.id
GROUP BY dp.nombre, dp.categoria_nombre
ORDER BY cantidad_vendida DESC;
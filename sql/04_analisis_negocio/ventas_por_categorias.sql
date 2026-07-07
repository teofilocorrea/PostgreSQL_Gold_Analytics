-- ============================================================
-- Script   : Ventas por categoría
-- Capa     : Gold
-- Objetivo : Calcular el total de ventas generado
--            por cada categoría de producto
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 6 Julio 2026
-- ============================================================

SELECT
    dp.categoria_nombre     AS categoria,
    SUM(fv.subtotal)        AS venta_por_categoria
FROM gold.fact_ventas AS fv
INNER JOIN gold.dim_productos AS dp
    ON fv.producto_id = dp.id
GROUP BY dp.categoria_nombre
ORDER BY venta_por_categoria DESC;
-- ============================================================
-- Script   : Top 5 productos por ingreso
-- Capa     : Gold
-- Objetivo : Identificar los 5 productos que más
--            ingresos generan
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 3 Julio 2026
-- ============================================================

SELECT
    dp.nombre           AS producto,
    dp.categoria_nombre,
    SUM(fv.subtotal)    AS ingreso_total
FROM gold.fact_ventas AS fv
INNER JOIN gold.dim_productos AS dp
    ON fv.producto_id = dp.id
GROUP BY dp.nombre, dp.categoria_nombre
ORDER BY ingreso_total DESC
LIMIT 5;
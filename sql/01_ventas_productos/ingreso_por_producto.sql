-- ============================================================
-- Script   : Ingresos por producto
-- Capa     : Gold
-- Objetivo : Calcular el ingreso total generado
--            por cada producto
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
ORDER BY ingreso_total DESC;
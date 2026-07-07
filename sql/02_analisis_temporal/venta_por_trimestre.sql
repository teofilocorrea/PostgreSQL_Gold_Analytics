-- ============================================================
-- Script   : Ventas por trimestre
-- Capa     : Gold
-- Objetivo : Calcular el total de ventas
--            agrupado por trimestre
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 6 Julio 2026
-- ============================================================

SELECT
    dt.trimestre        AS trimestre,
    SUM(fv.subtotal)    AS total_ventas
FROM gold.fact_ventas AS fv
INNER JOIN gold.dim_tiempo AS dt
    ON fv.tiempo_id = dt.id
GROUP BY dt.trimestre
ORDER BY dt.trimestre;
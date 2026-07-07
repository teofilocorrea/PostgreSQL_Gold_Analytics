-- ============================================================
-- Script   : Top clientes por ventas
-- Capa     : Gold
-- Objetivo : Identificar los clientes que más
--            ingresos generan
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 6 Julio 2026
-- ============================================================

SELECT
    dc.nombre           AS cliente,
    SUM(fv.subtotal)    AS total_de_venta
FROM gold.fact_ventas AS fv
INNER JOIN gold.dim_clientes AS dc
    ON fv.cliente_id = dc.id
GROUP BY dc.nombre
ORDER BY total_de_venta DESC
LIMIT 5;
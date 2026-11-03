-- =====================================================
-- MEDILAB HOSPITAL LABORATORY SYSTEM
-- PORTFOLIO 2: QUERY PROCESSING AND OPTIMIZATION
-- Database: PostgreSQL 18
-- =====================================================

-- QUERY 1: Retrieve patient laboratory orders
-- and the providers who requested them.

SELECT
    p.patient_id,
    p.first_name,
    p.last_name,
    lo.order_id,
    lo.order_status,
    pr.first_name AS provider_first_name,
    pr.last_name AS provider_last_name
FROM patients p
INNER JOIN lab_orders lo
    ON p.patient_id = lo.patient_id
INNER JOIN providers pr
    ON lo.provider_id = pr.provider_id
ORDER BY lo.order_id;

-- =====================================================
-- MEDILAB HOSPITAL LABORATORY SYSTEM
-- PORTFOLIO 2: OPTIMIZED SQL QUERIES
-- =====================================================

-- QUERY 1: Retrieve selected patient laboratory order details

SELECT
    p.patient_id,
    p.first_name,
    p.last_name,
    lo.order_id,
    lo.order_status
FROM patients p
INNER JOIN lab_orders lo
    ON p.patient_id = lo.patient_id
WHERE lo.order_status = 'Completed'
ORDER BY lo.order_id;

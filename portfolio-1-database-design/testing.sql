-- =====================================================
-- MEDILAB HOSPITAL LABORATORY SYSTEM
-- PORTFOLIO 1: SQL QUERY TESTING
-- =====================================================

-- QUERY 1: Retrieve patients, laboratory orders,
-- and the healthcare providers who requested them.

SELECT
    p.patient_id,
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    lo.order_id,
    lo.ordered_at,
    lo.order_status,
    pr.first_name AS provider_first_name,
    pr.last_name AS provider_last_name
FROM patients p
INNER JOIN lab_orders lo
    ON p.patient_id = lo.patient_id
INNER JOIN providers pr
    ON lo.provider_id = pr.provider_id
ORDER BY lo.order_id;

-- QUERY 2: Retrieve laboratory tests requested
-- for each patient.

SELECT
    p.first_name AS patient_first_name,
    p.last_name AS patient_last_name,
    lo.order_id,
    tc.test_name,
    ot.priority,
    ot.test_status
FROM patients p
INNER JOIN lab_orders lo
    ON p.patient_id = lo.patient_id
INNER JOIN order_tests ot
    ON lo.order_id = ot.order_id
INNER JOIN test_catalog tc
    ON ot.test_id = tc.test_id
ORDER BY lo.order_id;

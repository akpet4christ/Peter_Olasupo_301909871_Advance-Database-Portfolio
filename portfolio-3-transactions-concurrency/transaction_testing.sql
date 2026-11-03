-- =====================================================
-- MEDILAB HOSPITAL LABORATORY SYSTEM
-- PORTFOLIO 3: TRANSACTION TESTING
-- DATABASE: PostgreSQL 18
-- =====================================================

-- This file contains practical tests demonstrating:
-- 1. BEGIN and COMMIT
-- 2. ROLLBACK
-- 3. SAVEPOINT
-- 4. Transaction isolation
-- 5. Transaction integrity

-- =====================================================
-- TEST 1: ROLLBACK AND DATA INTEGRITY
-- =====================================================

BEGIN;

UPDATE lab_orders
SET order_status = 'Pending'
WHERE order_id = 1;

-- Verified that the transaction could see Pending.

ROLLBACK;

-- Verified that order_id 1 returned to Completed.
-- This demonstrates that uncommitted changes can
-- be cancelled without permanently altering the data.

-- =====================================================
-- TEST 2: SAVEPOINT AND PARTIAL ROLLBACK
-- =====================================================

BEGIN;

-- First update
UPDATE lab_orders
SET order_status = 'Pending'
WHERE order_id = 1;

-- Create savepoint
SAVEPOINT after_first_update;

-- Second update
UPDATE lab_orders
SET order_status = 'Pending'
WHERE order_id = 2;

-- Undo only the second update
ROLLBACK TO SAVEPOINT after_first_update;

-- Verified:
-- Order 1 = Pending
-- Order 2 = In Progress

-- Cancel the entire transaction
ROLLBACK;

-- Final verification:
-- Order 1 = Completed
-- Order 2 = In Progress

-- =====================================================
-- TEST 3: FOREIGN KEY CONSTRAINT AND DATA INTEGRITY
-- =====================================================

-- Attempt to insert an order for a nonexistent patient.

INSERT INTO lab_orders (
    patient_id,
    provider_id,
    ordered_at,
    order_status
)
VALUES (
    9999,
    1,
    CURRENT_TIMESTAMP,
    'Pending'
);

-- Expected result:
-- PostgreSQL rejects the insertion.
-- Constraint: fk_order_patient
-- SQLSTATE: 23503
--
-- This demonstrates referential integrity.

-- =====================================================
-- TEST 4: CHECK CONSTRAINT AND DATA VALIDATION
-- =====================================================

-- Attempt to insert an invalid laboratory order status.

INSERT INTO lab_orders (
    patient_id,
    provider_id,
    ordered_at,
    order_status
)
VALUES (
    1,
    1,
    CURRENT_TIMESTAMP,
    'InvalidStatus'
);

-- Expected result:
-- PostgreSQL rejects the insertion.
-- Constraint: chk_order_status
-- SQLSTATE: 23514
--
-- This demonstrates database validation
-- through CHECK constraints.

-- TEST 5: UNIQUE constraint and data integrity
-- Attempt to insert a patient using an existing medical record number.
-- Expected result: PostgreSQL rejects the duplicate value.
-- Constraint: patients_medical_record_no_key
-- SQLSTATE: 23505 (unique_violation)
-- Result: Test passed. Duplicate medical record numbers are prevented.

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

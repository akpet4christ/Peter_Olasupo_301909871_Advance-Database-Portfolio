-- =====================================================
-- MEDILAB HOSPITAL LABORATORY SYSTEM
-- PORTFOLIO 3: TRANSACTIONS AND CONCURRENCY
-- DATABASE: PostgreSQL 18
-- =====================================================

-- This file contains practical exercises on:
-- 1. Database transactions
-- 2. COMMIT
-- 3. ROLLBACK
-- 4. Transaction management
-- 5. Concurrency control
-- 6. Transaction isolation

-- =====================================================
-- EXERCISE 1: BASIC TRANSACTION CONTROL
-- =====================================================

-- Demonstrated BEGIN, UPDATE, COMMIT and ROLLBACK.
-- Verified that COMMIT permanently saves changes.
-- Restored order_id 1 to its original status.

-- =====================================================
-- EXERCISE 2: SAVEPOINT
-- =====================================================

BEGIN;

SAVEPOINT first_savepoint;

ROLLBACK TO SAVEPOINT first_savepoint;

COMMIT;

-- Demonstrated how SAVEPOINT allows partial rollback
-- within a transaction without cancelling the entire transaction.

-- =====================================================
-- EXERCISE 3: TRANSACTION ISOLATION
-- =====================================================

-- Check the default transaction isolation level.
SHOW transaction_isolation;

-- Set transaction isolation to REPEATABLE READ.
BEGIN TRANSACTION
ISOLATION LEVEL REPEATABLE READ;

SHOW transaction_isolation;

COMMIT;

-- Verified that REPEATABLE READ was active inside
-- the transaction. After COMMIT, the session returned
-- to its default READ COMMITTED isolation level.

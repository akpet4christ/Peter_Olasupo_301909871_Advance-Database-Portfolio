# Concurrency Control and Deadlocks

## 1. Concurrency

Concurrency occurs when multiple database users or transactions
access or modify data at the same time.

PostgreSQL uses locks to manage concurrent operations and
protect database consistency.

## 2. Database Locks

Locks control access to database objects and help prevent
conflicting operations.

Examples include:
- AccessShareLock
- RowExclusiveLock
- ExclusiveLock
- AccessExclusiveLock

## 3. Deadlocks

A deadlock occurs when two or more transactions wait for
resources held by one another.

Example:
- Transaction A locks Patient 1 and requests Patient 2.
- Transaction B locks Patient 2 and requests Patient 1.

PostgreSQL automatically detects deadlocks and aborts one
transaction to allow the other to continue.

## 4. Prevention

Deadlocks can be reduced by:
- Accessing database objects in a consistent order.
- Keeping transactions short.
- Committing or rolling back transactions promptly.
- Avoiding unnecessary locks.

# ACID Properties in Database Transactions

## Introduction

ACID represents four fundamental properties that ensure database transactions are reliable, accurate, and consistent. These properties are Atomicity, Consistency, Isolation, and Durability.

The simulated MediLab Hospital Laboratory System uses PostgreSQL 18 to demonstrate these principles.

## 1. Atomicity

Atomicity means that a transaction is treated as one complete unit. Either all operations are successfully completed, or none of them are applied.

**MediLab example:** If updating a laboratory order fails during a transaction, PostgreSQL can roll back the entire transaction to prevent an incomplete update.

SQL commands used:
- `BEGIN`
- `COMMIT`
- `ROLLBACK`

## 2. Consistency

Consistency ensures that every transaction maintains the database's defined rules and constraints.

**MediLab example:** A laboratory order must reference an existing patient. A patient ID that does not exist cannot be used in a valid laboratory order because of the foreign key constraint.

Other examples include:
- Unique patient medical record numbers.
- Valid laboratory order statuses.
- Required fields and appropriate data types.

## 3. Isolation

Isolation ensures that concurrent transactions do not interfere with one another in ways that compromise data accuracy.

**MediLab example:** If two laboratory staff members attempt to update the same laboratory order simultaneously, PostgreSQL uses transaction isolation and locking mechanisms to manage their operations.

PostgreSQL supports:
- Read Uncommitted
- Read Committed
- Repeatable Read
- Serializable

## 4. Durability

Durability means that once a transaction has been successfully committed, its changes are permanently recorded and survive normal database shutdowns or restarts.

**MediLab example:** Once a laboratory order status is successfully updated and committed, the change remains saved in the database.

SQL command:
- `COMMIT`

## Conclusion

ACID properties are essential for maintaining reliable and trustworthy database operations. In a hospital laboratory system, they help protect patient information, maintain accurate laboratory orders, and ensure that database transactions are processed reliably.

PostgreSQL 18 provides transaction management, constraints, isolation levels, and locking mechanisms that support these properties.

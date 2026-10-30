
# Database Normalization

## MediLab Hospital Laboratory System

## 1. Introduction

Database normalization is the process of organizing data in relational database tables to reduce data redundancy and improve data integrity.

The MediLab Hospital Laboratory System applies the principles of First Normal Form (1NF), Second Normal Form (2NF), and Third Normal Form (3NF).

## 2. First Normal Form (1NF)

A table satisfies First Normal Form when:

- Each column contains atomic (single) values.
- Each record is uniquely identifiable.
- There are no repeating groups or multiple values stored in one field.

### Application in MediLab

Patient information is stored in individual columns such as patient_id, first_name, last_name, and date_of_birth.

Multiple laboratory tests are not stored in one column. Instead, each test is represented by a separate record in the order_tests table.

This ensures that the database follows 1NF.

## 3. Second Normal Form (2NF)

A table satisfies Second Normal Form when:

- It already satisfies 1NF.
- Every non-key attribute depends on the whole candidate key, not just part of a composite key.

### Application in MediLab

The order_tests table uses order_test_id as its primary key.

The order_id and test_id fields identify the associated order and laboratory test through foreign keys.

Test descriptions are stored separately in test_catalog rather than repeated in order_tests.

This reduces duplication and supports 2NF.

## 4. Third Normal Form (3NF)

A table satisfies Third Normal Form when:

- It already satisfies 2NF.
- Non-key attributes do not depend on other non-key attributes.

### Application in MediLab

Patient details are stored in the patients table.

Provider details are stored in the providers table.

Laboratory test descriptions are stored in the test_catalog table.

Laboratory staff information is stored in lab_staff.

Other tables reference these records through foreign keys instead of repeatedly storing their descriptive information.

This reduces transitive dependencies and supports 3NF.

## 5. Benefits of Normalization

- Reduces unnecessary data duplication.
- Improves data consistency.
- Helps prevent update anomalies.
- Helps prevent insertion anomalies.
- Helps prevent deletion anomalies.
- Makes database maintenance easier.

## 6. Conclusion

The MediLab Hospital Laboratory System is designed using the principles of 1NF, 2NF, and 3NF.

The separation of patients, providers, laboratory tests, orders, specimens, and results supports a structured relational database design with improved data integrity.

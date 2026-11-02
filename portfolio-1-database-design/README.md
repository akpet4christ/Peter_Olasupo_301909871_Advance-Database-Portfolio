# Portfolio 1: Database Design and Modelling

## 1. Project Overview

This portfolio demonstrates the design, implementation, and testing of a relational database for a simulated MediLab Hospital Laboratory System using PostgreSQL 18.

The project applies practical database concepts to a hospital laboratory environment, including relational modelling, normalization, primary keys, foreign keys, database constraints, SQL queries, and data integrity validation.

## 2. Case Study Description

MediLab Hospital Laboratory System is a simulated healthcare information system designed to manage laboratory operations within a hospital.

The system manages patient records, healthcare providers, laboratory staff, laboratory test requests, specimen collection, and test results.

## 3. Project Objectives

- Design a relational database for hospital laboratory operations.
- Identify entities and their relationships.
- Develop an Entity Relationship Diagram (ERD).
- Implement relational tables using PostgreSQL.
- Define primary keys, foreign keys, and database constraints.
- Apply First, Second, and Third Normal Forms (1NF, 2NF, and 3NF).
- Insert and validate sample records.
- Execute SQL queries to retrieve and analyze laboratory information.
- Test database constraints and demonstrate data integrity.

## 4. Database Technology

- Database Management System: PostgreSQL 18
- Database Administration Tool: pgAdmin 4
- Version Control: Git and GitHub
- Case Study: Simulated MediLab Hospital Laboratory System

## 5. Database Entities

The database consists of eight relational tables:

1. Patients
2. Providers
3. Laboratory Staff
4. Test Catalog
5. Laboratory Orders
6. Order Tests
7. Specimens
8. Test Results

## 6. Project Files

| File | Description |
|---|---|
| schema.sql | Database schema and table definitions |
| erd.md | Entity Relationship Diagram |
| normalization.md | Explanation of database normalization |
| sample_data.sql | Sample records for the eight tables |
| testing.sql | SQL queries and database testing statements |
| evidence/ | Screenshots and supporting project evidence |

## 7. Implementation and Testing

The database was successfully implemented using PostgreSQL 18.

A total of 40 sample records were inserted across the eight database tables.

Five SQL queries were developed and executed successfully to demonstrate:

- Retrieval of patients and their healthcare providers.
- Retrieval of laboratory tests requested for each patient.
- Retrieval of patient laboratory results.
- Retrieval of specimen collection details and responsible laboratory staff.
- Aggregation of laboratory orders per patient.

Database integrity was also tested using foreign key, CHECK, UNIQUE, and composite UNIQUE constraints. Invalid records and duplicate entries were correctly rejected by PostgreSQL.

## 8. Evidence and Documentation

Screenshots documenting database creation, table structures, sample data insertion, SQL query execution, constraint testing, and data integrity verification are included in the evidence folder.

## 9. Project Status

Portfolio 1 database design, implementation, sample data insertion, SQL query testing, constraint validation, and evidence collection have been completed.

## 10. Conclusion

This project provided practical experience in relational database design and implementation. It demonstrated how PostgreSQL can be used to organize hospital laboratory information, enforce data integrity, and retrieve meaningful information through SQL queries.

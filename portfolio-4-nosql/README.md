# Portfolio 4: NoSQL and Advanced Data Models

## Project Overview

This portfolio explores NoSQL databases and advanced data models using the simulated MediLab Hospital Laboratory System developed in Portfolio 1.

The project will use MongoDB to demonstrate document-oriented database design, collections, documents, CRUD operations, and the differences between relational and NoSQL databases.

## Objectives

- Understand NoSQL database concepts and architecture.
- Explore MongoDB and document-oriented data storage.
- Design appropriate collections and documents for the MediLab system.
- Perform Create, Read, Update, and Delete (CRUD) operations.
- Compare MongoDB with PostgreSQL.
- Document practical exercises and results.

## Tools and Technologies

- MongoDB
- MongoDB Compass
- PostgreSQL 18
- GitHub

## Project Status

In progress.

## MongoDB Practical Implementation

### Database and Collections

Created a MongoDB database named `medlab_nosql` containing seven collections:

- patients
- providers
- test_catalog
- lab_orders
- specimens
- test_results
- lab_staff

### CRUD Operations

Performed the four fundamental MongoDB operations:

- Create: Inserted patient and laboratory records.
- Read: Retrieved patient documents using filters.
- Update: Modified a patient's phone number.
- Delete: Removed a patient document.

### Aggregation Pipeline

Practised MongoDB aggregation stages:

- `$count` – Counted patient and laboratory order documents.
- `$group` – Grouped laboratory orders by status.
- `$sort` – Sorted laboratory orders by date.
- `$match` – Filtered pending laboratory orders.

### MongoDB Data Modeling

Demonstrated:

- Embedded documents using the `tests_ordered` array in laboratory orders.
- Document references using `medical_record_no` and `provider_id`.
- Relationships between patients, providers, orders, specimens, and test results.

### Schema Validation

Created a JSON Schema validation rule for the patients collection.

Required fields:

- `medical_record_no`
- `first_name`
- `last_name`

Tested both invalid and valid documents to confirm that MongoDB enforced the validation rules.

### Indexing

Created ascending indexes on:

- `patients.medical_record_no`
- `lab_orders.order_id`

Also examined MongoDB's default `_id_` index.

### Tools Used

- MongoDB Community Server
- MongoDB Compass
- PostgreSQL 18
- GitHub

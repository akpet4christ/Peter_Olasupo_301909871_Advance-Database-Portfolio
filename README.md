Repository URL: 
https://github.com/akpet4christ/Peter_Olasupo_301909871_Advance-Database-Portfolio.git

# Advanced Database Systems Portfolio
## Simulated MediLab Hospital Laboratory System

**Course:** MIT 8103 – Advanced Database Systems  
**Institution:** Miva Open University  
**Project Type:** Practical Database Design, Implementation, Administration, and Cloud Deployment  
**Repository:** `advanced-database-portfolio`  
**Project Status:** Five portfolio areas completed; final evidence organization in progress.

---

## 1. Project Overview

This repository contains a practical database systems portfolio developed as part of the Advanced Database Systems course (MIT 8103) at Miva Open University.

The project is based on a simulated hospital laboratory information management system called the **MediLab Hospital Laboratory System**.

The purpose of the project is to demonstrate the design, implementation, querying, optimization, administration, and deployment of database systems in a healthcare environment.

The portfolio progresses from relational database design and SQL operations to transaction management, NoSQL database technologies, distributed databases, and cloud database deployment.

The project uses simulated patient, provider, laboratory order, specimen, laboratory staff, and test result information to demonstrate database concepts and practical implementation.

## 2. Project Objectives

The major objectives of this project are to:

1. Design and implement a relational database for a simulated hospital laboratory.
2. Apply database normalization principles to improve data organization and reduce redundancy.
3. Develop SQL queries for retrieving, inserting, updating, and managing data.
4. Improve database query performance through indexing and execution plan analysis.
5. Demonstrate transaction management, concurrency control, and data integrity.
6. Explore NoSQL databases and document-oriented data structures.
7. Implement practical MongoDB CRUD operations, aggregation, indexing, and validation.
8. Understand distributed database concepts, including replication, synchronization, sharding, consistency, and availability.
9. Deploy and access a cloud-hosted database using MongoDB Atlas.
10. Compare relational and NoSQL database technologies and understand their applications in modern healthcare systems.

## 3. Case Study: MediLab Hospital Laboratory System

MediLab is a simulated hospital laboratory environment designed to demonstrate how healthcare data can be organized, stored, accessed, and managed using database technologies.

The system represents important laboratory information, including:

- Patient demographic information.
- Healthcare provider information.
- Laboratory orders.
- Ordered laboratory tests.
- Laboratory test catalog.
- Specimen information.
- Laboratory staff information.
- Laboratory test results.

The relational database design uses structured tables and relationships to maintain data integrity.

The NoSQL implementation explores document-oriented storage for flexible healthcare data management.

The distributed and cloud database exercises demonstrate how database systems can support scalability, availability, and remote access.

**Important:** All patient information used in this project is simulated and intended for educational purposes. No real patient records are represented.

---

## 4. Portfolio Structure

The project is divided into five practical portfolios.

### Portfolio 1: Database Design and Modeling

**Folder:** `portfolio-1-database-design/`

This portfolio focuses on the planning, design, and implementation of the MediLab relational database.

Key activities include:

- Identifying database entities and their attributes.
- Designing an Entity Relationship Diagram (ERD).
- Identifying primary keys and foreign keys.
- Establishing relationships between database tables.
- Applying database normalization principles.
- Creating the relational database schema.
- Defining constraints and relationships.
- Testing database structure and data integrity.

**Key concepts:** Relational database design, ER modeling, primary keys, foreign keys, normalization, constraints, and referential integrity.

### Portfolio 2: SQL Queries and Query Optimization

**Folder:** `portfolio-2-query-optimisation/`

This portfolio explores SQL operations and database performance optimization.

Key activities include:

- Writing SQL queries to retrieve healthcare information.
- Filtering and sorting records.
- Joining related database tables.
- Performing data manipulation operations.
- Creating and using database indexes.
- Examining query execution plans.
- Comparing query execution performance.
- Understanding how indexes influence database performance.

**Key concepts:** SQL, SELECT statements, filtering, joins, indexing, execution plans, and query optimization.

### Portfolio 3: Transactions and Concurrency Control

**Folder:** `portfolio-3-transactions-concurrency/`

This portfolio focuses on managing database transactions and maintaining data integrity when multiple operations interact with the database.

Key activities include:

- Executing database transactions.
- Understanding COMMIT and ROLLBACK operations.
- Exploring transaction isolation levels.
- Examining concurrent database operations.
- Understanding database locks.
- Exploring transaction consistency and isolation.
- Investigating potential concurrency problems.

**Key concepts:** ACID properties, transactions, concurrency control, isolation levels, database locks, and transaction management.

### Portfolio 4: NoSQL and Advanced Data Models

**Folder:** `portfolio-4-nosql/`

This portfolio introduces NoSQL database technologies using MongoDB.

The practical work explores document-oriented database design and the management of flexible healthcare information.

Key activities include:

- Installing and configuring MongoDB.
- Connecting to MongoDB through MongoDB Compass.
- Creating databases and collections.
- Inserting and retrieving documents.
- Updating and deleting documents.
- Working with embedded documents and references.
- Creating aggregation pipelines.
- Applying schema validation.
- Creating indexes.
- Comparing MongoDB with relational database systems.

The portfolio also explores how document-based data structures can represent healthcare information.

**Key concepts:** NoSQL databases, document-oriented storage, BSON, JSON, CRUD operations, aggregation, schema validation, and indexing.

### Portfolio 5: Distributed Databases and Cloud Deployment

**Folder:** `portfolio-5-distributed-cloud/`

This portfolio explores distributed database concepts and cloud-hosted database services.

Key activities include:

- Configuring a MongoDB replica set.
- Understanding primary node operations and replication.
- Transferring patient records between databases.
- Demonstrating manual database synchronization.
- Simulating data distribution across multiple collections.
- Understanding horizontal scaling and shard keys.
- Studying consistency, availability, partition tolerance, and failover.
- Creating a MongoDB Atlas cloud cluster.
- Connecting to the cloud database using MongoDB Compass and Mongosh.
- Creating a cloud database and inserting and querying patient records.
- Comparing cloud database technologies.
- Studying public, private, hybrid, and multi-cloud deployment models.

**Key concepts:** Distributed databases, replication, synchronization, sharding, horizontal scaling, CAP theorem, availability, cloud databases, and deployment models.

**Practical implementation note:** The replica set exercise used a single-node configuration, the sharding exercise used simulated data distribution across three collections, and synchronization was performed manually. These exercises demonstrate the concepts but are not equivalent to production multi-node replication, a fully configured sharded cluster, or automated real-time synchronization.

---

## 5. Technologies and Tools Used

The following technologies and tools were used across the project:

| Technology | Purpose |
|---|---|
| PostgreSQL 18 | Relational database implementation and SQL operations |
| pgAdmin 4 | PostgreSQL database administration |
| MongoDB Community Server | Local NoSQL database implementation |
| MongoDB Compass | Graphical interface for MongoDB |
| MongoDB Shell (Mongosh) | MongoDB commands and database administration |
| MongoDB Atlas | Cloud-hosted MongoDB deployment |
| GitHub | Source code, documentation, and portfolio management |
| Windows | Local development environment |
| SQL | Relational database queries and management |
| MongoDB Query Language | Document querying and manipulation |
| Markdown | Technical documentation |

---

## 6. Database Technologies Explored

The project explores both relational and non-relational database technologies.

### Relational Database

PostgreSQL was used to demonstrate structured data storage, relationships, constraints, SQL queries, transactions, and query optimization.

### NoSQL Database

MongoDB was used to demonstrate flexible document storage, CRUD operations, aggregation, validation, indexing, and distributed database concepts.

### Cloud Database Services

The project also examined the following cloud database services:

- **MongoDB Atlas:** Managed cloud-hosted MongoDB database service.
- **Amazon DynamoDB:** Managed NoSQL database service.
- **Azure Cosmos DB:** Globally distributed database service supporting multiple data models and APIs.
- **Amazon RDS:** Managed relational database service.

---

## 7. Key Learning Outcomes

Through the five portfolios, this project demonstrates practical understanding of:

1. Relational database architecture and database modeling.
2. Database normalization and data integrity.
3. SQL query development and optimization.
4. Database indexing and execution plan interpretation.
5. Transaction processing and ACID properties.
6. Concurrency control and isolation levels.
7. NoSQL database architecture and document modeling.
8. MongoDB CRUD operations and aggregation pipelines.
9. Schema validation and database indexing.
10. Database replication and synchronization.
11. Horizontal scaling and sharding concepts.
12. Consistency, availability, and distributed database principles.
13. Cloud database deployment and administration.
14. Relational versus NoSQL database technologies.

---

## 8. Healthcare Applications

The MediLab project demonstrates how database technologies can support healthcare and laboratory information management systems.

Potential applications include:

- Patient information management.
- Laboratory order processing.
- Specimen tracking.
- Laboratory result management.
- Healthcare data integration.
- Distributed access to laboratory information.
- Cloud-based healthcare database infrastructure.

In a real healthcare environment, these systems would require appropriate security controls, access management, encryption, auditing, backup strategies, and compliance with applicable healthcare privacy regulations.

---

## 9. Repository Organization

The repository is organized into five portfolio folders:

```text
advanced-database-portfolio/
│
├── portfolio-1-database-design/
│
├── portfolio-2-query-optimisation/
│
├── portfolio-3-transactions-concurrency/
│
├── portfolio-4-nosql/
│
└── portfolio-5-distributed-cloud/
```

Each portfolio folder contains its own documentation and relevant practical deliverables.

The individual portfolio README files provide additional details about the activities and concepts covered in each section.

Evidence screenshots are organized with the corresponding portfolio exercises.

---

## 10. Project Results

The project provided practical experience working with relational, NoSQL, and cloud database technologies.

The implementation demonstrated:

- Creation and management of a relational hospital laboratory database.
- SQL querying and performance optimization.
- Transaction handling and concurrency concepts.
- MongoDB database creation and document manipulation.
- MongoDB aggregation, indexing, and validation.
- Replica set configuration and primary node verification.
- Manual database synchronization.
- Simulated data distribution and sharding concepts.
- Cloud database creation and access using MongoDB Atlas.

The project also strengthened practical skills in database administration, technical documentation, troubleshooting, and version control using GitHub.

---

## 11. Project Status

**Status: Five portfolio areas completed.**

The five portfolio areas cover:

- Database Design and Modeling.
- SQL Queries and Query Optimization.
- Transactions and Concurrency Control.
- NoSQL and Advanced Data Models.
- Distributed Databases and Cloud Deployment.

Individual portfolio documentation has been created and organized in the repository.

Practical evidence screenshots are being finalized and organized for presentation.

---

## 12. Conclusion

The Advanced Database Systems portfolio demonstrates the practical application of database concepts through a simulated hospital laboratory information system.

Beginning with relational database design, the project progresses through SQL development, query optimization, transaction management, NoSQL technologies, distributed database concepts, and cloud database deployment.

By combining PostgreSQL, MongoDB, and MongoDB Atlas, the project provides practical exposure to different database architectures and their potential applications in healthcare information systems.

This portfolio represents an ongoing development of technical knowledge and practical skills in database systems, data management, and modern cloud technologies.

---

**Project:** Simulated MediLab Hospital Laboratory System  
**Course:** MIT 8103 – Advanced Database Systems  
**Institution:** Miva Open University  
**Repository:** `advanced-database-portfolio`

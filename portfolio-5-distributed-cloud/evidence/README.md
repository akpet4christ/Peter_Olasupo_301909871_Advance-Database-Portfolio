# Portfolio 5 – Practical Evidence

## 1. Overview

This folder contains screenshots documenting the practical exercises completed under Portfolio 5: Distributed Databases and Cloud Deployment.

The screenshots provide visual evidence of the database configurations, practical implementations, commands, and verification results achieved using MongoDB Community Server, MongoDB Compass, MongoDB Shell (Mongosh), and MongoDB Atlas.

## 2. Evidence Documentation

### 2.1 MongoDB Replication

| Evidence File | Description |
|---|---|
| `01-replica-set-primary.png` | Demonstrates successful MongoDB replica set initialization and verification of the PRIMARY node. |

### 2.2 Database Synchronization

| Evidence File | Description |
|---|---|
| `02-sync-target-database.png` | Shows creation of the target database and patients collection. |
| `03-sync-inserted-records.png` | Demonstrates successful transfer of four patient documents using `insertMany()`. |
| `04-sync-record-counts.png` | Verifies that both source and target databases contain four patient records. |
| `05-sync-source-updated.png` | Shows an update performed on the source patient record. |
| `06-sync-target-updated.png` | Demonstrates successful manual synchronization of the updated patient record. |

### 2.3 MongoDB Sharding Simulation

| Evidence File | Description |
|---|---|
| `07-sharding-collections.png` | Shows the three simulated shard collections created in MongoDB. |
| `08-sharding-record-distribution.png` | Demonstrates distribution and verification of patient records across the three collections. |

### 2.4 Consistency and Availability

| Evidence File | Description |
|---|---|
| `09-consistency-source-update.png` | Demonstrates an update to a patient record in the source database. |
| `10-consistency-target-reconciliation.png` | Shows the target database after manual reconciliation with the source record. |

### 2.5 Cloud Database Deployment

| Evidence File | Description |
|---|---|
| `11-atlas-cloud-patient-query.png` | Demonstrates successful access to the MongoDB Atlas cloud database through MongoDB Compass. |
| `12-atlas-mongosh-connection.png` | Shows successful connection to MongoDB Atlas using MongoDB Shell. |
| `13-atlas-mongosh-patient-query.png` | Demonstrates successful retrieval of a patient record from the cloud database using Mongosh. |

## 3. Technologies Used

- MongoDB Community Server
- MongoDB Compass
- MongoDB Shell (Mongosh)
- MongoDB Atlas
- GitHub
- Windows operating system

## 4. Evidence Summary

The screenshots document five practical areas:

1. MongoDB replica set configuration.
2. Database synchronization and record verification.
3. Simulated horizontal data distribution and sharding.
4. Consistency and manual data reconciliation.
5. Cloud database deployment and remote database access.

## 5. Conclusion

The evidence presented in this folder supports the practical work documented in Portfolio 5.

It demonstrates the application of distributed database concepts, MongoDB administration, data synchronization, consistency management, and cloud database deployment within the simulated MediLab Hospital Laboratory System.

**Note:** All patient records used in this project are simulated and intended for educational purposes. The replica set and sharding exercises were demonstrations rather than production multi-node deployments.

# Portfolio 5: Distributed and Cloud Databases

## Project Overview

This portfolio explores distributed database systems and cloud database technologies using the simulated MediLab Hospital Laboratory System.

The project focuses on understanding how databases distribute, replicate, and manage data across multiple servers and locations to improve availability, scalability, reliability, and performance.

## Objectives

- Understand distributed database concepts and architecture.
- Explore database replication and synchronization.
- Understand database sharding and horizontal scaling.
- Examine consistency and availability in distributed systems.
- Explore cloud database services and deployment models.
- Compare centralized and distributed database architectures.

## Tools and Technologies

- PostgreSQL 18
- MongoDB Community Server
- MongoDB Compass
- GitHub
- Cloud database concepts and services

## Practical Exercises

### 1. MongoDB Replica Set Configuration
- Configured MongoDB replication using a replica set.
- Updated the MongoDB configuration file.
- Initialized replica set `rs0`.
- Verified that the node became PRIMARY.
- Documented the single-node replica set limitation.

### 2. MongoDB Data Synchronization
- Created a target database named `medlab_sync`.
- Copied patient records from `medlab_nosql`.
- Verified document counts in both databases.
- Updated a source patient record.
- Manually synchronized the target record.
- Verified that the target contained the updated information.

### 3. MongoDB Sharding Simulation
- Studied horizontal and vertical scaling.
- Explored shard keys and MongoDB sharded cluster architecture.
- Created three collections to simulate separate shards.
- Distributed four patient records across the simulated shards.
- Verified record distribution using `countDocuments()`.
- Documented the limitations of the local simulation.

### 4. Database Consistency and Availability
- Explored consistency, availability, and partition tolerance.
- Demonstrated temporary inconsistency between source and target databases.
- Updated a source patient record.
- Manually synchronized the target record.
- Verified that both records contained the latest update.
- Studied the CAP theorem and failover concepts.

## Project Status

<badge color="success">Practical exercises completed so far</badge>

- MongoDB replica set configuration and documentation completed.
- MongoDB data synchronization completed.
- MongoDB sharding simulation completed.
- Consistency and availability demonstration completed.
- Cloud database technologies and deployment models: Pending.
- Centralized versus distributed database comparison: Pending.
- Final evidence collection and portfolio review: Pending.

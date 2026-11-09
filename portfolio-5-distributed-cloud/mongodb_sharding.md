# MongoDB Sharding and Horizontal Scaling Exercise

## Objective

To understand database sharding, horizontal scaling, and how distributed databases divide large datasets across multiple servers to improve scalability and performance.

## Environment

- MongoDB Community Server 9.0
- MongoDB Compass
- MongoDB Shell (MONGOSH)
- Windows operating system
- MediLab Hospital Laboratory System

## Introduction to Database Sharding

Database sharding is a technique used to distribute a large database across multiple servers called shards. Instead of storing all records on one server, data is divided into smaller portions and distributed across different servers.

Sharding helps databases manage large datasets, distribute workloads, and support horizontal scaling.

## Horizontal Scaling vs. Vertical Scaling

**Vertical scaling (Scaling Up):** Increasing the resources of an existing server by adding more CPU power, RAM, or storage.

**Horizontal scaling (Scaling Out):** Increasing database capacity by adding more servers and distributing workloads across them.

Sharding is one technique used to achieve horizontal scaling.

## MongoDB Sharded Cluster Architecture

A MongoDB sharded cluster consists of three major components:

1. **Shard Servers:** Store portions of the database.
2. **Config Servers:** Store metadata and information about the cluster and data distribution.
3. **Mongos Router:** Receives application requests and routes queries to the appropriate shards.

## Shard Key

A shard key is a field or combination of fields used to determine how MongoDB distributes documents across shards.

For the MediLab patient database, `medical_record_no` was selected as the illustrative shard key.

## Practical Simulation

A simulated sharding exercise was performed using the existing `medlab_nosql` database.

Three collections were created to represent separate shards:

- `shard_1`
- `shard_2`
- `shard_3`

Four patient records were distributed as follows:

| Simulated shard | Patient records | Number of records |
|---|---|---:|
| shard_1 | MRN1001, MRN1002 | 2 |
| shard_2 | MRN1004 | 1 |
| shard_3 | Remaining patient record | 1 |
| Total | Four patient records | 4 |

MongoDB

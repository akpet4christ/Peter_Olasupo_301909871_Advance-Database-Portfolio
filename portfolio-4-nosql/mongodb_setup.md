# MongoDB Environment Setup

## 1. Project Overview

This document describes the setup of the MongoDB environment used for the simulated MediLab Hospital Laboratory System.

MongoDB was used to explore NoSQL database concepts, document storage, CRUD operations, aggregation, schema validation, and indexing.

## 2. Tools and Technologies

The following tools were used:

- MongoDB Community Server 9.0
- MongoDB Compass
- PostgreSQL 18
- GitHub
- Windows operating system

## 3. MongoDB Connection

MongoDB Compass was installed and connected to the local MongoDB server.

Connection string:

```text
mongodb://localhost:27017
```

The connection was saved in MongoDB Compass as:

`MediLab Local MongoDB`

## 4. Database Creation

A database named `medlab_nosql` was created in MongoDB Compass.

The database was used to organize the collections required for the laboratory system.

## 5. Collections Created

The following seven collections were created:

| Collection | Purpose |
|---|---|
| patients | Stores patient information |
| providers | Stores healthcare provider information |
| test_catalog | Stores available laboratory tests |
| lab_orders | Stores laboratory orders |
| specimens |

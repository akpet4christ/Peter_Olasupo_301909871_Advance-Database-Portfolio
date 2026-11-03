# Indexing Analysis – MediLab Hospital Laboratory System

## 1. Introduction

Database indexes were created in PostgreSQL 18 to explore how indexing can support query performance in the MediLab Hospital Laboratory System.

## 2. Indexes Created

Two indexes were created:

- `idx_lab_orders_patient_id` on `lab_orders(patient_id)`.
- `idx_lab_orders_provider_id` on `lab_orders(provider_id)`.

These columns were selected because they connect laboratory orders to patients and healthcare providers.

## 3. Testing and Observations

After creating the indexes, EXPLAIN ANALYZE was used to examine queries filtering by patient_id and provider_id.

PostgreSQL continued to choose Sequential Scans rather than Index Scans.

The table contained only five laboratory orders, so PostgreSQL estimated that scanning the small table was more efficient.

## 4. Conclusion

The exercise demonstrated that indexes can support data retrieval, but their presence does not guarantee that PostgreSQL will use them.

The query optimizer considers estimated execution costs, table size, and available statistics when selecting an execution plan.

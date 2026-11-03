# Performance Comparison – MediLab Hospital Laboratory System

## 1. Introduction

This exercise evaluates query execution performance in PostgreSQL 18 using the MediLab Hospital Laboratory System.

Indexes were created on the `patient_id` and `provider_id` columns of the `lab_orders` table.

## 2. Query Used for Testing

The following query was executed using EXPLAIN ANALYZE:

```sql
SELECT
    patient_id,
    order_id,
    order_status
FROM lab_orders
WHERE patient_id = 1;
```

## 3. Execution Time Measurements

| Test | Execution Time |
|---|---:|
| First execution | 0.050 ms |
| Second execution | 0.047 ms |
| After ANALYZE | 0.070 ms |

The average of the first two measurements was 0.0485 milliseconds.

## 4. Execution Plan Observation

PostgreSQL continued to select a Sequential Scan (Seq Scan), even though an index existed on `lab_orders(patient_id)`.

The table contained only five records. PostgreSQL estimated that scanning the small table sequentially was more efficient than using the index.

## 5. Analysis

The execution times varied slightly between runs. This variation may result from normal system activity and measurement overhead.

The measurements do not establish that indexing improved performance because no equivalent measurement was taken before index creation.

## 6. Conclusion

This exercise demonstrated how PostgreSQL uses execution plans, indexes, and table statistics when processing queries.

It also showed that creating an index does not guarantee its use. The PostgreSQL query optimizer selects an execution strategy based on estimated cost and available statistics.

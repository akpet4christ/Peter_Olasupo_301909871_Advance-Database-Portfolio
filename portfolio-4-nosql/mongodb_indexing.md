# MongoDB Indexing

## Project Overview

Indexes improve query performance by helping MongoDB locate documents without scanning every document in a collection.

In this project, indexes were created using MongoDB Compass for the simulated MediLab Hospital Laboratory System.

## 1. Default MongoDB Index

MongoDB automatically creates an index named `_id_` for every collection.

This index ensures that each document has a unique `_id` value and supports efficient document retrieval using that identifier.

## 2. Patient Collection Index

An ascending index was created on the `medical_record_no` field in the `patients` collection.

Index definition:

```json id="1q4f8j"
{
  "medical_record_no": 1
}
```

This index supports more efficient searches using patient medical record numbers.

## 3. Laboratory Orders Index

An ascending index was created on the `order_id` field in the `lab_orders` collection.

Index definition:

```json id="k9y3pn"
{
  "order_id": 1
}
```

This index supports searches using laboratory order identifiers.

## 4. Indexes Created

The following indexes were created or examined:

| Collection | Index | Type |
|---|---|---|
| patients | `_id_` | Default unique index |
| patients | `medical_record_no_1` | Ascending |
| lab_orders | `_id_` | Default unique index |
| lab_orders | `order_id_1` | Ascending |

## Conclusion

This exercise demonstrated how MongoDB indexes can improve data retrieval efficiency.

Indexes are particularly useful when collections grow and applications frequently search

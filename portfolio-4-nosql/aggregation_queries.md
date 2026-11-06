# MongoDB Aggregation Queries

## Project Database

- **Database:** `medlab_nosql`
- **Collection:** `lab_orders`

## Introduction

MongoDB aggregation is used to process and analyze documents in a collection. It allows data to be filtered, grouped, sorted, and summarized.

The following aggregation stages were practised using MongoDB Compass.

## 1. Count Stage (`$count`)

Used the `$count` stage to determine the total number of laboratory orders.

Example:

```json
{
  "$count": "total_orders"
}
```

**Result:** 2 laboratory orders.

The `$count` stage was also used to count patient documents.

## 2. Group Stage (`$group`)

Grouped laboratory orders according to their status and counted the number of orders in each group.

Example:

```json
{
  "$group": {
    "_id": "$status",
    "total_orders": {
      "$sum": 1
    }
  }
}

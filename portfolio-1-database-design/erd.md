
# Entity Relationship Diagram (ERD)

## MediLab Hospital Laboratory System

The following ERD represents the relationships between the eight database entities.

```mermaid
erDiagram
    PATIENTS ||--o{ LAB_ORDERS : places
    PROVIDERS ||--o{ LAB_ORDERS : requests
    LAB_ORDERS ||--|{ ORDER_TESTS : contains
    TEST_CATALOG ||--o{ ORDER_TESTS : defines
    LAB_ORDERS ||--o{ SPECIMENS : generates
    LAB_STAFF ||--o{ SPECIMENS : collects
    ORDER_TESTS ||--o| TEST_RESULTS : produces
    SPECIMENS ||--o{ TEST_RESULTS : supports
    LAB_STAFF ||--o{ TEST_RESULTS : records

    PATIENTS {
        int patient_id PK
        varchar medical_record_no
        varchar first_name
        varchar last_name
        date date_of_birth
    }

    PROVIDERS {
        int provider_id PK
        varchar first_name
        varchar last_name
        varchar specialty
    }

    LAB_STAFF {
        int staff_id PK
        varchar first_name
        varchar last_name
        varchar role
    }

    TEST_CATALOG {
        int test_id PK
        varchar test_code
        varchar test_name
        varchar specimen_type
    }

    LAB_ORDERS {
        int order_id PK
        int patient_id FK
        int provider_id FK
        timestamp ordered_at
        varchar order_status
    }

    ORDER_TESTS {
        int order_test_id PK
        int order_id FK
        int test_id FK
        varchar priority
        varchar test_status
    }

    SPECIMENS {
        int specimen_id PK
        int order_id FK
        int collected_by FK
        varchar specimen_type
    }

    TEST_RESULTS {
        int result_id PK
        int order_test_id FK
        int specimen_id FK
        int resulted_by FK
        varchar result_value
    }
```

## Relationship Explanation

1. A patient can have multiple laboratory orders.
2. A provider can request multiple laboratory orders.
3. A laboratory order can contain multiple tests.
4. A test catalog entry can be used in multiple orders.
5. A laboratory order can generate multiple specimens.
6. A laboratory staff member can collect multiple specimens.
7. An ordered test can produce zero or one result.
8. A specimen can be associated with multiple test results.
9. A laboratory staff member can record multiple test results.

## Conclusion

The ERD illustrates the logical structure of the MediLab database and demonstrates how primary keys and foreign keys establish relationships between the entities.

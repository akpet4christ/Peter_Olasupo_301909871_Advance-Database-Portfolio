# MongoDB Schema Validation

## Project Overview

Schema validation helps maintain data quality by ensuring that documents follow defined rules before they are inserted or updated.

In this project, schema validation was configured for the `patients` collection in the `medlab_nosql` database.

## 1. Validation Requirements

A JSON Schema validation rule was created with the following required fields:

- `medical_record_no`
- `first_name`
- `last_name`

All three fields were required to contain string values.

## 2. Validation Rule

The following JSON Schema rule was applied:

```json
{
  "$jsonSchema": {
    "bsonType": "object",
    "required": [
      "medical_record_no",
      "first_name",
      "last_name"
    ],
    "properties": {
      "medical_record_no": {
        "bsonType": "string"
      },
      "first_name": {
        "bsonType": "string"
      },
      "last_name": {
        "bsonType": "string"
      }
    }
  }
}
```

## 3. Invalid Document Test

An incomplete patient document was submitted without the `last_name` field.

Example:

```json
{
  "medical_record_no": "MRN1004",
  "first_name": "Daniel"
}
```

**Result:** MongoDB rejected the document and displayed a validation error because the required `last_name` field was missing.

## 4. Valid Document Test

A complete patient document was then submitted.

Example:

```json
{
  "medical_record_no": "MRN1004",
  "first_name": "Daniel",
  "last_name": "Adams"
}
```

**Result:** MongoDB accepted the document because all required fields were present and contained string values.

## Conclusion

The schema validation exercise demonstrated how MongoDB can enforce document structure and improve data quality.

Both invalid and valid document tests

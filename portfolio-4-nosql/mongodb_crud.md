# MongoDB CRUD Operations

## Project Database

- **Database:** `medlab_nosql`
- **Collection:** `patients`

## 1. Create Operation

Inserted patient documents into the `patients` collection using MongoDB Compass.

Example patient record:

- Medical Record Number: MRN1001
- First Name: John
- Last Name: Smith

This demonstrated how to create and store new patient records in MongoDB.

## 2. Read Operation

Used MongoDB Compass filters to search for and retrieve patient records.

Example query:

```json
{
  "medical_record_no": "MRN1001"
}
```

The query successfully retrieved John Smith's patient document.

## 3. Update Operation

Updated the phone number of the patient with medical record number MRN1001.

- Previous phone number: 555-0101
- Updated phone number: 555-0199

The update was successful, demonstrating how existing patient information can be modified in MongoDB.

## 4. Delete Operation

Deleted the patient document belonging to David Williams, whose medical record number was MRN1003.

The document was successfully removed from the `patients` collection.

This demonstrated how MongoDB deletes unwanted records.

## Conclusion

The CRUD exercises demonstrated the four fundamental database operations: Create, Read, Update, and Delete.

Using MongoDB Compass, I successfully inserted, retrieved, modified, and deleted patient records in the simulated MediLab Hospital Laboratory System.

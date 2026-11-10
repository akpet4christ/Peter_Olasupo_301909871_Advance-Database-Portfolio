# MongoDB Database Synchronization

## 1. Overview

This practical exercise demonstrates how patient records can be transferred and synchronized between two MongoDB databases using MongoDB Shell (Mongosh).

The simulated MediLab Hospital Laboratory System uses two databases:

- **Source database:** `medlab_nosql`
- **Target database:** `medlab_sync`

The exercise demonstrates data copying, record verification, detecting differences between databases, and manually updating the target database.

## 2. Objectives

- Create a target database and collection.
- Copy patient records from a source database.
- Verify that records were transferred successfully.
- Update a patient record in the source database.
- Identify differences between source and target records.
- Manually synchronize the updated record.

## 3. Environment and Technologies

- MongoDB Community Server
- MongoDB Compass
- MongoDB Shell (Mongosh)
- Windows operating system
- Simulated MediLab patient database

## 4. Creating the Target Database

The target database was created with a `patients` collection.

Database name: `medlab_sync`

Collection name: `patients`

## 5. Copying Patient Records

The following command copied all patient documents from the source database into the target database:

```javascript
db.getSiblingDB("medlab_sync").patients.insertMany(
  db.getSiblingDB("medlab_nosql").patients.find().toArray()
)
```

The operation successfully inserted four patient documents into the target collection.

## 6. Verifying the Records

The following commands checked the number of patient records in both databases:

```javascript
db.getSiblingDB("medlab_nosql").patients.countDocuments()
```

```javascript
db.getSiblingDB("medlab_sync").patients.countDocuments()
```

**Result:** Both databases contained four patient documents.

This confirmed that the initial transfer was successful.

## 7. Updating a Source Record

To demonstrate synchronization, the patient with medical record number `MRN1001` was updated in the source database.

```javascript
db.getSiblingDB("medlab_nosql").patients.updateOne(
  { medical_record_no: "MRN1001" },
  { $set: { synchronization_test: "Updated in source" } }
)
```

The update was successful.

However, the corresponding record in the target database did not automatically receive the new field.

This demonstrated that copying records does not establish automatic synchronization.

## 8. Manually Synchronizing the Target Record

The following command replaced the target record with the latest version from the source database:

```javascript
db.getSiblingDB("medlab_sync").patients.replaceOne(
  { medical_record_no: "MRN1001" },
  db.getSiblingDB("medlab_nosql").patients.findOne(
    { medical_record_no: "MRN1001" }
  )
)
```

The operation successfully updated the corresponding target record.

## 9. Verification

The target record was queried again to confirm that it contained the updated information.

```javascript
db.getSiblingDB("medlab_sync").patients.findOne(
  { medical_record_no: "MRN1001" }
)
```

The result showed the field:

```javascript
synchronization_test: "Updated in source"
```

This confirmed that the manual synchronization was successful.

## 10. Results and Learning Outcomes

The exercise demonstrated that:

1. Patient records can be copied between MongoDB databases.
2. Record counts can be used to verify an initial transfer.
3. Changes made to a source database do not automatically appear in a separately copied target database.
4. A manual synchronization operation can update a target record.
5. Database synchronization helps maintain consistent information across systems.

## 11. Limitations

This exercise demonstrated a manual, one-time synchronization process. It did not implement automatic or real-time synchronization.

In a production hospital environment, synchronization may require automated replication, change streams, scheduled data pipelines, or other integration mechanisms.

Patient information must also be protected through appropriate access controls, encryption, auditing, and applicable healthcare privacy requirements.

## 12. Conclusion

The MongoDB synchronization exercise demonstrated how patient records can be transferred, verified, and manually reconciled between two databases.

This practical activity provided an introduction to database synchronization concepts and their importance in maintaining reliable information across healthcare systems.

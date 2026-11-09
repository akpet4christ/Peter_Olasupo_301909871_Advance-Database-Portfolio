# Consistency and Availability Demonstration

## 1. Project Overview

This exercise demonstrates database consistency and availability concepts using the simulated MediLab Hospital Laboratory System built with MongoDB.

The practical work used two databases:

- `medlab_nosql` – Source database.
- `medlab_sync` – Target database.

## 2. Objectives

- Understand database consistency and availability.
- Observe how two databases can temporarily contain different versions of the same record.
- Demonstrate manual synchronization to restore consistency.
- Understand the relationship between consistency, availability, and partition tolerance.

## 3. Practical Demonstration

### Step 1: Check the source record

Retrieved the patient record for medical record number `MRN1001` from the source database.

### Step 2: Update the source record

Executed an update to add the following field:

```javascript
{
  $set: {
    consistency_demo: "Source database updated"
  }
}
```

MongoDB confirmed that one document was matched and modified.

### Step 3: Check the target record

Retrieved the corresponding patient record from `medlab_sync`.

The new `consistency_demo` field was initially absent. This demonstrated that the target database contained an older version of the source record.

### Step 4: Synchronize the target record

Used `replaceOne()` to replace the target record with the latest record retrieved from the source database.

MongoDB confirmed:

- `matchedCount: 1`
- `modifiedCount: 1`
- `upsertedCount: 0`

### Step 5: Verify consistency

Retrieved the target record again and confirmed that it now contained:

`consistency_demo: "Source database updated"`

The target record was successfully updated to match the latest source record.

## 4. Understanding the Concepts

### Consistency

Consistency means that data remains accurate and follows the database's defined rules. In this exercise, consistency was demonstrated by bringing the target record in line with the source record.

### Availability

Availability means that a database remains accessible and able to respond to requests. This exercise discussed availability but did not perform a formal availability or failover test.

### Partition Tolerance

Partition tolerance refers to a distributed system's ability to continue operating despite communication failures between its components.

### CAP Theorem

The CAP theorem explains that when a network partition occurs, a distributed data system must make a trade-off between strong consistency and availability.

## 5. Results

The practical exercise successfully demonstrated:

- Updating a patient record in the source database.
- Identifying a stale record in the target database.
- Manually synchronizing the target record.
- Verifying that the target contained the latest update.

## 6. Limitations

This was a manual synchronization simulation using two local MongoDB databases. It did not implement automatic synchronization, a real network partition, or a production distributed database cluster.

The earlier replica set exercise used a single-node replica set and therefore did not demonstrate actual redundancy or failover.

## 7. Learning Outcomes

Through this exercise, I gained practical understanding of database consistency, stale data, synchronization, availability, partition tolerance, and the CAP theorem.

The exercise also demonstrated why distributed database systems need appropriate synchronization and consistency strategies.

# MongoDB Replication Exercise

## Objective
To configure and initialize a MongoDB replica set and understand how replication supports data availability and redundancy in distributed database systems.

## Environment
- MongoDB Community Server 9.0
- MongoDB Compass
- Windows operating system
- Local replica set name: `rs0`
- Local MongoDB address: `127.0.0.1:27017`

## Configuration
The MongoDB configuration file (`mongod.cfg`) was updated with the following replication setting:

```yaml
replication:
  replSetName: rs0
```

The MongoDB service was restarted successfully after validating the configuration.

## Implementation
The replica set was initialized using MongoDB Shell:

```javascript
rs.initiate()
```

The command completed successfully.

The replica set status was then checked using:

```javascript
rs.status()
```

The returned status showed:

```javascript
stateStr: "PRIMARY"
```

This confirmed that the local MongoDB instance successfully became the primary member of replica set `rs0`.

## Key Learning Outcomes
- Configured MongoDB for replica-set operation.
- Initialized a replica set.
- Used `rs.status()` to inspect replica-set health and member state.
- Learned the role of a primary member in accepting database operations.
- Understood how replication supports availability and redundancy.

## Limitation
This exercise used a single-node replica set. It demonstrates replica-set configuration and primary election, but does not provide actual data redundancy or failover protection against machine failure. A multi-node replica set would be required to demonstrate those capabilities.

## Evidence
A screenshot showing the replica-set status and `PRIMARY` state is included in the evidence folder.

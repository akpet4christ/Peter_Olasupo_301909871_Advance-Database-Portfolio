# MongoDB Data Modeling

## Project Overview

This document explains how data was organized in MongoDB for the simulated MediLab Hospital Laboratory System.

The project uses a document-oriented data model to store patient information, laboratory orders, test details, specimens, and test results.

## 1. Database Structure

Database name: `medlab_nosql`

The database contains seven collections:

1. `patients`
2. `providers`
3. `test_catalog`
4. `lab_orders`
5. `specimens`
6. `test_results`
7. `lab_staff`

Each collection stores documents related to a particular part of the laboratory system.

## 2. Embedded Documents

Embedded documents allow related information to be stored inside another document.

In this project, the `lab_orders` collection uses an embedded array named `tests_ordered`.

For example, laboratory order `ORD001` contains test information for:

- Test ID: TST001
- Test Name: Complete Blood Count (CBC)

This approach allows related test information to be retrieved together with the laboratory order.

## 3. Document References

References allow documents in different collections to be related through identifiers.

Examples from this project include:

- `medical_record_no` connects laboratory orders to patient records.
- `provider_id` connects laboratory orders to provider records.
- `order_id` connects specimens and test results to laboratory orders.

For example, patient

-- MEDILAB: SAMPLE PATIENT DATA

INSERT INTO patients
    (medical_record_no, first_name, last_name, date_of_birth, phone)
VALUES
    ('MRN1001', 'John', 'Williams', '1985-04-12', '555-1001'),
    ('MRN1002', 'Mary', 'Johnson', '1992-08-25', '555-1002'),
    ('MRN1003', 'David', 'Brown', '1978-11-03', '555-1003'),
    ('MRN1004', 'Sarah', 'Davis', '2000-02-14', '555-1004'),
    ('MRN1005', 'Michael', 'Wilson', '1965-06-30', '555-1005');

-- =====================================================
-- TABLE 2: PROVIDERS
-- Insert three fictional healthcare providers
-- =====================================================

-- =====================================================
-- TABLE 3: LABORATORY STAFF
-- Insert three fictional laboratory staff members
-- =====================================================

INSERT INTO lab_staff
    (first_name, last_name, role)
VALUES
    ('Daniel', 'White', 'Medical Laboratory Scientist'),
    ('Grace', 'Martin', 'Laboratory Technician'),
    ('Samuel', 'Clark', 'Laboratory Supervisor');
INSERT INTO providers
    (first_name, last_name, specialty)
VALUES
    ('James', 'Anderson', 'Internal Medicine'),
    ('Linda', 'Thompson', 'Family Medicine'),
    ('Robert', 'Taylor', 'Pediatrics');

-- =====================================================
-- TABLE 4: TEST CATALOG
-- Insert five laboratory tests
-- =====================================================

INSERT INTO test_catalog
    (test_code, test_name, specimen_type, unit)
VALUES
    ('CBC001', 'Complete Blood Count (CBC)', 'Blood', 'Various'),
    ('BMP001', 'Basic Metabolic Panel (BMP)', 'Blood', 'Various'),
    ('LIP001', 'Lipid Profile', 'Blood', 'mg/dL'),
    ('UA001', 'Urinalysis', 'Urine', 'Various'),
    ('LFT001', 'Liver Function Test (LFT)', 'Blood', 'Various');

-- =====================================================
-- TABLE 5: LABORATORY ORDERS
-- Insert five fictional laboratory orders
-- =====================================================

INSERT INTO lab_orders
    (patient_id, provider_id, order_status)
VALUES
    (1, 1, 'Completed'),
    (2, 2, 'In Progress'),
    (3, 3, 'Pending'),
    (4, 1, 'Completed'),
    (5, 2, 'Pending');

-- =====================================================
-- TABLE 6: ORDER TESTS
-- Insert eight laboratory test requests
-- =====================================================

INSERT INTO order_tests
    (order_id, test_id, priority, test_status)
VALUES
    (1, 1, 'Routine', 'Completed'),
    (1, 2, 'Urgent', 'Completed'),
    (2, 3, 'Routine', 'In Progress'),
    (2, 4, 'Routine', 'In Progress'),
    (3, 1, 'STAT', 'Pending'),
    (4, 5, 'Routine', 'Completed'),
    (4, 3, 'Urgent', 'Completed'),
    (5, 2, 'Routine', 'Pending');

-- =====================================================
-- TABLE 7: SPECIMENS
-- Insert five fictional laboratory specimens
-- =====================================================

INSERT INTO specimens
    (order_id, collected_by, specimen_type, collected_at, specimen_status)
VALUES
    (1, 1, 'Blood', CURRENT_TIMESTAMP, 'Processed'),
    (2, 2, 'Blood', CURRENT_TIMESTAMP, 'Received'),
    (3, 1, 'Blood', CURRENT_TIMESTAMP, 'Collected'),
    (4, 3, 'Blood', CURRENT_TIMESTAMP, 'Processed'),
    (5, 2, 'Urine', CURRENT_TIMESTAMP, 'Collected');

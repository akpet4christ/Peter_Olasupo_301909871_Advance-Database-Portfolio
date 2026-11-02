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

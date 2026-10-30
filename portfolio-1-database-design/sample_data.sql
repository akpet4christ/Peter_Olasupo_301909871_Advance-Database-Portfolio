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

INSERT INTO providers
    (first_name, last_name, specialty)
VALUES
    ('James', 'Anderson', 'Internal Medicine'),
    ('Linda', 'Thompson', 'Family Medicine'),
    ('Robert', 'Taylor', 'Pediatrics');

-- =====================================================
-- MEDILAB HOSPITAL LABORATORY SYSTEM
-- Portfolio 1: Database Design and Modelling
-- Database: PostgreSQL 18
-- =====================================================

-- TABLE 1: PATIENTS
CREATE TABLE patients (
    patient_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    medical_record_no VARCHAR(30) UNIQUE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- TABLE 2: PROVIDERS
CREATE TABLE providers (
    provider_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100)
);

-- TABLE 3: LABORATORY STAFF
CREATE TABLE lab_staff (
    staff_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    role VARCHAR(100) NOT NULL
);

-- TABLE 4: TEST CATALOG
CREATE TABLE test_catalog (
    test_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    test_code VARCHAR(20) UNIQUE NOT NULL,
    test_name VARCHAR(150) NOT NULL,
    specimen_type VARCHAR(50) NOT NULL,
    unit VARCHAR(30)
);

-- TABLE 5: LABORATORY ORDERS
CREATE TABLE lab_orders (
    order_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    patient_id INTEGER NOT NULL,
    provider_id INTEGER NOT NULL,
    ordered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    order_status VARCHAR(30) DEFAULT 'Pending',

    CONSTRAINT fk_order_patient
        FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    CONSTRAINT fk_order_provider
        FOREIGN KEY (provider_id)
        REFERENCES providers(provider_id),

    CONSTRAINT chk_order_status
        CHECK (order_status IN
        ('Pending', 'In Progress', 'Completed', 'Cancelled'))
);

-- TABLE 6: ORDER TESTS
CREATE TABLE order_tests (
    order_test_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_id INTEGER NOT NULL,
    test_id INTEGER NOT NULL,
    priority VARCHAR(20) DEFAULT 'Routine',
    test_status VARCHAR(30) DEFAULT 'Pending',

    CONSTRAINT fk_order_test_order
        FOREIGN KEY (order_id)
        REFERENCES lab_orders(order_id),

    CONSTRAINT fk_order_test_catalog
        FOREIGN KEY (test_id)
        REFERENCES test_catalog(test_id),

    CONSTRAINT uq_order_test
        UNIQUE (order_id, test_id),

    CONSTRAINT chk_test_priority
        CHECK (priority IN ('Routine', 'Urgent', 'STAT')),

    CONSTRAINT chk_test_status
        CHECK (test_status IN
        ('Pending', 'In Progress', 'Completed', 'Cancelled'))
);

-- TABLE 7: SPECIMENS
CREATE TABLE specimens (
    specimen_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_id INTEGER NOT NULL,
    collected_by INTEGER,
    specimen_type VARCHAR(50) NOT NULL,
    collected_at TIMESTAMP,
    specimen_status VARCHAR(30) DEFAULT 'Collected',

    CONSTRAINT fk_specimen_order
        FOREIGN KEY (order_id)
        REFERENCES lab_orders(order_id),

    CONSTRAINT fk_specimen_staff
        FOREIGN KEY (collected_by)
        REFERENCES lab_staff(staff_id),

    CONSTRAINT chk_specimen_status
        CHECK (specimen_status IN
        ('Collected', 'Received', 'Rejected', 'Processed'))
);

-- TABLE 8: TEST RESULTS
CREATE TABLE test_results (
    result_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_test_id INTEGER NOT NULL UNIQUE,
    specimen_id INTEGER NOT NULL,
    result_value VARCHAR(100) NOT NULL,
    result_unit VARCHAR(30),
    is_abnormal BOOLEAN DEFAULT FALSE,
    resulted_by INTEGER,
    resulted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_result_order_test
        FOREIGN KEY (order_test_id)
        REFERENCES order_tests(order_test_id),

    CONSTRAINT fk_result_specimen
        FOREIGN KEY (specimen_id)
        REFERENCES specimens(specimen_id),

    CONSTRAINT fk_result_staff
        FOREIGN KEY (resulted_by)
        REFERENCES lab_staff(staff_id)
);


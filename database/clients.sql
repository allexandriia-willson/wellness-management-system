-- Clients Table
-- Stores information about wellness clients

-- Required Fields:
    -- Client Id, client_id
    -- First Name, first_name
    -- Last Name, last_name
    -- Phone Number, primary_phone

-- Optional Fields:
    -- Email Address, email_address
    -- Middle Initial, middle_initial
    -- Prefix, prefix
    -- Suffix, suffix
    -- Secondary Phone Number, secondary_phone
    -- Work Phone Number, work_phone
    -- Birthday, birthday
    -- Home Address, home_address
    -- Mailing Address, mailing_address
    -- Emergency Contact Name, emergency_contact_name
    -- Emergency Contact Phone Number, emergency_contact_phone

-- Future Connected Sections:
    -- Membership Information
    -- Appointment Information
    -- Transaction Information
    -- Payment Methods
    -- Client Notes
    -- Packages

-- System Fields
    -- created_date
    -- modified_date
    -- account_status

-- ********************************************* --
CREATE TABLE Clients (
    client_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    middle_initial TEXT,
    last_name TEXT NOT NULL,
    prefix TEXT,
    suffix TEXT,
    
    primary_phone TEXT NOT NULL,
    email TEXT -- is allowed to empty, no comma needed at the end of a list
    birthday DATE,

    street_address TEXT,
    city TEXT,
    state_province TEXT,
    postal_code TEXT,
    country TEXT
);
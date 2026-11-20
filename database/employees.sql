-- Employees Table
-- Stores employee information

CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,

    first_name TEXT NOT NULL,
    middle_initial TEXT,
    last_name TEXT NOT NULL,
    prefix TEXT,
    suffix TEXT,

    primary_phone TEXT NOT NULL,
    secondary_phone TEXT,

    email TEXT NOT NULL,
    date_of_birth DATE NOT NULL,

    role TEXT NOT NULL,
    hire_date DATE NOT NULL,
    employment_status TEXT NOT NULL
);
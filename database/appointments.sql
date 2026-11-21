-- Appointments Table
-- Connects clients, employees, and services

CREATE TABLE Appointments (
    appointment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    client_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
    service_date DATE NOT NULL,
    service_start_time TEXT NOT NULL,
    status TEXT NOT NULL,
    room_number TEXT,
    service_notes TEXT
);
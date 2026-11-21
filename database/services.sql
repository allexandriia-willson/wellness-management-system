-- Services Table
-- Stores business services offered to clients

CREATE TABLE Services (
    service_id INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name TEXT NOT NULL,
    service_duration INTEGER NOT NULL,
    service_price REAL NOT NULL,
    category TEXT NOT NULL,
    service_status TEXT NOT NULL,
    description TEXT
);
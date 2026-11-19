This folder will hold all SQL files.
: Before building screens, APIs, dashboards, or anything else, we need a place to store data.

My eg: Meevo
- When you search for a client, that information is being pulled from a database somewhere.
- When a massage is booked, it gets stored in a database.
- When a membership renews, that's database information.

So this folder will eventually contain all the instructions used to build the database.

SQL: the language that talks to databases.
SQL Files
Eg. CREATE TABLE
    INSERT INFO
    SELECT
    UPDATE
    DELETE

Client Profile
- I don't just want a profile but client information when searching. I want to show a hub of quick pull information that connects to memberships, appointments, cancellations, packages, and brief history.

GROUP 1: Information that belongs to the client
- First Name
- Last Name
- Phone Number
- Email Address
These belong in the Clients table.

GROUP 2: Information connected to the client
- Membership Status
- Packages
- Appointments
- Cancellations
- Session Credits
These do not live directly in the Clients table. They are specific to each client based on their person. So these will go in a separate table later.

What is a field?
- A field is just one piece of information
Eg:
Client: Alexandria Wilson
Fields: First Name = Alexandria
        Last Name = Wilson
        Phone = 1234567890
        Email = alex@example.com
- Each field becomes a column later on.

When Creating A New Client?
: What do I want to show up? What information belongs directly to the client, and what information is connected to the client?
- First Name (required)
- Middle Initial (optional)
- Last Name (required)
- Prefix (optional)
- Suffix (optional)
- Primary Phone Number (required)
- Secondary Phone Number (optional)
- Work Phone Number (optional)
- Email Address (optional)
- Birthday (optional)
- Home Address (optional)
- Mailing Address (optional)
- Emergency Contact (optional)

: Think about the client profile like a folder. Imagine a physical folder in a filling cabinet. The folder itself contains:
- Client ID
- Name
- Phone
- Email
- Birthday
- Address
- Emergency Contact
That's the Client.

: Inside that folder are other documents:
Appointments
eg. Status: Checked In/Checked Out
    Date: 11/20/2026
    Service: 60-Min Sport Massage
    Provider: Jessica M.
    Transaction No.: 729428943044

    Status: Upcoming
    Date: 12/20/2026
    Service: 90-Min Lym. Massage
    Provider: Carrie D.
    Transaction No.: N/A

Memberships
eg. Status: Member
    Type: 12-Month
    Start Date:
    Payment Date:
    Renewal Date:
    Card Information:
    Credits Accrued:
    Credits History:

Transactions
eg. Transaction No.: 28349253595
    Service Date: 11/20/26
    Service: 60-Min Deep Tissue Massage
    Service Provider: Jessica M.
    Service Total: $100.00
    Payment Method: CoF/Package Redeemed/Gift Card/Cash/New Card
    FDA: Ingrid L.

Client Notes
eg. Date: 11/20/26
    FDA: Ingrid L.
    Note:
        eg. Prefers Deep Tissue
            DO NOT BOOK with Kallie
            See medical forms
            Pregnancy Notice
            They were interested in signing up for a membership but doesn't feel it is the right time to make that committment.
    Preferences:
        Pop-up When Booking?
        Pop-up At All Locations?
        Pop-up When Checking In?
        Pop-up When Checking Out?

Payment Method
eg. Card 1: Date Added/ Card Type/ Client Name/ Card Ending 1234/ Zip Code/ Edit/ Delete

- Relational database needed for all of this.
Clients
    -> Profile
    -> Appointments
    -> Transactions
    -> Membership Profile
    -> Payment Method
    -> Client Notes
    -> Packages

CLIENT PROFILE
---------------------------------
------ General Information ------
---------------------------------
Client ID
First Name
Middle Initial
Last Name
Prefix 
Suffix
Primary Phone Number
Email Address 
Home Address
Mailing Address
Emergency Contact Name
Emergency Contact Phone

---------------------------------
------- Connected Records -------
---------------------------------
Appointments
Memberships
Transactions
Payment Methods
Packages
Session Credits
Client Notes
Documents

---------------------------------
------ System Information -------
---------------------------------
Date Created    (Date Creadted: Client joined on: Mar 14, 2026)
Date Modified   (Date Modified: Client profile last changed: Nov 18, 2026)
Account Status  (Active/ Suspended/ Frozen/ In Cancellation)

LEARNING SQL CODE
- CREATE TABLE Clients - hey database, create a table named Clients
- ( ) - everything inside them describes the columns
- First Column: client_id INTEGER PRIMARY KEY AUTINCREMENT
  - client_id: column name
  - INTEGER: stores whole numbers   eg. 1   1
                                        2   2
                                        3   3
                                        4   4
  - PRIMARY KEY: every client must have a unique ID; no duplicates allowed
  - AUTOINCREMENT:  1   Client 1
                    2   Client 2
                    3   Client 3
                    are automatically created by the database. Don't have to type them naturally.
- Next Column: first_name TEXT NOT NULL
  - first_name: column name
  - TEXT: stores words (eg. Alexandria, Jessica, Michael)
  - NOT NULL: means this field cannot be left blank

What Makes a Good Clients Table?
: instead of cramming all 15+ fields into one, start with a Minimum Viable Table.
    : What is the smallest table that can still represent a client?
    eg. CREATE TABLE Clients (
        client_id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        primary_phone TEXT NOT NULL,
        email TEXT
    );
: another concept: Adding Another Field
- Which of these belongs directly to the client? Middle Initial
- Which data type should it use? TEXT
- Required or optional? Optional
                        which means middle_initial TEXT
                        Notice: No NOT NULL, because it's optional.
: another concept: Why Postal Code is TEXT
- 29330 isn't a number we're doing math on. And some countries have postal codes like: M5S 1A1 (Canada) which contains letters.
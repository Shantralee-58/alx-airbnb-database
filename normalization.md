# Database Normalization Process for Airbnb Clone

This document explains the normalization steps applied to the Airbnb database schema to ensure data integrity and minimize redundancy, achieving the Third Normal Form (3NF).

---

## 1. Unnormalized Form (UNF)

Initially, the data might be stored in a single table with repeating groups and redundant data, for example:

| user_id | user_name | bookings                  | properties                       | payments                    |
|---------|-----------|---------------------------|---------------------------------|-----------------------------|
| 1       | Idah      | [Booking1, Booking2]      | [Property1, Property2]           | [Payment1, Payment2]        |

- Data is not atomic
- Multiple values in single columns (bookings, payments)
- High redundancy

---

## 2. First Normal Form (1NF)

**Objective:** Remove repeating groups and ensure atomicity.

- Each column contains atomic values.
- Separate entities into distinct tables.

Entities identified:

- User
- Property
- Booking
- Payment
- Review

Example:  
Bookings stored as separate rows instead of arrays inside user records.

---

## 3. Second Normal Form (2NF)

**Objective:** Remove partial dependencies — every non-key attribute depends on the whole primary key.

- Applicable when composite keys exist (none in our case as most tables have single primary keys).
- Ensured that no attribute depends on part of a composite key.

Example:  
All attributes in Booking depend on the booking ID (PK).

---

## 4. Third Normal Form (3NF)

**Objective:** Remove transitive dependencies — no non-key attribute depends on another non-key attribute.

- Example:  
In Property, avoid storing host details redundantly; instead, link to `User` via `host_id`.
- Ensured all attributes depend only on the primary key.

---

## Summary

The current design satisfies 3NF:

- Entities are well-separated.
- Foreign keys establish relationships without redundancy.
- No transitive or partial dependencies found.
- The design supports scalability and data integrity.

# Optimization Report

**Author:** Idah Lindiwe Khumalo  
**Task:** Task 4 – Optimize Complex Queries  
**File Reference:** `performance.sql`

---

## Initial Query Overview

The initial query retrieved detailed booking information by joining:

- Bookings
- Users
- Properties
- Payments

```sql
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.name AS user_name,
    p.name AS property_name,
    pay.amount AS payment_amount
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;


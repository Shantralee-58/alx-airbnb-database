# Index Performance Report

**Author:** Idah Lindiwe Khumalo  
**Task:** Task 3 – Implement Indexes for Optimization  
**File Reference:** `database_index.sql`

---

## 🧠 Why Indexes Matter

In large datasets like Airbnb’s, some queries (especially those involving joins, filtering, or sorting) can be painfully slow. Indexes are created on columns that are frequently used in:

- `JOIN` conditions
- `WHERE` filters
- `ORDER BY` statements

They reduce the number of rows the database engine must scan, drastically improving response times.

---

## 🔍 Indexes Implemented

| Table     | Column        | Index Name             | Use Case                            |
|-----------|---------------|------------------------|--------------------------------------|
| bookings  | `user_id`     | `idx_user_id`          | Fast lookup for user bookings        |
| bookings  | `start_date`  | `idx_start_date`       | Filter queries by date ranges        |
| reviews   | `property_id` | `idx_property_id_reviews` | Faster access to property reviews |

Additionally, we tested a composite index:

```sql
CREATE INDEX idx_user_start ON bookings(user_id, start_date);


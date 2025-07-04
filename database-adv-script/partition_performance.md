# Partition Performance Report

**Author:** Idah Lindiwe Khumalo  
**Task:** Task 5 – Partitioning Large Tables  
**File Reference:** `partitioning.sql`

---

## Why Partition?

When tables grow very large, querying by date or other ranges can become slow because the database scans the entire table. Partitioning splits the table into smaller, manageable pieces based on a column like `start_date`.

This improves query speed, especially for date-range filters.

---

## Partitioning Implementation

We partitioned the `bookings` table by the `YEAR(start_date)` column using RANGE partitions:

```sql
CREATE TABLE bookings_partitioned (
    id INT,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY(id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);


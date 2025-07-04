# Performance Monitoring and Refinement Report

**Author:** Idah Lindiwe Khumalo  
**Task:** Task 6 – Monitor and Refine Database Performance  
**File Reference:** `database-adv-script`

---

## Monitoring Tools Used

- **EXPLAIN ANALYZE:** To get detailed query execution plans with runtime statistics.
- **SHOW PROFILE:** To observe resource usage during query execution.

These tools helped identify bottlenecks in frequently used queries.

---

## Queries Monitored

Example query analyzed:

```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 101 AND start_date >= '2024-01-01';


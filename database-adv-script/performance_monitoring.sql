-- Author: Idah Lindiwe Khumalo
-- Description: Monitoring query performance and refining using EXPLAIN ANALYZE and indexing

-- Example query to monitor before optimizations
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 101 AND start_date >= '2024-01-01';

-- Create composite index to improve performance
CREATE INDEX idx_user_start ON bookings(user_id, start_date);

-- Monitor performance after adding index
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 101 AND start_date >= '2024-01-01';

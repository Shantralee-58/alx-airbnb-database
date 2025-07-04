-- Author: Idah Lindiwe Khumalo
-- Description: Refactor queries for performance by analyzing and reducing inefficiencies

-- Initial complex query (may have inefficiencies)
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

-- Use EXPLAIN to check this query before optimization
-- EXPLAIN SELECT ... (same query above)

-- Optimized query: Only necessary columns, assumes indexes on foreign keys
SELECT
    b.id,
    b.start_date,
    u.name,
    p.name,
    pay.amount
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE
    b.start_date >= '2024-01-01';  -- Example filter to improve index usage

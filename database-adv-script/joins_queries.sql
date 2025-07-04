-- Author: Idah Khumalo
-- Description: Complex SQL join queries for ALX Airbnb project

-- 1. INNER JOIN: Bookings and users who made them
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name
FROM
    bookings b
INNER JOIN users u ON b.user_id = u.id;

-- 2. LEFT JOIN: Properties and their reviews, even if there are no reviews
SELECT
    p.id AS property_id,
    p.name AS property_name,
    r.id AS review_id,
    r.rating,
    r.comment
FROM
    properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- 3. FULL OUTER JOIN: All users and all bookings, even if unrelated
-- MySQL doesn't support FULL OUTER JOIN directly, so we simulate it with UNION
SELECT
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date
FROM
    users u
LEFT JOIN bookings b ON u.id = b.user_id

UNION

SELECT
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.start_date
FROM
    users u
RIGHT JOIN bookings b ON u.id = b.user_id;

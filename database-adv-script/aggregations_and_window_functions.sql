-- Author: Idah Lindiwe Khumalo
-- Description: COUNT, GROUP BY, and RANK to analyze user and property data

-- 1. Total number of bookings per user
SELECT
    user_id,
    COUNT(*) AS total_bookings
FROM
    bookings
GROUP BY
    user_id;

-- 2. Ranking properties by number of bookings
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS ranking,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_number
FROM
    bookings
GROUP BY
    property_id;

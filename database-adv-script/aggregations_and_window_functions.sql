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


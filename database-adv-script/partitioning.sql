-- Author: Idah Lindiwe Khumalo
-- Description: Partition the bookings table by start_date for better performance on date queries

-- Note: Partitioning requires a storage engine like InnoDB with native support (MySQL 8+)
-- Example syntax using RANGE partitioning (simplified structure)
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

-- Example query to test partitioning impact
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-06-30';


-- Author: Idah Lindiwe Khumalo
-- Description: Creating indexes to improve performance of common queries

-- Index on user_id for fast lookup and joins with users
CREATE INDEX idx_user_id ON bookings(user_id);

-- Index on start_date to help with filtering by date ranges
CREATE INDEX idx_start_date ON bookings(start_date);

-- Index on property_id to speed up joins and filters in reviews
CREATE INDEX idx_property_id_reviews ON reviews(property_id);

-- Use EXPLAIN to check query execution plan before and after adding indexes
-- Example:
-- EXPLAIN SELECT * FROM bookings WHERE user_id = 10;

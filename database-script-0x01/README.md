# Database Schema for Airbnb Clone

This directory contains the SQL script `schema.sql` which defines the database schema for the Airbnb-like application.

## Design Choices

- **User** table stores all user information with a unique email constraint.
- **Property** references the `User` table through `host_id` to identify the owner.
- **Booking** links users and properties with foreign keys and includes booking dates and status.
- **Payment** is linked one-to-one with a booking, ensuring each booking has a unique payment record.
- **Review** connects users and properties, allowing ratings and comments with constraints on rating values.

## Indexes

- Indexes are created on foreign key columns (`user_id`, `property_id`) in Booking and Review tables to optimize lookup and join operations.

## Constraints

- Proper foreign key constraints ensure referential integrity.
- `CHECK` constraints validate rating values within 1 to 5.
- Cascading updates and deletes maintain consistency when related records are modified.


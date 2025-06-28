# 🏗️ Entity-Relationship Diagram (ERD) for Airbnb Database

This document outlines the core entities, attributes, and relationships designed for the Airbnb-like database as part of the ALX Airbnb Database Project.

## 🧩 Entities and Their Attributes

### 1. User
- `id` (PK)
- `full_name`
- `email`
- `phone`
- `date_joined`

### 2. Property
- `id` (PK)
- `name`
- `location`
- `price_per_night`
- `host_id` (FK → User.id)
- `description`

### 3. Booking
- `id` (PK)
- `user_id` (FK → User.id)
- `property_id` (FK → Property.id)
- `check_in_date`
- `check_out_date`
- `status`

### 4. Payment
- `id` (PK)
- `booking_id` (FK → Booking.id)
- `amount`
- `payment_method`
- `status`
- `payment_date`

### 5. Review
- `id` (PK)
- `user_id` (FK → User.id)
- `property_id` (FK → Property.id)
- `rating`
- `comment`
- `date_reviewed`

---

## 🔗 Relationships Between Entities

| Relationship | Description |
|--------------|-------------|
| User ⟶ Booking | A user can make multiple bookings (1-to-many) |
| User ⟶ Review | A user can write multiple reviews (1-to-many) |
| Property ⟶ Booking | A property can have many bookings (1-to-many) |
| Property ⟶ Review | A property can be reviewed multiple times (1-to-many) |
| Booking ⟶ Payment | Each booking has one payment (1-to-1) |
| Property ⟶ User (Host) | A property is hosted by one user (many-to-1) |

---

## 🖼️ ERD Diagram

> You can view the diagram visually https://dbdiagram.io/d/685ffc2bf413ba35084f8439.

Or refer to this visual structure when designing:



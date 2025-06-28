-- seed.sql for ALX Airbnb Database Project

-- Insert Users
INSERT INTO User (full_name, email, phone, date_joined) VALUES
('Idah Lindiwe Khumalo', 'idah@example.com', '+27712345678', '2024-01-15'),
('John Doe', 'john.doe@example.com', '+27787654321', '2023-11-10'),
('Jane Smith', 'jane.smith@example.com', '+27798765432', '2023-12-05');

-- Insert Properties
INSERT INTO Property (name, location, price_per_night, description, host_id) VALUES
('Cozy Cottage', 'Cape Town, South Africa', 1500.00, 'A lovely cottage near the beach.', 1),
('Urban Apartment', 'Johannesburg, South Africa', 1200.00, 'Modern apartment in city center.', 2),
('Mountain Cabin', 'Drakensberg, South Africa', 2000.00, 'Rustic cabin with mountain views.', 3);

-- Insert Bookings
INSERT INTO Booking (user_id, property_id, check_in_date, check_out_date, status) VALUES
(2, 1, '2024-07-01', '2024-07-05', 'confirmed'),
(3, 2, '2024-06-20', '2024-06-25', 'pending'),
(1, 3, '2024-08-10', '2024-08-15', 'cancelled'),
(3, 1, '2024-07-10', '2024-07-12', 'confirmed'),
(2, 3, '2024-07-20', '2024-07-23', 'confirmed');

-- Insert Payments
INSERT INTO Payment (booking_id, amount, payment_method, status, payment_date) VALUES
(1, 7500.00, 'Credit Card', 'completed', '2024-06-01'),
(4, 3000.00, 'Paypal', 'completed', '2024-06-15'),
(5, 6000.00, 'Debit Card', 'pending', NULL);

-- Insert Reviews
INSERT INTO Review (user_id, property_id, rating, comment, date_reviewed) VALUES
(2, 1, 5, 'Amazing stay, very clean and comfortable!', '2024-07-06'),
(3, 2, 4, 'Great location but noisy at night.', '2024-06-26'),
(1, 3, 3, 'Cozy but a bit remote.', '2024-08-16');


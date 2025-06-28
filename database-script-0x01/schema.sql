-- schema.sql for ALX Airbnb Database Project

CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    date_joined DATE NOT NULL
);

CREATE TABLE Property (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(255) NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    description TEXT,
    host_id INT NOT NULL,
    CONSTRAINT fk_property_host FOREIGN KEY (host_id) REFERENCES User(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Booking (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    status VARCHAR(50) NOT NULL DEFAULT 'pending',
    CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES User(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES Property(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    INDEX idx_booking_user (user_id),
    INDEX idx_booking_property (property_id)
);

CREATE TABLE Payment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL UNIQUE,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50),
    status VARCHAR(50) NOT NULL DEFAULT 'pending',
    payment_date DATE,
    CONSTRAINT fk_payment_booking FOREIGN KEY (booking_id) REFERENCES Booking(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Review (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    date_reviewed DATE NOT NULL,
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES User(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_review_property FOREIGN KEY (property_id) REFERENCES Property(id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    INDEX idx_review_user (user_id),
    INDEX idx_review_property (property_id)
);


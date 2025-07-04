## Task 0: Write Complex Queries with Joins

### Objective:
Demonstrate mastery of SQL joins by writing queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

### SQL File:
- `joins_queries.sql`

### Queries:
1. **INNER JOIN** – Retrieves all bookings along with the user who made each booking.
2. **LEFT JOIN** – Retrieves all properties and any corresponding reviews (includes properties without reviews).
3. **FULL OUTER JOIN** – Retrieves all users and all bookings, including users without bookings and bookings without users. Simulated using a `UNION` of LEFT and RIGHT joins due to MySQL limitations.

### Sample Output Columns:
- Booking ID, Start Date, User Name (INNER JOIN)
- Property Name, Rating, Comment (LEFT JOIN)
- User Name, Booking Info (FULL OUTER JOIN)


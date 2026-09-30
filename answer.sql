```sql
-- ============================================================
-- WEEK 1 DATABASE ASSIGNMENT
-- Topic: Library Management System
-- Database Name: library_management
-- ============================================================

-- 1. CREATE THE DATABASE
CREATE DATABASE library_management;

-- 2. SELECT THE DATABASE
USE library_management;


-- ============================================================
-- 3. CREATE THE MEMBERS TABLE
-- Stores information about people registered in the library.
-- ============================================================

CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    registration_date DATE NOT NULL
);


-- ============================================================
-- 4. CREATE THE BOOKS TABLE
-- Stores information about books available in the library.
-- ============================================================

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    publication_year YEAR,
    available BOOLEAN DEFAULT TRUE
);


-- ============================================================
-- 5. CREATE THE BORROWINGS TABLE
-- Records books borrowed by library members.
-- ============================================================

CREATE TABLE borrowings (
    borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,

    FOREIGN KEY (member_id)
        REFERENCES members(member_id),

    FOREIGN KEY (book_id)
        REFERENCES books(book_id)
);


-- ============================================================
-- 6. INSERT SAMPLE MEMBERS
-- ============================================================

INSERT INTO members
    (full_name, email, phone, registration_date)
VALUES
    ('Grace Kasyoka', 'grace@example.com', '0797001145', '2026-09-30'),
    ('Amina Hassan', 'amina@example.com', '0712345678', '2026-09-30'),
    ('Brian Otieno', 'brian@example.com', '0723456789', '2026-09-30');


-- ============================================================
-- 7. INSERT SAMPLE BOOKS
-- ============================================================

INSERT INTO books
    (title, author, category, publication_year, available)
VALUES
    ('Introduction to MySQL', 'John Smith', 'Database', 2024, TRUE),
    ('Python for Beginners', 'Jane Wilson', 'Programming', 2023, TRUE),
    ('Web Development Basics', 'David Brown', 'Web Development', 2025, TRUE);


-- ============================================================
-- 8. INSERT SAMPLE BORROWING RECORDS
-- ============================================================

INSERT INTO borrowings
    (member_id, book_id, borrow_date, return_date)
VALUES
    (1, 1, '2026-09-30', NULL),
    (2, 2, '2026-09-30', '2026-10-05');


-- ============================================================
-- 9. DISPLAY THE CREATED TABLES
-- ============================================================

SHOW TABLES;


-- ============================================================
-- 10. VIEW THE DATA IN EACH TABLE
-- ============================================================

SELECT * FROM members;

SELECT * FROM books;

SELECT * FROM borrowings;


-- ============================================================
-- END OF WEEK 1 DATABASE ASSIGNMENT
-- ============================================================
```

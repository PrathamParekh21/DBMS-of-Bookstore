-- Create
INSERT INTO Books (book_id, title, genre, format, author_id, publisher_id, publish_date, price) VALUES
(3, 'To Kill a Mockingbird', 'Fiction', 'Audiobook', 3, 3, '1960-07-11', 12.99);

-- Read
SELECT * FROM Books WHERE book_id = 3;

-- Update
UPDATE Books SET price = 11.99 WHERE book_id = 3;

-- Delete
DELETE FROM Books WHERE book_id = 3;

-- Create the table that stores shift request records.
CREATE TABLE shift_requests_project (
    id SERIAL PRIMARY KEY AUTOINCREMENT,
    request_date DATE,
    requester TEXT,
    swap_shift INTEGER,
    cover_shift INTEGER,
    took_shift INTEGER
);

-- Insert seed request rows into shift_requests_project.
INSERT INTO shift_requests_project
(request_date, requester, swap_shift, cover_shift, took_shift)
VALUES
('2025-12-06', 'Cocomelon', 0, 1, 0),
('2025-12-06', 'Strawberry', 0, 1, 0),
('2025-12-06', 'Jelly Bong', 0, 1, 0),
('2025-12-06', 'Dung', 0, 1, 0),
('2025-12-07', 'Fed Powell', 0, 1, 0),;


-- Update one existing request row by id.
UPDATE  shift_requests_project
SET request_date = '2026-01-03',
		requester = 'Alicia Wonderland',
		swap_shift= 1,
		cover_shift_shift = 0
		took_shift = 0
WHERE id = 3;

-- View all rows and columns in shift_requests.
SELECT * 
FROM shift_requests_project;

-- Show total cover requests per requester, highest first.
SELECT
    requester,
    SUM(cover_shift) AS total_cover_requests
FROM shift_requests_project
GROUP BY requester
ORDER BY total_cover_requests DESC; 

-- Show total swap requests per requester, highest first.
SELECT
    requester,
    SUM(swap_shift) AS total_swap_requests
FROM shift_requests_project
GROUP BY requester
ORDER BY total_swap_requests DESC;

-- Show total requests per requester, highest first.
SELECT
    requester,
    SUM(swap_shift + cover_shift) AS total_requests
FROM shift_requests_project
GROUP BY requester
ORDER BY total_requests DESC;

-- Delete one request row by id.
DELETE FROM shift_requests_project
WHERE id = 168;


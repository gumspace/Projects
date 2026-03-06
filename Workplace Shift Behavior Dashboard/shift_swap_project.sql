-- Create the table that stores shift request records.
CREATE TABLE shift_requests_project (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    request_date DATE,
    requester TEXT,
    swapmy_shift INTEGER,
    covermy_shift INTEGER,
    took_shift INTEGER
);

-- Insert seed request rows into shift_requests_project.
INSERT INTO shift_requests_project
(request_date, requester, swapmy_shift, covermy_shift, took_shift)
VALUES
('2025-12-06', 'Cocomelon', 0, 1, 0),
('2025-12-06', 'Strawberry', 0, 1, 0),
('2025-12-06', 'Jelly Bong', 0, 1, 0),
('2025-12-06', 'Dung', 0, 1, 0),
('2025-12-07', 'Fed Powell', 0, 1, 0),
('2025-12-07', 'Gumseng Lamau', 1, 0, 0),
('2025-12-07', 'Patrick Star', 0, 1, 0),
('2025-12-08', 'Eli Yiscum', 0, 1, 0),
('2025-12-09', 'Emperor Kuzco', 0, 1, 0),
('2025-12-10', 'Kyle Muggle', 0, 1, 0),
('2025-12-12', 'Favorite Student', 1, 0, 0),
('2025-12-12', 'Shane Marty', 1, 0, 0),
('2025-12-12', 'Ethan Stopyouz', 0, 1, 0),
('2025-12-13', 'Alicia Wonderland', 0, 1, 0),
('2025-12-15', 'Alicia Wonderland', 1, 0, 0),
('2025-12-15', 'Patrick Star', 1, 0, 0),
('2025-12-16', 'Cocomelon', 0, 1, 0),
('2025-12-17', 'Alicia Wonderland', 1, 0, 0),
('2025-12-16', 'Cocomelon', 0, 1, 0),
('2025-12-17', 'Will Stonks', 1, 0, 0),
('2025-12-18', 'Alicia Wonderland', 0, 1, 0),
('2025-12-19', 'Lex Luthor', 0, 1, 0),
('2025-12-20', 'Mike Moonuz', 1, 0, 0),
('2025-12-20', 'Lex Luthor', 0, 1, 0),
('2025-12-22', 'David Jackiechan', 0, 1, 0),
('2025-12-22', 'Mike Moonuz', 1, 0, 0),
('2025-12-22', 'Lex Luthor', 1, 0, 0),
('2025-12-23', 'Patrick Star', 1, 0, 0),
('2025-12-23', 'David Jackiechan', 0, 1, 0),
('2025-12-23', 'Amber Stone', 0, 0, 1),
('2025-12-24', 'Santa Claus', 0, 0, 1),
('2025-12-24', 'Cocomelon', 0, 1, 0),
('2025-12-26', 'Jelly Bong', 1, 0, 0),
('2025-12-27', 'Ethan Stopyouz', 0, 1, 0),
('2025-12-27', 'Mountains', 0, 1, 0),
('2025-12-28', 'Alicia Wonderland', 1, 0, 0),
('2025-12-28', 'David Jackiechan', 0, 1, 0),
('2025-12-28', 'Jaime Oliveoil', 0, 0, 1),
('2025-12-29', 'David Jackiechan', 0, 1, 0),
('2025-12-29', 'K Unwise', 0, 0, 1),
('2025-12-29', 'Albrrrrr', 0, 1, 0),
('2025-12-29', 'Blake Lively', 0, 1, 0),
('2025-12-29', 'Kenya Ellison', 0, 1, 0),
('2025-12-30', 'Jaime Oliveoil', 0, 0, 1),
('2025-12-30', 'Copenhagen', 0, 1, 0),
('2025-12-30', 'Kenya Ellison', 0, 1, 0),
('2025-12-31', 'Cocomelon', 0, 1, 0),
('2025-12-31', 'Strawberry', 0, 1, 0),
('2025-12-31', 'Mountains', 0, 1, 0),
('2025-12-31', 'Kyle Muggle', 0, 1, 0),
('2026-01-02', 'Strawberry', 0, 1, 0),
('2026-01-02', 'Cocomelon', 0, 1, 0),
('2026-01-03', 'Alicia Wonderland', 1, 0, 0),
('2026-01-04', 'Fed Powell', 0, 1, 0),
('2026-01-04', 'David Jackiechan', 0, 1, 0),
('2026-01-04', 'Jaime Oliveoil', 0, 0, 1),
('2026-01-04', 'Blake Lively', 0, 1, 0),
('2026-01-05', 'Alicia Wonderland', 1, 0, 0),
('2026-01-05', 'David Jackiechan', 1, 0, 0),
('2026-01-05', 'Kenya Ellison', 1, 0, 0),
('2026-01-05', 'Sam Foresight', 1, 0, 0),
('2026-01-05', 'Patrick Star', 1, 0, 0),
('2026-01-06', 'Kenya Ellison', 1, 0, 0),
('2026-01-06', 'Alicia Wonderland', 1, 0, 0),
('2026-01-07', 'Zuck Gibbs', 0, 1, 0),
('2026-01-07', 'Kenya Ellison', 1, 0, 0),
('2026-01-08', 'Colt Sailormoon', 0, 1, 0),
('2026-01-08', 'Kenya Ellison', 1, 0, 0),
('2026-01-08', 'Alicia Wonderland', 1, 0, 0),
('2026-01-08', 'Alicia Wonderland', 1, 0, 0),
('2026-01-09', 'Shane Marty', 0, 1, 0),
('2026-01-09', 'Kenya Ellison', 1, 0, 0),
('2026-01-09', 'Kay Munich', 1, 0, 0),
('2026-01-09', 'Cocomelon', 0, 1, 0),
('2026-01-10', 'Strawberry', 0, 1, 0),
('2026-01-10', 'Shane Marty', 1, 0, 0),
('2026-01-10', 'Fed Powell', 0, 1, 0),
('2026-01-12', 'David Jackiechan', 0, 1, 0),
('2026-01-12', 'Alicia Wonderland', 1, 0, 0),
('2026-01-13', 'Santa Claus', 1, 0, 0),
('2026-01-14', 'David Jackiechan', 0, 1, 0),
('2026-01-14', 'Alicia Wonderland', 0, 1, 0),
('2026-01-14', 'Cocomelon', 0, 1, 0),
('2026-01-14', 'Noriflakes', 0, 1, 0),
('2026-01-15', 'Alicia Wonderland', 1, 0, 0),
('2026-01-16', 'Patrick Star', 0, 1, 0),
('2026-01-17', 'Santa Claus', 0, 1, 0),
('2026-01-18', 'Fed Powell', 0, 1, 0),
('2026-01-19', 'Colt Sailormoon', 0, 1, 0),
('2026-01-21', 'Mountains', 0, 1, 0),
('2026-01-22', 'Alicia Wonderland', 1, 0, 0),
('2026-01-27', 'Alma Mater', 1, 0, 0),
('2026-01-27', 'Kayla Munich', 0, 0, 1),
('2026-01-29', 'Sam Foresight', 0, 1, 0),
('2026-01-29', 'Professor Xavier ', 0, 0, 1),
('2026-01-30', 'Shane Marty', 0, 1, 0),
('2026-01-30', 'Fed Powell', 0, 1, 0),
('2026-01-30', 'Patrick Star', 0, 1, 0),
('2026-01-31', 'Alicia Wonderland', 1, 0, 0),
('2026-01-31', 'Air Lemur', 0, 1, 0),
('2026-02-02', 'Alicia Wonderland', 0, 1, 0),
('2026-02-03', 'Jaime Oliveoil', 0, 0, 1),
('2026-02-04', 'Captain Sully', 0, 0, 1),
('2026-02-04', 'Patrick Star', 0, 1, 0),
('2026-02-04', 'Beef Jenkins', 0, 1, 0),
('2026-02-05', 'Captain Sully', 0, 0, 1),
('2026-02-05', 'Strawberry', 0, 1, 0),
('2026-02-05', 'Vladimir ', 0, 0, 1),
('2026-02-05', 'Patrick Star', 0, 1, 0),
('2026-02-05', 'Kay Munich', 0, 0, 1),
('2026-02-06', 'Kayla Munich', 0, 1, 0),
('2026-02-07', 'Instructor', 0, 1, 0),
('2026-02-07', 'Thomas Mooo', 0, 1, 0),
('2026-02-09', 'Jaime Oliveoil', 1, 0, 0),
('2026-02-09', 'David Jackiechan', 0, 1, 0),
('2026-02-09', 'K Unwise', 1, 0, 0),
('2026-02-10', 'Nayr Millerlite', 1, 0, 0),
('2026-02-11', 'Cocomelon', 0, 1, 0),
('2026-02-11', 'Gumseng Lamau', 1, 0, 0),
('2026-02-11', 'Mountains', 0, 1, 0),
('2026-02-12', 'Alicia Wonderland', 0, 1, 0),
('2026-02-12', 'Kayla Munich', 1, 0, 0),
('2026-02-13', 'Ethan Stopyouz', 0, 1, 0),
('2026-02-14', 'Air Lemur', 0, 1, 0),
('2026-02-14', 'Patrick Star', 1, 0, 0),
('2026-02-14', 'Kenya Ellison', 0, 1, 0),
('2026-02-17', 'Patrick Star', 0, 1, 0),
('2026-02-17', 'K Unwise', 0, 0, 1),
('2026-02-17', 'Alicia Wonderland', 0, 0, 1),
('2026-02-17', 'Kenya Ellison', 0, 1, 0),
('2026-02-17', 'Al Rango', 0, 1, 0),
('2026-02-18', 'Jaydaughter Gonzilla', 0, 1, 0),
('2026-02-18', 'Cocomelon', 0, 1, 0),
('2026-02-18', 'Jar Knorr', 0, 1, 0),
('2026-02-19', 'Vladimir ', 0, 1, 0),
('2026-02-19', 'Air Lemur', 0, 1, 0),
('2026-02-20', 'Eli Yiscum', 0, 1, 0),
('2026-02-20', 'Ethan Stopyouz', 0, 1, 0),
('2026-02-21', 'Eli Yiscum', 0, 1, 0),
('2026-02-21', 'Ethan Stopyouz', 0, 1, 0),
('2026-02-22', 'Tim Black', 0, 1, 0),
('2026-02-23', 'Cocomelon', 0, 1, 0),
('2026-02-24', 'K Unwise', 0, 1, 0),
('2026-02-24', 'Kay Munich', 0, 0, 1),
('2026-02-24', 'Joe Plumber', 1, 0, 0),
('2026-02-25', 'Strawberry', 0, 1, 0),
('2026-02-25', 'Captain Sully', 0, 0, 1),
('2026-02-25', 'John Streakwater', 1, 0, 0),
('2026-02-25', 'Colt Sailormoon', 0, 0, 1),
('2026-02-26', 'Al Rango', 0, 1, 0),
('2026-02-26', 'Joe Plumber', 1, 0, 0),
('2026-02-27', 'Jelly Bong', 0, 1, 0),
('2026-02-27', 'Fed Powell', 0, 1, 0),
('2026-02-28', 'Eli Yiscum', 0, 1, 0),
('2026-02-28', 'Karatekid Lion', 0, 1, 0),
('2026-02-28', 'Mountains', 1, 0, 0),
('2026-02-28', 'K Unwise', 0, 1, 0),
('2026-03-01', 'Beef Jenkins', 0, 1, 0),
('2026-03-01', 'Instructor', 0, 1, 0),
('2026-03-01', 'Jaime Oliveoil', 0, 1, 0),
('2026-03-03', 'Cocomelon', 0, 1, 0),
('2026-03-03', 'Patrick Star', 1, 0, 0),
('2026-03-04', 'Joshua Boomer', 1, 0, 0),
('2026-03-04', 'Alex Square', 1, 0, 0),
('2026-03-05', 'Strawberry', 0, 1, 0),
('2026-03-05', 'Patrick Star', 0, 1, 0);

-- Update one existing request row by id.
UPDATE  shift_requests_project
SET request_date = '2026-01-03',
		requester = 'Alicia Wonderland',
		swapmy_shift= 1,
		covermy_shift_shift = 0
		took_shift = 0
WHERE id = 3;

-- View all rows and columns in shift_requests.
SELECT * 
FROM shift_requests_project;

-- Show total cover requests per requester, highest first.
SELECT
    requester,
    SUM(covermy_shift) AS total_cover_requests
FROM shift_requests_project
GROUP BY requester
ORDER BY total_cover_requests DESC; 

-- Show total swap requests per requester, highest first.
SELECT
    requester,
    SUM(swapmy_shift) AS total_swap_requests
FROM shift_requests_project
GROUP BY requester
ORDER BY total_swap_requests DESC;

-- Show total requests per requester, highest first.
SELECT
    requester,
    SUM(swapmy_shift + covermy_shift) AS total_requests
FROM shift_requests_project
GROUP BY requester
ORDER BY total_requests DESC;

-- Delete one request row by id.
DELETE FROM shift_requests_project
WHERE id = 168;


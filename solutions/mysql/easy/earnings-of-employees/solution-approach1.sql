-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-24, 08:00 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/


SELECT
    MAX(months * salary),
    COUNT(*)
FROM Employee
WHERE months * salary = (
    SELECT MAX(months * salary)
    FROM Employee
);

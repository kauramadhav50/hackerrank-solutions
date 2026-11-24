-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
-- Problem     Weather Observation Station 14
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-24, 08:06 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;

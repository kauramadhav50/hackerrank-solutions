-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-24, 08:11 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND(
    (MAX(LAT_N) - MIN(LAT_N)) +
    (MAX(LONG_W) - MIN(LONG_W)),
    4
)
FROM STATION;

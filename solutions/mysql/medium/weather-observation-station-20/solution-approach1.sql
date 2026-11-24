-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
-- Problem     Weather Observation Station 20
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-24, 07:35 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS total
    FROM STATION
) AS T
WHERE rn IN (
    FLOOR((total + 1) / 2),
    FLOOR((total + 2) / 2)
);

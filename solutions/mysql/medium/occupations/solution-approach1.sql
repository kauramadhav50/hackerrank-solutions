-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true
-- Problem     Occupations
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-24, 07:25 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/

SELECT
    MIN(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MIN(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MIN(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MIN(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (
            PARTITION BY Occupation
            ORDER BY Name
        ) AS rn
    FROM OCCUPATIONS
) AS T
GROUP BY rn
ORDER BY rn;

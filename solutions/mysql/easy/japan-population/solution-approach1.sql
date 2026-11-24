-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true
-- Problem     Japan Population
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-24, 07:54 p.m.
-- ──────────────────────────────────────────────────

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

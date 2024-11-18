CREATE DATABASE life_quality;
\c life_quality

CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    life_expectancy DECIMAL(5,2),
    gdp_per_capita DECIMAL(10,2),
    happiness_index DECIMAL(5,2)
);

INSERT INTO countries (name, life_expectancy, gdp_per_capita, happiness_index)
VALUES
    ('Norway', 82.33, 69366.80, 7.54),
    ('Switzerland', 83.04, 83716.95, 7.49),
    ('Iceland', 82.20, 54903.00, 7.55),
    ('Netherlands', 81.57, 53973.10, 7.49),
    ('Denmark', 80.78, 60294.05, 7.44),
    ('Sweden', 82.33, 53006.80, 7.36),
    ('Germany', 81.19, 53048.40, 7.15),
    ('United Kingdom', 81.32, 42330.00, 7.16),
    ('Canada', 82.00, 46194.60, 7.23),
    ('United States', 78.86, 63543.50, 6.94);
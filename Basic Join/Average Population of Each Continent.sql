-- CHALLENGE
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent)
-- and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


CREATE TABLE CITY (
CITY_ID			INT,
CITY_NAME		VARCHAR(17),
COUNTRY_CODE	VARCHAR(3),
DISTRICT		VARCHAR(20),
POPULATION		INT
)

CREATE TABLE COUNTRY (
COUNTRY_CODE	VARCHAR(3),
COUNTRY_NAME	VARCHAR(44),
CONTINENT		VARCHAR(13),
REGION			VARCHAR(25),
SURFACE_AREA	INT,
INDEP_YEAR		DATE,
COUNTRY_POPULATION	INT,
LIFE_EXPENTANCY		INT,
GNP				INT,
GN_POLD			VARCHAR(9),
LOCAL_NAME		VARCHAR(44),
GOVERNMENT_FORM	VARCHAR(44),
HEAD_OF_STATE	VARCHAR(32),
CAPITAL			VARCHAR(15),
CODE2			VARCHAR(2)
)

-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

SELECT CITY_NAME
FROM CITY
LEFT JOIN COUNTRY ON CITY.COUNTRY_CODE = COUNTRY.COUNTRY_CODE
WHERE COUNTRY.CONTINENT = 'AFRICA'
-- 1. What are the key patterns and variations in life expectancy across countries from 2000–2015?
SELECT Country, Year, Life_expectancy
FROM life_expectancy
WHERE Year BETWEEN 2000 AND 2015
ORDER BY Country, Year

--2. How do adult mortality rates influence life expectancy?
SELECT Country, Year, Life_expectancy, Adult_mortality
FROM life_expectancy
ORDER BY Adult_mortality DESC

--3. Which countries consistently maintain a high life expectancy, and which remain low?
SELECT Country, AVG(Life_expectancy) AS Avg_LifeExp
FROM life_expectancy
GROUP BY Country
ORDER BY Avg_LifeExp DESC

--4. How does schooling influence long-term health outcomes?
SELECT Country, Year, Life_expectancy, Schooling
ORDER BY Schooling DESC

--5. What is the relationship between GDP per capita and life expectancy?
SELECT Country, Year, Life_expectancy, GDP
FROM life_expectancy
ORDER BY GDP DESC

--6. Do countries with higher health expenditure experience higher life expectancy?
SELECT Country, Year, Life_expectancy, Total_expenditure
FROM life_expectancy

--7. Is the percentage of GDP spent on health a significant predictor of life expectancy?
SELECT Country, Year, Life_expectancy, Total_expenditure AS Health_Spending_GDP
FROM life_expectancy

--8. How does the prevalence of HIV/AIDS impact life expectancy across countries?
SELECT country,year,life_expectancy,`hiv/aids`
FROM life_expectancy
ORDER BY `hiv/aids` DESC

--9. To what extent do immunization rates (Polio, Diphtheria, Hepatitis B) predict life expectancy?
SELECT Country, Year, Life_expectancy, Polio, Diphtheria, Hepatitis_B
FROM life_expectancy;

--10. What are the differences in life expectancy between developed vs developing nations?
SELECT Status, AVG(Life_expectancy) AS Avg_LifeExp
FROM life_expectancy
GROUP BY Status

--11. What role do infant deaths and under-five deaths play in determining national life expectancy?
SELECT Country, Year, Life_expectancy, Infant_deaths, Under_five_deaths
FROM life_expectancy
ORDER BY Infant_deaths DESC;

--12. How does child malnutrition (thinness indicators) correlate with life expectancy?
SELECT country,year,life_expectancy,thinness__1_19_years,thinness_5_9_years
FROM life_expectancy
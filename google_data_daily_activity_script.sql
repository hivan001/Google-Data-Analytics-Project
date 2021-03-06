
-- Determining how many users make up the study
SELECT
DISTINCT (Id)
 FROM `my-data-project-1911.fitness_data.daily_activity` 

-- Determining the start and end dates of the study
SELECT 
MIN(ActivityDate) as start_date

FROM `my-data-project-1911.fitness_data.daily_activity`

SELECT 
MAX(ActivityDate) as end_date

FROM `my-data-project-1911.fitness_data.daily_activity`

-- Determining who burned the most calories
SELECT 
Id,
SUM(Calories) as most_calories

FROM `my-data-project-1911.fitness_data.daily_activity`

GROUP BY Id
ORDER BY most_calories DESC

--Determining the average number of calories burned per day
SELECT 
Id,
AVG(Calories) as average_calories,
AVG(VeryActiveMinutes) as average_very_active,
AVG(FairlyActiveMinutes) as average_fairly_active,
AVG(LightlyActiveMinutes) as average_lightly_active

FROM `my-data-project-1911.fitness_data.daily_activity`

GROUP BY Id
ORDER BY average_calories DESC

-- Exploring if any coorelation exists between average number of steps taken per day and calories burned per day
SELECT 
Id,
AVG(Calories) as average_calories,
AVG(TotalSteps) as average_steps

FROM `my-data-project-1911.fitness_data.daily_activity`

GROUP BY Id
ORDER BY average_steps DESC

-- Exploring the effect of being sedentary on burning calories
SELECT 
Id,
AVG(Calories) as average_calories,
AVG(VeryActiveMinutes) as average_very_active,
AVG(FairlyActiveMinutes) as average_fairly_active,
AVG(LightlyActiveMinutes) as average_lightly_active,
AVG(SedentaryMinutes) as average_sedentary

FROM `my-data-project-1911.fitness_data.daily_activity`

GROUP BY Id
ORDER BY average_sedentary

--Determining the percentage of active minutes for each category for the top 5 users with the most calories burned
SELECT
Id,
sum_calories,
(vam/(vam + fam + lam)) * 100 as vam_percent,
(fam/(vam + fam + lam)) * 100 as fam_percent,
(lam/(vam + fam + lam)) * 100 as lam_percent,
FROM
(
    SELECT 
    Id as Id,
    SUM(Calories) as sum_calories,
    SUM(VeryActiveMinutes) as vam,
    SUM(FairlyActiveMinutes) as fam,
    SUM(LightlyActiveMinutes) as lam,

    FROM `my-data-project-1911.fitness_data.daily_activity`
    Group BY Id
    ORDER BY sum_calories DESC
    LIMIT 5
)

-- Joining the tables for comparison
-- Comparison shows that of the 8 particpants in the weight info data that are also included in the daily activity data,
-- a higher amount of calories burned coorelated to higher amount of overall weight loss
SELECT 
wf.Id,
da.Id,
SUM(DISTINCT da.Calories) as sum_calories, 
MAX(WeightPounds) - MIN(WeightPounds) AS weight_lost,
SUM(VeryActiveMinutes) as vam,
SUM(FairlyActiveMinutes) as fam,
SUM(LightlyActiveMinutes) as lam,

FROM `my-data-project-1911.fitness_data.weight_info` wf
JOIN `my-data-project-1911.fitness_data.daily_activity` da
ON da.Id = wf.Id

GROUP BY da.Id, wf.Id
ORDER BY weight_lost DESC







-- Determining the amount of users in this data set
SELECT 
DISTINCT (Id)

FROM `my-data-project-1911.fitness_data.weight_info`

-- 8 Unique Users

-- Determining the maximum and minimum amount of weight lost
SELECT 
Id, 
MAX(WeightPounds) - MIN(WeightPounds) AS weight_lost,
    
 FROM `my-data-project-1911.fitness_data.weight_info`
 GROUP BY Id
 Order BY weight_lost DESC

-- User 8877689391 lost the most amount of weight by losing 3.97 pounds


-- Determining the average amount of weight lost between the 8 participants
SELECT 
AVG(weight_lost) AS avg_weight_lost
FROM
(
    SELECT 
    MAX(WeightPounds) - MIN(WeightPounds) AS weight_lost,
    
 FROM `my-data-project-1911.fitness_data.weight_info`
 GROUP BY Id
 
)

-- Average weight lost between all users was 1.43 pounds


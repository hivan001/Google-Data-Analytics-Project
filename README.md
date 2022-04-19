## How to View This Project
1. Read the remainder of this "README" file for a summary of the task and analysis
2. View the SQL code used in the analysis above by clicking on the files titled "google_data_daily_activity_script.sql" and "google_data_weight_info_scriptsql.sql"
3. View the visualization of the data by clicking on this link file:///C:/Users/holgu/OneDrive/Documents/Google%20Data%20Cert/Portfolio%20Project/Data_visualization.html




# Bellabeat Data Analytics Project

## An evaluation of FitBit data to produce useful marketing insights of calorie loss in participants

## The Task

There are a variety of companies that offer products to consumers that give them real time data on various aspects of their health. With so much availability of health and fitness data to the everyday consumer, there is likely to be trends in what are the most important uses of smart devices. Bellabeat key stakeholders are seeking to use data regarding the current usage of smart devices across the health and fitness industry to determine what data points and uses are most important to consumers.  Lastly, the insights derived from the data across the industry and within Bellabeat will then be used to recommend how these trends can be utilized to tailor the marketing strategy.

## Cleaning the Data
An immediate limitation that was observed of the provided data is that only 8 participants logged any weight information from the weight_info dataset in comparison to the 33 participants in the daily_activity dataset. 

## The Analysis
Two datasets were analyzed utilizing Google's Big Query. The datasets analyzed were the daily_activity dataset and the weight_info dataset. The code utilized to perform the analysis can be found in the repository above titled "google_data_daily_activity_script.sql" and "google_data_weight_info_scriptsql.sql"

## Insights
What trends did I discover?

Insight #1 - A balance of being very active, fairly active and lightly active led to the most calories being burned. Most users showed a larger percentage of active minutes being in the lightly active category which includes the users that burned the most calories. Therefore, it can be inferred that it is not necessary to be primarily in the very active category for calorie loss to be effective. 

Why does Bellabeat Care?

With the summer season approaching soon, many users of fitness devices will have goals to attempt to lose weight prior to vacations and visits to the beach etc. Belabeat can focus its marketing strategies on calorie loss and the effectiveness of utilizing consistent light physical activity to burn calories. This insight may appeal to more users as light physical activity may be less daunting in comparison to high intensity training such as high intensity interval training. The effectiveness of light physical activity may also appeal to individuals that are newer to fitness and exercise. 

Insight #2 - Less time being sedentary does provide some correlation to more calories burned but it is not an absolute indicator.

Why does Bellabeat care?

The COVID-19 pandemic has led to increase in the number of people working remotely. A side effect of working from home is an increase in the amount of time being sedentary. The data shows that there is some correlation to an increase in calories burned if less time is spent being sedentary however the correlation is not absolute. This is observed in the analysis as the users with the most amount of calories burned remained under the average amount of time being sedentary, however, there were some exceptions in the data. Belabeat can use this information to market to users who work in professions that tend to be sedentary in nature to emphasize being less sedentary and more active especially in keeping with the prior theme of weight loss. 

## Visualization
The insights derived from this analysis were visualized using Tableau. Please click on the "Data_visualization.html" file to view an online version of the workbook. The workbook is also available on my Tableau Public page at https://public.tableau.com/app/profile/ivan.holguin6714#!/




# Cyclistic Bike-Share Analysis Case Study
## Introduction
This case study forms part of the capstone project for the Google Data Analytics Professional Certificate course. The case study is for Cyclistic, a fictional bike sharing company.  
Launched in 2016, Cyclistics bike-sharing service has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.  
Cyclistic’s marketing strategy relies on building general awareness and appealing to broad consumer segments. It offers flexible pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.  
Cyclistics director of Marketing, Lily Moreno believes the company’s future success depends on maximizing the number of annual memberships. As a Junior data analyst on the marketing analyst team, I have been assigned the task of understanding how casual riders and annual members use Cyclistic bikes differently. The goal of the project is to use these insights to design marketing strategies aimed at converting casual riders into annual members.
## Data Source
Cyclistic is a fictional company, for this reason I will be using [Divvy trip data](https://divvy-tripdata.s3.amazonaws.com/index.html) for the first quarter of 2024.  For the purposes of this case study, the datasets are appropriate and will enable me answer the business question. The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).
### limitations
* Data-privacy issues prohibit me from using riders’ personally identifiable information. This means that I won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.
* The presence of null values in columns containing the start and end station names is likely to affect the accuracy of any analysis relating to the stations i.e the most popular route for casual riders.
## Business Question
How do casual riders and annual members use Cyclistic bikes differently?
### Goal
Convert casual riders to annual members  
## Analysis 
Data was uploaded into Google BigQuery where it was prepared and cleaned using this SQL code: [Data Preparation and Cleaning](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Data_Preparation.sql)  
The resulting output was then saved in a new table and analysis carried out using this SQL code: [Data Analysis](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Data_Analysis.sql)  
The outputs were then transferred to Tableau for [visualization](https://public.tableau.com/views/Cyclistic-CaseStudy_17240607642300/Dashboard1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link).  
## Findings  
The data shows that over 73% of trips where undertaken by annual members, this supports the assertion that maximizing the number of annual memberships is key to business success.

[![Total rides by members](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Visualizations/Total%20Rides.png)](https://public.tableau.com/views/Cyclistic-CaseStudy_17240607642300/Sheet2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

Although annual members take more trips than casual members, the data shows that on average, casual members spend more time on trips than annual members

[![Members average trip duration](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Visualizations/Average%20trip%20duration.png)](https://public.tableau.com/views/Cyclistic-CaseStudy_17240607642300/Sheet5_2?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

The number of trips started by annual members is highest on tuesday and remains on a relative high on monday, wednesday and thursday it begins to drop on friday and continues to drop through out the weekend. In contrast, trips by casual members is highest on saturday, it begins to gradually drop from then and is at its lowest by mid-week.

[![Trips by day of the week](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Visualizations/Trips%20by%20Day%20of%20Week.png)](https://public.tableau.com/views/Cyclistic-CaseStudy_17240607642300/dayofweektrips?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

While annual members prefer classic bikes over electric bikes, casual members perfer the electric bikes.

[![Trips by ride type](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Visualizations/Members%20trips%20by%20ridetype.png)](https://public.tableau.com/views/Cyclistic-CaseStudy_17240607642300/Sheet5_1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)  

The most popular start station for annual members is Clinton St & Washington Blvd with    rides started there while the most popular start station for casual members is Streeter Dr & Grand Ave with  rides started there.

[![Popular start stations for annual members](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Visualizations/Most%20Popular%20Start_stations%20(annual%20members).png)](https://public.tableau.com/shared/355XD79MM?:display_count=n&:origin=viz_share_link)

[![Popular start stations for casual members](https://github.com/Dinmaharbs/Cyclistics_Casestudy/blob/main/Visualizations/Most%20Popular%20Start_stations%20(casual%20members).png)](https://public.tableau.com/shared/RH9WYB77C?:display_count=n&:origin=viz_share_link)
## Conclusion  
A annual members use cyclistic bike service more than casual users. Annual members use cyclistic bikes for short likely work related commutes during the week while casual members use cyclistic bikes for longer likely related to recreational purposes over the weekend.
Annual members prefer classic bikes while casual members have a preference for electric bikes.
## Recommendations  



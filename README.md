# Cyclistic Bike-Share Analysis Case Study
## Introduction
This case study forms part of the capstone project for the Google Data Analytics Professional Certificate course. The case study is for Cyclistic, a fictional bike sharing company.  
Launched in 2016, Cyclistics bike-sharing service has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.  
Cyclistic’s marketing strategy relies on building general awareness and appealing to broad consumer segments. It offers flexible pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.  
Cyclistics director of Marketing, Lily Moreno believes the company’s future success depends on maximizing the number of annual memberships. As a Junior data analyst on the marketing analyst team, I have been assigned the task of understanding how casual riders and annual members use Cyclistic bikes differently. The goal of the project is to use these insights to design marketing strategies aimed at converting casual riders into annual member.
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
The outputs were then transferred to Tableau for visualization.  
## Findings  




<div class='tableauPlaceholder' id='viz1730051222287' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Cy&#47;Cyclistic-CaseStudy_17240607642300&#47;Sheet5_2&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Cyclistic-CaseStudy_17240607642300&#47;Sheet5_2' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Cy&#47;Cyclistic-CaseStudy_17240607642300&#47;Sheet5_2&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                



```{js, embedcode}
                 
  var divElement = document.getElementById('viz1730051222287');                    
  var vizElement = divElement.getElementsByTagName('object')[0];                    
  vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    
  var scriptElement = document.createElement('script');                    
  scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    
  vizElement.parentNode.insertBefore(scriptElement, vizElement);
```

--Average trip duration grouped by member type
SELECT 
  AVG(trip_duration_min) AS avg_trip_duration,
  member_casual
FROM `project-practice-417813.cyclistic_case_study.Q1-2024-divvy-tripdata-V3`
GROUP BY member_casual

--number of trips by day of the week
SELECT 
  COUNT(startday_of_week) AS num_of_trips_by_day,
  member_casual,
  startday_of_week
FROM `project-practice-417813.cyclistic_case_study.Q1-2024-divvy-tripdata-V3`
GROUP BY member_casual, startday_of_week
ORDER BY num_of_trips_by_day DESC

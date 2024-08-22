-- Total number of trips by members
SELECT
  COUNT(ride_id) AS num_of_trips,
  member_casual
FROM `project-practice-417813.cyclistic_case_study.cyclistic-tripdata`
GROUP BY member_casual
  
--Average trip duration grouped by member type
SELECT 
  AVG(trip_duration_min) AS avg_trip_duration,
  member_casual
FROM `project-practice-417813.cyclistic_case_study.cyclistic-tripdata`
GROUP BY member_casual

--Number of trips by day of the week
SELECT 
  COUNT(startday_of_week) AS num_of_trips_by_day,
  member_casual,
  startday_of_week
FROM `project-practice-417813.cyclistic_case_study.cyclistic-tripdata`
GROUP BY member_casual, startday_of_week
ORDER BY num_of_trips_by_day DESC

-- Calculate the number of trips by ridetype to find the ridetype preference of annual and casual members
SELECT 
  COUNT(rideable_type) AS rides_by_ridetype,
  member_casual,
  rideable_type
FROM `project-practice-417813.cyclistic_case_study.cyclistic-tripdata`
GROUP BY member_casual, rideable_type
ORDER BY rides_by_ridetype DESC

-- Number of trips by start station excluding missing start stations
SELECT
  COUNT(ride_id) AS num_of_trips,
  member_casual,
  start_station
FROM `project-practice-417813.cyclistic_case_study.cyclistic-tripdata`
WHERE start_station <> 'N/A'
GROUP BY start_station, member_casual
ORDER BY num_of_trips DESC

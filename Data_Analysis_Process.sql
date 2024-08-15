
-- Prepare Data for analysis, save output as new table for analysis.
-- ACTIVITY SUMMARY: unite trip data for q1-2024; remove duplicates (if any); remove unneeded columns; replace nulls in station name columns with 'N/A'; create new columns showing trip duration and trip duration in minutes; create new column showing day of week ride was started; concat start and end station to determine route; order table in ascending order by date and time trip was started.

 WITH q1_tripdata AS(
  SELECT 
   -- dropping columns 'start_station_id','end_station_id','start_lat','start_lng','end_lat','end_lng'
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    member_casual,
   -- create a trip_duration column, to calculate trip duration.
    TIME_ADD( TIME '0:0:0', INTERVAL timestamp_diff(ended_at, started_at, second)second) AS trip_duration,
   -- create a column to depict the trip duration in mins
    CAST(timestamp_diff(ended_at, started_at,minute) AS int64) AS trip_duration_min,
   -- create a column showing the days of the week, rides were started
    CAST(started_at AS STRING FORMAT 'DY') AS startday_of_week,
   -- using coalesce to show nulls in columns 'start_station_name' and 'end_station_name' as 'N/A'
    COALESCE(start_station_name,'N/A') AS start_station,
    COALESCE(end_station_name, 'N/A') AS end_station,
  FROM (
-- Combine the distinct rows from the 4 tables from January 2024 - April  2024 into a single table 
    SELECT
      DISTINCT *
    FROM
      `project-practice-417813.cyclistic_case_study.202401-divvy-tripdata`
    UNION ALL
    SELECT
      DISTINCT *
    FROM
      `project-practice-417813.cyclistic_case_study.202402-divvy-tripdata`
    UNION ALL
    SELECT
      DISTINCT *
    FROM
      `project-practice-417813.cyclistic_case_study.202403-divvy-tripdata`
    UNION ALL
    SELECT
      DISTINCT *
    FROM
      `project-practice-417813.cyclistic_case_study.202404-divvy-tripdata`
    )
   -- data is ordered by start date for trips 'started_at' in ascending order
  ORDER BY started_at ASC)

-- using table created:
-- select all columns,
-- create a new column named route with Concat of start_station and end_station seperated by ' to '
SELECT
  *,
  CONCAT(start_station,' to ', end_station) AS route
FROM
q1_tripdata
ORDER BY started_at ASC

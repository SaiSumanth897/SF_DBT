-- date_spine
with cte as(
{{dbt_utils.date_spine("day" ,"'2025-05-01'" , "'2025-05-10'")}}
) 
select  date_day as dt from cte
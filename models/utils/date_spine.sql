
{#
with cte as(
{{dbt_utils.date_spine("day" ,"'2025-05-01'" , "'2025-05-10'")}}
) 
select  date_day as dt from cte

{{ dbt_utils.pretty_time(format = " %Y-%m-%d %H:%M:%S")}}
{{ dbt_utils.pretty_log_format("my pretty message") }} #}


{% set staging_table = ref('emp_yash') %}

{% if dbt_utils._is_ephemeral(staging_table) %}

select * from {{ staging_table }}

{% else %}

{% do log("Staging table does not exist", info=True) %}

{% endif %}
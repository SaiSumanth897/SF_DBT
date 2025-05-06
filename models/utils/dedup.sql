{#
with cte as(
    {{dbt_utils.deduplicate( ref('emp_yash'),"deptid","name desc")}}
)

select * from cte
#}


{#with cte as(
    {{dbt_utils.generate_series(25)}}
)

select generated_number::number as nu from cte #}
{#

{% set intervals = dbt_utils.get_intervals_between(
    start_date= "'2022-01-01'",
    end_date= "'2022-12-31'",
    datepart= "month"
) %}

 {{ intervals }}

 #}

{# 
{% set names = dbt_utils.get_column_values(
table=ref('emp_yash'),
column= "name",
order_by= "name asc",
max_records=10

) %}

{{ names|join(', ') }}

#}

{#
{% set qu %}

select * from {{ref('emp_yash')}}

{% endset %}

{% set a = dbt_utils.get_query_results_as_dict(qu) %}

select {{ a}}



{% set qu %}

select * from {{ref('emp_yash')}}

{% endset %}

{% set a = dbt_utils.get_single_value(qu) %}

{{ a}}



{{ dbt_utils.get_table_types_sql() }}

 
with ct as (
{{ dbt_utils.nullcheck_table(ref('emp_yash')) }}

)

select * from ct #}

select {{ dbt_utils.nullcheck() }}
from {{ref('emp_yash')}}

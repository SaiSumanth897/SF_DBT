--get_filtered_columns_in_relation (list of cols)

-- {% set excluded_columns = ['location'] %}
-- {% set columns = dbt_utils.get_filtered_columns_in_relation(ref('emp_yash'), excluded_columns) %}

-- select {{ columns | join(', ') }}
-- from {{ ref('emp_yash') }}
-----------------------------------
--star (comma seperated columns)

-- select 
-- {{dbt_utils.star(ref("emp_yash"), prefix = 'emp_',except = ['deptid'],quote_identifiers =False)}},
-- {{dbt_utils.star(ref("emp_yash_dep"), prefix = 'dep_',quote_identifiers = False, relation_alias = 'b')}}
-- FROM {{ ref('emp_yash') }}  as a
-- LEFT JOIN {{ ref('emp_yash_dep') }} as b ON a.deptid = b.deptid

----------------------------------------

{% set ads_relations = dbt_utils.get_relations_by_pattern('dbt_sandbox', 'emp_y%') %}

{% set table_names = [] %}
{% for relation in ads_relations %}
    {% do table_names.append(relation.name) %}
{% endfor %}

select {{ table_names|join(', ') }}

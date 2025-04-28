{% macro ddl() %}

{% set qu %}

create or replace table dummy(
    name string,
    age number
)

{% endset %}

{% do run_query(qu) %}

{% endmacro %}
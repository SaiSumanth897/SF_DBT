{% macro ddl() %}

{% set qu %}

create table dummy(
    name string,
    age number
)

{% endset %}

{% do run_query(qu) %}

{% endmacro %}
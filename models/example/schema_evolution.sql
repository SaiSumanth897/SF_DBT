{{ config(
    materialized = 'incremental', 
    tags = ['se'] ,
    unique_key='name',
    on_schema_change = 'append_new_columns'
) }}

select * from {{source('sample_data','de_info')}}

-- {%- if is_incremental() %}

-- where ldts > (select max(ldts) from {{this}} )

-- {% endif %}

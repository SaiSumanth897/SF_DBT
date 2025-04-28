{% set query %}

select 'Kpmg' as company , 'Big4' as type
union all
select 'PWC' as company , 'Big4' as type
union all
select 'Accenture' as company , 'Service provider' as type

{% endset %}

{% if execute %}

{% set res = run_query(query) %}

{% set  op = {'company_names': res.columns[0].values(),'Type_of_company' : res.columns[1].values()} %}

{{ op }}

{% endif %}



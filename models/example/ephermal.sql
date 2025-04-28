{{ config(materialized = 'ephemeral')}}

select 'Kpmg' as company , 'Big4' as type
union all
select 'PWC' as company , 'Big4' as type
union all
select 'Accenture' as company , 'Service provider' as type
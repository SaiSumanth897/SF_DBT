{{ config ( schema = 'raw_dummy', transient = False)}}

select * from {{ source( 'dbut','emp_yash')}}

/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select company_name as srid from {{source('src1', 'Data_In')}} where company_name = 'APPLE'
    union all
    select null as srid
)

select *
from source_data


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null


/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    -- select 2000 as srid
    -- union all
    -- select null as srid
    copy Data_Raw from 'E:\Codes\01 - PROJECTS\01 - Project TredStone\A-PROJECT-TREADSTONE\Part 1 - Download Data\Data_In.csv' delimiter ',' csv header;
)

select *
from source_data


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
{{ config(materialized='view') }}

select a.`by` as written_by, a.* except(`by`) 
from {{ ref('top_hacker_news') }} a
inner join {{ ref('favorite_authors') }} b
on a.`by` = b.written_by
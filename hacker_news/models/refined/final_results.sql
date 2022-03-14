{%- set authors = get_authors() -%}

select written_by,
case 
{%- for author_name in authors %}
when written_by = '{{author_name}}' then upper(written_by)
{%- endfor %}
end as written_by_uppercase, title, time_ts
from {{ ref('news_by_favorite_authors') }}

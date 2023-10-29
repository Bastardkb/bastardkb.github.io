{%- if site.docs -%}
    {%- assign site_pages = site.docs -%}
{%- else -%}
    {%- assign site_pages = site.html_pages -%}
{%- endif -%}

{%- assign query_page = page -%}
{%- include prev_next/set_site_order.md -%}
{%- assign page_site_order = site_order -%}

{%- assign prev_site_order = -1 -%}
{%- assign next_site_order = 1000000000 -%}
{%- assign prev_url = "" -%}
{%- assign next_url = "" -%}

{%- for query_page in site_pages -%}
    {%- include prev_next/set_site_order.md -%}
    {%- if site_order < page_site_order and site_order > prev_site_order -%}
        {%- assign prev_site_order = site_order -%}
        {%- assign prev_url = query_page.url | relative_url -%}
    {%- elsif site_order > page_site_order and site_order < next_site_order -%}
        {%- assign next_site_order = site_order -%}
        {%- assign next_url = query_page.url | relative_url -%}
    {%- endif -%}
{%- endfor -%}

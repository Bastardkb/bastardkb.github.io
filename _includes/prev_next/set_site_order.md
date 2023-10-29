{%- assign site_order = 999999999 -%}
{%- if query_page.grand_parent -%}
    {%- for parent in site_pages -%}
        {%- if parent.title == query_page.parent -%}
            {%- assign parent_order = parent.nav_order | times: 1000 -%}
            {%- for grandparent in site_pages -%}
                {%- if grandparent.title == parent.parent -%}
                    {%- assign site_order = grandparent.nav_order | times: 1000000 | plus: parent_order | plus: query_page.nav_order -%}
                {%- endif -%}
            {%- endfor -%}
        {%- endif -%}
    {%- endfor -%}
{%- elsif query_page.parent -%}
    {%- assign page_order = query_page.nav_order | times: 1000 -%}
    {%- for parent in site_pages -%}
        {%- if parent.title == query_page.parent -%}
            {%- assign site_order = parent.nav_order | times: 1000000 | plus: page_order -%}
        {%- endif -%}
    {%- endfor -%}
{%- else -%}
    {%- assign site_order = query_page.nav_order | times: 1000000 -%}
{%- endif -%}


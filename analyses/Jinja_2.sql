{%- set animals = ['cat', 'dog', 'rabbit', 'hamster','bim'] -%}

{%- for animal in animals -%}
    {%if animal == 'cat'%}
        {{- animal}} is a good house pet.
    {% else %}
        {{- animal }} is not a good house pet.
    {% endif %}
{% endfor %}
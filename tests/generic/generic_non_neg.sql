{% test generic_non_neg(model, column_name) %}
SELECT
*
FROM
    {{ model }}
WHERE
    {{column_name}} < 0
{% endtest %}
{% for i in range(10) %}
    SELECT {{ i }} AS number
    {% if not loop.last %} UNION ALL {% endif %}
{% endfor %}

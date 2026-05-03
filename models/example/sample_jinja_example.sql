{% set name = 'sreenivas' %}
{%set skillset = ['SQL','Python','Bigdata','AWS']%}


{% for skill in skillset %}
  {{ skill }}
{% endfor %}



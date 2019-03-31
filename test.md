---
layout: page
title: Test Page
author: Alex
---

{% case page.layout %}
	{% when 'page' %}
		{% for page in site.pages %}
			{% if page.layout == 'page' %}
				{% if page.title != 'Home' %}
<p>{{ page.title }}</p>
				{% endif %}
			{% endif %}
		{% endfor %}
	{% when 'poem' %}
		{% for page in site.pages %}
			{% if page.layout == 'app' %}
				{% if page.title != 'Home' %}
<p>{{ page.title }}</p>
				{% endif %}
			{% endif %}
		{% endfor %}
	{% when 'default' %}
		{% for page in site.pages %}
			{% if page.title != 'Home' %}
<p>{{ page.title }}</p>
			{% endif %}
		{% endfor %}
	{% else %} 
{% endcase %}
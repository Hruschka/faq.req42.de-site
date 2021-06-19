---
title: "Status (for debugging)"
layout: single
permalink: /status
header:
  overlay_image: /images/splash/splash-debug-status.jpg
  overlay_filter: rgba(255, 0, 0, 0.5)
---

# Statistics

| Element  | Count  |
| ---------|-------:|
| pages    | {{ site.pages | size }} |
| posts    | {{ site.posts | size }} |
| FAQ      | {{ site.faqs | size }}  |


# FAQ
### Tags within FAQS

{% assign tags =  site.faqs | map: 'tags' | join: ','  | split: ',' | uniq %}

<div>
<font color="#dd354b">{{ tags | size }}</font> tags within FAQs.
</div>


### List of FAQ-tags


{% for tag in tags %}
  {{ tag }} 
  <ul>
  {% for faq in site.faqs %}
    {% if faq.tags contains tag %}
    <li><a href="{{ site.baseurl }}{{ faq.url }}">{{ faq.title }}</a></li>
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}  


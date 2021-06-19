---
title: "Status (for debugging)"
layout: single
permalink: /status
header:
  overlay_image: /images/splash/splash-debug-status.jpg
  overlay_filter: rgba(255, 0, 0, 0.5)
---

{% assign faqtags =  site.faqs | map: 'tags' | join: ','  | split: ',' | uniq %}
# Statistics

| Element  | Count  |
| ---------|-------:|
| pages    | {{ site.pages | size }} |
| posts    | {{ site.posts | size }} |
| faqs      | {{ site.faqs | size }}  |
| faq-tags | <font color="#dd354b">{{ faqtags | size }}</font> |
| tips     | {{ site.tips | size }} |
| tips-tags | |


# Tags and Categories
### Tags within FAQS



### List of FAQ-tags


{% for tag in tags %}
  {{ tag }} 
{% endfor %}  


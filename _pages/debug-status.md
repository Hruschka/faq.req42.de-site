---
title: "Debug + Status"
layout: single
permalink: /debug-status
header:
  overlay_image: /images/splash/splash-debug-status.jpg
  overlay_filter: rgba(255, 0, 0, 0.5)

excerpt: "{{ site.pages | size }} pages" 
---

# Pages

<font color="#dd354b">{{ site.pages | size }}</font> pages in this site.

# Posts

<font color="#dd354b">{{ site.posts | size }}</font> posts in this site.

{% assign selected_posts = site.posts | where: "category", include.category | reverse %}


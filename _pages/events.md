---
layout: default
title: Events
header_title: Events
header_excerpt: A collection of finished pieces on various topics, and bullshit.
permalink: /events/
---


<div class="item-wrap">
{% assign event_files = site.notes | where_exp: "note", "note.path contains 'events'" %}
{% for note in event_files %}
  <div class="item-contain">
    {% if note.tags %}
      <div class="item-tag-wrap">
        {% for tag in note.tags %}
          <a href="#" class="item-tag">{{ tag }}</a>
        {% endfor %}
      </div>
    {% endif %}
    
    <div class="item-content">
      <div class="title-wrap">
        <h2 class="item-title">
          <a href="{{ site.baseurl }}{{ note.url }}" class="internal-link">{{ note.title }}</a>
        </h2>
      </div>
      <p class="item-excerpt">{{ note.excerpt | strip_html | truncatewords: 30 }}</p>
    </div>
  </div>
{% endfor %}
</div>
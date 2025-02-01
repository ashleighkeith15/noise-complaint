---
layout: default
title: Unfinished Threads
header_title: Unfinished Threads
header_excerpt: Please help. A collection of finished pieces on various topics, and bullshit.
---

<div class="item-wrap">
{% assign non_article_files = site.notes | where_exp: "note", "note.path contains '/articles/' == false" %}
{% for note in non_article_files %}
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
        <h1 class="item-title">
          <a href="{{ site.baseurl }}{{ note.url }}" class="internal-link">{{ note.title }}</a>
        </h1>
      </div>
      <p class="item-excerpt">{{ note.excerpt | strip_html | truncatewords: 30 }}</p>
    </div>
  </div>
{% endfor %}
</div>
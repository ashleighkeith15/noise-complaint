---
layout: default
title: articles
permalink: /articles
header_title: Writing & Essays
header_excerpt: A collection of finished pieces on various topics, from philosophy to technology.
---
<div class="item-wrap">
{% assign article_files = site.notes | where_exp: "note", "note.path contains '/articles/'" %}
{% for article in article_files %}
  <div class="item-contain">
    {% if article.tags %}
      <div class="item-tag-wrap">
        {% for tag in article.tags %}
          <a href="#" class="item-tag">{{ tag }}</a>
        {% endfor %}
      </div>
    {% endif %}
    
    <div class="item-content">
      <div class="title-wrap">
        <h1 class="item-title">
          <a href="{{ site.baseurl }}{{ article.url }}" class="internal-link">{{ article.title }}</a>
        </h1>
      </div>
      <p class="item-excerpt">{{ article.excerpt | strip_html | truncatewords: 30 }}</p>
    </div>
  </div>
{% endfor %}
</div>
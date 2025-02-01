---
layout: default
title: Noise Complaint
id: home
permalink: /
header_title: Noise Complaint
header_excerpt: A collection of finished pieces on various topics, and bullshit.
---
<div class="item-wrap">
{% assign article_files = site.notes | where_exp: "note", "note.path contains '/articles/'" %}
{% for article in article_files %}
  <div class="item-contain">
    {% if article.tags %}
      <div class="item-tag-wrap">
        {% for tag in article.tags %}
          <a href="/tags/{{ tag | downcase }}" class="item-tag internal-link">{{ tag }}</a>
        {% endfor %}
      </div>
    {% endif %}
    
    <div class="item-content">
      <div class="title-wrap">
        <h2 class="item-title">
          <a href="{{ site.baseurl }}{{ article.url }}" class="internal-link">{{ article.title }}</a>
        </h2>
      </div>
      <p class="item-excerpt">{{ article.excerpt | strip_html | truncatewords: 30 }}</p>
    </div>
  </div>
{% endfor %}
</div>
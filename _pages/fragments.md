---
layout: default
title: fragments
permalink: /fragments
header_title: Works in Progress
header_excerpt: A collection of developing notes and ideas that are still taking shape.
---

<div class="filter-wrap">
  <div class="filter-container">
    <a href="/fragments" class="filter-button active">All</a>
    <a href="/tags/books" class="filter-button">Books</a>
    <a href="/tags/concepts" class="filter-button">Concepts</a>
    <a href="/tags/questions" class="filter-button">Questions</a>
    <a href="/tags/events" class="filter-button">Events</a>
  </div>
</div>

<div class="item-wrap">
  {% assign fragment_files = site.notes | where_exp: "note", "note.path contains '/fragments/'" %}
  {% for fragment in fragment_files %}
    <div class="item-contain">
      {% if fragment.tags %}
        <div class="item-tag-wrap">
          {% for tag in fragment.tags %}
            <a href="/tags/{{ tag | downcase }}" class="item-tag">{{ tag }}</a>
          {% endfor %}
        </div>
      {% endif %}

      <div class="item-content">
        <div class="title-wrap">
          <h2 class="item-title">
            <a href="{{ site.baseurl }}{{ fragment.url }}" class="internal-link">{{ fragment.title }}</a>
          </h2>
        </div>
        <p class="item-excerpt">{{ fragment.excerpt | strip_html | truncatewords: 30 }}</p>
      </div>
    </div>
  {% endfor %}
</div>
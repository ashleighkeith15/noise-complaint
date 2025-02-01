---
layout: default
title: Books
header_title: Books
header_excerpt: A collection of finished pieces on various topics, and bullshit.
permalink: /books/
---


  <div class="books_contain">
    {% assign book_files = site.notes | where_exp: "note", "note.path contains '/books/'" %}
    {% for book in book_files %}
      <div class="book-item">
        <a href="{{ site.baseurl }}{{ book.url }}" class="internal-link">
          {% if book.cover_image %}
            <img src="{{ book.cover_image }}" loading="lazy" class="book_image" alt="{{ book.title }} cover image">
          {% else %}
            <img src="/placeholder.jpg" loading="lazy" class="book_image" alt="Placeholder cover image">
          {% endif %}
        </a>
        <h2><a href="{{ site.baseurl }}{{ book.url }}" class="item-title internal-link">{{ book.title }}</a></h2>
        <p>by 
          {% for person in book.people %}
            <a href="/people/{{ person | downcase | replace: ' ', '-' }}" class="internal-link">{{ person | remove: "[[" | remove: "]]" }}</a>{% if forloop.last != true %}, {% endif %}
          {% endfor %}
        </p>
        <div class="item-tag-wrap">
          {% for tag in book.tags %}
            {% if tag != 'book' %}
              <a href="/tags/{{ tag | downcase }}" class="item-tag internal-link">{{ tag }}</a>
            {% endif %}
          {% endfor %}
        </div>
      </div>
    {% endfor %}
  </div>
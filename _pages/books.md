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
        {% if book.cover_image %}
          <img src="{{ book.cover_image }}" loading="lazy" class="book_image" alt="{{ book.title }} cover image">
        {% else %}
          <img src="/placeholder.jpg" loading="lazy" class="book_image" alt="Placeholder cover image">
        {% endif %}
        <h2>{{ book.title }}</h2>
        <p>by {{ book.author }}</p>
        <div class="item-tag-wrap">
          {% for tag in book.tags %}
            <a href="/tags/{{ tag | downcase }}" class="item-tag internal-link">{{ tag }}</a>
          {% endfor %}
        </div>
      </div>
    {% endfor %}
  </div>
</div>
---
layout: default
title: People
header_title: People
header_excerpt: A collection of finished pieces on various topics, and bullshit.
permalink: /people/
---


  <div class="books_contain">
    {% assign people_files = site.notes | where_exp: "note", "note.path contains '/people/'" %}
    {% for person in people_files %}
      <div class="book-item">
        <a href="{{ site.baseurl }}{{ person.url }}" class="internal-link">
          {% if person.profile_image %}
            <img src="{{ person.profile_image }}" loading="lazy" class="book_image" alt="{{ person.title }} profile image">
          {% else %}
            <img src="/placeholder.jpg" loading="lazy" class="book_image" alt="Placeholder profile image">
          {% endif %}
        </a>
        <h2><a href="{{ site.baseurl }}{{ person.url }}" class="item-title internal-link">{{ person.title }}</a></h2>
      </div>
    {% endfor %}
  </div>
</div>
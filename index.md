---
layout: intro
---


### Upcoming

<section id="events">
  <ol>
    {% for event in site.categories.event %}
      {% if event.time > site.time %}
        <li class="event">
          <p class="title">
            {% if event.content.size > 5 %}
              <a href="{{ event.url }}">
                {{ event.title }}
              </a>
            {% else %}
              {{ event.title }}
            {% endif %}
          </p>

          <p class="description">
            {{ event.description }}
          </p>

          <p>
            <time datetime="{{ event.time | date: date_to_xmlschema}}">
              {{event.time | date: "%I:%M%p, %d %b %Y" }}
            </time>
            - {{ event.venue }} - <a href="{{ event.link }}">link</a>
          </p>

        </li>
      {% endif %}
    {% endfor %}
  </ol>
</section>

<figure class="me">
  <img src="{% asset_path sean_at_xp.jpg %}" alt="Sean Lee" width="350"/>
  <figcaption>
    photo by Li Bingyu at
    <a href="http://www.douban.com/note/507080195/">XP Club</a>
  </figcaption>
</figure>

Hi, my name is Sean. I’m a [software developer][github] and [musician](http://notimportant.org/sounds) based in Beijing. I co-organized [Soundleaks](http://m www.soundleaks.org), a sound art/tech event.

Don't hesitate to write to me if you have something to say:

<iseansay@gmail.com>


[github]: http://github.com/seansay
[email]: mailto:iseansay@gmail.com

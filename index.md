---
layout: intro
---

{% if site.data['upcoming_events'].size > 0 %}
### Upcoming
{% endif %}

<section id="events">
  <ol>
    {% for event in site.data['upcoming_events'] %}
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
    {% endfor %}
  </ol>
</section>

<figure class="me">
  <img src="{% asset_path sean5.jpg %}" alt="Sean Lee" width="350"/>
  <figcaption>
    playing at Kaohsiung, 2015
  </figcaption>
</figure>

Hi, my name is Sean. I’m a [software developer][github] and [laptop improviser](http://notimportant.org/event/oschub-20151207/) based in Beijing. I co-organized [Soundleaks](http://www.soundleaks.org), a sound art/tech event.

Don't hesitate to write to me if you have something to say:

<iseansay@gmail.com>


[github]: http://github.com/seansay
[email]: mailto:iseansay@gmail.com

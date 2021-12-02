---
layout: intro
---

{% if site.data['upcoming_events'].size > 0 %}

### Upcoming Events

{% endif %}

<section id="events">
  <ol>
    {% for event in site.data['upcoming_events'] %}

      <li class="event">
        <p>
          <time datetime="{{ event.time | date: date_to_xmlschema}}">
            {{event.time | date: "%b %d %Y" }}
          </time>
        </p>


        {% if event.title %}
          <p class="title">
            {% if event.content.size > 5 %}
              <a href="{{ event.url }}">
                {{ event.title }}
              </a>
            {% else %}
              {{ event.title }}
            {% endif %}
          </p>
        {% endif %}


        <p class="description">
          {{ event.description }}
        </p>


        <p>
          {% if event.city %}
            {{ event.venue }}, <b>{{ event.city }}</b>
          {% else %}
            {{ event.venue }}
          {% endif %}

          {% if event.link %}
            <a href="{{ event.link || event.url  }}">link</a>
          {% endif %}
        </p>
      </li>
    {% endfor %}

  </ol>
</section>

### News

<section class="news">
  <ul>
    <li>
    Ensemble [ _ _ _ ] presented one hour of wo of their latest projects of network music performance on Hong Kong Community Radio at 30 Nov 2021, the
    <a href="https://soundcloud.com/hkcrlive/30112021a" target="_blank">
    show
    </a> is now available to playback on soundcloud.
    </li>
  </ul>


</section>

<figure class="me">
  <img src="{% asset_path profile_by_zhaocong.jpg %}" alt="Li Song" width="350"/>

  <figcaption>
    Photo by <a href="https://site.douban.com/zhaocong/">Zhao Cong</a>
  </figcaption>
</figure>

Hi, my name is Li Song. I’m a [musician](http://notimportant.org/event/oschub-20151207/) and [software engineer][github] based in London. I co-organized [Soundleaks](http://www.soundleaks.org), a sound art/tech event.


<lisong@notimportant.org>

[github]: http://github.com/lisongx
[email]: mailto:lisong@notimportant.com✈️

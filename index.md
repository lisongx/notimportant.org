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
            {{event.time | date: "%b %d, %Y" }}
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

<!-- ### News -->

<!-- <section class="news">
  <ul>
    <li>
    Feb 2022, my new radio mix with Ju Canon on the RTM.FM adio show
      <a href="https://www.mixcloud.com/RTM_FM/glazier-ju-canon-li-song-030222/" target="_blank">
        Glazier
      </a>
    </li>
  </ul>


</section> -->

<figure class="me">
  <img src="{% asset_path profile_by_andrej.jpg %}" alt="Li Song" width="100%"/>

  <figcaption>
    Photo by <a href="https://www.instagram.com/andrejchudy/">Andrej Chudý</a>
  </figcaption>
</figure>


[github]: http://github.com/lisongx
[email]: mailto:lisong@notimportant.com✈️

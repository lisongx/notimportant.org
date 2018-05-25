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
            {{event.time | date: "%b %d, %Y, %I:%M%p" }}
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

            {% if event.link %}
              <a href="{{ event.link || event.url  }}">link</a>
            {% endif %}

          {% else %}
            {{ event.venue }}
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
      <p>I'm writing an interactive guide on <a href="https://beats.notimportant.org">👂Binaural Beats👂</a>, stay tunned!</p>
    </li>

    <li>
      <p>
        New design work for cassette tape: <a href="https://zoominnight.bandcamp.com/album/5-compositions">5 Compositions
        </a> by <a href="https://zhuwenbo.bandcamp.com/">Zhu Wenbo</a> and <a href="https://site.douban.com/zhaocong/">Zhao Cong</a>, published by the label <a href="https://zoominnight.bandcamp.com/">Zoomin‘ Night</a>,
        available on cassette and digital download. Detail at <a href="https://zoominnight.bandcamp.com/album/harvesting-pumpkins-before-winter">here</a>.
      </p>

      <figure style="display: flex; flex-direction: row;  flex-wrap: nowrap;">
        <img src="http://7xiq03.com1.z0.glb.clouddn.com/zmy021.jpg" alt="5 Compositions" width="300" height="300"/>
      </figure>
    </li>

  </ul>
</section>




<figure class="me">
  <img src="{% asset_path profile_by_zhaocong.jpg %}" alt="Li Song" width="350"/>
  <figcaption>
    Photo by <a href="https://site.douban.com/zhaocong/">Zhao Cong</a>
  </figcaption>
</figure>

Hi, my name is Li Song. I’m a [software developer][github] and [experimental musician](http://notimportant.org/event/oschub-20151207/) based in Beijing. I co-organized [Soundleaks](http://www.soundleaks.org), a sound art/tech event.

Don't hesitate to write to me if you have something to say:

<iseansay@gmail.com>


[github]: http://github.com/seansay
[email]: mailto:iseansay@gmail.com

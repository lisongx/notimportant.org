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
      No Performance (<a href="https://zhuwenbo.bandcamp.com/" target="_blank">Zhu Wenbo</a> and Li Song) is back with a new cassette release:
      <a href="http://extra.resonance.fm/episodes/subphonics-number-1-foreword" target="_blank">
        Text
      </a>. 7 text based composition played with ourselves and friends Liu Lu, Ma Jin, Lodliet Wang, Fu Shixin, Liang Yongping and Chengyun. Master by Hiroyuki Ura.
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

Don't hesitate to write to me if you have something to say:

<lisong@notimportant.org>

[github]: http://github.com/lisongx
[email]: mailto:lisong@notimportant.com✈️

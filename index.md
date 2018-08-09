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
      <p>
      An online exhibition by me and Feng Qiushi: We found the remains of the Beijing 2008 Olympics in this city after 10 years of the event. Visit <a href="https://2008.notimportant.org/">here</a>(text only in Chinese, please use a headphone if you can for better sound quality).
      </p>
    </li>

    <li>
      <p>I'm writing an interactive guide on 👂<a href="https://beats.notimportant.org">Binaural Beats</a>👂, stay tunned!</p>
    </li>
  </ul>
</section>




<figure class="me">
  <img src="{% asset_path profile_by_zhaocong.jpg %}" alt="Li Song" width="350"/>
  <figcaption>
    Photo by <a href="https://site.douban.com/zhaocong/">Zhao Cong</a>
  </figcaption>
</figure>

Hi, my name is Li Song. I’m a [software developer][github] and [computer musician](http://notimportant.org/event/oschub-20151207/) based in Beijing. I co-organized [Soundleaks](http://www.soundleaks.org), a sound art/tech event.

Don't hesitate to write to me if you have something to say:

<iseansay@gmail.com>


[github]: http://github.com/seansay
[email]: mailto:iseansay@gmail.com

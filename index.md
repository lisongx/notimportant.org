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
            {{event.time | date: "%I:%M%p, %d %b %Y" }}
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
            <a href="{{ event.link || event.url  }}">link</a>
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
        My new design work: <a href="https://zoominnight.bandcamp.com/album/beijing-2016-2017">Beijing 2016–2017</a> by <a href="http://blog.escdotdot.com/">Edward Sanderson</a>, published by the label Zoomin‘ Night 燥眠夜,
        available on cassette and/or digital download. More detail on <a hred="zoominnight.bandcamp.com/album/beijing-2016-2017">bandcamp page</a>.
      </p>

      <figure style="display: flex; flex-direction: row;  flex-wrap: nowrap;">
        <img src="http://7xiq03.com1.z0.glb.clouddn.com/design/zoominnight/zmy016/ed_design_2.jpg" alt="Beijing 2016-2017 By Edward Sanderson" width="200px" height="200px"/>
        <img src="http://7xiq03.com1.z0.glb.clouddn.com/design/zoominnight/zmy016/ed_design_1.jpg" alt="Beijing 2016-2017 By Edward Sanderson" width="200px" height="200px"/>
      </figure>
    </li>

    <li>
      <p>I'm making an application about musicial instrument, <a href="http://eepurl.com/cz4gY1">subscribe</a> this mailing list if you're interested</p>
    </li>

  </ul>
</section>




<figure class="me">
  <img src="{% asset_path profile_by_zhaocong.jpg %}" alt="Sean Lee" width="350"/>
  <figcaption>
    Photo by <a href="https://site.douban.com/zhaocong/">Zhao Cong</a>
  </figcaption>
</figure>

Hi, my name is Li Song. I’m a [software developer][github] and [experimental musician](http://notimportant.org/event/oschub-20151207/) based in Beijing. I co-organized [Soundleaks](http://www.soundleaks.org), a sound art/tech event.

Don't hesitate to write to me if you have something to say:

<iseansay@gmail.com>


[github]: http://github.com/seansay
[email]: mailto:iseansay@gmail.com

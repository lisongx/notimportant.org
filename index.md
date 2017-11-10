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
      <p>A new compilation: There is no music for China, will released by <a href="https://zoominnight.bandcamp.com/album/2-compositions-for-ensemble-bike-okra"><del>Zoomin‘ Night 燥眠夜</del></a> (Sold Out!) and <a  href="https://endofthealphabetrecords.bandcamp.com/album/there-is-no-music-from-china">End of the Alphabet Records</a> on June 30. Now you can pre order the limited c60 cassette tape at both of their bandcamp page.</p>

      <figure>
        <img src="https://f4.bcbits.com/img/a1465733803_16.jpg" alt="Sean Lee" width="400"/>
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

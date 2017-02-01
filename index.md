---
layout: intro
---



### News

<section class="news">
  <ul>
  <li>
    <p>I'm making an application about musicial instrument, <a href="http://eepurl.com/cz4gY1">subscribe</a> this mailing list if you're interested</p>
  </li>

  <li>
    <p>Cover design for Zoomin‘ Night 燥眠夜's new cassette tape:  <a  href="https://zoominnight.bandcamp.com/album/sorry-i-missed-it">sorry I missed it</a> by Yan Jun</p>
    <figure>
      <img src="http://7xiq03.com1.z0.glb.clouddn.com/images/sorry-i-missed-it.jpg" alt="Sean Lee" width="400"/>
    </figure>
  </li>

  <li>
    <p><a href="http://blog.escdotdot.com/2016/12/18/zhu-wenbo-and-sean-lee-no-performance-and-okra/">New interview</a> by Edward Sanderson, about No Performance and Orka</p>
  </li>  
  </ul>
</section>



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
    Playing at taiwan
  </figcaption>
</figure>

Hi, my name is Sean. I’m a [software developer][github] and [laptop improviser](http://notimportant.org/event/oschub-20151207/) based in Beijing. I co-organized [Soundleaks](http://www.soundleaks.org), a sound art/tech event.

Don't hesitate to write to me if you have something to say:

<iseansay@gmail.com>


[github]: http://github.com/seansay
[email]: mailto:iseansay@gmail.com

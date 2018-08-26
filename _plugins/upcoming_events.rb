module UpComingEvents
  class Generator < Jekyll::Generator
    def generate(site)

      site.data['upcoming_events'] = site.posts.select {|event|
        event.categories.include?('event') and event.time >= site.time
      }

    end
  end
end

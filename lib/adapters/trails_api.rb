require 'rest-client'
require 'json'
require 'pry'

class Adapters
  class TrailsApi

    BASE_SEARCH_QUERIES = ['city', 'state', 'activity_type_name', ]
    BASE_URL = "https://trailapi-trailapi.p.mashape.com/"

    def fetch
      # These code snippets use an open-source library. http://unirest.io/ruby
      response = RestClient.get(BASE_URL,
      {
        "X-Mashape-Key" => "4HCYPZde2Hmsh1UdeewlACkE7zqtp1vPdqMjsnRPczTeF0bM6h",
        "Accept" => "text/plain"
      })
      JSON.parse(response.body)
      #binding.pry

    end

    def format_data
      response = self.fetch

      response["places"].map do |place|
        name = place["name"]
        state = place["state"]
        city = place["city"]
        description = place["description"]

        if place["activities"][0]
          category = place["activities"][0]["activity_type_name"]
        else
          category = "hiking"
        end
        {trail_name: name, state: state, category:  category, city: city, description: description}
      end
    end
  end
end

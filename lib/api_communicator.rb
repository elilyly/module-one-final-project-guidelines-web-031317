require 'rest-client'
require 'json'
require 'pry'


# These code snippets use an open-source library. http://unirest.io/ruby
response = RestClient.get("https://trailapi-trailapi.p.mashape.com/?lat=34.1&limit=25&lon=-105.2&q[activities_activity_type_name_eq]=hiking&q[city_cont]=Denver&q[country_cont]=Australia&q[state_cont]=California&radius=25",
  headers:{
    "X-Mashape-Key" => "4HCYPZde2Hmsh1UdeewlACkE7zqtp1vPdqMjsnRPczTeF0bM6h",
    "Accept" => "text/plain"
  }

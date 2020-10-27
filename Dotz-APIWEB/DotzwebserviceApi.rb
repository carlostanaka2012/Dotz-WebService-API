require 'httparty'
response = HTTParty.get('https://swapi.dev/api/films/')
puts "response code:#{response.code}"
puts "response message:#{response.message}"
puts "response headers:#{response.headers}"
puts "response body:#{response.body}"


response = HTTParty.get('https://swapi.dev/api/planets/')
puts "response code:#{response.code}"
puts "response message:#{response.message}"
puts "response headers:#{response.headers}"
puts "response body:#{response.body}"
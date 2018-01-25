require 'net/http'
require 'json'

url = 'https://api.guildwars2.com/v2/items?page=0&page_size=200'
uri = URI(url)
response = Net::HTTP.get(uri)
answer = JSON.parse(response)
puts answer[0]['name']
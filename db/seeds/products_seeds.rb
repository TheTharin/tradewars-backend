require 'net/http'
require 'json'

url = "https://api.guildwars2.com/v2/items?page=0&page_size=200"
uri = URI(url)
response = Net::HTTP.get_response(uri)
pages_total = response.to_hash['x-page-total'][0].to_i

(0...pages_total).each do |page|
  puts "Parsing page №#{page}"

  url = "https://api.guildwars2.com/v2/items?page=#{page}&page_size=200"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  answer = JSON.parse(response)

  answer.each do |item|
    puts "Creating #{item['name']} with id #{item['id']} and type #{item['type']}"
    Item.create(
      item_id: item['id'],
      chat_link: item['chat_link'],
      name: item['name'],
      icon: item['icon'],
      description: item['description'],
      item_type: item['type'],
      rarity: item['rarity'],
      level: item['level'],
      vendor_value: item['vendor_value'],
      default_skin: item['default_skin'],
      flags: item['flags'],
      game_types: item['game_types'],
      restrictions: item['restrictions'],
      details: item['details']
    )
    puts "Success"
  end
end


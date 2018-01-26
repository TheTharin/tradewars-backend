require 'net/http'
require 'json'

url = "https://api.guildwars2.com/v2/commerce/listings?page=0&page_size=200"
uri = URI(url)
response = Net::HTTP.get_response(uri)
pages_total = response.to_hash['x-page-total'][0].to_i

(0...pages_total).each do |page|
  url = "https://api.guildwars2.com/v2/commerce/listings?page=#{page}&page_size=200"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  answer = JSON.parse(response)

  puts "Parsing page №#{page}"

  answer.each do |listing|
    puts "Creating listing for item with id #{listing['id']}"
    item = Item.find_by(item_id: listing['id'])
    Listing.create(
        item: item,
        buys: listing['buys'],
        sells: listing['sells'],
        )
    puts "Success"
  end
end
# handle all our API requests
class API

    def self.fetch_beer(beer)
        url = "https://api.punkapi.com/v2/beers?beer_name=#{beer}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        name = JSON.parse(response)
        name.each do |n|
            Beer.new(name: n["name"], beer_id: n["id"])
            # binding.pry 
        end 

    end

end

# if your pry repsonse is super long, pree 'Q' to get back into pry
# handle all our API requests
class API

    def self.fetch_beer(fun_word)
        url = "https://api.punkapi.com/v2/beers?beer_name=#{fun_word}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        name = JSON.parse(response)
        name.each do |b|
            Beer.new(name: b["name"], beer_id: b["id"], fun_word: fun_word)
        end


    def self.get_beer_details(beer)
        url = "https://api.punkapi.com/v2/beers/#{beer.beer_id}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        br = JSON.parse(response)[0]
        beer.tagline = br["tagline"]
        beer.description = br["description"]
        beer.food_pairing = br["food_pairing"]
        # binding.pry

       end

    end

end

# if your pry repsonse is super long, pree 'Q' to get back into pry
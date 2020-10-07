# keep track of beer
# turn repsonses into objects
# save beers chosen

class Beer
    attr_accessor :name, :beer_id, :fun_word, :tagline, :description, :food_pairing
    @@all = []

    def initialize(name:, beer_id:, fun_word:)
        @name = name
        @beer_id = beer_id
        @fun_word = fun_word
        @tagline = tagline 
        @description = description 
        @food_pairing = []
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.find_by_name(fun_word)
        @@all.select {|b| b.fun_word == fun_word}
    end

end
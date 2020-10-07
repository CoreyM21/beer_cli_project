# keep track of beer
# turn repsonses into objects
# save beers chosen

class Beer
    attr_accessor :name, :beer_id
    @@all = []

    def initialize(name:, beer_id:)
        @name = name
        @beer_id = beer_id
        @@all << self
    end

    def self.all 
        @@all
    end
    

end
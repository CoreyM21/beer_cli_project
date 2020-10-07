## interaction with user
# contains all our gets and puts
# control flow of our program

class CLI

def start 
    puts ""
    puts "Welcome to the Corey's Craft Beer Finder"
    puts ""
    puts "Type in a fun word to describe a beer!"
    puts ""
    @beer = gets.strip.downcase
    puts ""
    API.fetch_beer(@beer)
    puts ""
    beers = Beer.all
    print_beer(beers)
    puts ""
    "Choose a number listed or put in 'exit' to get out!"
    
    # binding.pry
end

def print_beer(br)
    puts ""
    puts "That is a fun word! This is your selection of beers associated with #{@beer}!"
    puts ""
    br.each_with_index do | b, i|
        puts "#{i+1}. #{b.name}"
    #   binding.pry  
    end
    


end


end
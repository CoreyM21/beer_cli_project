## interaction with user
# contains all our gets and puts
# control flow of our program

class CLI

    def start 
        puts ""
        puts "This is the Craft Beer Menu!"
        puts ""
        prompt_fun_word
        prompt 
        input = gets.strip.downcase
        while input != 'exit' do 
            if input == 'new word'
                puts ""
                prompt_fun_word                
            elsif input == 'list'   
                print_beers_list(beer)
                puts ""
            elsif input.to_i > 0 && input.to_i <= Beer.find_by_name(@fun_word).length
                beer = Beer.find_by_name(@fun_word)[input.to_i - 1]
                API.get_beer_details(beer)
                print_beer(beer)
            elsif Beer.find_by_name(@fun_word).length == 0
                puts ""
                puts "Whoops. That word missed. Try a different word."
            else 
                puts ""
                puts "Huh?? Did we start drinking already? Try Again!"
            end 
            prompt
            input = gets.strip.downcase
        end
        puts ""
        puts "See You Later and Remember to Drink Responsibly!"
        puts ""
    end

    def print_beers_list(br)
        puts ""
        puts "That is a fun word! Let's see what beers are associated with #{@fun_word}:"
        puts ""
        br.each_with_index do | b, i|
            puts "#{i+1}. #{b.name}"
        end
    end

    def print_beer(beer)
        puts ""
        puts "YOU CHOSE:"
        puts "Name: #{beer.name}"
        puts "Tagline: #{beer.tagline}"
        puts "Description: #{beer.description}"
        puts ""
    end

    def prompt
        puts ""
        puts "Choose a number listed"
        puts "Or type 'New Word' for to search under a new word"
        puts "Or type 'List' to see that list again"
        puts "Or type 'Exit' to get out of here!"
        puts ""
    end

    def prompt_fun_word
        puts "Type in a fun word to describe a beer you'd like!"
        puts ""
        @fun_word = gets.strip.downcase
        puts ""
        API.fetch_beer(@fun_word)
        puts ""
        beers = Beer.find_by_name(@fun_word)
        print_beers_list(beers)
    end

end

# prompt for list keeps failing
# how do I get a new list when I ask new word
# hw can I go one more layer and ask if you'd like a food pairing.
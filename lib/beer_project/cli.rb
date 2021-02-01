 
#we need to connect it with bin/beer_project

class Cli
    attr_accessor :url

    def initialize(url)
        @url = url
        api = Api.new(self.url)
    end

    def call
        greeting

        input = gets.chomp.to_i

        while valid_input?(input)
            #input = gets.chomp.to_i
            beer = Beer.new(Api.all[input_to_index(input)])
            puts "#{beer.name}!"
            puts "#{random_one} Let me tell you more about this one:\n#{beer.description}"
            puts "Would you like anything to eat today?" 
            input2 = gets.chomp
            if input2 == "yes"
                 #binding.pry
                 puts "#{beer.name} goes great with:\n"
                 beer.food_parings_list
                 input = gets.chomp.to_i
            elsif input2 == "no"
                puts "Please, select another beer from the list or 0 to exit."
                input = gets.chomp.to_i

            end


            #input = gets.chomp.to_i
        end

        goodbye

    end 

    #helper methods
    #should valid_input? and input_to_index go here?
    def valid_input?(input)
        (1..25).include?(input)# ? true : "Wrong number, please choose between 1 and 25. Thank you!"
    end

    def valid_food_input?(input,atr)
        (1..atr).include?(input)
    end

    def input_to_index(input)
        index = input - 1
    end

    def self.get_beer_form_the_list(input)
        if self.valid_input?(input)
            #binding.pry
            puts self.all[self.input_to_index(input)].name
        end
    end

    def goodbye
        puts "Until next time. Have a great day!"
    end

    def random_one
        arr = ["Nice one!", "Great choice", "Uuu I love that one", "That is my favorite!"]
        arr[rand(0..arr.length - 1)]
    end

    def greeting
        puts "Welcome to our BeerProject!"
        puts "Please take a look at our beer list."

        Beer.display_list

        puts "Do you see anything you would want to know more about?"
        puts "Please select number from our beer list or 0 to exit."

    end
    

end

# while valid_input?(input)

#     beer = Beer.new(Api.all[input_to_index(input)])
#     puts "#{beer.name}!"
#     puts "Great selection! Let me tell you more about this one:\n#{beer.description}"
#     puts "Would you like anything to eat today?" 
#     input2 = gets.chomp
#     #here we might want to put some regex to match "yes" and "Yes"
#     binding.pry
#     if input2 == "yes"
#         #binding.pry
#         puts "#{beer.name} goes great with:\n"
#         beer.food_parings_list
#         puts "Please select from the list above."
#         input3 = gets.chomp.to_i
#         puts "I'll have number #{input3}"
#         if valid_food_input?(input3, beer.food_pairing.length)
#             #binding.pry
#             puts "Great choice, one #{beer.tagline} and one #{beer.food_pairing[input_to_index(input3)]} are on the way!"
#             #beer.bill(beer.name)
#             #beer.bill(beer.food_pairing[input3])
#         #else 
#         end
#     elsif input2 == "no"
#         puts "Okay, so just #{beer.name} then."
#         #beer.bill
#         #puts "#{beer.name} goes perfect with: #{beer.food_pairing}."
#     end
#     #binding.pry
#     #puts beer.name
#     #else 
#         #puts "Wrong number, please choose between 1 and 25. Thank you!"
#     #end
# end
#we need to connect it with bin/beer_project
class Cli
    attr_accessor :url

    def initialize(url)
        @url = url
        api = Api.new(self.url)
    end

    def call
        Helper.greeting
        Helper.loading_bar("Loading beer list . . . ")

        puts Beer.print_list_of_all_beers
        input = nil
        until input == "exit"
            Helper.paragraph_word("Please select a number from our beer list or exit.")
            input = gets.chomp.downcase
            if valid_input?(input.to_i)
                # ! for production call with 1 insted 90
                Helper.loading_bar("Loading beer . . . ")
                beer_object = Beer.search_by_user_input(input_to_index(input.to_i))

                Helper.right_icons
                beer_coming    

                all_about_valid_input(beer_object)
        
                all_info(beer_object)

                beer_object.save_user_intrests

                input_one = nil

                until input_one == "back" 

                    puts Helper.paragraph_word("Please select number from our beer-info list or 'back' to go back to beer list.")
                    input_one = gets.chomp.downcase
                    if valid_info_input?(input_one.to_i)
                        Helper.right_icons
                        Helper.loading_bar("Loading info about #{beer_object.name} beer. . . ")
                        case input_one
                        when "1"
                            puts beer_object.description
                        when "2"                     
                            puts beer_object.first_brewed
                        when "3"
                            puts beer_object.food_pairing
                        when "4"
                            puts beer_object.id
                        when "5"
                            puts beer_object.ingredients
                        when "6"
                            puts beer_object.name
                        when "7"
                            puts beer_object.tagline
                        end  
                    elsif !valid_info_input?(input_one.to_i) && input_one != "back"
                        Helper.wrong_icons
                        Helper.wrong_input("Oops, wrong input. Please try again!")
                    end
                end
            elsif !valid_input?(input.to_i) && input != "exit"
                Helper.wrong_icons
                Helper.wrong_input("Oops, wrong input. Please try again!")
            end
        end

        
        print_user_interests(beer_object)
        goodbye
    end

    #***********************************************************
    def valid_input?(input)
        (1..25).include?(input)
    end

    def valid_info_input?(input)
        (1..7).include?(input)
    end

    def input_to_index(input)
        index = input - 1
    end

    def self.get_beer_form_the_list(input)
        if self.valid_input?(input)
            puts self.all[self.input_to_index(input)].name
        end
    end

    def goodbye
        puts "Until next time. Have a great day! 👋 👋 👋 👋 👋 "
    end

    def random_one
        arr = ["Bullseye", "Great choice", "Uuu I love that one", "That is my favorite"]
        arr[rand(0..arr.length - 1)]
    end

    # def greeting
    #     "*******Welcome to our BeerProject!********
    #     ******************************************
    #     Please take a look at our beer selection.".center(172)
    # end

    def all_info(obj)
        obj.instance_variables.sort.each.with_index(1) do |key,index|
            puts "#{index}. #{key.to_s.gsub("@",'')}"
        end
    end

    def all_about_valid_input(obj)
        puts Helper.h2("#{obj.name}!")
        Helper.space(1)
        puts "#{random_one}, let me tell you more about it:\n#{obj.description}"
        Helper.space(1)
        puts "List of extra information about #{obj.name}:"
    end

    def print_user_interests(object)
        if object != nil
            puts "This is a list of your inquiries: "
            object.user_intrests.each.with_index(1) do |beer, index|
                puts "#{index}. #{beer.name}"
            end
        end
    end

    def beer_coming
        puts "
        . .
        .. . *.
 - -_ _-__-0oOo
  _-_ -__ -||||)
     ______||||______
 ~~~~~~~~~~`""'
        ".red
    end
end

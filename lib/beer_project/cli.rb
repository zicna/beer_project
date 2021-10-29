 
#we need to connect it with bin/beer_project

class Cli
# require_relative "helper_methods.rb"
# include helper_methods.rb

    attr_accessor :url

    def initialize(url)
        @url = url
        api = Api.new(self.url)
    end

    def call
        puts Helper.greeting
        puts Helper.info

        # puts opening_beer_pic.blue

        puts Beer.print_list_of_all_beers
        input = nil
        until input == "exit"
            puts "Please select a number from our beer list or exit."
            input = gets.chomp
            if valid_input?(input.to_i)

                beer_object = Beer.search_by_user_input(input_to_index(input.to_i))
                
                beer_coming    

                all_about_valid_input(beer_object)
        
                all_info(beer_object)

                beer_object.save_user_intrests

                input_one = nil

                until input_one == "back"
                    puts "Please select number from our beer-info list or 'back' to go back to beer list."
                    input_one = gets.chomp
                    if valid_info_input?(input_one.to_i)
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
                        puts "Oops, wrong input. Please try again!"
                    end
                end
            elsif !valid_input?(input.to_i) && input != "exit"
                puts "Oops, wrong input. Please try again!" 
            end
        end

        
        print_user_interests(beer_object)
        goodbye
    end

    #***********************************************************
    #helper methods

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
        puts "Until next time. Have a great day!"
    end

    def random_one
        arr = ["Bullseye", "Great choice", "Uuu I love that one", "That is my favorite"]
        arr[rand(0..arr.length - 1)]
    end

    def greeting
        "*******Welcome to our BeerProject!********
        ******************************************
        Please take a look at our beer selection.".center(172)
    end

    def all_info(obj)
        obj.instance_variables.sort.each.with_index(1) do |key,index|
            puts "#{index}. #{key.to_s.gsub("@",'')}"
        end
    end

    def all_about_valid_input(obj)
        puts "#{obj.name}!"
        puts "#{random_one}, let me tell you more about it:\n#{obj.description}"
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

    # adding pictures 
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

    def opening_beer_pic
         "
        .sssssssss.
        .sssssssssssssssssss
      sssssssssssssssssssssssss
     ssssssssssssssssssssssssssss
      @@sssssssssssssssssssssss@ss
      |s@@@@sssssssssssssss@@@@s|s
_______|sssss@@@@@sssss@@@@@sssss|s
/         sssssssss@sssss@sssssssss|s
/  .------+.ssssssss@sssss@ssssssss.|
/  /       |...sssssss@sss@sssssss...|
|  |        |.......sss@sss@ssss......|
|  |        |..........s@ss@sss.......|
|  |        |...........@ss@..........|
\  \       |............ss@..........|
\  '------+...........ss@...........|
\________ .........................|
      |.........................|
     /...........................\
    |.............................|
       |.......................|
           |...............|


__         __  __ ___      __   __  __  __
|_  | |\ | |_  (_   |      |__) |_  |_  |__)
|   | | \| |__ __)  |      |__) |__ |__ | \
        ".blue
    end
    

end



class Beer

    # attr_accessor :name, :id, :first_brewed
    @@all = []

    def initialize(hash)
        hash.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
        @@all << self
    end


# these might be considered helper methods for cli class???
    # def self.valid_input?(input)
    #     (1..25).include?(input.to_i) ? true : "Wrong number, please choose between 1 and 25. Thank you!"
    # end

    # def self.input_to_index(input)
    #     index = input.to_i - 1
    # end

    # def self.get_beer_form_the_list(input)
        
    #     if self.valid_input?(input)
    #         #binding.pry
    #         puts self.all[self.input_to_index(input)].name
    #     end
    # end

    


    def save
        @@all << self
    end

    def self.all
        @@all
    end

    #this will puts list of all beer names but reteurn value is still self.all (list of all instancies of Beer class)
    # def self.print_list_of_all_beers
    #     self.all.each.with_index(1) do |beer, index|
    #         #binding.pry
    #         puts "#{index}. #{beer.name}"
    #     end
    # end

    #print list of all beers from Api class (beer_hash) without creating all instancies of Beer class
    #thisl looks like it should be a class method

    def self.display_list
        Api.all.each.with_index(1) do |beer_hash, index|
            #binding.pry
            puts "#{index}. #{beer_hash[:name]}"
        end
    end

    def food_parings_list
       self.food_pairing.each.with_index(1) {|food, index| puts "#{index}. #{food}" }
    end


end




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

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.get_all_names
        self.all.each do |beer|
            #binding.pry
            puts beer.name
        end
    end
end

# class Beer

#     @@all = []
#     #attr_accessor :volume, :brewers_tips, :food_pairing
#     #attr_reader :name, :id, :ingredients, :first_brewed,

#     #in this case all would be with writer and reader class
#     # def initialize(hash)
#     #     hash.each do |key, value|
#     #         self.class.attr_accessor(key)
#     #         self.send(("#{key}="), value)
#     #         #binding.pry
#     #     end
#     # end
#     #in this case we all pass in hash will be consider attr_reader's methods
#     def initialize(hash)
#         hash.each do |key, value|
#             self.class.attr_reader(key)
#             #self.send(("#{key}"), value)
#             @key = value
#         end
#     end
# end



# hash = {name: "Stella", id: "32", first_brewed: "1354"}
# beer = Beer.new(hash)
# puts beer.name == nil

# puts beer.id == nil
# beer.volume = "10gal"
# puts beer.volume

# id
# name
# image_url
# abv
# ibu
# target_fg
# target_og
# ebc
# srm
# ph
# attenuation_level
# volume
# boil_volume
# method
# ingredients
# food_pairing
# brewers_tips
# contributed_by


class Beer
    @@all = []
    @@all_user_intrests = []

    def initialize(hash)
        hash.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def save_user_intrests
        @@all_user_intrests << self
    end

    def user_intrests
        @@all_user_intrests
    end

    def self.print_list_of_all_beers
        self.all.each.with_index(1) do |beer, index|
            puts "#{index}. #{beer.name}"
        end
    end

    def self.search_by_user_input(input)
        self.all[input]
    end
    
    private
    def name=(name)
        @name = name
    end

    def id=(id)
        @id = id
    end

    def ingredients=(ingredients)
        @ingredients = ingredients
    end

end

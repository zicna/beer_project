class Api
    @@all = []
    attr_accessor :response

    def initialize(url)
        @response = HTTParty.get(url)
        create_beer_hash
    end
    def create_beer_hash
        self.response.each do |beer|
            #binding.pry
            beer_hash = {
                name: beer["name"],
                id: beer["id"],
                first_brewed: beer["first_brewed"]
            }
            #binding.pry
            @@all << beer_hash
            Beer.new(beer_hash)
        end
    end

    def all
        @@all
    end

end
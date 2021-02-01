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
                tagline: beer["tagline"],
                food_pairing: beer["food_pairing"].join(", "),
                ingredients: "Malt: #{beer["ingredients"]["malt"].map do |malt|
                    malt["name"]
                end.join(", ")}; Hops: #{beer["ingredients"]["hops"].map do |hops|
                    hops["name"]
                end.join(", ")}; Yeast: #{beer["ingredients"]["yeast"]}",
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
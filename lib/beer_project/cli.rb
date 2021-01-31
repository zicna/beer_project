 
#we need to connect it with bin/beer_project

class Cli
    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def call
        puts "Welcome to out BeerProject!"
        Api.new(self.url)
    end
end

#see our selection of recomended beers get advertised beer with random function
        #Here is our beer list
        #ask for input by beer number in the list
        

        # url = "https://api.punkapi.com/v2/beers"
    # uri = URI.parse(url)
    # response = HTTParty.get(url)

    # #beer_hash should have 
    # ##name
    # ##id
    # ##ingredients
    # ##first_brewed

    # name = reponse.first["name"]
    # puts name 
   
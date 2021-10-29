class Helper
    # *self.greeting is called in cli.rb file to greet anyone entring our app
    def self.greeting
        Helper.space(10)
        Helper.header_word("This")
        sleep(2)
        Helper.space(10)
        Helper.header_word("is")
        sleep(2)
        Helper.space(10)
        Helper.header_word("beer project,")
        sleep(2)
        Helper.space(10)
        Helper.header_word("WELCOME")
    end
    # *self.header_world will be called in self.greeting for each word separatly
    def self.header_word(word)
        pastel = Pastel.new
        font = TTY::Font.new(:doom)

        puts pastel.yellow(font.write(word, letter_spacing: 4))
    end
    
    def self.space(num)
        num.times {puts " "}
    end
    # *this class method should provide info how to navigate thei app
    def self.info

    end


end
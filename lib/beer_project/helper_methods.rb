class Helper
    # *self.greeting is called in cli.rb file to greet anyone entring our app
    def self.greeting
        Helper.space(10)
        Helper.header_word("This",4 )
        sleep(1)
        Helper.space(10)
        Helper.header_word("is", 4)
        sleep(1)
        Helper.space(10)
        Helper.header_word("beer project,", 4)
        sleep(1)
        Helper.space(10)
        Helper.header_word("WELCOME", 4)
    end
    # *self.header_world will be called in self.greeting for each word separatly
    def self.header_word(word, space)
        pastel = Pastel.new
        font = TTY::Font.new(:doom)

        puts pastel.yellow(font.write(word, letter_spacing: space))
    end
    
    def self.space(num)
        num.times {puts " "}
    end
    # *this class method should provide info how to navigate thei app
    def self.info

    end
    # *adding loading bar...
    def self.loading_info
        bar = TTY::ProgressBar.new("Loading beer list ... :bar", total: 90)
        90.times do
            sleep(0.01)
            bar.advance(1)
        end
        # 90.times {puts {sleep(0.01), bar.advance(1)}}
    end

    def self.paragraph_word(word)
        pastel = Pastel.new
        self.space(5)
        pastel.green(word)
    end


end
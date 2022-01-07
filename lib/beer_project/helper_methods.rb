class Helper
    # *self.greeting is called in cli.rb file to greet anyone entring our app
    def self.greeting
        Helper.space(10)
        Helper.header_word("This",1 )
        sleep(1)
        Helper.space(10)
        Helper.header_word("is", 1)
        sleep(1)
        Helper.space(10)
        Helper.header_word("beer project,", 1)
        sleep(1)
        Helper.space(10)
        Helper.header_word("WELCOME", 1)
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
    def self.loading_info(num, text)
        bar = TTY::ProgressBar.new("#{text} :bar", total: 90)
        num.times do
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

    def self.wrong_input(word)
        pastel = Pastel.new
        self.space(2)
        pastel.red(word)
    end

    def self.heading(beer_name)
        pastel = Pastel.new
        self.space(2)
        pastel.green(beer_name)
    end


end
class Helper
    # *self.greeting is called in cli.rb file to greet anyone entring our app
    def self.greeting
        Helper.space(7)
        Helper.h1("This",1 )
        # ! for production call with 0 insted of 4
        sleep(1)
        Helper.space(7)
        Helper.h1("is", 1)
        sleep(1)
        Helper.space(7)
        Helper.h1("beer project,", 1)
        sleep(1)
        Helper.space(7)
        Helper.h1("WELCOME", 1)
    end
    # *self.header_world will be called in self.greeting for each word separatly
    def self.h1(word, space)
        pastel = Pastel.new
        font = TTY::Font.new(:doom)

        puts pastel.yellow(font.write(word, letter_spacing: space))
    end

    def self.h2(beer_name)
        pastel = Pastel.new
        self.space(2)
        pastel.green(beer_name)
    end
    
    def self.space(num)
        num.times {puts " "}
    end

    def self.loading_bar(text)
        # ! for production call with 1 insted 90
        bar = TTY::ProgressBar.new("#{text} :bar", total: 90)
        b = 90.times do
            sleep(0.01)
            bar.advance(1)
        end
        puts b
    end

    # * for every time app asks user to input something we will use this method
    def self.paragraph_word(word)
        pastel = Pastel.new
        self.space(5)
        puts pastel.green(word)
    end
    # * everytime user has wrong input
    def self.wrong_input(word)
        pastel = Pastel.new
        self.space(2)
        puts pastel.red(word)
    end

    def self.wrong_icons
        puts "❌ ❌ ❌ ❌ ❌"
    end

    def self.right_icons
        puts "✅  ✅  ✅  ✅  ✅ "
    end
    
    def self.help_level_one
        puts "
        type 'exit' 🔚 to close application;
        type numbers as istructed to get more info;
        type 'print list' to see beer list;
        type 'help' to repeat this message
        "
    end

    def self.help_level_two
        puts "
        type 'print list' to see options for choseen beer;
        type 'back' 🔙 to go level up ⬆;
        type 'exit' 🔚 to close application;
        type numbers as istructed to get more info;
        type 'help' to repeat this message
        "
    end
end
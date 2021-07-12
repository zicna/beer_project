# BeerProject

This CLI app is done for phase One Flatiron school. It uses open API with no key required found on "https://api.punkapi.com/v2/beers"
Please see "Usage"  part of this file for more info on how to use this app. 
Cheers!


## Usage (all commands are for your terminal)

Check-in what folder you are currently on:
    $pwd (for mac) or $dir (for windows)
Navigate to beer_project folder:
    $cd /.../.../beer_project
Run application:
    $./bin/beer_project
    => this will be output:
        1. Welcome you to our BeerProject
        2. Output our beer selection
        3. You will be asked to select beer by using prompt in your terminal
level 1:
    through prompt, you can select beer by typing number (1..25) or exit for closing the app
level 2:
    After selection beer from our list:
    =>
        1. Confirm your selection with a beer name that matches your selection
        2. Display what we love about that selection and some basic description of that particular beer 
        3. List of options you can choose to get some additional info about your selection
        4. New prompt where you can type numbers that represent additional info or 'back'

You can repeat this action or go type 'back' where you can select a new beer or exit the app.

On your way out we will output 'list of your inquiries' and greet you with an honest wish to see you soon.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zicna/beer_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/zicna/beer_project/blob/master/CODE_OF_CONDUCT.md).


## License

This gem is not yet available. 

## Code of Conduct

Everyone interacting in the BeerProject project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/zicna/beer_project/blob/master/CODE_OF_CONDUCT.md).

# <div ><spam style="color: orange; align: center">BeerProject</spam></div>
___
This CLI(Command Line Interface) app is done for phase One Flatiron school. It uses open API with no key required found [here](https://api.punkapi.com/v2/beers). As one beer lover to another I hope you will enjoy. Cheers!

![cheers](https://media.giphy.com/media/3o7TKKdv1vyUpyFLva/giphy.gif)
___
## <spam style="color: orange">Table of Content</spam>


1. [Description](#description)
2. [How to install this app](#instalation)
3. [How to use this app](#how-to-use-this-app)
4. [Future upgrades](#future-upgrades)
5. [Contributions](#Contributions)
6. [Bugs](#bugs)
7. [License](#license)

___
## <spam style="color: orange">Description</spam>


This application is part of phase 1, Flatiron school where we are require to create CLI application that uses open API as data source. User will navigate through our application with terminal commands. 


## <spam style="color: orange">Instalation</spam>

  * <spam style="color: green">Forking</spam> 
    * fork [this repository](https://github.com/zicna/beer_project.git) to your GitHub page
  * <spam style="color: green">Copy SSH</spam> 
    * clone newly forked repo from your GitHub to your local environment by clicking on button <spam style="background-color: green"> Code </spam> and copy to your clip board **SSH** link
  * <spam style="color: green">Navigate</spam> 
    * in your local environment navigate where you would like this repository to be cloned 
    * Useful commands for navigating on your terminal (macOS)
    ```
    cd ..                //=> folder up
    pwd                  //=> print working directory
    mkdir                //=> make new directory
    ls                   //=> list all files in current directory
    ls -l                //=> list all files from directory as a list
    touch new_file       //=> create new file
    ```
*  <spam style="color: green">Cloning</spam> 
   *  once we are at right place run
    ````
    git clone command + v OR 
    git clone git@github.com:user_name/beer_project.git
    ````
  

## <spam style="color: orange">How to use this app</spam>

Once all steps form **Instalation** are done we can open our terminal and navigate in folder where we cloned this application. 
<!-- <div style="background-color:lightyellow; color:black">
Note:
In case you created new folder and then clone this repository you will need go level down to folder. ````
</div> -->
* <spam style="color:green">Before start<spam/>
  * Before we start our application we need to install dependencies specified in our Gemfile by running
  ````
  bundle install
  ````
* <spam style="color:green">Start application<spam/>
  ````
  ./bin/beer_project 
  ````
  You will be greeted and welcomed to our <spam style="color: orange">beer_project</spam> application.
* <spam style="color:green">Level One</spam>
  We can choose to see any beer from our list by typing numbers from 1 to 25 or exit to turn down application
  ````
  numbers from 1 to 25      //=> this will get us more info on beer with that number
  exit      //=> this will lead us to exit our application
  ````
* <spam style="color:green">Level Two</spam>
    * Once we choose beer that we are intrested in now we can choose to see more info on this beer by selecting numbers from 1 to 7 or back to see list of all beers
  ````
  numbers 1 to 7    //=> choose on info about beer we picked on level one
  back              //=> back to level one 
  ````
  * we can stay on this level and choose to see more on same beer (numbers 1 to 7) or go back where we can pick to see new beer of exit 

* <spam style="color:green">We are leaving</spam> 🥲
  ```
  exit  //=> and our journey comes to an end
  ```
  * List of all your inquiries will be printed.


## <spam style="color: orange">Future upgrades</spam>
   * [x] Fix `README.md` file for beter uderstanding of our application
  * [x] Find and add new `gems` for styling to create beter user experience
  * [ ] Create it more user friendly by adding new `helper_methods` that will display commands for navigating through our application
   * [ ] Use newly added  gems for styling 
   * [ ] Commands shouldn't be case sensitive

## <spam style="color:orange">Contributions</spam>

Pull requests are more then welcome [here](https://github.com/zicna/beer_project). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to folow the [code of conduct](https://github.com/zicna/beer_project/blob/master/CODE_OF_CONDUCT.md). Thank you!!! 🙏🙏🙏

## <spam style="color: orange">Bugs</spam>
Let us know if you find any via email <a href="mailto:zivkovicmilan1987@gmail.com">here</a>.
## <spam style="color: orange">License</spam>
MIT License

___



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



This gem is not yet available. 

## Code of Conduct

Everyone interacting in the BeerProject project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/zicna/beer_project/blob/master/CODE_OF_CONDUCT.md).

<spam style="color: orange">Hello</spam>
<spam style="color: green">Hello</spam>
<spam style="color: red">Hello</spam>
<spam style="color: yellow">Hello</spam>


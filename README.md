# <div ><spam style="color: orange; align: center">🍺 🍺 🍺 Beer Project 🍺 🍺 🍺</spam></div>

---

Welcome to Beer Project, a CLI application made for the beer enthusiast who wants to know more about craft beer. We have a selection of 25 finest crafts that will giggle your taste buds.  Find out how it's made, food pairing, ingredients, and much more. From one beer lover, I hope you will enjoy it. Cheers and remember, enjoy responsibly!


<!-- This is Command Line Interface (CLI) application is done for phase One Flatiron school. It uses open Application Programming Interface (API) with no key required found [here](https://api.punkapi.com/v2/beers). As one beer lover to another I hope you will enjoy. Cheers! -->

![cheers](https://media.giphy.com/media/3o7TKKdv1vyUpyFLva/giphy.gif)

---

## <spam style="color: orange">Table of Content</spam>

1. [Description](#description)
2. [Built with](#built-with)
3. [How to install this app](#instalation)
4. [How to use this app](#how-to-use-this-app)
5. [Future upgrades](#future-upgrades)
6. [Contributions](#Contributions)
7. [Bugs](#bugs)
8. [License](#license)

---

## <spam style="color: orange">Description</spam>

This is Command Line Interface (CLI) application that uses open Application Programming Interface (API) with no key required found [here](https://api.punkapi.com/v2/beers). It utilizes 'httparty' gem for making a call to API resulting in the hash structure of beer data used throughout our application. Multiple gems are used to create a better user experience. Please read through the rest of the readme for more in-depth details about this application.
<!-- This application is part of phase 1, Flatiron school where we are require to create CLI application that uses open API as data source. User will navigate through our application with terminal commands. -->

---
## <spam style="color: orange">Built with</spam>

- The programming language used: <spam style="color:red">ruby 2.6.1p33<spam/>
- The gems used: 
  - <spam style="color:red">httparty 0.13.7<spam/>
  - <spam style="color:red"> rake 0.13.7<spam/>
- The gems used for styling: 
  - <spam style="color:red">colorize<spam/>
  - <spam style="color:red">tty-color<spam/>
  - <spam style="color:red">pastel<spam/>
  - <spam style="color:red">tty-font<spam/>
  - <spam style="color:red">tty-progressbar<spam/>
  - <spam style="color:red">tty-spiner<spam/>
  
---

## <spam style="color: orange">Instalation</spam>

- <spam style="color: green">Forking</spam>
  - fork [this repository](https://github.com/zicna/beer_project.git) to your GitHub page
- <spam style="color: green">Copy SSH</spam>
  - clone newly forked repo from your GitHub to your local environment by clicking on button <spam style="background-color: green"> Code </spam> and copy to your clip board **SSH** link
- <spam style="color: green">Navigate</spam>
  - in your local environment navigate where you would like this repository to be cloned
  - Useful commands for navigating on your terminal (macOS)
  ```
  cd ..                //=> folder up
  pwd                  //=> print working directory
  mkdir                //=> make new directory
  ls                   //=> list all files in current directory
  ls -l                //=> list all files from directory as a list
  touch new_file       //=> create new file
  ```
- <spam style="color: green">Cloning</spam>
  - once we are at right place run
  ```
  git clone command + v OR
  git clone git@github.com:user_name/beer_project.git
  ```

---

## <spam style="color: orange">How to use this app</spam>

Once all steps form **Instalation** are done we can open our terminal and navigate in folder where we cloned this application.

<!-- <div style="background-color:lightyellow; color:black">
Note:
In case you created new folder and then clone this repository you will need go level down to folder. ````
</div> -->

- <spam style="color:green">Before start<spam/>
  - Before we start our application we need to install dependencies specified in our Gemfile by running
  ```
  bundle install
  ```

- <spam style="color:green">For best user experience<spam/>
  1. screen size: `2560x1600`
  2. clear terminal: run `clear` befoore start

- <spam style="color:green">Start application<spam/>
  ```
  ./bin/beer_project
  ```

  You will be greeted and welcomed to our <spam style="color: orange">beer_project</spam> application.
- <spam style="color:green">Level One</spam>
  We can choose to see any beer from our list by typing numbers from 1 to 25 or exit to turn down application
  ```
  numbers from 1 to 25      //=> this will get us more info on beer with that number
  exit      //=> this will lead us to exit our application
  ```
- <spam style="color:green">Level Two</spam>

  - Once we choose beer that we are intrested in now we can choose to see more info on this beer by selecting numbers from 1 to 7 or back to see list of all beers

  ```
  numbers 1 to 7    //=> choose on info about beer we picked on level one
  back              //=> back to level one
  ```

  - we can stay on this level and choose to see more on same beer (numbers 1 to 7) or go back where we can pick to see new beer of exit

- <spam style="color:green">We are leaving</spam> 🥲
  ```
  exit  //=> and our journey comes to an end
  ```
  - List of all your inquiries will be printed.

---

## <spam style="color: orange">Future upgrades</spam>

- [x] Fix `README.md` file for beter uderstanding of our application
- [x] Find and add new `gems` for styling to create beter user experience
- [ ] Create it more user friendly by adding new `helper_methods` that will display commands for navigating through our application
- [ ] Use newly added gems for styling
- [ ] Commands shouldn't be case sensitive

---

## <spam style="color:orange">Contributions</spam>

Pull requests are more then welcome [here](https://github.com/zicna/beer_project). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to folow the [code of conduct](https://github.com/zicna/beer_project/blob/master/CODE_OF_CONDUCT.md). Thank you!!! 🙏🙏🙏

---

## <spam style="color: orange">Bugs 🐛 🐛 🐛</spam>

Let us know if you find any via email <a href="mailto:zivkovicmilan1987@gmail.com">here</a>.

---

## <spam style="color: orange">License</spam>

This application is avaiable as open source under the terms of the [MIT License](LICENSE).

---

<!-- <spam style="color: orange">Hello</spam>
<spam style="color: green">Hello</spam>
<spam style="color: red">Hello</spam>
<spam style="color: yellow">Hello</spam> -->

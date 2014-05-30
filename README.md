# Tree-Wut

##Read-Me
###### Written by Gabe Snyder
###### Originally hosted on Heroku [here](http://tree-wut.herokuapp.com/)

### Overview:

**Tree-Wut** is an application which allows users to visualize the notable trees of the world by map, and through the creation of 'profile'-like pages for trees.

**Anyone** can see tree-profiles created and mapped on this app., but only registered users can create, edit or delete tree profiles.

This app was created as my first project for the Summer 2014 Web Development Immersive course at **General Assembly, Washington DC**. It was developed over a week, with the goal of helping me familairize myself with ruby-on-rails, HTML, CSS, Heroku, Git, and the agile software development process.

### About:

####Homepage Options:
The ***home page*** contains a user *****signup/login/logout*****, a *****map*****, and a *****search feature*****.

####How to Create, Edit, Delete a Tree:
Once a user ***signs-up***/***logs-in***, they will see controls allowing them to ***create a tree*** (from the home page), or ***favorite, edit, or delete*** a tree (from a trees profile page). These controls would otherwise be hidden.

####How the map works:
The map feature uses underscore js and maps code for rendering google maps, by google. This is handled through the ***gmaps4rail gem.***

Lat and Long coordinates are passed into the map through the index method found in the welcome_controller.rb file. This method also controls, for instance, the tree icon used on my map, its size, and the info. displayed if an icon is 'clicked'.

####How 'Search' Works:
Search will search through every trees' database entry :name, and returns every entry with matching characters, irrespective of case.






### Technologies Used:

* Ruby 2.1.1
* Ruby on Rails 4.1.1
* Gmaps4rails gem (https://github.com/apneadiving/Google-Maps-for-Rails)
* PostgreSQL Database
* Authentication & Authorization from scratch using bcrypt gem (http://bcrypt-ruby.rubyforge.org/)
* Testing using using rspec gem (https://github.com/rspec/rspec-rails)
* Capybara gem (https://github.com/jnicklas/capybara)
* Shoulda Matchers gem (https://github.com/thoughtbot/shoulda-matchers)

### "User-Stories" Completed:

* As a user, I should be able to visit a main page, so that I can use the app!
* As a user, i should be able to sign up, or log in, so that certain data is kept secure to users only
* As a user, I should be able to log out, so that my private info is secure.
* User should be able to create and add a new tree, so that other users will be able to appreciate the tree too.
* As I user, I should have a profile page, so that I can see items I have favorited, and add a photo.
* As I user, I should see a map displaying all trees, so that I can choose a tree that is interesting to me.
* As I user, I should be able to do a search for a particular keyword, in order to help me find what i am interested in
* Users should be able to add a url of a trees picture, for the tree profile pages, so that people can see how the tree looks.
* A Full list of user stories can be found by looking at [this Pivotal Tracker Project](https://www.pivotaltracker.com/s/projects/1086790)

### Backlog:
####Future Stories --
* Users should be able to 'favorite trees'.
* Users' favorited trees should be mapped to a private user-map
which appears on a users profile page.

####Desired for the future--
* Validations for user inputs need to be completed
* Ability to allow users to upload images to database
* Ability to allow users to choose/pick a trees location off a map.
* Ability to have the picker-map set a trees Lat & Long. Coords.
* Ability to search for a trees species, location or height.





### ERD (entity–relationship diagram):
![](/Users/gabe/Desktop/midterm_app_erd.jpg?raw=true)

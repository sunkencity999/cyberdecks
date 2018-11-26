# README

#CYBERDECKS#

This web application is a blog with custom-built authorization, created primarily to document and discuss the multi-varied singular computing platforms called Cyberdecks. This project is open-source and fulfills two functions; allowing for users to contribute to the software as a platform as it grows (so they can be part of the website's community in a creative way) and also providing a good example of a Ruby on Rails website, built using Test-Driven Development and hosted in the cloud (in this case Heroku). 


##Technology / Framework##

Cyberdecks is built with Ruby-on-Rails, and hosted on Heroku's cloud computing platform. 

###Ruby Version###

###Rails Version###

###CSS Framework###

Bootstrap v4.1.3

Posts are styled using Markdown, 

##Features##
Cyberdecks is a blogging platform meant to be used by a single individual, but commented and read by many individuals. Roles/Auhorization are setup in such a way that only the site owner, who must set himself as the Admin after signing up via Heroku's Rails Console using the `heroku run rails c` command, can create posts. Signed up users can comment on his posts, and view their comments in their profiles. Users who have not signed up can view posts, but not comment. 

##Installation##
*These installation instructions are for Unix / Linux environments*

Use RVM to install Ruby and the Rails enviornment. 

Sign up for an account with Heroku.

Install the Heroku CLI tools. 

Download/Clone this repository and expand the zip into the directory you wish it to live under. 

Use the `bundle install` command from the root directory to install the Gems from the gemfile to your system. 

Use the `rake db:create` command to create the database from the schema.

Run the tests using the instructions below. 

### Using Cyberdecks as a base for your own blog ###

You are welcome to use this as the base for your own blog; you'll need to rename your root directory and name your repository accordingly. Please credit me in your README.

To create your admin user after pushing the project to Heroku, user the following commands:

`heroku run rails c`
`u = User.first`
`u.role = 1`
`u.save`

Now your first user (which should be You) will be an admin and able to create/edit posts and manage user comments. 


##Test Suites##

Tests are created using the gems Rspec and FactoryBot. Run them from the main directory using the command ' rspec path/to/file.rb ' You will receive an error message if you attempt to run tests from any directory other than the root. 

##Contribute##

Make a pull request and suggest a feature, or a correct a bug! Ideas are always welcome.

##Credits##

Created by Christopher Bradford. Standard MIT license, authorized for public use and redistribution. 

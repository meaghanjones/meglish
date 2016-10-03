#  Meglish
## By Meaghan Jones


### The databased is seeded so the admin user is meaghan.m.jones@gmail.com<br> password: epicodus.

### I incorporated google maps as my API. In order to see the google map while on the local server you can navigate to [the location page](localhost:3000/locations).

Meglish allows a user to organize lessons into courses. A course page lists all of the lessons and each lesson has specific information related to that lesson on its page. At the bottom of each lesson are navigation links to the course index.

Courses and lessons can be deleted or edited and more can be added. The application is intended to help english teachers create lessons for English learners in a well structured way.

## Technologies Used

* Ruby on Rails 5
* Rspec, Capybara
* Database: Postgres, ActiveRecord

## Configuration
------------

1. Install Meglish by cloning the repository.  
```
$ git clone https://github.com/meaghanjones/meglish
```
2. Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```
If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.
3. Navigate to project file
```
$ cd meglish
```
4. Install required gems
```
$ bundle install
```
5. Run Postgres
```
$ postgres
```
6. Migrate database
```
$ rake db:create db:schema:load db:seed
```
7. Start the Rails web server and navigate to `localhost:3000` in a browser:
```
$ rails server
```

### Special set up with Google maps API key

In order to view the map on the locations page of this project you must have a Google API key. In order to get this key navigate to [https://developers.google.com/maps/documentation/javascript/get-api-key](https://developers.google.com/maps/documentation/javascript/get-api-key) and login to your Google account. Follow along with the instructions and push the get a key button and setup a project that can be linked to the API key they give you.
After enabling the API create a .env file in the root of the project directory and save the key following the code below:

MAP_API_KEY=YOUR KEY HERE

License
-------
_This software is licensed under the MIT license._
Copyright (c) 2016 **Meaghan Jones**

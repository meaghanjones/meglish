#  Meglish
## By Meaghan Jones

### _The databased is seeded so the admin user is meaghan.m.jones@gmail.com password: epicodus._
### to do

format flash messages
style google maps

Meglish allows a user to organize lessons into courses. A course page lists all of the lessons and each lesson has specific information related to that lesson on its page. At the bottom of each lesson are navigation links to the course index.

Courses and lessons can be deleted or edited and more can be added. The application is intended to help english teachers create lessons for English learners in a well structured way.

## Technologies Used

* Ruby on Rails 5 <br>
* Rspec, Capybara<br>
* Database: Postgres, ActiveRecord

Configuration
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

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Meaghan Jones**

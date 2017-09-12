**TO DO**
[ ] create migrations
[ ] create seed data
[ ] run migrations
[ ] seed database
[ ] set up models (including relationships and validations)
[ ] set up controllers
[ ] set up basic views
[ ] set up routes
[ ] check if routes work
[ ] elaborate on views to add forms, etc
[ ] test out basic UX
[ ] add user auth (including basic signup/login/logout functionality)
[ ] style views 

**Basic Outline of App**

+ A user can create a new beer
+ A user can create a new brewery through a beer
+ A user can view, edit and delete a beer from their list
+ When a user adds a new beer to their list they can also choose from the beers in db
+ A user cannot delete a beer or brewery from the database
+ A logged in user can view a list of all the beers in the database
+ A logged in user can view all of the breweries in the database
+ A logged in user can view info on a single beer
+ A logged in user can view a single brewery and the beers that are associated with it

**Model Relationships**

+ A brewery has_many beers
+ A beer belongs_to a brewery
+ A user has_many user_beers
+ A user has_many beers, through: :user_beers

**Database Schema**

*Brewery*
brewery_id INT (PK)
name STRING (required)
Location STRING

*User_Beers*
user_beers_id INT (PK)
user_id INT (FK)
beer_id INT (FK)

*Beers*
beer_id INT (PK)
brewery_id INT (FK)
name STRING (required)
type STRING

*Users*
user_id INT (PK)
username STRING (required)
password_digest STRING (required)
email STRING (required)

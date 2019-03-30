Food Recipes
=============

About
---------

This web application was developed using Ruby on Rails Framework.
It uses a SQL database to store records such as users and recipes.

Users can:

- Sign-up and create their own profile
- Login using their credentials
- Create their own food recipes
- View all recipes posted on the website by other users
- View a specific recipe
- Rate other recipes (*Vote up* or *Vote Down*)

Prerequisites
---------

- **WAMP Server** (http://www.wampserver.com)
- **Rails** (http://railsinstaller.org)

Installation
------------

**1) Install dependencies via command line, inside the project directory**

	`bundle install`

**2) Uninstall all bycrypt versions (if you installed them previously)

	`gem uninstall bcrypt`

**3) Install bcrypt for Ruby**

	`gem install bcrypt --platform=ruby`

**4) Open the SQL console and create a database. Name it:** `yummy_development`

**5) Open a new command line inside the `bin\` directory and type:**

	`rails db:migrate RAILS_ENV=development`

**6) Return to the fist command line and launch the server:**

	`rails server`

**7) Open http://localhost:3000/signup and create a new profile**
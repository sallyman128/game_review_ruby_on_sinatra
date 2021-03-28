# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
      Created user, game, and review models that each pull from ActiveRecord::Base.
- [x] Include more than one model class (e.g. User, Post, Category)
      Three model classes: User, Game, and Review
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
      Both User and Game have many Reviews
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
      A Review belongs to a User and belongs to a Game
- [x] Include user accounts with unique login attribute (username or email)
      Users login with their email address. Duplicated email addresses will not persist to the db.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
      The Review model is able to achieve each of the CRUD.
- [x] Ensure that users can't modify content created by other users
      Only the user that created a review can edit/delete it.
- [x] Include user input validations
      A blank review cannot be persisted to the db. There must be some content for it to be persisted.
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message

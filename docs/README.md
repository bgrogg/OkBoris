# OkBoris

* [Heroku Link](https://okboris.herokuapp.com)

* [Trello Link](https://trello.com/b/QA5qQIKP/okboris)

## Minimum Viable Product

OkBoris is a web application inspired by OkCupid built using Ruby on Rails and React/Redux. By the end of Week 9, this app will, at a minimum, satisfy the following criteria with smooth, bug-free navigation, adequate seed data and sufficient CSS styling:

- [] Hosting on Heroku
- [] New account creation, login, and guest/demo login
- [] A production README
- [] Browse and search other users by location and 'looking for'
- [] Messaging
- [] Personality questions
- [] Match percentages based on question answers

## Design Docs

* [View Wireframes](LINK)
* [React Components](LINK)
* [API endpoints](LINK)
* [DB Schema](LINK)
* [Sample State](LINK)

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (2 days)

Objective: Functioning rails project with front-end Authentication

- [x] create new rails project
- [x] setup backend authentication
- [x] set up a StaticPages controller with a root view
- [x] set up webpack and flux scaffold with skeleton files
- [] create basic User model
- [] set up APIUtil to interact with the API
- [] set up flux cycle for frontend auth
- [] user signup/signin components
- [] guest demo/login
- [] style signin/signup components
- [] seed database with users

### Phase 2: User Model, API, and Components (2 days)

Objective: Users can be created, read, edited and destroyed through the API.

- [] flesh out User model
- [] seed database with sufficient user samples for site to feel 'live'
- [] CRUD API for users(UsersController)
- [] create views for users using Jbuilder
- [] Test User API in the Dev Tools console using $.ajax calls
- [] create pieces necessary to display a basic index of Users
- [] build out user components as needed
- [] style users components

### Phase 3: Search by Location and 'looking for' (1 day)

Objective: Users can search for other users using filtered parameters

- [] create and style search bar
- [] search result should render a filtered index page

### Phase 4: Questions (2 days)

Objective: Users can answer questions to match them with similar-minded users

- [] create Question model and all necessary associations
- [] seed Questions database
- [] users should be able to see questions and select answers
- [] users should be able to see their previous answers
- [] users should be able to see match percentages for each other user
- [] style CSS

### Phase 5: Messages (2 days)

Objective: Messages belong to users, and can be viewed by recipient and sender

- [] create Message model and all necessary associations
- [] CRUD API for Messages
- [] users can send messages to other users
- [] users can view messages sent to them by other users
- [] style CSS
- [] seed messages

### Phase 5: Touchups and Bonus Features (1 day)
- [] meets all minimum requirements
- [] UX/UI considerations
- [] CSS styling
- [] refactor code where needed and remove all dead code
- [] add any bonus Features

### Bonus Features(TBD)
- [] Likes
- [] Quickmatch
- [] Block users

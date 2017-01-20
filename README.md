# OkDunderMifflin

[OkDunderMifflin](https://okboris.herokuapp.com) is a web application inspired by OkCupid and built using Ruby on Rails and React/Redux. It is designed as a dating site for the characters from the fictional tv show, The Office.

OkDunderMifflin is a personal project by Boris Grogg.

![Home Page](/docs/images/HomePage.png)

## Features

* Sign up with secure authentication
* Create an account, fill out a profile and answer questions
* Browse the profiles of other users and see how they answered questions
* Search for other users by gender, orientation, and proximity
* Answer more questions to improve your match ratings
* Message other users (coming soon!)

![Browse Users](/docs/images/BrowsePage.png)

## Project Design

OkDunderMifflin was designed and built in 10 days.

A [proposal](/Users/borisgrogg/desktop/okboris/docs/README.md) was drafted to help provide an implementation timeline during the development process.

A [database schema](/Users/borisgrogg/desktop/okboris/docs/schema.md) was prepared alongside the design proposal.

## Technology

OkDunderMifflin is a single-page application built on Rails and React.js, with many dependencies in both the backend and the frontend.

### Backend

OkDunderMifflin runs on Ruby on Rails and is hosted on Heroku. The sole purpose of the backend is to provide RESTful APIs and respond with JSON data.

For a database server, PostgreSQL RDBMS is a must for Heroku.

Other notable dependencies include:

* Cloudinary for image attachment, processing and storing.
* BCrypt for password-salting and hashing for a secure authentication system

### Frontend

As a single-page application, OkDunderMifflin utilizes the React.js framework and follows the Flux architecture to deliver the frontend.

#### npm

Node package manager (npm) is used to install all of the frontend dependencies.

A post-install script is configured so that webpack bundles all of the frontend files after the deployment to Heroku is complete.


#### Webpack

Webpack conveniently bundles all of the frontend components and Flux parts. The bundled file is located in /app/assets/javascripts and included in the main application.js file.

#### React and Flux

All of the React components, Flux action creators, API utilities, dispatcher, and stores are located in the [frontend](/Users/borisgrogg/desktop/okboris/frontend) directory.

#### jQuery

jQuery is only used to make AJAX requests with the Rails server.

#### Others

Other frontend dependencies are:

* React DOM
* React Router
* React History to manipulating the browser history
* React Modal

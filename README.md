# README

## System

* Ruby version : 2.3.5

* Rails: 6.0.3 

* Database creation
 `Run:
 rails db:create db:migrate db:seed`

* How to run the test suite
`Run:
rspec spec/models/hive_spec.rb`

## Description

This Api works with a [front app develop on vue.js](https://github.com/LauryLct/my-front-hives).

With this API, you can list your hives, add one, and see the details on a particular hive.

The api send a json request and front app grabs the informations to display it.
The hive have a name and a weigth. The name need to have minimum 6 character, and this limit are fixed directertly in the hive's model with a validate condition.

For the front app, we started to create 2 routes, the home attached to Home componenent and a particular road allowing to see the detail of the hive.

The home list all your hives, and contains a form allowing to add a new hive.

We used Axios to help grab information from our API.

## Other informations

This app was developp in 3 hours and 30 minutes, and It was my first app in vue.js.

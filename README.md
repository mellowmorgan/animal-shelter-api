# Animal Shelter Rails API

#### _Rails API independent project_

#### Created By: Morgan Waites

## Technologies Used

* _Ruby_
* _Gems_
* _Bundler_
* _RSpec_
* _IRB_
* _Pry_
* _Postgres_
* _SQL_
* _Rails_
* _ActiveRecord_
* _Faker_
* _Factory Bot_
* _will_paginate_
* _HTTParty_
* _open-uri_
* _shoulda-matchers_
* _Postman_

## Description

This API uses a database with tables for cats and dogs and retrieves the data using endpoints. It has full CRUD functionality. All users can post, update, delete, and retrieve the endpoints of the API.

## System Requirements

* Ruby v2.6.5 recommended
* Postgres 12.9  
* Postman (for testing API endpoints)
_(Note: Ruby gem dependencies will be installed automatically by Bundler.)_

## Setup/Installation Requirements

* Clone the GitHub repository: https://github.com/mellowmorgan/animal-shelter-api.git 
* From the main project directory, enter `bundle install` in the terminal to populate gems.
* To create a database, type in your terminal: 
      `rake db:setup`
* Enter `rspec` into the terminal to confirm passing of all tests.
* Run `rails s` to start the Rails server.
* In Postman (for full CRUD use) or internet browser (for viewing), enter localhost:3000/cats (unless other port specified) or localhost:3000/dogs to see all the animals!

## Endpoints Cats

|Usage | METHOD       | URL       | Params |
| :--------|:------------| :---------| :------|
|See all cats (paginated) | GET    | `localhost:3000/api/vi/cats?page=PAGE_NUMBER` | _page_ |
|See all cats (auto-paginated) | GET    | `localhost:3000/api/vi/cats` | |
|See a specific cat | GET    | `localhost:3000/api/vi/cats/:id` | |
|Search for cat by breed | GET    | `localhost:3000/api/vi/cats?breed=BREED&page=1` | _breed, page_ |
|See a random cat | GET    | `localhost:3000/api/vi/cats/random` | |
|Add/create a cat | POST    | `localhost:3000/api/vi/cats` | _name, breed, age, image_url_ |
|Update a cat | PUT    | `localhost:3000/api/vi/cats/:id?name=NAME&breed=BREED&age=AGE&image_url=IMAGE_URL` | _name, breed, age, image_url_ |
|Delete a cat | DELETE    |`localhost:3000/api/vi/cats/:id`| |  

## Endpoints Dogs

|Usage | METHOD       | URL       | Params |
| :--------|:------------| :---------| :------|
|See all dogs (paginated) | GET    | `localhost:3000/api/vi/dogs?page=PAGE_NUMBER` | _page_ |
|See all dogs (auto-paginated) | GET    | `localhost:3000/api/vi/dogs` | |
|See a specific dog | GET    | `localhost:3000/api/vi/dogs/:id` | |
|Search for dog by breed | GET    | `localhost:3000/api/vi/dogs?breed=BREED&page=1` | _breed, page_ |
|See a random dog | GET    | `localhost:3000/api/vi/dogs/random` | |
|Add/create a dog | POST    | `localhost:3000/api/vi/dogs` | _name, breed, age, image_url_ |
|Update a dog | PUT    | `localhost:3000/api/vi/dogs/:id?name=NAME&breed=BREED&age=AGE&image_url=IMAGE_URL` | _name, breed, age, image_url_ |
|Delete a dog | DELETE    |`localhost:3000/api/vi/dogs/:id`| | 


## Responses

When getting a single cat or dog, expect the response to look like:

```
{
  "id" : integer,
  "name" : string,
  "breed" : string,
  "age" : integer,
  "image_url" : string
}
```

## Status Codes

| Status Code | Description |
| :--- | :--- |
| 200 | `OK` |
| 201 | `CREATED` |
| 400 | `BAD REQUEST` |
| 404 | `NOT FOUND` |
| 500 | `INTERNAL SERVER ERROR` |

## Known Bugs

* _None at this time._

## License

_[MIT](https://opensource.org/licenses/MIT)_
Copyright (c) 2022 Morgan Waites
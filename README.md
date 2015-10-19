Simple Rails API
================

## Overview
This project is meant to provide a simple API with which to interact while learning/developing decoupled frontend apps using JS frameworks such as Angular, Backbone, React, etc.

## API "Versions"
The project is namespaced in order to provide multiple APIs as different "versions". Currently there is only one "version" setup: v1.

### v1: Names!
This version has the following resource(s):
* /v1/names
  * properties:

    ```json
    {
      "id": INT,
      "name": STRING,
      "created_at": TIMESTAMP,
      "updated_at": TIMESTAMP
    }
    ```
  * actions:
    * GET /v1/names
      * returns an array of Name objects from the database
    * POST /v1/names (with parameters { name: STRING })
      * adds new name to database
      * attempt to add a name that already exists results in a 409 response
    * DELETE /v1/names/:id
      * deletes name at id :id from the database
      * omission of :id results in a 400 response
      * request to delete a non-existant record results in a 404 response

## Usage
1. `git clone https://github.com/scottyschup/simple_rails_api.git`
1. `bundle install`
1. `rake db:setup`
1. `rails s` (This project defaults to port 8080. Use `rails s --port XXXX` to specify a custom port.)

To test, use cURL or your favorite REST client (Atom REST client, Chrome Postman, etc.) to send HTTP requests to http://127.0.0.1:8080/:version/:resources[/:id].
E.g.: `curl -X POST -H "Content-Type: application/json" -d '{ "name": { "name":"Test Monkey" } }' http://127.0.0.1:8080/v1/names`

## Example(s)
`curl http://127.0.0.1:8080/v1/names`

returns

```json
[
  {"id":1,"name":"Scott","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":2,"name":"Conan","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":3,"name":"Chris Kringle","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":4,"name":"Sterling Archer","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":5,"name":"Malcolm Reynolds","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":6,"name":"Oswald Cobblepot","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":7,"name":"Benedict Cumberbatch","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":8,"name":"Englebert Humperdinck","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},
  {"id":9,"name":"Albus Percival Wulfric Brian Dumbledore","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"}
]
```

Simple Rails API for a sample Angular App
=========================================

## Overview

This project is namespaced to provide multiple APIs as different versions. Currently there is only one "version" setup:
* v1: This project has the following resource(s):

  * names
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
      * GET /names - returns an array of Name objects from the database
      * POST /names (with parameters { name: STRING }) - adds new name to database
      * DELETE /names/:id - deletes name at id :id from the database

## Usage
Clone or fork this repo, setup MySQL database (rake db:setup), and use the builtin `rails s` to setup on localhost. This project defaults to port 8080. Use `--port XXXX` to specify a custom port.

To test, use your favorite REST client (Atom REST client, Chrome Postman, etc.) to send HTTP requests to http://127.0.0.1:8080/:version/:resources[/:id].

### Example(s)
`GET http://127.0.0.1:8080/v1/names`

returns

```json
[{"id":1,"name":"Scott","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":2,"name":"Conan","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":3,"name":"Chris Kringle","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":4,"name":"Sterling Archer","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":5,"name":"Malcolm Reynolds","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":6,"name":"Oswald Cobblepot","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":7,"name":"Benedict Cumberbatch","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":8,"name":"Englebert Humperdinck","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"},{"id":9,"name":"Albus Percival Wulfric Brian Dumbledore","created_at":"2015-10-19T21:51:44.000Z","updated_at":"2015-10-19T21:51:44.000Z"}]
```

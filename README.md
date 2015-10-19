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
Clone or fork this repo, setup MySQL database (rake db:setup), and use the builtin Webrick server to host locally (rails s). This project defaults to port 8080. User `--port XXXX` to specify a custom port. To test, use your favorite REST client (Atom REST client, Chrome Postman, etc.) to send HTTP requests to http://127.0.0.1:8080/:version/:resources[/:id].

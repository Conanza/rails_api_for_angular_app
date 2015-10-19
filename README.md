Simple Rails API for a sample Angular App
=========================================

This project is namespaced to provide multiple APIs as different versions. Currently there is only one setup:
* v1
This project has the following resource(s):

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

Simple Rails API for a sample Angular App
=========================================

This project has the following resources:

* names
  * properties:

```json
{
  "id": INT,
  "name": STRING
}
```

  * actions:
    * GET /names - returns an array of Name objects from the database
    * POST /names (with parameters { name: STRING }) - adds new name to database
    * DELETE /names/:id - deletes name at id :id from the database

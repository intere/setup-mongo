setup-mongo Cookbook
====================
Cookbook that's used to load the database into Mongo for me.


Requirements
------------
This recipe requires 2 command line 
 1. tar
 2. mongorestore

Attributes
----------
TBD...

Usage
-----
#### setup-mongo::default
Just include `setup-mongo` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[setup-mongo]"
  ]
}
```


License and Authors
-------------------
TODO: List authors

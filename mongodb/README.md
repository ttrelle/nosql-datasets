# MongoDB Datasets

[MongoDB](http://www.mongodb.org/) is a document-orientated database. It basically uses query by example, so queries are written as documents.

## Points of Interest
This dataset is rather small but demonstrates how to use geo location indexes and full text search.

- pois.js: Shell script to drop data and create indexes
- pois.bson: BSON dump

To set up this example run these commands (in that order!) against a running _mongod_ on localhost:

    $ mongo pois.js
    $ mongorestore pois.bson
	
It will create the database _test.pois_.


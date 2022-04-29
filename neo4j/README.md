# Neo4j Datasets

[Neo4j](http://neo4j.com/) is a graph database. It uses a query language called _Cypher_.

## NoSQL Graph
A small graph showing the main hierachy of NoSQL datastores.

- nosql_dll.cql: Cypher script to create the graph
- nosql.cql: some queries
- nosql.grass: Stylesheets for the graph

## Star Wars Jedi / Sith Geanealogy
This graph shows the relationships between the Jedi and Sith from the Star Wars movies.

<img src="https://cdn.rawgit.com/ttrelle/nosql-datasets/master/neo4j/sw_force.svg">

- sw_force_dll.cql: Cypher script to create the graph
- sw_force.cql: some interesting queries
- sw_force.grass: Stylesheets for the graph

## Setup

For a fast setup you can use your local Neo4j installation or simply use the provider Docker compose file:

```
docker-compose up
```

It will start and set up Neo4j with user/password = `neo4/secret`.

As soon as the container is running, you can import the data by executing this command:

```
docker exec -t neo4j /var/lib/neo4j/bin/cypher-shell -u neo4j -p secret -f /import/sw_force_ddl.cql
```



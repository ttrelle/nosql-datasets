// find multi model databases
MATCH (multimodel)-[r:IS_A]->()
WITH multimodel, count(r) as c
WHERE c > 1
RETURN multimodel.name

// graph databases
MATCH (g:Graph)
RETURN g

// graph or key/value
MATCH (n)
WHERE n:Graph or n:KeyValue
RETURN n
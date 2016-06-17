// Jedi training
MATCH p=(master :Jedi)-[:TRAINS]->(padawan :Jedi) RETURN p

// Sith training
MATCH p=(master :Sith)-[:TRAINS]->(apprentice :Sith) RETURN p

// Drama
MATCH p=(killer)-[:KILLS]->(victim) RETURN p

// Most important Sith 
MATCH (s :Sith)-[r]-()
WITH s, count(r) as n
WHERE n > 2
RETURN s
ORDER BY n DESC
LIMIT 3

// Most evil Sith
MATCH (s :Sith)-[r:KILLS]->(victim)
WITH s, count(r) as bodycount, collect(victim.name) as victims
RETURN s.sith_name, bodycount, victims
ORDER BY bodycount DESC
LIMIT 3

// siblings
MATCH (s1)<-[:FATHER_OF]-()-[:FATHER_OF]->(s2)
RETURN s1, s2

// couples
MATCH (mother)-[:MOTHER_OF]->(child)<-[:FATHER_OF]-(father)
RETURN mother, father

// grandpa
MATCH (grandpa)-[:FATHER_OF]->(father)-[:FATHER_OF]->(grandson)
RETURN grandpa
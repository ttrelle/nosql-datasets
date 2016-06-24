CREATE
// Jedi ...
(yoda :Jedi :UnknownSpecies {name:"Yoda"}),
(dooku :Jedi :Sith :Human {name: "Count Dooku", sith_name: "Darth Tyranus"}),
(qui_gon :Jedi :Human {name: "Qui-Gon Jinn"}),
(obi_wan :Jedi :Human {name: "Obi Wan Kenobi"}),
(anakin :Jedi :Sith :Human {name: "Anakin Skywalker", sith_name: "Darth Vader"}),
(luke :Jedi :Human {name:"Luke Skywalker"}),
(rey :Human {name: "Rey"}),

// Sith ...
(darth_plagueis :Sith :Muun {name:"Hego Damask", sith_name: "Darth Plagueis"}),
(emperor :Sith :Human {name: "Sheev Palpatine", sith_name:"Darth Sidious", titles: ["Cancellor", "Emperor"]}),
(maul :Sith :Zabrak {sith_name: "Darth Maul"}),
(kylo :Sith :Human {name: "Ben Solo", sith_name: "Kylo Ren"}),	
(snoke :Sith {sith_name: "Grand- Master Snoke"}),
//(jek14 :Sith :Clone {name: "Jek-14"}),

// Other ...
(padme :Human {name: "Padme Naberrie"}),
(leia :Human {name: "Leia Organa"}),
(han :Human {name: "Han Solo"}),

// Master relationships
(darth_plagueis)-[:TRAINS]->(emperor),
(yoda)-[:TRAINS]->(dooku),
(yoda)-[:TRAINS]->(luke),
(emperor)-[:TRAINS]->(dooku),
(emperor)-[:TRAINS]->(anakin),
(emperor)-[:TRAINS]->(maul),
(dooku)-[:TRAINS]->(qui_gon),
//(dooku)-[:TRAINS]->(jek14),
(qui_gon)-[:TRAINS]->(obi_wan),
(obi_wan)-[:TRAINS]->(luke),
(obi_wan)-[:TRAINS]->(anakin),
(luke)-[:TRAINS]->(kylo),
(snoke)-[:TRAINS]->(kylo),

// well, shit happens ...
(maul)-[:KILLS]->(qui_gon),
(anakin)-[:KILLS]->(dooku),
(anakin)-[:KILLS]->(obi_wan),
(anakin)-[:KILLS]->(emperor),
(emperor)-[:KILLS]->(anakin),
(obi_wan)-[:KILLS]->(maul),

// Family relationships
(padme)-[:LOVES]->(anakin),
(anakin)-[:FATHER_OF]->(luke),
(padme)-[:MOTHER_OF]->(luke),
(anakin)-[:FATHER_OF]->(leia),
(padme)-[:MOTHER_OF]->(leia),
(leia)-[:LOVES]->(han),
(leia)-[:MOTHER_OF]->(kylo),
(han)-[:FATHER_OF]->(kylo),
(luke)-[:FATHER_OF {possibility: .5}]->(rey)
//,(dooku)-[:CLONES]->(jek14)
;


// http://www.chartgeek.com/star-wars-family-tree/
CREATE
(yoda :Jedi :UnknownSpecies {name:"Yoda"}),
(dooku :Jedi :Sith :Human {name: "Count Dooku", sith_name: "Darth Tyranus"}),
(qui_gon :Jedi :Human {name: "Qui-Gon Jinn"}),
(obi_wan :Jedi :Human {name: "Obi Wan Kenobi"}),
(luke :Jedi :Human {name:"Luke Skywalker"}),
(anakin :Jedi :Sith :Human {name: "Anakin Skywalker", sith_name: "Darth Vader"}),

(darth_plagueis :Sith :Muun {name:"Hego Damask", sith_name: "Darth Plagueis"}),
(emperor :Sith :Human {name: "Sheev Palpatine", sith_name:"Darth Sidious", titles: ["Cancellor", "Emperor"]}),
(maul :Sith :Zabrak {sith_name: "Darth Maul"}),
(kylo :Sith :Human {name: "Kylo Ren"}),

(darth_plagueis)-[:TRAINS]->(emperor),
(yoda)-[:TRAINS]->(dooku),
(yoda)-[:TRAINS]->(luke),
(emperor)-[:TRAINS]->(dooku),
(emperor)-[:TRAINS]->(anakin),
(emperor)-[:TRAINS]->(maul),
(dooku)-[:TRAINS]->(qui_gon),
(qui_gon)-[:TRAINS]->(obi_wan),
(obi_wan)-[:TRAINS]->(luke),
(obi_wan)-[:TRAINS]->(anakin),

(maul)-[:KILLS]->(qui_gon),
(anakin)-[:KILLS]->(dooku),
(anakin)-[:KILLS]->(obi_wan),
(luke)-[:KILLS]->(emperor),

(anakin)-[:FATHER_OF]->(luke),
;


var analyse_schema = function(collName) {
	
	var map = function() { 
	
		var mapRec = function(path, field, emitter) {
			if (typeof field == "object") {
				Object.keys(field).forEach(function(key,index) {
					mapRec(path ? path + "." + key : key, field[key], emitter); 
				} );
			} else {
				emitter(path, 1);
			}
		};
		
		mapRec(null, this, emit); 
	};
	var reduce = function(key, values) { return Array.sum(values); };
	
	var result = db[collName].mapReduce(map, reduce, {out: collName + "_analysis"});
	print(tojson(result));
};
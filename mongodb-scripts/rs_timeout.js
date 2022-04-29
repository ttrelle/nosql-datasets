var BULKSIZE = 10000;

var createBulk = function() {
  var ops = [];
  for (i=0; i < BULKSIZE;i++) {
    ops.push(
      {"insertOne": {"document": {"i": i, "t": new ISODate()}}}
    );
  }

  return ops;
};

var force_rs_timeout = function() {
  var c = db.foo;

  // remove takes more time than drop
  c.remove({});

  // prepare bulk
  var bulk = createBulk();

  try {
    var br = c.bulkWrite(
      bulk,
      {
        "ordered": true,
        "writeConcern": {"w": "majority", "wtimeout": 500, "j":true}
      }
    );
    print(tojson(br));
  } catch(e) {
    print(tojson(e));
  }

};

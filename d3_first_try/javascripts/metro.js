var body = d3.select("body");

var json = d3.json("http://api.metro.net/agencies/lametro/routes/",
  function(error, json) {
    if (error) return console.warn(error);

    //json is the returned data
  });

console.log(json); 
// var SVG_WIDTH = 600;
// var SVG_HEIGHT = 400;
// var dataset = [8, 48, 14, 31, 23, 95];

// svg = d3.select("body")
//   .append("svg")
//   .attr({
//     width: SVG_WIDTH + 'px',
//     height: SVG_HEIGHT + 'px'
//   });

// svg.selectAll("rect")
//   .data(dataset)
//   .enter()
//   .append("rect")
//   .attr({
//     x: function(d, i) {
//       return i * 101;
//     },
//     y: function(d, i) {
//       return 400 - (d * 5);
//     },
//     width: 100,
//     height: function(d) {
//       return d * 5;
//     },
//     fill: "green"
//   });
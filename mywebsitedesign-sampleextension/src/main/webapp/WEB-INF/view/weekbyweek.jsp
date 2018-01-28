<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">

<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script src="https://d3js.org/d3.v4.min.js"></script>
</head>

<body onload="myfunction();">


<!--  <div class="container">
<table class="table table-striped table-bordered">
	<thead>
		<tr> 
			<td> TIME(In Minutes) </td>
			<td> CALORIES </td>
		</tr>
	</thead>
	
	<tbody>
	
		<c:forEach var="tempCustomer" items="${myresult}">
				<tr>
			      <td>${tempCustomer.time}</td>
			      <td>${tempCustomer.caloriesSpent}</td>
			    </tr>
   		</c:forEach>
	</tbody>
</table>
</div>
-->
<style>

.bar {
  fill: steelblue;
}

.bar:hover {
  fill: brown;
}

.axis--x path {
  display: none;
}


.toolTip {
  position: absolute;
  display: none;
  min-width: 80px;
  height: auto;
  background: none repeat scroll 0 0 #ffffff;
  border: 1px solid #6F257F;
  padding: 14px;
  text-align: center;
}



</style>
<svg width="960" height="500"></svg>
<script type="text/javascript">
	
	function myfunction()
	{

	
		var data=[]; 
		
		<c:forEach var="tempCustomer" items="${weekydata}">
			var obj = {};
			var timeval = '${tempCustomer.totalTime}';
			var dateval = '${tempCustomer.date}';
			var calval = '${tempCustomer.sumOfCalories}';
			var listval = '${tempCustomer.workoutList}';
			obj.time=timeval;
			obj.date=dateval;
			obj.calories=calval;
			obj.workoutlist = listval; 
			data.push(obj);
		</c:forEach>	
		
		
		var svg = d3.select("svg"),
    margin = {top: 20, right: 20, bottom: 70, left: 40},
    width = +svg.attr("width") - margin.left - margin.right,
    height = +svg.attr("height") - margin.top - margin.bottom;

var x = d3.scaleBand().rangeRound([0, width]).padding(0.4),
    y = d3.scaleLinear().rangeRound([height, 0]);

var g = svg.append("g")
    .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
    
x.domain(data.map(function(d) { return d.date; }));
y.domain([0, d3.max(data, function(d) { return +d.calories; })]);

g.append("g")
    .attr("class", "axis axis--x")
    .attr("transform", "translate(0," + height + ")")
    .call(d3.axisBottom(x))
  .selectAll("text")	
        .style("text-anchor", "end")
        .attr("dx", "-.8em")
        .attr("dy", ".15em")
        .attr("transform", "rotate(-65)");


g.append("g")
    .attr("class", "axis axis--y")
    .call(d3.axisLeft(y).ticks(10))
  .append("text")
    .attr("transform", "rotate(-90)")
    .attr("y", 6)
    .attr("dy", "0.71em")
    .attr("text-anchor", "end")
    .text("Frequency");

g.selectAll(".bar")
  .data(data)
  .enter().append("rect")
    .attr("class", "bar")
    .attr("x", function(d) { return x(d.date); })
    .attr("y", function(d) { return y(d.calories);})
    .attr("width", x.bandwidth())
    .attr("height", function(d) { return height - y(d.calories); })
    
    .on("mousemove", function(d){
        tooltip
          .style("left", d3.event.pageX - 50 + "px")
          .style("top", d3.event.pageY - 70 + "px")
          .style("display", "inline-block")
          .html((d.area) + "<br>" + (d.calories));
    })
		.on("mouseout", function(d){ tooltip.style("display", "none");});
			
		
	}
	
</script>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
 </body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
  var chaineSolvabilite=${solvabilite};
  var chaineAnnee=${annee};
  var chaineAutonomie=${autonomie};
  var autonomiedecisionnelle = {
                
                chart: {
                    renderTo: 'container-chart2',
                    type: 'column'
                },
                title: {
                    text: 'Autonomie Décisionnelle pour les derniéres années'
                },
                plotOptions : {
                	column :{
                		depth : 25
                	}
                },
                xAxis: {
                    categories: chaineAnnee
                },
                yAxis: {
                    title: {
                        text: null
                    }
                },
                series: [{
                    name: 'Autonomie Decisionnelle',
                    data: chaineAutonomie
                }]
            };
    

  var solvabilite = {
                
                chart: {
                    renderTo: 'container-chart1',
                    type: 'column'
                },
                title: {
                    text: 'La Solvabilité pour les derniéres années'
                },
                plotOptions : {
                	column :{
                		depth : 25
                	}
                },
                xAxis: {
                    categories: chaineAnnee
                },
                yAxis: {
                    title: {
                        text: null
                    }
                },
                series: [{
                    name: 'Solvabilité',
                    data: chaineSolvabilite
                }]
            };
    
  $(document).ready(function(){
                var chart = new Highcharts.Chart(solvabilite);
                var chart2 = new Highcharts.Chart(autonomiedecisionnelle); 
            });
		</script>
</head>
<body>
	<div id="container-chart1"
		style="height: 400px; margin: auto; min-width: 310px; max-width: 600px"
		class="row col-lg-6"></div>
	<div id="container-chart2"
		style="height: 400px; margin: auto; min-width: 310px; max-width: 600px"
		class="row col-lg-6"></div>

</body>
</html>
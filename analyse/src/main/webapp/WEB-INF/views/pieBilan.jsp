<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<script>

var chaineActifCourant=${sac};
var chainePassifCourant=${spc};


var ACPC = {
                
                chart: {
                    renderTo: 'container-chart5',
                    type: 'pie'
                },
                title: {
                    text: 'Actif courant et Passif courant pour cette année'
                },
                plotOptions : {
                	column :{
                		depth : 25
                	}
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        depth: 35,
                        dataLabels: {
                            enabled: true,
                            format: '{point.name}'
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'valeur ',
                    data: [
                        chaineActifCourant,
                        chainePassifCourant,
                      
                    ]
                }]
            };
var bilan = {
                
                chart: {
                    renderTo: 'container-chart4',
                    type: 'pie'
                },
                title: {
                    text: 'Notre bilan pour cette année'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        depth: 35,
                        dataLabels: {
                            enabled: true,
                            format: '{point.name}'
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'valeur ',
                    data: [
        				['Actif courant', 30],
        				['Passif courant', 20],
                        ['Actif non courant', 20],
                        ['Passif non courant', 30],
                      
                    ]
                }]
                
            };
    

 $(document).ready(function(){
                 
                var chart4 = new Highcharts.Chart(bilan); 
                var chart5 = new Highcharts.Chart(ACPC);

            });
            
		</script>
  
</head>


		
<body>

<div id="container-chart4" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart5" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<script type="text/javascript">
var ACPC = {
                
                chart: {
                    renderTo: 'container-chart4',
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
                        ['Actif courant', 70],
                        ['Passif courant', 30],
                      
                    ]
                }]
            };
var bilan = {
                
                chart: {
                    renderTo: 'container-chart3',
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
    
var FR = {
                
                chart: {
                    renderTo: 'container-chart2',
                    type: 'column'
                },
                title: {
                    text: 'Fond de roulement pour les derniéres années'
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
                    name: 'Fond de Roulement',
                    data: [0.1,0.2, 0.5,0.7,0.9]
                }]
            };
    

var BFR = {
                
                chart: {
                    renderTo: 'container-chart1',
                    type: 'column'
                },
                title: {
                    text: 'Besoin en Fond de roulement pour les derniéres années'
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
                    name: 'Besoin en Fond de Roulement',
                    data: [0.1,0.2, 0.5,0.7,0.9]
                }]
            };
    
 $(document).ready(function(){
                var chart = new Highcharts.Chart(BFR);
                var chart2 = new Highcharts.Chart(FR); 
                var chart3 = new Highcharts.Chart(bilan); 
                var chart4 = new Highcharts.Chart(ACPC); 
            });
            
		</script>
  
</head>


		
<body>

<div id="container-chart1"  style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart2" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart3" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart4" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>


</body>
</html>
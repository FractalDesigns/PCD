<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<script>




var compositionActifCourant=eval("compositionActifCourant");
var compositionActifNonCourant=eval("compositionActifNonCourant");
var compositionPassifCourant=eval("compositionPassifCourant");
var compositionPassifNonCourant=eval("compositionPassifNonCourant");


var actifCourant = {
        
        chart: {
            renderTo: 'container-chart1',
            type: 'pie'
        },
        title: {
            text: 'Composition des actifs courants pour cette annee'
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
            data: compositionActifCourant
        }]
    };
var actifNonCourant = {
        
        chart: {
            renderTo: 'container-chart2',
            type: 'pie'
        },
        title: {
            text: 'Composition des actifs non courants pour cette annee'
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
            data: compositionActifNonCourant
        }]
    };
var passifCourant = {
        
        chart: {
            renderTo: 'container-chart3',
            type: 'pie'
        },
        title: {
            text: 'Composition des passifs courants pour cette annee'
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
            data: compositionPassifCourant
        }]
    };
var passifNonCourant = {
        
        chart: {
            renderTo: 'container-chart4',
            type: 'pie'
        },
        title: {
            text: 'Composition des passifs non courants pour cette annee'
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
            data: compositionPassifNonCourant
        }]
    };


 $(document).ready(function(){
                 
                var chart1 = new Highcharts.Chart(actifCourant); 
                var chart2 = new Highcharts.Chart(actifNonCourant); 
                var chart3 = new Highcharts.Chart(passifCourant); 
                var chart4 = new Highcharts.Chart(passifNonCourant);

            });
            
		</script>
  
</head>


		
<body>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<div id="container-chart1" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart2" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart3" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart4" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>


</body>
</html>
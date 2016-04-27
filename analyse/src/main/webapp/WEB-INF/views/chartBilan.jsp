<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<script>

var chaineFR=${fondroulement};
var chaineBFR=${bfr};
var chaineTN=${tn};


var FR = {
                
                chart: {
                    renderTo: 'container-chart1',
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
                    data: chaineFR
                }]
            };
    

var BFR = {
                
                chart: {
                    renderTo: 'container-chart2',
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
                    data: chaineBFR
                }]
            };
var TN = {
        
        chart: {
            renderTo: 'container-chart3',
            type: 'column'
        },
        title: {
            text: 'Trésorerie nette pour les derniéres années'
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
            name: 'Tresorerie Nette',
            data: chaineTN
        }]
    };

 $(document).ready(function(){
                var chart = new Highcharts.Chart(FR);
                var chart2 = new Highcharts.Chart(BFR); 
                var chart3 = new Highcharts.Chart(TN); 
               

            });
            
		</script>
  
</head>


		
<body>

<div id="container-chart1"  style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart2" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart3" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>


</body>
</html>
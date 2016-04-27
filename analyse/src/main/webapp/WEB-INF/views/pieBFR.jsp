<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<script type="text/javascript">
  

var compositionBFR=eval("compositionBFR");

var bfr = {
        
        chart: {
            renderTo: 'container-chart',
            type: 'pie'
        },
        title: {
            text: 'Composition des besoins en fond de roulement pour cette annee'
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
            data: compositionBFR
        }]
    };
     $(document).ready(function(){
                 
                var chart = new Highcharts.Chart(bfr); 

            });
            
		</script>
  
</head>


		
<body>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<div id="container-chart" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
    </body>
    </html>
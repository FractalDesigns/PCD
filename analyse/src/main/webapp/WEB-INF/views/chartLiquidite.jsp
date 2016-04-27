<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<script>
  
  // inutile d'utiliser eval 
  var chaineDegreLiquidite=${degreLiquidite};
  var chaineAnnee=${annee}; 
  var chaineLiquiditeGenerale=${liquiditeGenerale};
  var chaineLiquiditeReduite=${liquiditeReduite};
  var chaineLiquiditeImmediate=${liquiditeImmediate};
  
//creer les options de chaque chart sous forme JSON 
  	var liquiditeimmediate = {
                
                chart: {
                    renderTo: 'container-chart4',
                    type: 'column'
                },
                title: {
                    text: 'Liquidite immediate au cours des dernieres annees'
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
                    name: 'Liquidite Immediate',
                    data: chaineLiquiditeImmediate
                }]
            };
    


  	var liquiditereduite = {
                
                chart: {
                    renderTo: 'container-chart3',
                    type: 'column'
                },
                title: {
                    text: 'Liquidite reduite au cours des dernieres annees'
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
                    name: 'Liquidite Reduite',
                    data: chaineLiquiditeReduite
                }]
            };
    
  
 
	var degreeliquidite = {
                
                chart: {
                    renderTo: 'container-chart2',
                    type: 'column'
                },
                title: {
                    text: 'Degre de liquidite au cours des dernieres annees'
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
                    name: 'Degre De Liquidite',
                    data: chaineDegreLiquidite
                }]
            };
    
		
		var liquiditegenerale = {
                
                chart: {
                    renderTo: 'container-chart1',
                    type: 'column'
                },
                title: {
                    text: 'La liquidite generale au cours des derniéres années'
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
                    name: 'Liquidite Generale',
                    data: chaineLiquiditeGenerale
                }]
            };
    
    
            // creer les chart en utilisant les options declaré au dessus 
            $(document).ready(function(){
                var chart = new Highcharts.Chart(liquiditegenerale);
                var chart2 = new Highcharts.Chart(degreeliquidite); 
                var chart3 = new Highcharts.Chart(liquiditereduite); 
                var chart4 = new Highcharts.Chart(liquiditeimmediate); 
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
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
                    type: 'column',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									series.setData(liquiditeimmediate.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
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
                    type: 'column',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									series.setData(liquiditereduite.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
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
                    type: 'column',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									series.setData(degreeliquidite.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
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
                    type: 'column',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									series.setData(liquiditegenerale.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
                    
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
                 rafraichirDonnees();
               
            
            });
            
            // enabling real time charts :
            	
            	
            	var sourceDeDonnee = 'chartLiquidite';
            	 function rafraichirDonnees() {
                     $.ajax({
                         url: sourceDeDonnee,
                         success: function() {
                        	 
                        	 //ligne de code pour simuler le changement de données dans la base 
                        	 liquiditegenerale.series[0].data = [Math.random()*10,Math.random()*10,Math.random()*10]; // aprés les teste mettre = chaineLiquiditeGenerale
                        	 //console.log(liquiditegenerale.series[0].data ); // javascript debugging line
                        	
                        	 degreeliquidite.series[0].data = [Math.random()*10,Math.random()*10,Math.random()*10];  //chaineDegreLiquidite
                        	 liquiditereduite.series[0].data =  [Math.random()*10,Math.random()*10,Math.random()*10] //chaineLiquiditeReduite
                        	 liquiditeimmediate.series[0].data = [Math.random()*10,Math.random()*10,Math.random()*10]; //chaineLiquiditeImmediate
                        	 
                        	 
                             // rafraichir aprés une seconde 
                             setTimeout(rafraichirDonnees, 1000);    

                         },
                         // désactiver le cache pour rafraichir a partir de la base 
                         cache: false
                     });
                 }

                 
		</script>
		</head>
  <body>
<div id="container-chart1"  style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart2" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart3" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart4" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>


    </body>
</html>
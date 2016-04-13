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
                    type: 'column',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									series.setData(autonomiedecisionnelle.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
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
                    type: 'column',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									series.setData(solvabilite.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
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
                rafraichirDonnees() 
            });
  
	var sourceDeDonnee = 'chartSolvabilite';
	 function rafraichirDonnees() {
        $.ajax({
            url: sourceDeDonnee,
            success: function() {
           	 
           	 //ligne de code pour simuler le changement de données dans la base 
           	 solvabilite.series[0].data = [Math.random()*10,Math.random()*10,Math.random()*10]; // aprés les tests mettre = chaineLiquiditeGenerale
           	autonomiedecisionnelle.series[0].data = [Math.random()*10,Math.random()*10,Math.random()*10];  //chaineDegreLiquidite
           	 
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
	<div id="container-chart1" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class="row col-lg-6"></div>
	<div id="container-chart2" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class="row col-lg-6"></div>

</body>
</html>
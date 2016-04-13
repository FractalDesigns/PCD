<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<<<<<<< HEAD
<script type="text/javascript">
//TODO: definir les chaines  

var ACPC = {
                
                chart: {
                    renderTo: 'container-chart4',
                    type: 'pie',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									//series.setData(ACPC.series[0].data,true);
                            	
//                             	series.data[0].y = ACPC.series[0].data[0].y;
//                             	series.data[1].y = ACPC.series[0].data[1].y;

                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
                },
                title: {
                    text: 'Actif courant et Passif courant pour cette ann�e'
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
                        {name : 'Actif courant',y : 70},
                        {name : 'Passif courant', y : 30},
                      
                    ]
                }]
            };
var bilan = {
                
                chart: {
                    renderTo: 'container-chart3',
                    type: 'pie',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									//series.setData(bilan.series[0].data,true);
//                             		series.data[0].y = bilan.series[0].data[0].y;
//                             		series.data[1].y = bilan.series[0].data[1].y;
//                             		series.data[2].y = bilan.series[0].data[2].y;
//                             		series.data[3].y = bilan.series[0].data[3].y;


                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
                },
                title: {
                    text: 'Notre bilan pour cette ann�e'
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
        				{name: 'Actif courant', y:30},
        				{name :'Passif courant', y:20},
                        {name :'Actif non courant',y: 20},
                        {name :'Passif non courant', y:30},
                      
                    ]
                }]
                
            };
    
var FR = {
                
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
									series.setData(FR.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
=======
<script>

var chaineFR=${fondroulement};
var chaineBFR=${bfr};
var chaineTN=${tn};


var FR = {
                
                chart: {
                    renderTo: 'container-chart1',
                    type: 'column'
>>>>>>> e25556c064faf445deaefaa3b0a97967319db938
                },
                title: {
                    text: 'Fond de roulement pour les derni�res ann�es'
                },
                plotOptions : {
                	column :{
                		depth : 25
                	}
                },
                xAxis: {
                    categories: [2001,2002,2003,2004,2005]
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
<<<<<<< HEAD
                    renderTo: 'container-chart1',
                    type: 'column',
                    events: {
                        load: function () {

                            // set up the updating of the chart each second
                            var series = this.series[0];
                            // execute anonymous function each 1000 ms 
                            setInterval(function () {
                            		// boolean argument tells the setData method to redraw chart each time the data is set 
									series.setData(BFR.series[0].data,true);
                            }, 1000); 
                        }
                    },
                    animation: {
                        duration:1000
                    }
=======
                    renderTo: 'container-chart2',
                    type: 'column'
>>>>>>> e25556c064faf445deaefaa3b0a97967319db938
                },
                title: {
                    text: 'Besoin en Fond de roulement pour les derni�res ann�es'
                },
                plotOptions : {
                	column :{
                		depth : 25
                	}
                },
                xAxis: {
                    categories: [2001,2002,2003,2004,2005]
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
<<<<<<< HEAD
    
var chart = new Highcharts.Chart(BFR);
var chart2 = new Highcharts.Chart(FR); 
var chart3 = new Highcharts.Chart(bilan); 
var chart4 = new Highcharts.Chart(ACPC); 
    
 $(document).ready(function(){
                 chart = new Highcharts.Chart(BFR);
                 chart2 = new Highcharts.Chart(FR); 
                 chart3 = new Highcharts.Chart(bilan); 
                 chart4 = new Highcharts.Chart(ACPC); 
=======
var TN = {
        
        chart: {
            renderTo: 'container-chart3',
            type: 'column'
        },
        title: {
            text: 'Tr�sorerie nette pour les derni�res ann�es'
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
               

>>>>>>> e25556c064faf445deaefaa3b0a97967319db938
            });
            
 
 var sourceDeDonnee = 'insertChartBilan';
 function rafraichirDonnees() {
     $.ajax({
         url: sourceDeDonnee,
         success: function() {
        	 
        	 //ligne de code pour simuler le changement de donn�es dans la base 
        	 FR.series[0].data = [Math.random()*10,Math.random()*10,Math.random()*10]; // apr�s les teste mettre = chaineLiquiditeGenerale
        	 //console.log(liquiditegenerale.series[0].data ); // javascript debugging line
        	
        	 BFR.series[0].data = [Math.random()*10,Math.random()*10,Math.random()*10];  
        	 
//         	 ACPC.series[0].data[0].y = Math.random()*10; 
//         	 ACPC.series[0].data[1].y = Math.random()*10;
//         		 //1- ACPC.series[0].data['Actif courant'] ; 
        	 
//         	 bilan.series[0].data[0].y =  Math.random(); 
//         	 bilan.series[0].data[1].y =  Math.random(); 
//         	 bilan.series[0].data[2].y =  Math.random(); 
//         	 bilan.series[0].data[3].y =  Math.random(); 

        	 
        	 
             // rafraichir apr�s une seconde 
             setTimeout(rafraichirDonnees, 1000);    

         },
         // d�sactiver le cache pour rafraichir a partir de la base 
         cache: false
     });
 }

		</script>
  
</head>


		
<body>

<div id="container-chart1"  style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart2" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>
<div id="container-chart3" style="height: 400px; margin: auto; min-width: 310px; max-width: 600px" class = "row col-lg-6"></div>


</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>


  
  <script type="text/javascript">
  
  var chaineSolvabilite=eval("${solvabilite}");
  var chaineAnnee=eval("${annee}");
  var chaineAutonomie=eval("${autonomie}");
  $(function () {
	    $('#container2').highcharts({
	        chart: {
	            type: 'column',
	           
	            options3d: {
	                enabled: true,
	                alpha: 10,
	                beta: 25,
	                depth: 70
	            }
	        },
	        title: {
	            text: 'Autonomie Décisionnelle pour les derniéres années'
	        },
	       
	        plotOptions: {
	            column: {
	                depth: 25
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
	            
			} ]
								});
			});
			$(function() {
				$('#container').highcharts({
					chart : {
						type : 'column',

						options3d : {
							enabled : true,
							alpha : 10,
							beta : 25,
							depth : 70
						}
					},
					title : {
						text : 'La Solvabilité pour les derniéres années'
					},

					plotOptions : {
						column : {
							depth : 25
						}
					},
					xAxis : {
						categories : chaineAnnee
					},
					yAxis : {
						title : {
							text : null
						}
					},
					series : [ {
						name : 'Solvabilité',
						data : chaineSolvabilite
					} ]
				});
			});
		</script>
</head>

  
  <body>
  
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-3d.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/highcharts-3d.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/exporting.js"></script>


<table>
<tr><td>
<div id="container" style="height: 400px;"></div>
</td>
<td>
<div id="container2" style="height: 400px;"></div>
</td>
</tr>


		<tr>
	<td>
	<p> C'est le ratios de solvabilité général. Sa valeur doit etre nettement supérieur à 1.</p>	
	<p> Si sa valeur s'approche de 2 ou égale à 2 ça veut dire qu'on dispose d'une capacité d'endettement importante.</p>
	</td>
	<td>
	<p> C'est le ratios de l'autonomie décisionnelle. Sa valeur doit etre inferieur à 1.</p>
	</td>
	   </tr>
	  

</table>
    </body>
</html>
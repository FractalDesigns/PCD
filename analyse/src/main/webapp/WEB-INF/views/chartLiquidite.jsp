<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<script type="text/javascript">
  
  var chaineDegreLiquidite=eval("${degreLiquidite}");
  var chaineAnnee=eval("${annee}");
  var chaineLiquiditeGenerale=eval("${liquiditeGenerale}");
  var chaineLiquiditeReduite=eval("${liquiditeReduite}");
  var chaineLiquiditeImmediate=eval("${liquiditeImmediate}");
  
  $(function () {
	    $('#container4').highcharts({
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
	            text: 'Liquidite immediate au cours des dernieres annees'
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
	            name: 'Liquidite Immediate',
	            data: chaineLiquiditeImmediate
	            
			} ]
								});
			});
  $(function () {
	    $('#container3').highcharts({
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
	            text: 'Liquidite reduite au cours des dernieres annees'
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
	            name: 'Liquidite Reduite',
	            data: chaineLiquiditeReduite
	            
			} ]
								});
			});
  
  $(function () {
	    $('#container').highcharts({
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
	            text: 'Degre de liquidite au cours des dernieres annees'
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
	            name: 'Degre De Liquidite',
	            data: chaineDegreLiquidite
	            
			} ]
								});
			});
			$(function() {
				$('#container2').highcharts({
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
						text : 'La liquidite generale au cours des derniéres années'
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
						name : 'Liquidite Generale',
						data : chaineLiquiditeGenerale
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

<div id="container" style="height: 400px"></div>
<div id="container2" style="height: 400px"></div>
<div id="container3" style="height: 400px"></div>
<div id="container4" style="height: 400px"></div>
Test

    </body>
</html>
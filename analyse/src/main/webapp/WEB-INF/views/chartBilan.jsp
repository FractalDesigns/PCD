<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<script type="text/javascript">
  
  
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
        },
        title: {
            text: 'Actif courant et Passif courant pour cette année'
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
    });
});


$(function () {
    $('#container2').highcharts({
        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
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
            text: 'Fond de roulement pour les derniéres années'
        },
       
        plotOptions: {
            column: {
                depth: 25
            }
        },
        xAxis: {
            categories: ['2012','2013','2014','2015','2016']
        },
        yAxis: {
            title: {
                text: null
            }
        },
        series: [{
            name: 'Fond de Roulement ',
            data: [0.1,0.2, 0.5,0.7,0.9]
        }]
    });
});

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
            text: 'Besoin en Fond de roulement pour les derniéres années'
        },
       
        plotOptions: {
            column: {
                depth: 25
            }
        },
        xAxis: {
            categories: ['2012','2013','2014','2015','2016']
        },
        yAxis: {
            title: {
                text: null
            }
        },
        series: [{
            name: 'Besoin en Fond de Roulement ',
            data: [0.1,0.2, 0.5,0.7,0.9]
        }]
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
	<p> Tableau de bord représentant la valeur de la somme des actifs courants par rapport à la somme des passif courants pour catte année.</p>	
	</td>
	<td>
	<p> Tableau de bord représentant les valeurs des différents composants du bilan financier.</p>
	</td>
	   </tr>
	   
	   <tr><td>
	   <div id="container3" style="height: 400px;"></div>
	   
	   </td>
	   <td>
	   <div id="container4" style="height: 400px;"></div>
	   
	   </td>
	   </tr>
	   
	   	<tr>
	<td>
	<p> C'est une courbe représentant l'evolution du fond de roulement au cours des derniéres années.</p>	
	</td>
	<td>
	<p> C'est une courbe représentant l'evolution du besoin en fond de roulement au cours des derniéres années.</p>
	</td>
	   </tr>
	   
	   <tr>
	   <td>		
		<a href="http://localhost:8080/Finance/GestionAnalyses" title="cliquer">Retour</a>
		</td>
		<td>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
		        <a href="${logoutUrl}">Log Out</a>
		</td>
		</tr>


</table>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Insertion des données</title>
</head>
  <body>
<div id="top"><p>Application d'Analyse Financière</p>
<p>Insertion De Données</p> </div>	
	<div id="conteneur">
		<div id="menu">
		
		<ul>
		<li><a href="http://localhost:8080/Finance/InsertActifNC" title="cliquer">Actif non courant</a></li>
		<li><a href="http://localhost:8080/Finance/InsertActifC" title="cliquer">Actif courant</a></li>
		<li><a href="http://localhost:8080/Finance/InsertPassifNC" title="cliquer">Passif non courant</a></li>
		<li><a href="http://localhost:8080/Finance/InsertPassifC" title="cliquer">Passif courant</a></li>
		<li><a href="http://localhost:8080/Finance/InsertEffetDeLevier" title="cliquer">Effet De Levier</a></li>
		
		<li><a href="http://localhost:8080/Finance/GestionDonnées" title="cliquer">Retour</a></li>
			<li>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
		        <a href="${logoutUrl}">Log Out</a>
		    </li>
		</ul>
		</div>	   
		</div>

		
		
    </body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Gestion Des Utilisateurs</title>
</head>
  <body>
<div id="top"><p>Application d'Analyse Financière</p>
<p>Gestion Des Utilisateurs</p> </div>	
        <div id="conteneur">
		<div id="menu">
		
		<ul>
		<li><a href="http://localhost:8080/Finance/InsertionUtilisateur" title="cliquer">Insérer un utilisateur</a></li>
		<li><a href="http://localhost:8080/Finance/ModificationUtilisateur" title="cliquer">Modifier un utilisateur</a></li>
		<li><a href="http://localhost:8080/Finance/SuppressionUtilisateur" title="cliquer">Supprimer un utilisateur</a></li>
		<li><a href="http://localhost:8080/Finance/AffichUtilisateur" title="cliquer">Afficher les utilisateurs</a></li>
		<li><a href="http://localhost:8080/Finance/home" title="cliquer">Retour</a></li>
			<li>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
		        <a href="${logoutUrl}">Log Out</a>
		    </li>
		</ul>
		</div>	   
		</div>
    </body>
</html>
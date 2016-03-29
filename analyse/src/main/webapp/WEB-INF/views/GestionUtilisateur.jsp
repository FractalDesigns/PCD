<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Gestion Des Utilisateurs</title>
</head>
<style>
body{
background:url(resources/images/fond_new.jpg) no-repeat center;
background-size:1900px,700px;
font-family:Arial,sans-serif;
font-size:25px;
color:	#FF7F50;
margin: 100px;
}
#top{
text-align:center;
font-size:30px;
text-shadow: 5px 5px 5px #FF0000;

}


#conteneur{
width:1200px;
margin:160px 150px 0 150px;

}

#menu ul li{
list-style:none;
float:left;
padding:0;

}
#menu ul li a{
height:70px;
width:150px;
display:block;
font-size:18px;
line-height:43px;
text-decoration:none;
color: 	#696969;
text-align:center;
}
#menu ul li a:hover {
line-height:30px;
}
</style>
  
  <body>
<div id="top"><p>Application d'Analyse Financi�re</p>
<p>Gestion Des Utilisateurs</p> </div>	
        <div id="conteneur">
		<div id="menu">
		
		<ul>
		<li><a href="http://localhost:8080/Finance/InsertionUtilisateur" title="cliquer">Ins�rer un utilisateur</a></li>
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
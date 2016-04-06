<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Insertion Utilisateurs</title>
</head>

<body>
	<div id="top"><p>Application d'Analyse Financière</p>
	<p>Insertion Utilisateurs</p> <br><br></div>
	
	<div id="conteneur">
		<div id="menu">
		<form action="insertUser" method="post">
  
		    <table>
		    
		    <tr>
		    <td> Nom </td> <td> <input type="text" name="nom" placeholder="nom" style=" background-color: #696969;
		    color: white;height:40px;"></td>
		    </tr>
		    
		    
		    <tr>
		    <td> Prenom </td><td><input type="text" name="prenom" placeholder="prenom" style=" background-color: #696969;
		    color: white;height:40px;"></td>
		    </tr>
		    
		   
		    <tr>
		    <td> Email </td> <td> <input type="text" name="email" placeholder="email" style=" background-color: #696969;
		    color: white;height:40px;"></td>
		    </tr>
		    
		
		    <tr>
		    <td> Password </td><td> <input type="password" name="pass" placeholder="mot de passe" style=" background-color: #696969;
		    color: white;height:40px;"></td>
		    </tr>
		    
		  
		    <tr>
		    <td> Role </td><td> <select name="role" style=" background-color: #696969;
		    color: white;height:40px;">
							<option value="1"> Personnel </option>
							<option value="2"> Responsable </option>
							<option value="3"> Director </option>
			          </select></td>
		    </tr>
		    
			
			<tr>
		    <td > 		    
		    <button class="button" type="submit" style="vertical-align:middle"><span>Inserer</span></button>
			</td>
			<td >		  
		    <button class="button" type="reset" style="vertical-align:middle"><span>Annuler</span></button>
     		</tr>
     		
    </table>
    </form>
		<ul>
	        <li><a href="http://localhost:8080/Finance/GestionUtilisateurs" title="cliquer">Retour</a></li>
		
			<li>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
		        <a href="${logoutUrl}">Log Out</a>
		    </li>
		</ul>
</div>	   
</div>
 
</body>
</html>
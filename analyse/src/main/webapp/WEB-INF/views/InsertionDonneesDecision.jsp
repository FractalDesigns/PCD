<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Insertion Des Donnees De La Decision D'Investissement</title>
</head>

<body>
	<div id="top"><p>Application d'Analyse Financière</p>
	<p>Insertion Des Donnees De La Decision D'Investissement</p> <br><br></div>
	
	<div id="conteneur">
		<div id="menu">
		<form action="insert_choice4" method="post">
    

    
    <table>
    
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" style=" background-color: #696969;
    color: white;height:40px;"> </td><td> </td>
    </tr>
    <tr>
    <td> Duree </td><td><input type="text" name="duree" style=" background-color: #696969;
    color: white;height:40px;"></td><td> </td>
    </tr>
    <tr>
    <td> Investissement Initial </td> <td> <input type="text" name="investissementInitial" style=" background-color: #696969;
    color: white;height:40px;"> </td><td> </td>
    </tr>
    <tr>
    <td> Depences Decaisses </td><td> <input type="text" name="depencesDecaisses" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Taux d'Imposition sur Benefice </td><td> <input type="text" name="tauxImpositionBenefice" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
   
    <tr>
    <td>
    <button class="button" type="submit" style="vertical-align:middle"><span>Confirmer</span></button>
    
    </td>
    
    <td> 
   <button class="button" type="reset" style="vertical-align:middle"><span>Annuler</span></button>
    
    </td>
    </tr>
    </table>
    </form>
		<ul>
				<li><a href="http://localhost:8080/Finance/InsertionDonnees" title="cliquer">Retour</a></li>
		
			<li>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
		        <a href="${logoutUrl}">Log Out</a>
		    </li>
		</ul>
		</div>	   
		</div>
 
</body>
</html>
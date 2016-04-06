<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Insertion Des Donnees D'Effet De Levier</title>
</head>

<body>
	<div id="top"><p>Application d'Analyse Financière</p>
	<p>Insertion Des Donnees D'Effet De Levier</p> <br><br></div>
	
	<div id="conteneur">
		<div id="menu">
		<form action="insertDataEffetLevier" method="post">
    

    
    <table>
    
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" style=" background-color: #696969;
    color: white;height:40px;"> </td><td> </td>
    </tr>
    <tr>
    <td> Cout Fixe d'Exploitation </td><td><input type="text" name="coutFixeExploitation" style=" background-color: #696969;
    color: white;height:40px;"></td><td> </td>
    </tr>
    <tr>
    <td> Cout Fixe Hors Exploitation </td> <td> <input type="text" name="coutFixeHorsExploitation" style=" background-color: #696969;
    color: white;height:40px;"> </td><td> </td>
    </tr>
    <tr>
    <td> Cout Variable Unitaire </td><td> <input type="text" name="coutVariableUnitaire" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Prix Unitaire </td><td> <input type="text" name="prixUnitaire" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Capital Etranger </td><td> <input type="text" name="capitalEtranger" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
     <tr>
    <td> Quantite De Production </td><td> <input type="text" name="quantiteDeProduction" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Dettes Financieres </td><td> <input type="text" name="dettesFinancieres" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Benefice Voulu </td><td> <input type="text" name="beneficeVoulu" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td>
    <button class="button" type="submit" style="vertical-align:middle"><span>Inserer</span></button>
    
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
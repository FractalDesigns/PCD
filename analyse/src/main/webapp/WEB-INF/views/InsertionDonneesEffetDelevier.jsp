<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

<body>
	
		<form action="insertDataEffetLevier" method="post">
    

    
    <table>
    
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Cout Fixe d'Exploitation </td><td><input type="text" name="coutFixeExploitation" class="form-control"></td><td> </td>
    </tr>
    <tr>
    <td> Cout Fixe Hors Exploitation </td> <td> <input type="text" name="coutFixeHorsExploitation" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Cout Variable Unitaire </td><td> <input type="text" name="coutVariableUnitaire" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Prix Unitaire </td><td> <input type="text" name="prixUnitaire" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Capital Etranger </td><td> <input type="text" name="capitalEtranger" class="form-control"></td><td></td>
    </tr>
     <tr>
    <td> Quantite De Production </td><td> <input type="text" name="quantiteDeProduction" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Dettes Financieres </td><td> <input type="text" name="dettesFinancieres" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Benefice Voulu </td><td> <input type="text" name="beneficeVoulu" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td>
    <button class="btn btn-outline btn-primary btn-lg" type="submit" style="vertical-align:middle"><span>Inserer</span></button>

	</td>
    
    <td> 
    <button class="btn btn-outline btn-primary btn-lg" type="reset" style="vertical-align:middle"><span>Vider les champs</span></button>
    </td>
    </tr>
    </table>
    </form>
		
 
</body>
</html>
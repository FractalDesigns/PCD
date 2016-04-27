<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

<body>
	
		<form action="insertDataProject" method="post">
    

    
    <table>
    
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Duree </td><td><input type="text" name="duree" class="form-control"></td><td> </td>
    </tr>
    <tr>
    <td> Investissement Initial </td> <td> <input type="text" name="investissementInitial" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> EBE </td><td> <input type="text" name="ebe" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Taux d'actualisation </td><td> <input type="text" name="tauxActualisation" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Dotations </td><td><input type="text" name="dotations" class="form-control"></td><td> </td>
    </tr>
    <tr>
    <td> Reprises </td><td><input type="text" name="reprises" class="form-control"></td><td> </td>
    </tr>
   <tr>
    <td> Prix de vente </td><td><input type="text" name="prixDeVente" class="form-control"></td><td> </td>
    </tr>
    <tr>
    <td> Valeur comptable nette </td><td><input type="text" name="vnc" class="form-control"></td><td> </td>
    </tr>
    <tr>
    <td> Impot (Plus Value) </td><td><input type="text" name="impot" class="form-control"></td><td> </td>
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>
<style>
button {
	margin: 3px;
}

input {
	margin: 3px;
}
</style>
  
<body>
	
		<form action="insertData3" method="post">
    
    <table>
    
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Capital Social </td><td><input type="text" name="capitalSocial" class="form-control"></td><td> </td>
    </tr>
    <tr>
    <td> Reserves </td> <td> <input type="text" name="reserve" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Autre Capitaux </td><td> <input type="text" name="autreCapitaux" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Resultat Reporte </td><td> <input type="text" name="resultatReporte" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Resultat Exercice </td><td> <input type="text" name="resultatExercice" class="form-control"></td><td></td>
    </tr>
    
    <tr>
    <td> Emprunts </td><td> <input type="text" name="emprunts" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Provisions </td><td> <input type="text" name="provisions" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Autres Passifs Financiers </td><td> <input type="text" name="autresPassifsFinanciers" class="form-control"></td><td></td>
    </tr>
    <tr>
						<td>
							<button class="btn btn-outline btn-primary btn-lg" type="submit"
								style="vertical-align: middle">
								<span>Inserer</span>
							</button>

						</td>

						<td>
							<button class="btn btn-outline btn-primary btn-lg" type="reset"
								style="vertical-align: middle">
								<span>Vider les champs</span>
							</button>

						</td>
					</tr>
    </table>
    </form>
		
 
</body>
</html>
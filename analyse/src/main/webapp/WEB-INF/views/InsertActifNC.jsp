<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<style>
button {
	margin: 3px;
}

input {
	margin: 3px;
}
</style>
</head>
<body>
	
		<form action="insertData" method="post">
    
    <table>
    
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" class="form-control"> </td><td> </td>
    </tr>
    
    <tr>
    <td> Immobilisations Incorporelles </td><td><input type="text" name="immobilisationIncorporelles" class="form-control"></td><td> </td>
    </tr>
    
    <tr>
    <td> Immobilisations Corporelles </td> <td> <input type="text" name="immobilisationCorporelles" class="form-control"> </td><td> </td>
    </tr>
    
    <tr>
    <td> Immobilisations Financieres </td><td> <input type="text" name="immobilisationFinancieres" class="form-control"></td><td></td>
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
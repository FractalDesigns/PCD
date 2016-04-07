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
	
		<form action="insertData4" method="post">
    
    <table>
    
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Dettes des Fournisseurs </td><td><input type="text" name="detteFournisseurs" class="form-control"></td><td> </td>
    </tr>
    <tr>
    <td> Dettes Fiscales </td> <td> <input type="text" name="detteFiscales" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Dettes des salaries </td><td> <input type="text" name="detteSalaries" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Diverses Passifs Courants </td><td> <input type="text" name="diversesPassifsCourants" class="form-control"></td><td></td>
    </tr>
    <tr>
    <td> Concour Bancaire </td><td> <input type="text" name="concourBancaire" class="form-control"></td><td></td>
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
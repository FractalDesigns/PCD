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

	
		<form action="insertUser" method="post">
  
		    <table>
		    
		    <tr>
		    <td> Nom </td> <td> <input type="text" name="nom" placeholder="nom" class="form-control"></td>
		    </tr>
		    
		    
		    <tr>
		    <td> Prenom </td><td><input type="text" name="prenom" placeholder="prenom" class="form-control"></td>
		    </tr>
		    
		   
		    <tr>
		    <td> Email </td> <td> <input type="text" name="email" placeholder="email" class="form-control"></td>
		    </tr>
		    
		
		    <tr>
		    <td> Password </td><td> <input type="password" name="pass" placeholder="mot de passe" class="form-control"></td>
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
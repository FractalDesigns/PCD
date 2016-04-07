<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  
<body>
	
		<form action="deleteUser" method="post">
    
    <table>
<!--     <tr> -->
<!--     <td> Iduser </td> <td> <input type="text" name="iduser" placeholder="id utilisateur" > </td><td> </td> -->
<!--     </tr> -->
    <tr>
    <td> Nom </td> <td> <input type="text" name="nom" placeholder="nom" class="form-control"> </td><td> </td>
    </tr>
    <tr>
    <td> Prenom </td><td><input type="text" name="prenom" placeholder="prenom" class="form-control"></td><td> </td>
    </tr>
    
<!--     <tr> -->
<!--     <td> Password </td><td> <input type="password" name="pass" placeholder="mot de passe" ></td><td></td> -->
<!--     </tr> -->
    
    <tr>
						<td>
							<button class="btn btn-outline btn-primary btn-lg" type="submit"
								style="vertical-align: middle">
								<span>Supprimer</span>
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
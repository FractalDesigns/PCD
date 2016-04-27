<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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

	
			<form action="insertData2" method="post">

				<table>

					<tr>
						<td>Annee</td>
						<td><input type="text" name="annee" class="form-control">
						</td>
						<td></td>
					</tr>
					<tr>
						<td>Stocks</td>
						<td><input type="text" name="stocks" class="form-control"></td>
						<td></td>
					</tr>
					<tr>
						<td>Creance sur les Clients</td>
						<td><input type="text" name="creanceClients"
							class="form-control"></td>
						<td></td>
					</tr>
					<tr>
						<td>Creance sur l'etat</td>
						<td><input type="text" name="creanceEtat"
							class="form-control"></td>
						<td></td>
					</tr>
					<tr>
						<td>Creance diverses</td>
						<td><input type="text" name="creanceDiverses"
							class="form-control"></td>
						<td></td>
					</tr>
					<tr>
						<td>Placements</td>
						<td><input type="text" name="placements" class="form-control"></td>
						<td></td>
					</tr>
					<tr>
						<td>Liquidité et equivalent liquidité</td>
						<td><input type="text" name="liquidites" class="form-control"></td>
						<td></td>
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
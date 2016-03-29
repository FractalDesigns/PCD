<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Modification Des Actifs Courants</title>
</head>
<style>
body{
background:url(resources/images/fond_new.jpg) no-repeat center;
background-size:1900px,700px;
font-family:Arial,sans-serif;
font-size:25px;
color:	#FF7F50;
margin: 100px;
}
#top{
text-align:center;
font-size:30px;
text-shadow: 5px 5px 5px #FF0000;

}


#conteneur{
width:1200px;
margin:160px 150px 0 150px;

}

#menu ul li{
list-style:none;
float:left;
padding:0;

}
#menu ul li a{
height:70px;
width:150px;
display:block;
font-size:18px;
line-height:43px;
text-decoration:none;
color: 	#696969;
text-align:center;
}
#menu ul li a:hover {
line-height:30px;
}
.button {
  display: inline-block;
  border-radius: 4px;
  background-color:#FF7F50 ;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 15px;
  width: 175px;
  height:60px;
  transition: all 0.5s;
  cursor: pointer;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '�';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
  
<body>
	<div id="top"><p>Application d'Analyse Financi�re</p>
	<p>Modification Des Actifs Courants</p> <br><br></div>
	
	<div id="conteneur">
		<div id="menu">
		<form action="updateData2" method="post">
    
    <table>
    <tr>
    <td> Id Actif Courant </td> <td> <input type="text" name="id" placeholder="id actif courant" style=" background-color: #696969;
    color: white;height:40px;"> </td><td> </td>
    </tr>
    <tr>
    <td> Annee </td> <td> <input type="text" name="annee" placeholder="annee" style=" background-color: #696969;
    color: white;height:40px;"> </td><td> </td>
    </tr>
    <tr>
    <td> Stocks </td><td><input type="text" name="stocks" placeholder="stocks" style=" background-color: #696969;
    color: white;height:40px;"></td><td> </td>
    </tr>
    <tr>
    <td> Creance sur les Clients </td> <td> <input type="text" name="creanceClients" placeholder="creance clients" style=" background-color: #696969;
    color: white;height:40px;"> </td><td> </td>
    </tr>
    <tr>
    <td> Creance sur l'etat </td><td> <input type="text" name="creanceEtat" placeholder="creance etat" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Creance diverses </td><td> <input type="text" name="creanceDiverses" placeholder="creance diverses" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Placements </td><td> <input type="text" name="placements" placeholder="placements" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> Liquidit� et equivalent liquidit� </td><td> <input type="text" name="liquidit�s" placeholder="liquidit�s" style=" background-color: #696969;
    color: white;height:40px;"></td><td></td>
    </tr>
    <tr>
    <td> 
    <button class="button" type="submit" style="vertical-align:middle"><span>Modifier</span></button>
    
    </td>
    
    <td>
    <button class="button" type="reset" style="vertical-align:middle"><span>Annuler</span></button>   
    
    </td>
    </tr>
    </table>
    </form>
		<ul>
		<li><a href="http://localhost:8080/Finance/ModificationDonnees" title="cliquer">Retour</a></li>
		
			<li>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
		        <a href="${logoutUrl}">Log Out</a>
		    </li>
		</ul>
		</div>	   
		</div>
 
</body>
</html>
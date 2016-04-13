<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  
  <body>

		
		<table>
    <tr>
        <th style="color:#696969;height:80px;">Annee</th>
        <th style="color:#696969;height:80px;">CapitalSocial</th>
        <th style="color:#696969;height:80px;">Reserves</th>
        <th style="color:#696969;height:80px;">Autre Capitaux</th>
        <th style="color:#696969;height:80px;">Resultat Reporte</th>
        <th style="color:#696969;height:80px;">Resultat Exercice</th>
        <th style="color:#696969;height:80px;">Emprunts</th>
        <th style="color:#696969;height:80px;">Provisions</th>
        <th style="color:#696969;height:80px;">Autres Passifs Financiers</th>
        <th style="color:#696969;height:80px;color:		#F5DEB3;">Somme Des Passifs Non Courants</th>
        <th style="color:#696969;height:80px;color:		#F5DEB3;">Somme Des Capitaux Propres</th>
        
    </tr>
    <c:forEach var="pnc" items="${listPassifNonCourant}">
    <tr>
        <td style="text-align:center;">
            <c:out value="${pnc.annee}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pnc.capitalSocial}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${pnc.reserves}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pnc.autreCapitaux}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${pnc.resultatReporte}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${pnc.resultatExercice}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${pnc.emprunts}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pnc.provisions}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pnc.autresPassifsFinanciers}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pnc.sommePassifNonCourant()}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${pnc.sommeCapitalPropre()}" />
        </td>
    </tr>
    </c:forEach>
    </table>
    
    </body>
</html>
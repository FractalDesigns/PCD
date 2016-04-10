<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  <body>

		<table>
    <tr>
        <th style="color:#696969;height:80px;">Annee</th>
        <th style="color:#696969;height:80px;">Stocks</th>
        <th style="color:#696969;height:80px;">Creances sur Clients</th>
        <th style="color:#696969;height:80px;">Creances sur Etat</th>
        <th style="color:#696969;height:80px;">Creances Diverses</th>
        <th style="color:#696969;height:80px;">Placements</th>
        <th style="color:#696969;height:80px;">Liquidites</th>
        <th style="color:#696969;height:80px;color:		#F5DEB3;">Somme Des Actifs Courants</th>
        
    </tr>
    <c:forEach var="ac" items="${listActifCourant}">
    <tr>
        <td style="text-align:center;">
            <c:out value="${ac.annee}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${ac.stocks}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${ac.creanceClients}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${ac.creanceEtat}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${ac.creanceDiverses}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${ac.placements}" />
        </td>
         <td style="text-align:center;">
            <c:out value="${ac.liquidites}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${ac.sommeActifCourant()}" />
        </td>
    </tr>
    </c:forEach>
    </table>
    
    </body>
</html>
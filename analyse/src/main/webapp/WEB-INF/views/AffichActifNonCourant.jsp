<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
</head>

  <body>
  
		<table>
    <tr>
        <th style="color:#696969;height:80px;">Annee</th>
        <th style="color:#696969;height:80px;">Immobilisations Incorporelles</th>
        <th style="color:#696969;height:80px;">Immobilisations Corporelles</th>
        <th style="color:#696969;height:80px;">Immobilisations Financieres</th>
        <th style="color:#696969;height:80px;color:		#F5DEB3;">Somme Des Actifs Non Courants</th>
        
    </tr>
    <c:forEach var="anc" items="${listActifNonCourant}">
    <tr>
        <td style="text-align:center;">
            <c:out value="${anc.annee}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${anc.immIncorporelles}" />
        </td>
        
        <td style="text-align:center;">
            <c:out value="${anc.immCorporelles}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${anc.immFinancieres}" />
        </td>
        <td style="text-align:center;">
            <c:out value="${anc.sommeActifNonCourant()}" />
        </td>
    </tr>
    </c:forEach>
    </table>

    </body>
</html>